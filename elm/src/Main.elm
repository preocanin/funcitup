module Main exposing(..)

import Html 

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
