class PicsController < ApplicationController
  before_action :find_pic, only: [:show, :edit, :update, :destroy]


  def index
    @pics = Pic.all.order('created_at DESC')
  end

  def show
  end

  def new
    @pic = Pic.new
  end

  def create
    respond_to do |format|
      @pic = Pic.new(pic_params)
      if @pic.save
        format.html { redirect_to @pic, notice: 'Pic was successfully posted!' }
        format.json { render :show, status: :created, location: @pic }
      else
        format.html { render :new }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @pic.update(pic_params)
        format.html { redirect_to @pic, notice: 'Congrats! Pic was updated!' }
        format.json { render :show, status: :ok, location: @pic }
      else
        format.html { render :edit }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pic.destroy
    respond_to do |format|
      format.html { redirect_to pics_url, notice: 'Pic was successfully destroyed!' }
      format.json { head :no_content }
    end
  end

  private

  def pic_params
    params.require(:pic).permit(:title, :description)
  end

  def find_pic
    @pic = Pic.find(params[:id])
  end

end
