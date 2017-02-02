module Model.Main exposing (..)

import Msg.Main exposing (..)
import Model.Navigation exposing (..)

type alias Model =
        { 
            page: Page
        }

initialModel : Model
initialModel = Model Home

init : (Model, Cmd Msg)
init = (initialModel, Cmd.none)
    


