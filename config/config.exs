use Mix.Config

config :ape, Ape.Bots.Telegram,
  provider: Agala.Provider.Telegram,
  chain: Ape.Chains.Telegram,
  provider_params: %{
    token: "200379601:AAF4006qqDnkkyw1z7SLKv1WBwLxIEU3Ux8"
  }

config :ape, Ape.Bots.Vk,
  provider: Agala.Provider.Vk,
  chain: Ape.Chains.Vk,
  provider_params: %{
    token: "d59ea31da4baf50408a03db822982799f39ba4acc901ab50d8b6d60179ba6ff081d62d3ee44e4fa3d533a"
  }
