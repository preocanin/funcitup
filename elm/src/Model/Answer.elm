module Model.Answer exposing (Model, answerDecoder)

import Json.Decode exposing (Decoder, int, string, map2, field)

type alias Model =
    {
        id: Int,
        text: String
    }
    
answerDecoder : Decoder Model 
answerDecoder =
    map2 Model
        (field "id" int)
        (field "text" string)

