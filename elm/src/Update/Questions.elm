module Update.Questions exposing (..)

import Msg.Main as Main exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Main exposing (..)
import Model.Navigation exposing (..)
import Model.Questions exposing (..)

updateQuestions : Questions.Msg -> Model.Main.Model -> (Model.Main.Model, Cmd Main.Msg)
updateQuestions msg model =
    case msg of
        AllQuestions (Ok questionsModel) ->
            let questions = model.modelForQuestions
                newQuestionsModel = { questions | questions = questionsModel } in 
            ({model | page = Quiz, modelForQuestions = newQuestionsModel }, Cmd.none) 
        AllQuestions (Err error) ->
            ({model | page = Home }, Cmd.none)

