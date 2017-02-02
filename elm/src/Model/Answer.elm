module Model.Answer exposing (Model, answerDecoder)

import Json.Decode exposing (Decoder, int, string, map3, field)

type alias Model =
    {
        id: Int,
        text: String,
        questionId: Int
    }
    
answerDecoder : Decoder Model 
answerDecoder =
    map3 Model
        (field "id" int)
        (field "text" string)
        (field "questionId" int)

