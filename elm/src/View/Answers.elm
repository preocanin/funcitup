module View.Answers exposing (viewAnswers)

import Html exposing (Html, div, input, label, text)
import Html.Attributes exposing (type_, name, checked)
import Html.Events exposing (onClick)

import List exposing (map)

import Msg.Main as Main exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Answer exposing (..)

viewAnswers : Int -> List Model -> Html Main.Msg
viewAnswers qid answers =
    div []
        <| map (answerToRadioButton qid) answers
       

answerToRadioButton : Int -> Model -> Html Main.Msg
answerToRadioButton qid answer =
    radio qid answer.text (Main.MsgForQuestions <| Questions.Answer qid answer.id)

    
radio : Int -> String -> Main.Msg -> Html Main.Msg
radio qid value msg =
    div []
        [
            label []
                  [
                    input [ 
                            type_ "radio", 
                            name <| toString qid,
                            checked False,
                            onClick msg
                          ]
                          [],
                    text value 
                  ]
        ]
