defmodule JSONParser do
  def read_file(file_path) do
    File.read(file_path)
  end

  def parse_json({:ok, content}), do: Jason.decode(content)
  def parse_json({:error, reason}), do: {:error, "File read failed: #{inspect(reason)}"}

  def process(file_path) do
    file_path
    |> read_file()
    |> parse_json()
  end

end
