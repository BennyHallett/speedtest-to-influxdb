defmodule Mix.Tasks.Report do
  use Mix.Task

  def run(_args) do
    Application.ensure_all_started :fluxter
    # GET INPUT FROM STDIN

    SpeedReporter.Fluxter.start_link
    SpeedReporter.Fluxter.write("download_speed", [], 32.8)
    SpeedReporter.Fluxter.write("upload_speed", [], 12.8)
  end
end
