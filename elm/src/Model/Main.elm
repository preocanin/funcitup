module Model.Main exposing (..)

import Json.Decode exposing (Decoder, list)

import Msg.Main exposing (..)
import Model.Navigation exposing (..)
import Model.Questions as Questions exposing (..)
import Model.Score as Score exposing (..)

type alias Model =
        { 
            page: Page,
            modelForQuestions: Questions.Model,
            points: Float,
            score: List Score.Model
        }

initialModel : Model
initialModel = Model Home newQuestions -21 [] 

init : (Model, Cmd Msg)
init = (initialModel, Cmd.none)
    
scoresDecoder : Decoder (List Score.Model)
scoresDecoder =
    list Score.scoreDecoder
