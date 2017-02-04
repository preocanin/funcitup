module View.Answers exposing (viewAnswers)

import Html exposing (Html, div, input, label, text)
import Html.Attributes exposing (type_, name, checked, value)
import Html.Events exposing (onClick)
import String exposing (isEmpty)
import List exposing (map)

import Msg.Main as Main exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Answer exposing (..)

viewAnswers : Bool -> Int -> List Model -> Html Main.Msg
viewAnswers dirty qid answers =
    div []
        <| map (answerToRadioButton dirty qid) answers 
answerToRadioButton : Bool -> Int -> Model -> Html Main.Msg
answerToRadioButton dirty qid answer =
    radio dirty qid answer.text (Main.MsgForQuestions <| Questions.Answer qid answer.id)

    
radio : Bool -> Int -> String -> Main.Msg -> Html Main.Msg
radio dirty qid answerText msg =
    div []
        [
            if qid >= 0 then
            label []
                  [
                    input [ 
                            type_ "radio", 
                            name <| toString qid,
                            checked (isEmpty answerText),
                            onClick msg,
                            value answerText
                          ]
                          [],
                    text answerText 
                  ]
            else
                div [] [] 
        ]
