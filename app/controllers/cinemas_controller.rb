class CinemasController < ApplicationController
    load_and_authorize_resource

  # GET /cinemas
  # GET /cinemas.json
  def index
  end

  # GET /cinemas/1
  # GET /cinemas/1.json
  def show
  end

  # GET /cinemas/new
  def new
  end

  # GET /cinemas/1/edit
  def edit
  end

  # POST /cinemas
  # POST /cinemas.json
  def create
    respond_to do |format|
      if @cinema.save
        format.html { redirect_to @cinema, notice: 'Cinema was successfully created.' }
        format.json { render :show, status: :created, location: @cinema }
      else
        format.html { render :new }
        format.json { render json: @cinema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cinemas/1
  # PATCH/PUT /cinemas/1.json
  def update
    respond_to do |format|
      if @cinema.update(cinema_params)
        format.html { redirect_to @cinema, notice: 'Cinema was successfully updated.' }
        format.json { render :show, status: :ok, location: @cinema }
      else
        format.html { render :edit }
        format.json { render json: @cinema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cinemas/1
  # DELETE /cinemas/1.json
  def destroy
    @cinema.destroy
    respond_to do |format|
      format.html { redirect_to cinemas_url, notice: 'Cinema was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cinema
      @cinema = Cinema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cinema_params
      params.require(:cinema).permit(:cinema, :cinema_type)
    end
end
