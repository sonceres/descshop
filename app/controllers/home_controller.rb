class HomeController < ApplicationController

def index


@ad=Ad.paginate(:page => params[:page], :per_page => 6)



end




end
