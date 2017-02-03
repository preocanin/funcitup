module Update.Main exposing (..)

import Msg.Main exposing (..)
import Model.Main exposing (..)

import Model.Navigation as Navigation exposing (..)

import Update.Navigation exposing (..)
import Update.Questions exposing (..)

update : Msg-> Model-> (Model, Cmd Msg)
update msg model =
    case msg of
        MsgForNavigation newMsg -> updateNavigation newMsg model        
        MsgForQuestions newQuestions -> updateQuestions newQuestions model
        MsgForScore (Ok newScores) -> 
            ({ model | score = newScores, page = Navigation.Score}, Cmd.none)
        MsgForScore (Err error) ->
            ({ model | page = Navigation.PageNotFound } ,Cmd.none)

