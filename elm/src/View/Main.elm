module View.Main exposing (..)

import Html exposing (Html, div, text)

import Msg.Main exposing (..)

import Model.Main exposing (..)
import Model.Navigation exposing (..)

import View.Navigation exposing (..)
import View.Home exposing (..)
import View.Quiz exposing (..)
import View.Theory exposing (..)

view : Model -> Html Msg
view model =
    case model.page of
        Home -> div [] [ navigation model, home model ]
        Quiz -> div [] [ navigation model, quiz model ]
        Theory -> div [] [ navigation model, theory model ]
        PageNotFound -> div [] [text "page not found"]

