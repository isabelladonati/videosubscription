class VideofreesController < ApplicationController
      before_action :authenticate_user!, except: [:index, :show]
   before_action :admin_required, except: [:index, :show]
  before_action :set_videofree, only: [:show, :edit, :update, :destroy]

 
  # def index
  #   @videofrees = Videofree.all
  # end

    
  def index
    @videofrees = if params[:projectfree]
                Videofree.where(projectfree_id: params[:projectfree]).order("created_at ASC")
              else
                Videofree.order("created_at ASC").all
              end
    @projectfree = params.has_key?(:projectfree) ? Projectfree.find(params[:projectfree]) : nil
  end

  def show

  end

  

  def new
    @videofree = Videofree.new
  end

  def edit
  end

  def create
    @videofree = Videofree.new(videofree_params)

    respond_to do |format|
      if @videofree.save
        format.html { redirect_to videofrees_path, notice: 'Video was successfully created.' }
      else
        format.html { render :new }
      end
    end

    # if @videofree.save
    #      flash[:success] = 'Video has been created'
    #      redirect_to root_path


    #   else


        
    # flash.now[:danger] = 'Video has not been created'
    #  render :new
   
  
    # end
  end
  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to videofrees_path, notice: 'Video was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  
  def destroy
    @videofree.destroy
    respond_to do |format|
      format.html { redirect_to videofrees_url, notice: 'Video was successfully destroyed.' }
      
    end
  end

  private
    
    def set_videofree
      @videofree = Videofree.find(params[:id])
    end

    def videofree_params
      params.require(:videofree).permit(:name, :description, :videofree_source_id, :projectfree_id)
    end


end
