class FreechatChannel < ApplicationCable::Channel
	require "socket"
  def subscribed
    stream_from "freechat_channel"
    ActionCable.server.broadcast "ssss"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  def speak(data)
  	@message = Message.create(content: data['message'], user_id: current_user.id)
  	# connection.transmit({'title': 'players_online', 'message': 'asdasdasdas'})
  end
end
