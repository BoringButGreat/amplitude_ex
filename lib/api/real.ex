defmodule Amplitude.API.Real do
  use HTTPoison.Base

  defp api_host, do: Application.get_env(:amplitude, :api_host)
  defp api_key, do: Application.get_env(:amplitude, :api_key)
  defp json_header, do: ["Content-Type": "application/json"]

  def api_track(params) do
    case get(api_host(), [], params: [api_key: api_key(), event: Poison.encode!(params)]) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, body}
      {:ok, %HTTPoison.Response{status_code: 404, body: body}} ->
        {:error, body}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, reason}
    end
  end

  # validate Poison response and strip out json value
  def verify_json({:ok, json}), do: json
  def verify_json({_, response}), do: "#{inspect(response)}"

  defp process_request_headers(headers), do: headers++json_header()
end
