class ProjectfreesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :admin_required, except: [:index]
  before_action :set_projectfree, only: [:edit, :update, :destroy]

  # GET /projectfrees
  # GET /projectfrees.json
  def index
    @projectfrees = Projectfree.all
  end

  # GET /projectfrees/1
  # GET /projectfrees/1.json
  def show
  end

  # GET /projectfrees/new
  def new
    @projectfree = Projectfree.new
  end

  # GET /projectfrees/1/edit
  def edit
  end

  # POST /projectfrees
  # POST /projectfrees.json
  def create
    @projectfree = Projectfree.new(projectfree_params)

    # respond_to do |format|
    #   if @projectfree.save
    #     format.html { redirect_to @projectfree, notice: 'Projectfree was successfully created.' }
    #     format.json { render :show, status: :created, location: @projectfree }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @projectfree.errors, status: :unprocessable_entity }
    #   end
    # end

    if @projectfree.save
         flash[:success] = 'Free Project has been created'
         redirect_to root_path
      else
     
    flash.now[:danger] = 'Free Project has not been created'
     render :new
   
    end

  end

  # PATCH/PUT /projectfrees/1
  # PATCH/PUT /projectfrees/1.json
  def update
    respond_to do |format|
      if @projectfree.update(projectfree_params)
        format.html { redirect_to @projectfree, notice: 'Projectfree was successfully updated.' }
        format.json { render :show, status: :ok, location: @projectfree }
      else
        format.html { render :edit }
        format.json { render json: @projectfree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectfrees/1
  # DELETE /projectfrees/1.json
  def destroy
    @projectfree.destroy
    respond_to do |format|
      format.html { redirect_to projectfrees_url, notice: 'Projectfree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectfree
      @projectfree = Projectfree.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def projectfree_params
      params.require(:projectfree).permit(:name, :description, :web_link, :github_link, :freegolf_ad_id)
    end
end
