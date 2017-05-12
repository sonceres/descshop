class AdsController < ApplicationController
  def index
  end

  def new
@ad=Ad.new 

  end

  def create



    @model=Model.find current_model.id
    @ad=@model.ads.create ad_params
    if @ad.valid?
    redirect_to root_path
   
  else
redirect_to new_ad_path

   end
  end

  def edit

@model=Model.find current_model.id
    @ad=@model.ads.find params[:id]
    if @ad.valid?
    redirect_to root_path
   
  else
redirect_to new_ad_path
end


  end

  def destroy

    @ad=Ad.find params[:id]
    @ad.destroy
     redirect_to root_path

  end



def show
@ad=Ad.find  params[:id]

end


def ad_params
    params.require(:ad).permit([:model_id, :section_id,:zagolovok,:tekst,:img1,:img2,:img3,:tags,:status,:location,:id])
  end


end
