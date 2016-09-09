defmodule Amplitude do
  use Amplitude.API

  @docmodule """
  Tools for getting data from the Worldping API

  Each Worldping API query accesses a different URL, not just different query
  arguments, so for clarity each type of Worldping API call gets its own
  function
  """

  @doc """
  Track an event with specified properties

      iex> {:ok, response} = Amplitude.track("my_event", "jdoe_123", %{"ip" => "127.0.0.1"}, %{"cohort" => "Test A"})
      ...> response
      "success"
  """
  def track(event_type, user_id, event_props \\ %{}, user_props \\ %{})
  def track(event_type, user_id, event_props, user_props) do
    %{"event_type" => event_type, "user_id" => user_id, "event_properties" => event_props, "user_properties" => user_props}
    |> api_track
  end
end
