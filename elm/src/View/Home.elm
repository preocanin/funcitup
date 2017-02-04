module View.Home exposing (..)

import Html exposing (Html, div, text, h1, p)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)

import Bootstrap.Grid exposing (container, row, column, ColumnType(..), ColumnSize(..))
import Bootstrap.Buttons exposing (btn, ButtonOption(..), ButtonSizeModifier(..), ButtonModifier(..))

import Model.Main exposing (..)

import Msg.Main as Main exposing (..)
import Msg.Navigation exposing (..)

home : Model -> Html Main.Msg
home model =
    div [] [
    container  
        [
            row 
                [
                    column [ Medium Twelve ]
                        [
                            h1 [] [text "Welcome to Funcitup!"],
                            div [ class "jumbotron"] 
                                [
                                    p [] 
                                    [text "Funcitup is a quiz site for checking your knowladge in functional programming theory."],
                                    p []
                                    [text "You will be asked 10 questions and will be awarded 1 point for each question you get right, and -0.5 points for each question that you get wrong. At the end, you'll see how you compare to other players."]
                                ]
                            ]
                ],
            row 
                [
                    column [ Medium Twelve ]
                        [
                            btn BtnPrimary [BtnLarge] [] 
                                [onClick (Main.MsgForNavigation Quiz), class "start-quiz-btn"] 
                                [text "Start quiz!"]
                        ]
                ]
              ]
    ]
