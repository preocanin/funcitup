module View.Quiz exposing (..)

import Html exposing (Html, div, text)

import Msg.Main exposing (..)

import Model.Main exposing (..)


quiz : Model -> Html Msg
quiz model =
    div [] 
        [
            text "Quiz"
        ]

