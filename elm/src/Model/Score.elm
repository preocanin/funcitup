module Model.Score exposing (..)

import Json.Decode exposing (Decoder, int, string, float, map3, field)

type alias Model = 
    {
        id: Int,
        name: String,
        points: Float
    }

newScore : Model
newScore = Model -1 "" -21

scoreDecoder : Decoder Model
scoreDecoder =
    map3 Model
        (field "id" int)
        (field "name" string)
        (field "points" float)

