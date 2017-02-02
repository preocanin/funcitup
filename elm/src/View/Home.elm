module View.Home exposing (..)

import Html exposing (Html, text, h1)

import Bootstrap.Grid exposing (container, row, column, ColumnType(..), ColumnSize(..))
import Bootstrap.Buttons exposing (btn, ButtonOption(..), ButtonSizeModifier(..), ButtonModifier(..))

import Model.Main exposing (..)
import Msg.Main exposing (..)

home : Model -> Html Msg
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
                                    btn BtnPrimary [BtnLarge] [] [] [text "Start quiz!"]
                                 ]
                      ]
              ]

