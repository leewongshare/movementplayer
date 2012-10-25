class SongsController < ApplicationController

    def index
    @songs = Song.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @songs }
    end
  end

  def new
    @song = Song.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @song }
    end
  end

  def edit

      @song = Song.find(params[:id])

  end

  def update
      @song = Song.find(params[:id])
      @song.assign_attributes(params[:song])


      if @song.save
        redirect_to songs_path
      else
        render :edit
      end
  end

  def show

    @song = Song.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @song }
    end

  end

  def create
    @song = Song.new(params[:song])

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: 'Song was successfully created.' }
        format.json { render json: @song, status: :created, location: @song }
      else
        format.html { render action: "new" }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    respond_to do |format|
      format.html { redirect_to songs_url }
      format.json { head :no_content }
    end

  end

  def list
    @songs = Song.all
  end
end