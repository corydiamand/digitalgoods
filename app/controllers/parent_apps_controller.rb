class ParentAppsController < ApplicationController
  before_action :set_parent_app, only: [:show, :edit, :update, :destroy]

  # GET /parent_apps
  # GET /parent_apps.json
  def index
    @parent_apps = ParentApp.all
  end

  # GET /parent_apps/1
  # GET /parent_apps/1.json
  def show
  end

  # GET /parent_apps/new
  def new
    @parent_app = ParentApp.new
  end

  # GET /parent_apps/1/edit
  def edit
  end

  # POST /parent_apps
  # POST /parent_apps.json
  def create
    @parent_app = ParentApp.new(parent_app_params)

    respond_to do |format|
      if @parent_app.save
        format.html { redirect_to @parent_app, notice: 'Parent app was successfully created.' }
        format.json { render action: 'show', status: :created, location: @parent_app }
      else
        format.html { render action: 'new' }
        format.json { render json: @parent_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parent_apps/1
  # PATCH/PUT /parent_apps/1.json
  def update
    respond_to do |format|
      if @parent_app.update(parent_app_params)
        format.html { redirect_to @parent_app, notice: 'Parent app was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @parent_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent_apps/1
  # DELETE /parent_apps/1.json
  def destroy
    @parent_app.destroy
    respond_to do |format|
      format.html { redirect_to parent_apps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_app
      @parent_app = ParentApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_app_params
      params.require(:parent_app).permit(:name)
    end
end
