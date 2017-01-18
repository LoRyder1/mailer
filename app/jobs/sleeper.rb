class Sleeper
  @queue = :sleep

  def sleep.perform(seconds)
    sleep(seconds)
  end
end