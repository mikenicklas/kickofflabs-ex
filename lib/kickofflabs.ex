defmodule Kickofflabs do
  use HTTPoison.Base

  @endpoint "https://api.kickofflabs.com/v1/#{Application.get_env(:kickofflabs, :list_id)}/"

  defp process_url(url) do
    @endpoint <> url
  end
end
