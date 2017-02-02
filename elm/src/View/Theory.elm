module View.Theory exposing (..)

import Html exposing (Html, div, text)

import Msg.Main exposing (..)

import Model.Main exposing (..)

theory : Model -> Html Msg
theory model =
    div []
        [
            text "Theory"
        ]


