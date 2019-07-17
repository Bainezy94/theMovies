class ShowtimesController < ApplicationController
load_and_authorize_resource
  # GET /showtimes
  # GET /showtimes.json
  def index
    @seat = Seat.all
    @movie = Movie.all
  end

  # GET /showtimes/1
  # GET /showtimes/1.json
  def show
  end

  # GET /showtimes/new
  def new
  end

  # GET /showtimes/1/edit
  def edit
  end

  # POST /showtimes
  # POST /showtimes.json
  def create
    respond_to do |format|
      if @showtime.save
        format.html { redirect_to @showtime, notice: 'Showtime was successfully created.' }
        format.json { render :show, status: :created, location: @showtime }
      else
        format.html { render :new }
        format.json { render json: @showtime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showtimes/1
  # PATCH/PUT /showtimes/1.json
  def update
    respond_to do |format|
      if @showtime.update(showtime_params)
        format.html { redirect_to @showtime, notice: 'Showtime was successfully updated.' }
        format.json { render :show, status: :ok, location: @showtime }
      else
        format.html { render :edit }
        format.json { render json: @showtime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showtimes/1
  # DELETE /showtimes/1.json
  def destroy
    @showtime.destroy
    respond_to do |format|
      format.html { redirect_to showtimes_url, notice: 'Showtime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showtime
      @showtime = Showtime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showtime_params
      params.require(:showtime).permit(:movie_id, :date, :cinema_id)
    end
end
