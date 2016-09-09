defmodule Amplitude.API do
  defmacro __using__(_) do
    case Application.get_env(:amplitude, :api_host) do
      "test" <> _ ->
        quote do
          import Amplitude.API.Fake
        end
      _ ->
        quote do
          import Amplitude.API.Real
        end
    end
  end
end
