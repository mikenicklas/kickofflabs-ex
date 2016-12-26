defmodule Kickofflabs.Lead do
  def new([email: _] = params) do
    Kickofflabs.post("/subscribe", {:form, params})
  end

  def get([email: _] = params) do
    _get(params)
  end

  def get([social_id: _] = params) do
    _get(params)
  end

  def _get(params) do
    Kickofflabs.get("/info", [], params: params)
  end
end
