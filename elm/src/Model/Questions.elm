module Model.Questions exposing (..)

import List exposing (map, head, drop)

import Json.Decode as Decode exposing (Decoder, oneOf, null, array, list, map3, field)
import Json.Encode as Encode exposing (Value, encode, list, int, object, string)

import Model.Question as Question exposing (..)

type alias Model =
    {
        questions: List Question.Model,
        userAnswers: List (Int,Int),
        currentQuestion: Int,
        name: String
    }

newQuestions : Model
newQuestions = Model [] [] 0 "guest"

getQuestion : Model -> Question.Model
getQuestion model =
    let
        question = head <| drop model.currentQuestion model.questions
    in
        case question of
            Just q -> q
            Nothing -> Question.newQuestion

questionsDecoder : Decode.Decoder (List Question.Model)
questionsDecoder =
    Decode.list Question.questionDecoder

resultEncoder : Model -> String 
resultEncoder model =
    let
        toValue = \(qid,aid) -> [("questionId", Encode.int qid),
                               ("answerId", Encode.int aid)] 
    in
        encode 0 (Encode.list <| List.map (object<<toValue) model.userAnswers)


