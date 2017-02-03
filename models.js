var Sequelize = require('sequelize');
var sequelize = new Sequelize('mysql://dev:123456@localhost:3306/node_dev', {
  define: {
    timestamps: false // true by default
  }
});

var Question = sequelize.define('question', {
  text: { type: Sequelize.STRING, allowNull: false }
});

var Answer = sequelize.define('answer', {
  text: { type: Sequelize.STRING, allowNull: false },
  isCorrect : { type: Sequelize.BOOLEAN, allowNull: false }
});

Answer.belongsTo(Question);
Question.hasMany(Answer)

sequelize.sync({force: true});

module.exports = {
  Answer: Answer,
  Question: Question,
  sequelize: sequelize
}