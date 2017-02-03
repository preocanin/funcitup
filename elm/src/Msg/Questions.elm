module Msg.Questions exposing (..)

import Http exposing (..)

import Model.Question exposing (..)

type Msg 
        = AllQuestions (Result Error (List Model.Question.Model))
        | Next
        | Back
        | Points (Result Error Float)
        | Answer Int Int 
        | Name String
        | SendScore 

        
