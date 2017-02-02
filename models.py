from flask_sqlalchemy import SQLAlchemy
import json

db = SQLAlchemy()

class BasicModel:
  def as_dict(self):
    return { c.name: getattr(self, c.name) for c in self.__table__.columns }

  def as_json(self):
    return json.dumps(self.as_dict())

class Question(db.Model, BasicModel):
    # print("Engine model created");
    # Columns
  id = db.Column(db.Integer, primary_key=True, autoincrement=True)

  text = db.Column(db.String(512))

  answers = db.relationship('Answer', backref='question', lazy='dynamic')

class Answer(db.Model, BasicModel):
  id = db.Column(db.Integer, primary_key=True, autoincrement=True)

  is_correct = db.Column(db.Boolean)

  text = db.Column(db.String(512))

  question_id = db.Column(db.Integer, db.ForeignKey('question.id'))

class Scores(db.Model, BasicModel):
  id = db.Column(db.Integer, primary_key=True, autoincrement=True)

  name = db.Column(db.String(50))

  score = db.Column(db.Integer)

