module View.Home exposing (..)

import Html exposing (Html, div, text)

import Bootstrap.Grid exposing (containerFluid)

import Model.Main exposing (..)
import Msg.Main exposing (..)

home : Model -> Html Msg
home model =
    div []
        [
            text "Home"
        ]

