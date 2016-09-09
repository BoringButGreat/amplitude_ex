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

  3. Add an Amplitude API key to your application config file:

    ```elixir
    config :amplitude, api_key: "<your_api_key>"
    ```

## Usage

  1. Track events with the `Amplitude.track/4` function:
  
    ```elixir
    iex> Amplitude.track("my_event", "jdoe_123", %{"ip" => "127.0.0.1"}, %{"cohort" => "Test A"})
    {:ok, "success"}
    ```
