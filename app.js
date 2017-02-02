var express = require('express')
var app = express()
var Question = require('./models').Question;
var Answer = require('./models').Answer;
var path = require('path');

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

app.post('/api/questions', function (req, res) {
  Question.create(req.body)
    .then(question => {
      res.json(question);
    })
})

app.listen(5000, function () {
  console.log('Example app listening on port 3000!')
})