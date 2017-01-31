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

  title = db.Column(db.String(128))

  text = db.Column(db.String(512))
