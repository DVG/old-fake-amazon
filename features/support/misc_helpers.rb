module MiscHelpers
  # https://coderwall.com/p/aklybw
  def wait_for_ajax(wait_for_it=Capybara.default_wait_time)
    Timeout.timeout(wait_for_it) do
      loop do
        active = page.evaluate_script('Ajax.activeRequestCount + $j.active')
        break if active == 0
      end
    end
    sleep 1 #offset to allow the dom to finish updating
  end
end