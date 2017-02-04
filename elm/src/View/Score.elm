module View.Score exposing (..)

import Html exposing (Html, text, h1, div, h4, h3, b)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import List exposing (isEmpty, map)

import Bootstrap.Grid exposing (container, row, column, ColumnType(..), ColumnSize(..))
import Bootstrap.Buttons exposing (btn, ButtonOption(..), ButtonSizeModifier(..), ButtonModifier(..))

import Model.Main exposing (..)
import Model.Score exposing (..)

import Msg.Main as Main exposing (..)
import Msg.Navigation exposing (..)

score : Model.Main.Model -> Html Main.Msg
score model =
    -- Uraditi prikaz model.score : List Score.Model
    -- Score.Model ima tri polja id, name i points
    container 
        [
            row 
                [
                    column 
                        [ Medium Twelve ]
                        [
                            if model.points == -21 then
                                text ""
                            else
                                text <| "Congratulations, your score is: " ++ (toString model.points) ++ if(model.points> 8) then ", Good Job!" else "!"
                        ]
                ],
            row
                [
                    column 
                        [ Medium Twelve ]
                        [
                        viewScores model.score
                        ]                  
                ],
            row 
                [
                    column 
                        [ Medium Twelve ]
                        [
                            btn BtnPrimary 
                                [BtnLarge] 
                                [] 
                                [onClick (Main.MsgForNavigation Home), class "go-home-btn"] 
                                [text "Go home!"]
                        ]
                ]
      ]

viewScores: List Model.Score.Model -> Html Main.Msg
viewScores scores =
    div [ class "col-md-6" ] 
        <|  [ h4 [] [ text "Hall of fame:"] ]  ++  [ div [class "col-md-6"][b [] [text "Name:"]], div[class "col-md-6"][b [] [text "Score:"]] ] ++ map viewSingleScore scores

viewSingleScore: Model.Score.Model -> Html Main.Msg
viewSingleScore score = 
        div [] [div [class "col-md-6"] [text score.name], div [class "col-md-6"] [text (toString score.points)]]
    