defmodule Ape.Chains.Vk do
  use Agala.Chain.Builder

  chain(Agala.Chain.Loopback)
  chain(Agala.Provider.Vk.Chain.Parser)
  chain(:handle)
  alias Agala.Provider.Vk

  # def handle(%{request: %{message: %{chat: %{id: id}, text: text}}} = conn, opts) do
  #   IO.inspect(conn)
  #   IO.inspect(opts)
  #   # IO.inspect Helpers.send_message(conn, id, text)
  #   conn
  # end

  def handle(conn, opts) do
    IO.inspect(conn)
    IO.inspect(opts)
    conn
  end
end
