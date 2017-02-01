module Update.Navigation exposing (..)

import Msg.Main as Main exposing (..)
import Msg.Navigation as Navigation exposing (..)
import Model.Main exposing (..)

updateNavigation : Navigation.Msg -> Model -> (Model, Cmd Main.Msg)
updateNavigation msg model =
    case msg of
        Home -> ({model | page = "Home"}, Cmd.none)
        Quiz -> ({model | page = "Quiz"}, Cmd.none)
        Theory -> ({model | page = "Theory"}, Cmd.none)

