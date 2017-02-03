module Update.Questions exposing (..)

import List exposing (length, member, map)
import Tuple exposing (first)

import Msg.Main as Main exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Main exposing (..)
import Model.Navigation exposing (..)
import Model.Questions exposing (..)

import Command.Main exposing (sendScore, getScores)

updateQuestions : Questions.Msg -> Model.Main.Model -> (Model.Main.Model, Cmd Main.Msg)
updateQuestions msg model =
    let questionsModel = model.modelForQuestions in
    case msg of
        AllQuestions (Ok questionList) ->
            let 
                newQuestionsModel = { questionsModel | questions = questionList, dirty = False } 
            in 
                ({model | page = Quiz, modelForQuestions = newQuestionsModel }, Cmd.none) 

        AllQuestions (Err error) ->
            ({model | 
                page = PageNotFound,
                modelForQuestions = newQuestions
             }, Cmd.none)

        Next -> 
            let
                nextQuestion = 
                    if questionsModel.currentQuestion+1 < length questionsModel.questions
                    then questionsModel.currentQuestion+1
                    else questionsModel.currentQuestion
                newQuestionsModel = { questionsModel | currentQuestion = nextQuestion, dirty = False }
            in
                ({model | modelForQuestions = newQuestionsModel }, Cmd.none) 
            
        Back -> 
            let
                previousQuestion = 
                    if questionsModel.currentQuestion-1 >= 0 
                    then questionsModel.currentQuestion-1
                    else questionsModel.currentQuestion
                newQuestionsModel = { questionsModel | currentQuestion = previousQuestion, dirty = False }
            in
                ({model | modelForQuestions = newQuestionsModel }, Cmd.none) 

        Answer qid aid ->
            let
                isMember = member qid <| map first questionsModel.userAnswers
                memberMapFunc = \(x,y) -> if x == qid then (x, aid) else (x,y)
                newUserAnswers = 
                    if isMember 
                    then map memberMapFunc questionsModel.userAnswers
                    else (qid,aid) :: questionsModel.userAnswers 
                newQuestionsModel = { questionsModel | userAnswers = newUserAnswers, dirty = False }
            in 
                ({ model | modelForQuestions = newQuestionsModel }, Cmd.none)

        Name name ->
            let
                newQuestionsModel = { questionsModel | name = name }
            in
                ({ model | modelForQuestions = newQuestionsModel}, Cmd.none) 

        Points (Ok points) ->
            ({ model | page = Score, points = points, modelForQuestions = newQuestions }, Cmd.none)

        Points (Err error) ->
            ({ model | page = PageNotFound, modelForQuestions = newQuestions }, Cmd.none)

        SendScore ->
            (model, Cmd.batch [getScores, sendScore questionsModel])

