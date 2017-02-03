module Model.Main exposing (..)

import Msg.Main exposing (..)
import Model.Navigation exposing (..)
import Model.Questions as Questions exposing (..)

type alias Model =
        { 
            page: Page,
            modelForQuestions: Questions.Model,
            points: Int
        }

initialModel : Model
initialModel = Model Home newQuestions 0

init : (Model, Cmd Msg)
init = (initialModel, Cmd.none)
    


