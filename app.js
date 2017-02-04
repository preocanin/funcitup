var express = require('express')
var app = express()
var Question = require('./models').Question;
var Answer = require('./models').Answer;
var Score = require('./models').Score;
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

app.get('/api/scores', (req, res) => {
  Score.findAll({
    limit: 10,
    order: [[ 'points', 'DESC' ]]
  }).then(scores => {
    res.json(scores);
  })
})

app.get('/api/startQuiz', (req, res) => {
  Question.findAll({
     order: [ sequelize.fn('RAND') ],
     include: [ { model: Answer, attributes: ["id", "text"] } ]
  }).then(questions => {
      res.json(_.slice(questions, 0, 10));
  })
})

app.post('/api/endQuiz', (req, res) => {
  if(!req.query.name) {
    res.status(500).send({ error: 'You need to provide a name in order to be memorized in the hall of fame scoreboard!' });
    return;
  }
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
    var points = _.sum(resolvedValues) - ((resolvedValues.length - _.sum(resolvedValues)) * 0.5);
    Score.create({ name: req.query.name, points: points })
      .then(() => { res.json({ points: points}) });
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