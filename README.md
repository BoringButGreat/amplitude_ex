# Amplitude_ex

An Elixir client for the Amplitude HTTP API

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `amplitude` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:amplitude, "~> 0.1.0"}]
    end
    ```

  2. Ensure `amplitude` is started before your application:

    ```elixir
    def application do
      [applications: [:amplitude]]
    end
    ```
