module Command.Main exposing (..)

import Http exposing (post, get, send, stringBody)

import Json.Decode exposing (int)


import String exposing (concat)

import Msg.Main as Main exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Questions exposing (..)

questionsGetAll : Cmd Main.Msg
questionsGetAll = 
    get "http://localhost:5000/api/startQuiz" questionsDecoder
        |> send (Main.MsgForQuestions<<Questions.AllQuestions)

sendScore : Model -> Cmd Main.Msg
sendScore model =
    post (concat ["http://localhost:5000/api/endQuiz?name=", model.name])
         (stringBody "application/json" <| resultEncoder model)
          int  
        |> send (Main.MsgForQuestions<<Questions.Points)

