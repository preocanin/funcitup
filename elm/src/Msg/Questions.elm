module Msg.Questions exposing (..)

import Http exposing (..)

import Model.Questions exposing (..)

type Msg =
        AllQuestions (Result Error Model)


