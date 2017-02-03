module View.Answers exposing (viewAnswers)

import Html exposing (Html, div, input, label, text)
import Html.Attributes exposing (type_, name, checked)
import Html.Events exposing (onClick)

import List exposing (isEmpty, map)

import Msg.Main as Main exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Answer exposing (..)

viewAnswers : Bool -> Int -> List Model -> Html Main.Msg
viewAnswers dirty qid answers =
    div []
        <| map (answerToRadioButton dirty qid) answers 
           -- ++ [ 
           -- div []
           -- [
           --     if not <| isEmpty answers then
           --         label []
           --         [
           --             input [ 
           --                     type_ "radio", 
           --                     name <| toString qid,
           --                     checked False 
           --               ] [],
           --         text "Ne znam."
           --         ]
           --     else
           --         div [] []
           -- ] ]
       

answerToRadioButton : Bool -> Int -> Model -> Html Main.Msg
answerToRadioButton dirty qid answer =
    radio dirty qid answer.text (Main.MsgForQuestions <| Questions.Answer qid answer.id)

    
radio : Bool -> Int -> String -> Main.Msg -> Html Main.Msg
radio dirty qid value msg =
    div []
        [
            if qid >= 0 then
            label []
                  [
                    input [ 
                            type_ "radio", 
                            name <| toString qid,
                            checked dirty,
                            onClick msg
                          ]
                          [],
                    text value 
                  ]
            else
                div [] [] 
        ]
