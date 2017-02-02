module Msg.Main exposing (..)

import Msg.Navigation as Navigation exposing (..)
import Msg.Questions as Questions exposing (..)

type Msg 
        = MsgForNavigation Navigation.Msg
        | MsgForQuestions Questions.Msg
