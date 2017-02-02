module View.Main exposing (..)

import Html exposing (Html, div, text)
import Model.Navigation exposing (..)
import View.Navigation exposing (..)

import Msg.Main exposing (..)
import Model.Main exposing (..)

view : Model -> Html Msg
view model =
    case model.page of
        Home -> div [] [ navigation model, text "Home"]
        Quiz -> div [] [ navigation model, text "Quiz"]
        Theory -> div [] [ navigation model, text "Theory"]
        PageNotFound -> div [] [text "page not found"]
