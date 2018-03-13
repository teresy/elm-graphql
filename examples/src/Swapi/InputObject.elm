-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Swapi.InputObject exposing (..)

import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import Swapi.Enum.Language
import Swapi.Interface
import Swapi.Object
import Swapi.Scalar
import Swapi.Union


buildGreeting : (GreetingOptionalFields -> GreetingOptionalFields) -> GreetingRequiredFields -> Greeting
buildGreeting fillOptionals required =
    let
        optionals =
            fillOptionals
                { language = Absent, options = Absent }
    in
    { language = optionals.language, name = required.name, options = optionals.options }


type alias GreetingRequiredFields =
    { name : String }


type alias GreetingOptionalFields =
    { language : OptionalArgument Swapi.Enum.Language.Language, options : OptionalArgument GreetingOptions }


{-| Type for the Greeting input object.
-}
type alias Greeting =
    { language : OptionalArgument Swapi.Enum.Language.Language, name : String, options : OptionalArgument GreetingOptions }


{-| Encode a Greeting into a value that can be used as an argument.
-}
encodeGreeting : Greeting -> Value
encodeGreeting input =
    Encode.maybeObject
        [ ( "language", Encode.enum Swapi.Enum.Language.toString |> Encode.optional input.language ), ( "name", Encode.string input.name |> Just ), ( "options", encodeGreetingOptions |> Encode.optional input.options ) ]


buildGreetingOptions : (GreetingOptionsOptionalFields -> GreetingOptionsOptionalFields) -> GreetingOptions
buildGreetingOptions fillOptionals =
    let
        optionals =
            fillOptionals
                { prefix = Absent }
    in
    { prefix = optionals.prefix }


type alias GreetingOptionsOptionalFields =
    { prefix : OptionalArgument String }


{-| Type for the GreetingOptions input object.
-}
type alias GreetingOptions =
    { prefix : OptionalArgument String }


{-| Encode a GreetingOptions into a value that can be used as an argument.
-}
encodeGreetingOptions : GreetingOptions -> Value
encodeGreetingOptions input =
    Encode.maybeObject
        [ ( "prefix", Encode.string |> Encode.optional input.prefix ) ]
