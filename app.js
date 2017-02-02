var express = require('express')
var app = express()
var Question = require('./models').Question;
var Answer = require('./models').Answer;
var path = require('path');
var sequelize = require('./models').sequelize;
var bodyParser = require('body-parser');
var _ = require('lodash');

const numberOfQuestions = 10;


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.use('/static', express.static('static'))


app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname + '/index.html'));
})

app.get('/api/questions', function (req, res) {
  Question.findAll()
    .then(questions => {
      res.json(questions);
    })
})

app.get('/api/startQuiz', (req, res) => {
  Question.findAll({
     limit: numberOfQuestions,
     order: [ sequelize.fn('RAND', '') ],
     include: [ Answer ]
  }).then(questions => {
      res.json(questions);
  })
})

app.post('/api/endQuiz', (req, res) => {
  var points = 0;
  var promises = [];
  req.body.forEach(givenAnswer => {
    promises.push(Question.findOne({ where: { id: givenAnswer.questionId }, include: [ Answer ] })
      .then(question => { 
          var corectAnswer = _.filter(question.answers, function(a) { return a.isCorrect; })[0];
          if(givenAnswer.answerId === corectAnswer.id)
            return 1;
          return 0;
    }));
  });

  Promise.all(promises).then((resolvedValues) => { 
    res.json({ points: _.sum(resolvedValues) }) 
  });
})

app.post('/api/questions', function (req, res) {
  Question.create(req.body)
    .then(question => {
      res.json(question);
    })
})

app.listen(5000, function () {
  console.log('Example app listening on port 5000!')
})