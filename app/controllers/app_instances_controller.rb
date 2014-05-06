class AppInstancesController < ApplicationController
  before_action :set_app_instance, only: [:show, :edit, :update, :destroy]

  # GET /app_instances
  # GET /app_instances.json
  def index
    @app_instances = AppInstance.all
  end

  # GET /app_instances/1
  # GET /app_instances/1.json
  def show
  end

  # GET /app_instances/new
  def new
    @app_instance = AppInstance.new
  end

  # GET /app_instances/1/edit
  def edit
  end

  # POST /app_instances
  # POST /app_instances.json
  def create
    @app_instance = AppInstance.new(app_instance_params)

    respond_to do |format|
      if @app_instance.save
        format.html { redirect_to @app_instance, notice: 'App instance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @app_instance }
      else
        format.html { render action: 'new' }
        format.json { render json: @app_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_instances/1
  # PATCH/PUT /app_instances/1.json
  def update
    respond_to do |format|
      if @app_instance.update(app_instance_params)
        format.html { redirect_to @app_instance, notice: 'App instance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @app_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_instances/1
  # DELETE /app_instances/1.json
  def destroy
    @app_instance.destroy
    respond_to do |format|
      format.html { redirect_to app_instances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_instance
      @app_instance = AppInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_instance_params
      params.require(:app_instance).permit(:parent_app_id, :unique_identifier, :user_id)
    end
end
