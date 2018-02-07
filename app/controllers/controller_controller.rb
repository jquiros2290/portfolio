class ControllerController < ApplicationController
  layout '_base'
  def index
    @contact = Contact.new
  end
end
