module Model.Main exposing (..)

import Msg.Main exposing (..)

type alias Model =
        { 
            page: String
        }

initialModel : Model
initialModel = Model "Home"

init : (Model, Cmd Msg)
init = (initialModel, Cmd.none)
    


