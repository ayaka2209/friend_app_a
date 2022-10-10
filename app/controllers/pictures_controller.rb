class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
    redirect_to picture_path, notice: "写真を投稿しました！"
    else
      render :new
    end
  end

  def show
    params[:id]
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update(picture_params)
      redirect_to picture_path, notice: "投稿しました！"
    else
      render :edit
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :content, :user)
  end
end
