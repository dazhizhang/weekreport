class WeeklyPublishesController < ApplicationController
  before_action :set_weekly_publish, only: [:show, :edit, :update, :destroy]

  # GET /weekly_publishes
  # GET /weekly_publishes.json
  def index
    @weekly_publishes = WeeklyPublish.all
  end

  # GET /weekly_publishes/1
  # GET /weekly_publishes/1.json
  def show
  end

  # GET /weekly_publishes/new
  def new
    @weekly_publish = WeeklyPublish.new
  end

  # GET /weekly_publishes/1/edit
  def edit
  end

  # POST /weekly_publishes
  # POST /weekly_publishes.json
  def create
    @weekly_publish = WeeklyPublish.new(weekly_publish_params)

    respond_to do |format|
      if @weekly_publish.save
        format.html { redirect_to @weekly_publish, notice: 'Weekly publish was successfully created.' }
        format.json { render :show, status: :created, location: @weekly_publish }
      else
        format.html { render :new }
        format.json { render json: @weekly_publish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekly_publishes/1
  # PATCH/PUT /weekly_publishes/1.json
  def update
    respond_to do |format|
      if @weekly_publish.update(weekly_publish_params)
        format.html { redirect_to @weekly_publish, notice: 'Weekly publish was successfully updated.' }
        format.json { render :show, status: :ok, location: @weekly_publish }
      else
        format.html { render :edit }
        format.json { render json: @weekly_publish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_publishes/1
  # DELETE /weekly_publishes/1.json
  def destroy
    @weekly_publish.destroy
    respond_to do |format|
      format.html { redirect_to weekly_publishes_url, notice: 'Weekly publish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekly_publish
      @weekly_publish = WeeklyPublish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekly_publish_params
      params.require(:weekly_publish).permit(:name, :publish_date)
    end
end
