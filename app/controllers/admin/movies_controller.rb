require 'csv'

class Admin::MoviesController < Admin::BaseController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /admin/movies
  # GET /admin/movies.json
  def index
    @movies = Movie.all
  end

  # GET /admin/movies/1
  # GET /admin/movies/1.json
  def show
  end

  # GET /admin/movies/1/edit
  def edit
  end

  # PATCH/PUT /admin/movies/1
  # PATCH/PUT /admin/movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/movies/1
  # DELETE /admin/movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def export_movies
    @movies = Movie.order(:name)
    respond_to do |format|
      format.csv { send_data @movies.to_csv }
      # format.xls { send_data @movies.to_csv(col_sep: "\t") }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.fetch(:movie, {})
    end
end
