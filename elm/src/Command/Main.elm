module Command.Main exposing (..)

import Http exposing (post, get, send, stringBody)

import Json.Decode exposing (float, field)

import String exposing (concat)

import Msg.Main as Main exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Main exposing (scoresDecoder)
import Model.Questions exposing (..)

questionsGetAll : Cmd Main.Msg
questionsGetAll = 
    get "http://localhost:5000/api/startQuiz" questionsDecoder
        |> send (Main.MsgForQuestions<<Questions.AllQuestions)

sendScore : Model -> Cmd Main.Msg
sendScore model =
    let name = if model.name == "" then "quest" else model.name in
    post (concat ["http://localhost:5000/api/endQuiz?name=", name])
         (stringBody "application/json" <| resultEncoder model)
         (field "points" float)
        |> send (Main.MsgForQuestions<<Questions.Points)

getScores : Cmd Main.Msg
getScores =
    get "http://localhost:5000/api/scores" scoresDecoder
        |> send Main.MsgForScore




