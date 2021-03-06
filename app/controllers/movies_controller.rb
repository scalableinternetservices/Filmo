class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, except: [:index, :show]
#def search
 #  if params[:search].present?
#	@movies=Movie.search(params[:search])
 #  else
#	@movies=Movie.all
 #  end
 # end
  # GET /movies
  # GET /movies.json
  def index
  @flag = 1
  @movies = Movie.select("id,title, poster_url, genres, price").all

  #@movies = Movie.paginate(:page => params[:page], :per_page => 10)

   if params[:search]
	if(Movie.search(params[:search]).blank?)
	  @flag = 0
          @movies = Movie.select("id,title, poster_url, genres, price").all
		#.includes(:title).includes(:poster_url).includes(:genres).includes(:price).all
	  #@movies = @movies.paginate(:page => params[:page], :per_page => 10)
	else
	  @flag = 1
	  @movies = Movie.search(params[:search])#.order("created_at DESC")
	  #@movies = @movies.paginate(:page => params[:page], :per_page => 10)
  # elsif(Movie.search(params[:search]).blank?)
#	@movies = Movie.all
	#puts "Hii"
       end
   else
    #@movies = Movie.all
  end
end

  # GET /movies/1
  # GET /movies/1.json
  def show
@reviews=Review.where(movie_id: @movie.id).order("created_at DESC")

if @reviews.blank?
@avg_review=0
else
@avg_review=@reviews.average(:rating).round(2)
end
 end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
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

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :poster_url, :genres, :year, :imdb_rating, :length, :studio, :price)
    end
end
