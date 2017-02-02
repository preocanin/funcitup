module Model.Main exposing (..)

import Msg.Main exposing (..)
import Model.Navigation exposing (..)
import Model.Questions as Questions exposing (..)

type alias Model =
        { 
            page: Page,
            modelForQuestions: Questions.Model
        }

initialModel : Model
initialModel = Model Home newQuestions

init : (Model, Cmd Msg)
init = (initialModel, Cmd.none)
    


