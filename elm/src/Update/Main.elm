module Update.Main exposing (..)

import Msg.Main exposing (..)
import Model.Main exposing (..)

import Update.Navigation exposing (..)


update : Msg-> Model-> (Model, Cmd Msg)
update msg model =
    case msg of
        MsgForNavigation newMsg -> updateNavigation newMsg model        

