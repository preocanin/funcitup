module Main exposing(..)

import Html exposing (text, ul, li, div, a, span, nav)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class)
import Bootstrap.Navbar exposing (..)
import Bootstrap.Grid exposing (containerFluid)

import Msg.Main exposing (..)
import Model.Main exposing (..)
import Update.Main exposing (..)
import View.Main exposing (..)

main = Html.program {
            init = Model.Main.init,
            view = View.Main.view,
            update = Update.Main.update,
            subscriptions = \_ -> Sub.none
       }
