defmodule Ape.Chains.Telegram do
  use Agala.Chain.Builder

  chain(Agala.Chain.Loopback)
  chain(Agala.Provider.Telegram.Chain.Parser)
  chain(:handle)
  alias Agala.Provider.Telegram.Helpers

  def handle(%{request: %{message: %{chat: %{id: id}, text: text}}} = conn, opts) do
    IO.inspect(conn)
    IO.inspect(opts)
    IO.inspect Helpers.send_message(conn, id, text)
    conn
  end
end
