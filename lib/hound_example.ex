defmodule HoundExample do
  @moduledoc """
  Documentation for `HoundExample`.
  """
  require Logger
  use Hound.Helpers

  @moduledoc """
  Take a screenshot of the given URL and save it to the given filename.
  """
  def take_screenshot(url, filename) do
    Logger.info "Taking screenshot of #{url} and saving to #{filename}"

    Hound.start_session

    navigate_to url

    take_screenshot("./#{filename}")

    Hound.end_session

    Logger.info "Screenshot saved to #{filename}"

    {:ok, filename}
  end
end
