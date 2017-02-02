from flask import Flask, request, render_template, jsonify
import json
from models import db
from models import Question
app = Flask(__name__)

app.config.from_object('config')
db.app = app
db.init_app(app)
db.create_all()

def json_array(model_array):
  return jsonify([m.as_dict() for m in model_array])

@app.route('/')
def index():
  return render_template("index.html")

@app.route('/api/questions', methods=['GET'])
def question_index():
  questions = Question.query.all()
  return json_array(questions)

@app.route('/api/questions', methods=['POST'])
def question_create():
  print(request.get_json())

@app.route('/api/questions/<question_id>')
def question_details(question_id):
  question = Question.query.filter_by(id=question_id).first_or_404()
  return jsonify(question.as_dict())

if __name__ == '__main__':
    app.run()

