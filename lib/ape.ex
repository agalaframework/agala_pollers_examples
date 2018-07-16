defmodule Ape do
  use Application
  require Logger

  def start(_type, _args) do
    children = [
      Ape.Bots.Telegram,
      Ape.Bots.Vk
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
