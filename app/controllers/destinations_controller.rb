class DestinationsController < ProtectedController
  before_action :set_destination, only: [:show, :update, :destroy]

  # GET /destinations
  def index
    @destinations = current_user.destinations.all

    render json: @destinations
  end

  # GET /destinations/1
  def show
    render json: @destination
  end

  # POST /destinations
  def create
    @destination = current_user.destinations.build(destination_params)

    if @destination.save
      render json: @destination, status: :created
    else
      render json: @destination.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /destinations/1
  def update
    if @destination.update(destination_params)
      render json: @destination
    else
      render json: @destination.errors, status: :unprocessable_entity
    end
  end

  # DELETE /destinations/1
  def destroy
    @destination.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination
      @destination = current_user.destinations.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def destination_params
      params.require(:destination).permit(:city, :country)
    end
end
