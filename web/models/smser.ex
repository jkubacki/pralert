defmodule Pralert.Smser do

  def send_pr_alert(number, action, url) do
    authdata = [basic_auth: {String.to_charlist(username), String.to_charlist(password)}]
    request = %{
      "from"    => "ElixirLive",
      "to"      => number,
      "message" => "Pull Request #{action} - #{url}"
    }

    request_data = URI.encode_query(request)
    {:ok, "SMS sent"}
  end

  def base_url do
    "https://api.46elks.com/a1/"
  end

  def username do
    System.get_env("username")
  end

  def password do
    System.get_env("password")
  end
end
