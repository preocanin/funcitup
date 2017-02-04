module View.Quiz exposing (quiz)

import Html exposing (Html, div, text, input, label, form)
import Html.Attributes exposing (value, class,attribute, style, for, required)
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
        div [] [
        container  
                  [
                    questionView questionsModel.dirty <| getQuestion questionsModel,
                    progress model,
                    buttons model
                  ]
        ]


progress model =
    let 
        prog = ( toFloat model.modelForQuestions.currentQuestion / toFloat (length model.modelForQuestions.questions)) 
    in
    div [class "row"] [
    div [ class "col-md-6"] 
    [
        div [ class "row text-center"] [text (toString (model.modelForQuestions.currentQuestion + 1)) ,text "/",text (toString <| length model.modelForQuestions.questions)],
        div [ class "row progress" ]
        [ 
            div [ class "progress-bar", attribute  "role" "progressbar", attribute "aria-valuenow" (toString prog),attribute "aria-valuemin" "0", attribute "aria-valuemax" "100", style [ ( "width", (toString (prog*100))++"%" ) ] ]
            [ text ((toString (prog*100))++"%") ]
        ]
    ]
    ]
-- Used in buttons function
buttonNextScore : Int -> Int -> Html Main.Msg
buttonNextScore current length =
    if current /= length - 1 then
        -- Not last question
        btn BtnPrimary [ BtnSmall ] [ ] 
            [ onClick (Main.MsgForQuestions  Questions.Next), class "pull-right"]
            [ text "Next" ]
    else
        div [] [] 

-- Used in buttons function
buttonBack : Int -> Html Main.Msg
buttonBack current =
    if current /= 0 then
        btn BtnPrimary [ BtnSmall ] []
            [ onClick (Main.MsgForQuestions  Questions.Back), class "pull-left" ]
            [ text "Back" ]
    else
        div [] []

buttonsScore : String -> Int -> Int -> List (Html Main.Msg)
buttonsScore name current length =
    if current == length - 1 then
    [
        div [class "form-inline"] [  
                label [] [ text "Name: " ],
                input 
                    [   class "form-control",
                        onInput (Main.MsgForQuestions<<Questions.Name),
                        required True,
                        value name 
                    ] [],

        btn BtnPrimary [BtnSmall] []
            [ onClick (Main.MsgForQuestions Questions.SendScore), attribute "type" "submit" ]
            [text "Submit"]
        ]
    ]
    else
        [form [] []]

buttons : Model -> Html Main.Msg
buttons model =
    let questionsModel = model.modelForQuestions
    in
    row [
        row
            [
                column [ Medium Six ]
                    [
                        column []
                            [
                                buttonBack questionsModel.currentQuestion
                            ],
                        column []
                            [
                                buttonNextScore
                                    questionsModel.currentQuestion
                                    <| length questionsModel.questions
                            ]
                        
                    ]
            ],
             row
             [   div [ class "col-md-12 score-submit" ]
                            (buttonsScore
                                    questionsModel.name
                                    questionsModel.currentQuestion
                                    <| length questionsModel.questions)
            ]
        ]
