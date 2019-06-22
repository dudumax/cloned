class TweetaController < ApplicationController
  before_action :set_tweetum, only: [:show, :edit, :update, :destroy]

  # GET /tweeta
  # GET /tweeta.json
  def index
    @tweeta = Tweetum.all
  end

  # GET /tweeta/1
  # GET /tweeta/1.json
  def show
  end

  # GET /tweeta/new
  def new
    @tweetum = Tweetum.new
  end

  # GET /tweeta/1/edit
  def edit
  end

  # POST /tweeta
  # POST /tweeta.json
  def create
    @tweetum = Tweetum.new(tweetum_params)

    respond_to do |format|
      if @tweetum.save
        format.html { redirect_to @tweetum, notice: 'Tweetum was successfully created.' }
        format.json { render :show, status: :created, location: @tweetum }
      else
        format.html { render :new }
        format.json { render json: @tweetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweeta/1
  # PATCH/PUT /tweeta/1.json
  def update
    respond_to do |format|
      if @tweetum.update(tweetum_params)
        format.html { redirect_to @tweetum, notice: 'Tweetum was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweetum }
      else
        format.html { render :edit }
        format.json { render json: @tweetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweeta/1
  # DELETE /tweeta/1.json
  def destroy
    @tweetum.destroy
    respond_to do |format|
      format.html { redirect_to tweeta_url, notice: 'Tweetum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweetum
      @tweetum = Tweetum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweetum_params
      params.require(:tweetum).permit(:tweta)
    end
end
