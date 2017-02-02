module Model.Questions exposing (..)

import List exposing (map)

import Json.Decode as Decode exposing (Decoder, oneOf, null, list, map3, field)
import Json.Encode as Encode exposing (Value, list, int, object)

import Model.Question as Question exposing (..)

type alias Model =
    {
        questions: List Question.Model,
        userAnswers: List (Int,Int),
        currentQuestion: Int 
    }

newQuestions : Model
newQuestions = Model [] [] 0

questionsDecoder : Decode.Decoder Model
questionsDecoder =
    Decode.map3 Model
        (Decode.field "questions" <| oneOf [Decode.list Question.questionDecoder, null []])
        (Decode.field "userAnswers" <| Decode.null [])
        (Decode.field "currentQuestion" <| Decode.null 0)

resultEncoder : Model -> Encode.Value 
resultEncoder model =
    let
        toValue = \(qid,aid) -> [("questionId", Encode.int qid),
                               ("questionId", Encode.int aid)] 
    in
        Encode.list <| List.map (object<<toValue) model.userAnswers   

