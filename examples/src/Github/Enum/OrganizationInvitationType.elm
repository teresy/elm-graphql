-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.OrganizationInvitationType exposing (OrganizationInvitationType(..), decoder, toString)

import Json.Decode as Decode exposing (Decoder)


{-| The possible organization invitation types.

  - User - The invitation was to an existing user.
  - Email - The invitation was to an email address.

-}
type OrganizationInvitationType
    = User
    | Email


decoder : Decoder OrganizationInvitationType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "USER" ->
                        Decode.succeed User

                    "EMAIL" ->
                        Decode.succeed Email

                    _ ->
                        Decode.fail ("Invalid OrganizationInvitationType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : OrganizationInvitationType -> String
toString enum =
    case enum of
        User ->
            "USER"

        Email ->
            "EMAIL"
