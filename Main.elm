module Main exposing (main)

import Http


type alias Msg =
    Result Http.Error String


type alias Model =
    ()


init : () -> ( Model, Cmd Msg )
init flags =
    ( ()
    , "https://google.com/robots.txt" |> Http.getString |> Http.send identity
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


main =
    Platform.worker
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        }
