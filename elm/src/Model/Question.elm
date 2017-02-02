module Model.Question exposing (..)

import Json.Decode exposing (Decoder, array, int, string, map3, field)

import Array exposing (..)

import Model.Answer as Answer exposing (..)

type alias Model =
    {
        id: Int,
        text: String,
        answers: Array.Array Answer.Model
    }

newQuestion : Model
newQuestion = Model 0 "" Array.empty 

questionDecoder : Decoder Model
questionDecoder =
    map3 Model
        (field "id" int)
        (field "text" string)
        (field "answers" <| array Answer.answerDecoder)

