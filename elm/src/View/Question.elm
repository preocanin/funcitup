module View.Question exposing (..)

import Html exposing (Html, div, text)
import Html.Events exposing (onClick)

import Bootstrap.Grid exposing (container, row, column, ColumnType(..), ColumnSize(..))

import Msg.Main as Main exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Question exposing (..)

import View.Answers exposing (..)

questionView : Bool -> Model -> Html Main.Msg
questionView dirty model =
    div [] 
            [
                row
                    [
                        column [
                                    Large      Twelve,
                                    Medium     Twelve,
                                    Small      Twelve,
                                    ExtraSmall Twelve
                               ]
                               [
                                    text model.text      
                               ]
                    ],
                row
                    [
                        column [
                                    Large      Twelve,
                                    Medium     Twelve,
                                    Small      Twelve,
                                    ExtraSmall Twelve
                               ]
                               [
                                    viewAnswers dirty model.id model.answers
                               ]
                    ]
            ]

