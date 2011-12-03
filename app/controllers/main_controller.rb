class MainController < ApplicationController
  def index
    @widgets = HashWithIndifferentAccess.new
    Widget.all.each{|w| @widgets[w.system_name] = w }
  end
end
