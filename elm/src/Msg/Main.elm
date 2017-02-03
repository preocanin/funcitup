module Msg.Main exposing (..)

import Http exposing (..)

import Msg.Navigation as Navigation exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Score as Score exposing (Model)

type Msg 
        = MsgForNavigation Navigation.Msg
        | MsgForQuestions Questions.Msg
        | MsgForScore (Result Error (List Score.Model))

