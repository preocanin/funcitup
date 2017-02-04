module Update.Navigation exposing (..)

import Msg.Main as Main exposing (..)
import Msg.Navigation as Navigation exposing (..)

import Command.Main exposing (..) 

import Model.Navigation exposing (..)
import Model.Main exposing (..)

updateNavigation : Navigation.Msg -> Model -> (Model, Cmd Main.Msg)
updateNavigation msg model =
    let newModel = initialModel in
    case msg of
        Navigation.Home -> ({newModel | page = Model.Navigation.Home}, Cmd.none)
        Navigation.Quiz -> ({newModel | page = Model.Navigation.Quiz}, questionsGetAll)
        Navigation.Theory -> ({newModel | page = Model.Navigation.Theory}, Cmd.none)
        Navigation.Score -> ( {newModel | page = Model.Navigation.Score}, getScores)

