module View.Navigation exposing (..)

import Html exposing (Html, text, ul, li, div, a, nav, span)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class)

import Bootstrap.Navbar exposing (..)
import Bootstrap.Grid exposing (containerFluid)

import Model.Main exposing (..)
import Msg.Main as Main exposing (..)
import Msg.Navigation exposing (..)

navigation : Model -> Html Main.Msg 
navigation model =
     nav 
        [
            class "navbar navbar-inverse"
        ] 
        [
            containerFluid
                [
                    navbarHeader [] 
                        [
                            a [
                                class "navbar-brand",
                                onClick (MsgForNavigation Home)
                              ] 
                              [text "Funcitup"]
                        ],
                    navbarList NavbarNav NavbarDefault []
                        [
                            li []
                                [
                                    a [onClick (MsgForNavigation Quiz)] [text "Quiz"]
                                ],
                            li [] 
                                [
                                    a [onClick (MsgForNavigation Theory)] [text "Theory"]
                                ]
--                            li [] 
--                                [
--                                    a [onClick (MsgForNavigation Home)] [text "Home"]
--                                ]
                        ]
                ]
        ]

