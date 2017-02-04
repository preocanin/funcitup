module View.Question exposing (..)

import Html exposing (Html, div, text, h4)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class)

import Bootstrap.Grid exposing (container, row, column, ColumnType(..), ColumnSize(..))

import Msg.Main as Main exposing (..)
import Msg.Questions as Questions exposing (..)

import Model.Question exposing (..)

import View.Answers exposing (..)

questionView : Bool -> Model -> Html Main.Msg
questionView dirty model =
    div [ class "question"] 
            [
                row
                    [
                        column 
                            [ Medium Six ]
                            [ h4 [] [text model.text] ]
                    ],
                row
                    [
                        column 
                            [ Medium Six ]
                            [ viewAnswers dirty model.id model.answers ]
                    ]
            ]

