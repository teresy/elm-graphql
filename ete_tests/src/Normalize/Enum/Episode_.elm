-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Normalize.Enum.Episode_ exposing (Episode_(..), decoder, toString)

import Json.Decode as Decode exposing (Decoder)


{-| One of the films in the Star Wars Trilogy

  - Empire - Released in 1980.
  - Jedi\_ - Released in 1983.
  - Newhope\_ - Released in 1977.

-}
type Episode_
    = Empire
    | Jedi_
    | Newhope_


decoder : Decoder Episode_
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "empire" ->
                        Decode.succeed Empire

                    "jedi_" ->
                        Decode.succeed Jedi_

                    "_newhope" ->
                        Decode.succeed Newhope_

                    _ ->
                        Decode.fail ("Invalid Episode_ type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : Episode_ -> String
toString enum =
    case enum of
        Empire ->
            "empire"

        Jedi_ ->
            "jedi_"

        Newhope_ ->
            "_newhope"
