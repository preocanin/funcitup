module View.Quiz exposing (quiz)

import Html exposing (Html, div, text, input)
import Html.Attributes exposing (value)
import Html.Events exposing (onClick, onInput)

import Bootstrap.Grid exposing (container, row, column, ColumnType(..), ColumnSize(..))
import Bootstrap.Buttons exposing (btn, ButtonOption(..), ButtonSizeModifier(..), ButtonModifier(..))

import List exposing (isEmpty, length)

import Msg.Main as Main exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Main exposing (..)
import Model.Questions exposing (getQuestion)

import View.Question exposing (..)

quiz : Model -> Html Main.Msg
quiz model =
    let 
        questionsModel = model.modelForQuestions
    in
    if isEmpty questionsModel.questions
    then
        div [] [text "No questions"] 
    else
        container  
                  [
                    questionView <| getQuestion questionsModel,
                    buttons model
                    -- [Debug]: div [] [text model.modelForQuestions.name]
                  ]

-- Used in buttons function
buttonNextScore : Int -> Int -> Html Main.Msg
buttonNextScore current length =
    if current /= length - 1 then
        -- Not last question
        btn BtnPrimary
            [BtnSmall]
            []
            [
                onClick (Main.MsgForQuestions  Questions.Next)
            ]
            [text "Next"]
    else
        div [] [] 

-- Used in buttons function
buttonBack : Int -> Html Main.Msg
buttonBack current =
    if current /= 0 then
        btn BtnPrimary
            [BtnSmall]
            []
            [
                onClick (Main.MsgForQuestions  Questions.Back)
            ]
            [text "Back"]
    else
        div [] []

buttonsScore : String -> Int -> Int -> List (Html Main.Msg)
buttonsScore name current length =
    if current == length - 1 then
    [
        input [
                onInput (Main.MsgForQuestions<<Questions.Name),
                value name 
              ] [],
        btn BtnPrimary
            [BtnSmall]
            []
            [
                onClick (Main.MsgForQuestions Questions.SendScore)
            ]
            [text "Score"]
    ]
    else
        [div [] []]

buttons : Model -> Html Main.Msg
buttons model =
    let questionsModel = model.modelForQuestions
    in
                row
                    [
                        column [
                                    Large      Twelve,
                                    Medium     Twelve,
                                    Small      Twelve,
                                    ExtraSmall Twelve
                               ]
                               [
                                    column [
                                                Large      Six,
                                                Medium     Six,
                                                Small      Six,
                                                ExtraSmall Six 
                                           ]
                                           [
                                               buttonBack 
                                                    questionsModel.currentQuestion
                                           ],
                                    column [
                                                Large      Six,
                                                Medium     Six,
                                                Small      Six,
                                                ExtraSmall Six
                                           ]
                                           [
                                               buttonNextScore
                                                    questionsModel.currentQuestion
                                                    <| length questionsModel.questions
                                           ]
                                   
                               ],
                        column [
                                    Large      Twelve,
                                    Medium     Twelve,
                                    Small      Twelve,
                                    ExtraSmall Twelve
                               ]
                                    (buttonsScore
                                         questionsModel.name
                                         questionsModel.currentQuestion
                                         <| length questionsModel.questions)
                    ]
 
