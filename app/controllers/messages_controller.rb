class MessagesController < ApplicationController
  def index
     @name = current_user.name
  end
end
