module View.Theory exposing (..)

import Html exposing (Html, div, text, p, h2)
import Html.Attributes exposing (class)

import Msg.Main exposing (..)

import Model.Main exposing (..)

theory : Model -> Html Msg
theory model =
    div [ class "container well theory"]         
    [
            h2[][ text "Functional programming basics"],
            p [] [ 
            text 
            """
            In computer science, functional programming is a programming paradigm—a style of building the structure and elements of computer programs—that treats computation as the evaluation of mathematical functions and avoids changing-state and mutable data. It is a declarative programming paradigm, which means programming is done with expressions or declarations instead of statements. In functional code, the output value of a function depends only on the arguments that are input to the function, so calling a function f twice with the same value for an argument x will produce the same result f(x) each time. Eliminating side effects, i.e. changes in state that do not depend on the function inputs, can make it much easier to understand and predict the behavior of a program, which is one of the key motivations for the development of functional programming.
            """
            ],
            p [] [
            text
            """
            Functional programming has its origins in lambda calculus, a formal system developed in the 1930s to investigate computability, the Entscheidungsproblem, function definition, function application, and recursion. Many functional programming languages can be viewed as elaborations on the lambda calculus. Another well-known declarative programming paradigm, logic programming, is based on relations.
            In contrast, imperative programming changes state with commands in the source language, the most simple example being assignment. Imperative programming does have functions—not in the mathematical sense—but in the sense of subroutines. They can have side effects that may change the value of program state. Functions without return values therefore make sense. Because of this, they lack referential transparency, i.e. the same language expression can result in different values at different times depending on the state of the executing program.
            """
            ],
            h2 [] [text "Lambda calculus"],
            p [] [
                text 
                """
                Lambda calculus (also written as λ-calculus) is a formal system in mathematical logic for expressing computation based on function abstraction and application using variable binding and substitution. It is a universal model of computation that can be used to simulate any single-taped Turing machine and was first introduced by mathematician Alonzo Church in the 1930s as part of an investigation into the foundations of mathematics.
                """
            ],
            p [] [
                text 
                """
                Lambda calculus is Turing complete, that is, it is a universal model of computation that can be used to simulate any single-taped Turing machine. Its namesake, the Greek letter lambda (λ), is used in lambda expressions and lambda terms to denote binding a variable in a function.
                Lambda calculus may be typed and untyped. In typed lambda calculus, functions can be applied only if they are capable of accepting the given input's "type" of data.
                """
            ]
    ]


