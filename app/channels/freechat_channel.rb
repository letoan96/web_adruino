class FreechatChannel < ApplicationCable::Channel
	require "socket"
  def subscribed
    stream_from "freechat_channel"
    stream_from "freechat_channel_2"
    # ActionCable.server.broadcast "web_notifications_1", { title: "New things!", body: "Ket noi thanh cong" }
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  def speak(data)
  	# @message = Message.create(content: data['message'], user_id: current_user.id)
    # puts data['message']  	
    # connection.transmit({'title': 'players_online', 'message': '2'})
    ActionCable.server.broadcast 'freechat_channel',  data['message']
  end
end
