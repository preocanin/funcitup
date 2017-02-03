module View.Home exposing (..)

import Html exposing (Html, text, h1)
import Html.Events exposing (onClick)

import Bootstrap.Grid exposing (container, row, column, ColumnType(..), ColumnSize(..))
import Bootstrap.Buttons exposing (btn, ButtonOption(..), ButtonSizeModifier(..), ButtonModifier(..))

import Model.Main exposing (..)

import Msg.Main as Main exposing (..)
import Msg.Navigation exposing (..)

home : Model -> Html Main.Msg
home model =
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
                                    h1 [] [text "Welcome to Funcitup!"] 
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
                                     if model.points == -21 then
                                         text ""
                                     else
                                         text <| toString model.points
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
                                    btn BtnPrimary 
                                        [BtnLarge] 
                                        [] 
                                        [onClick (Main.MsgForNavigation Quiz)] 
                                        [text "Start quiz!"]
                                 ]
                      ]
              ]

