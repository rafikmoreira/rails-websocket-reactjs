class AlertasChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'alertas_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
