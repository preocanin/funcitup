module Command.Main exposing (..)

import Http exposing (..)

import Msg.Main as Main exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Questions exposing (..)

questionsGetAll : Cmd Main.Msg
questionsGetAll = 
    get "http://localhost:5000/api/startQuiz" questionsDecoder
        |> send (Main.MsgForQuestions<<Questions.AllQuestions)

