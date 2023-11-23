# frozen_string_literal: true
class BuyTimeWorker
  include Sidekiq::Worker
  def perform(name,sec)
    p "Hey #{name}, going to sleep for #{sec}."
    sleep(sec)
    p "It was quite long nap."
  end
end
