module Update.Navigation exposing (..)

import Msg.Main as Main exposing (..)
import Msg.Navigation as Navigation exposing (..)
import Model.Navigation exposing (..)
import Model.Main exposing (..)

updateNavigation : Navigation.Msg -> Model -> (Model, Cmd Main.Msg)
updateNavigation msg model =
    case msg of
        Navigation.Home -> ({model | page = Model.Navigation.Home}, Cmd.none)
        Navigation.Quiz -> ({model | page = Model.Navigation.Quiz}, Cmd.none)
        Navigation.Theory -> ({model | page = Model.Navigation.Theory}, Cmd.none)

