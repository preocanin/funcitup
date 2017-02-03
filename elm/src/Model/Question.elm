module Model.Question exposing (..)

import Json.Decode exposing (Decoder, list, int, string, map3, field)

import Model.Answer as Answer exposing (..)

type alias Model =
    {
        id: Int,
        text: String,
        answers: List Answer.Model
    }

newQuestion : Model
newQuestion = Model 0 "" [] 

questionDecoder : Decoder Model
questionDecoder =
    map3 Model
        (field "id" int)
        (field "text" string)
        (field "answers" (list Answer.answerDecoder))

