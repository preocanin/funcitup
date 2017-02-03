module Msg.Questions exposing (..)

import Http exposing (..)

import Model.Question exposing (..)

type Msg 
        = AllQuestions (Result Error (List Model.Question.Model))
        | Next
        | Back
        | Answer Int Int 
        | Name String
        
