defmodule TelegramApi do
  def telegram_bot_token, do: Application.get_env(:gram_potion, :token)
  def telegram_bot_api, do: "https://api.telegram.org/bot#{telegram_bot_token()}/"
  def send_message(chat_id, msg) do
    header = "#{telegram_bot_api()}sendMessage"
    body = %{
      "chat_id" => chat_id,
      "text" => msg,
      "parse_mode" => "Markdown"
    }
    |> Jason.encode!()
    headers = [{"Content-Type", "application/json"}]

    HTTPoison.post(header, body, headers)
  end
end
