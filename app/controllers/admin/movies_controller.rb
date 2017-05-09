require 'csv'
require 'imdb'

class Admin::MoviesController < Admin::BaseController
  before_action :set_movie, only: [:show, :edit, :update, :destroy, :banners]

  # GET /admin/movies
  # GET /admin/movies.json
  def index
    # binding.pry
    @movies = Movie.all#limit(params['draw'])
  end

  # GET /admin/movies/1
  # GET /admin/movies/1.json
  def show
    render json: @movie.as_json
  end

  # GET /admin/movies/1/edit
  def edit
    @movie.banners.build if @movie.banners.blank?
  end

  # GET /admin/movies/1/edit
  def fetch_from_openload
    @movie = Movie.first
  end

  # PATCH/PUT /admin/movies/1
  # PATCH/PUT /admin/movies/1.json
  def update
    if params[:openload].present?
      ol = OpenLoad.new
      movie_detail = ol.folder_list(params[:movie][:folderid])
      subtitle = nil
      @movie = nil
      movie_detail['result']['files'].each do |file|
        if file['content_type'] == 'text/x-c'
          subtitle = Subtitle.find_or_create_by(link: file['link'])
        elsif file['content_type'] == 'video/mp4'
          @movie = Movie.find_or_create_by(folderid: file['folderid'])
          @movie.name = file['name']
          @movie.file_name = file['name']
          @movie.sha1 = file['sha1']
          @movie.folderid = file['folderid']
          @movie.upload_at = file['upload_at']
          @movie.status = file['status']
          @movie.size = file['size']
          @movie.content_type = file['content_type']
          @movie.download_count = file['download_count']
          @movie.cstatus = file['cstatus']
          @movie.link = file['link']
          @movie.linkextid = file['linkextid']
        end
      end
      if @movie
        @movie.subtitle = subtitle
        @movie.save
        if movie_detail['result']['folders'].size > 0 && movie_detail['result']['folders'][0]['name'] == 'banners'
          fetch_banners(movie_detail['result']['folders'][0]['id'], ol)
        end
        ap "Movie #{@movie.name} Synced!"
      end
    end

    if params[:movie][:imdbid].present? && params[:movie][:imdb_synced].present?
      imdb_movie = Imdb::Serie.new(params[:movie][:imdbid])
      @movie.released_date = imdb_movie.release_date
      @movie.metascore = imdb_movie.metascore
      @movie.tagline = imdb_movie.tagline
      @movie.tag_list = imdb_movie.genres
      @movie.company = imdb_movie.company
      @movie.length = imdb_movie.length
      @movie.vote_count = imdb_movie.votes
      @movie.director_list = (imdb_movie.director - ["(more)"])
      @movie.writer_list = (imdb_movie.writers - ["(more)"])
      @movie.country_list = (imdb_movie.countries - ["(more)"])
      @movie.cast_member_list = imdb_movie.cast_members
      @movie.plot_summary = imdb_movie.plot_summary
      @movie.poster = imdb_movie.poster
      @movie.imdb_synced = true
    end

    respond_to do |format|
      if @movie.save && @movie.update(movie_params)
        format.html { redirect_to "/admin/movies/#{@movie.id}/edit", notice: 'Movie was successfully updated.' }
      else
        format.html { render :edit }
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
      @movie = Movie.find(params[:id]) rescue nil
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      # params.fetch(:movie, {})
      params.require(:movie).permit!
    end

    def fetch_banners folderid, ol
      banner_results = ol.folder_list(folderid)
      banner_results['result']['files'].each do |banner_file|
        if banner_file['content_type'] == 'image/jpeg'
          banner_download_ticket = ol.download_ticket(banner_file['linkextid'])
          unless banner_download_ticket['result']['captcha_url']
            banner_link = ol.download_link(banner_file['linkextid'], banner_download_ticket['result']['ticket'])
            banner = @movie.banners.find_or_initialize_by(sha: banner_link['result']['sha1'])
            banner.image = open(banner_link['result']['url'])
            if banner.save
              ap "Found banner image #{@movie.name} -> #{banner_link['result']['name']}"
            else
              ap banner.errors.full_messages.join(", ")
            end
          end
        end
      end
    end
end
