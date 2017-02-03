module View.Question exposing (..)

import Html exposing (Html, text)
import Html.Events exposing (onClick)

import Bootstrap.Grid exposing (container, row, column, ColumnType(..), ColumnSize(..))

import Msg.Main as Main exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Question exposing (..)

import View.Answers exposing (..)

questionView : Model -> Html Main.Msg
questionView model =
    container
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
                                    viewAnswers model.id model.answers
                               ]
                    ]
            ]

