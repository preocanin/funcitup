module View.Main exposing (..)

import Html exposing (Html, div, text)

import View.Navigation exposing (..)

import Msg.Main exposing (..)
import Model.Main exposing (..)

view : Model -> Html Msg
view model =
    div []
        [
            navigation model,
            if model.page == "Home" then
                div [] [text "Home"]
            else if model.page == "Quiz" then
                div [] [text "Quiz"]
            else
                div [] [text "Theory"]
        ]
