defmodule Ape.Chains.Vk do
  use Agala.Chain.Builder

  chain(Agala.Chain.Loopback)
  chain(Agala.Provider.Vk.Chain.Parser)
  chain(:handle)

  alias Agala.Provider.Vk.Helpers.Messages

  def handle(%{request: %{text: text, user_id: user_id, random_id: 0}} = conn, opts) do
    IO.inspect(conn)
    IO.inspect(opts)
    IO.inspect Messages.send(conn, user_id, text)
    conn
  end

  def handle(conn, opts) do
    conn
  end
end
