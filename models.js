var Sequelize = require('sequelize');
var sequelize = new Sequelize('mysql://dev:123456@localhost:3306/node_dev', {
  define: {
    timestamps: false // true by default
  }
});

var Question = sequelize.define('question', {
  text: Sequelize.STRING
});

var Answer = sequelize.define('answer', {
  text: Sequelize.STRING,
  isCorrect : Sequelize.BOOLEAN
});

Answer.belongsTo(Question); // Adds fk_company to User
Question.hasMany(Answer)

sequelize.sync({force: true});

module.exports = {
  Answer: Answer,
  Question: Question,
  sequelize: sequelize
}