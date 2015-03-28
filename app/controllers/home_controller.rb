class HomeController < ApplicationController
   skip_before_filter :require_login, :only => [:index, :test]
  def index
    @vacants = Vacant.all
  end
end
