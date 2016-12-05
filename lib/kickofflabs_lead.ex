defmodule Kickofflabs.Lead do
  def get([email: email]) do
    %{email: email} |> get_subscription_data
  end

  def get([social_id: social_id]) do
    %{social_id: social_id} |> get_subscription_data
  end

  def new([email: _email] = params) do
    Kickofflabs.post("/subscribe", {:form, params})
  end

  defp get_subscription_data(params) do
    Kickofflabs.get("/info", [], params: params)
  end
end
