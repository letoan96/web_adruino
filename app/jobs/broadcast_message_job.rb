class BroadcastMessageJob < ApplicationJob
  queue_as :default

  def perform(message)
     ActionCable.server.broadcast 'freechat_channel',  message.content
  end

  def render_message(message)
  	ApplicationController.renderer.render :partial => 'rooms/message', :locals => {:message => message }
  end
end
