class GasLogsController < OpenReadController
  before_action :set_gas_log, only: [:show, :update, :destroy]

  # GET /gas_logs
  def index
    @gas_logs = GasLog.all

    render json: @gas_logs
  end

  # GET /gas_logs/1
  def show
    render json: @gas_log
  end

  # POST /gas_logs
  def create
    @gas_log = GasLog.new(gas_log_params)

    if @gas_log.save
      render json: @gas_log, status: :created, location: @gas_log
    else
      render json: @gas_log.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gas_logs/1
  def update
    if @gas_log.update(gas_log_params)
      render json: @gas_log
    else
      render json: @gas_log.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gas_logs/1
  def destroy
    @gas_log.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gas_log
      @gas_log = GasLog.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gas_log_params
      params.require(:gas_log).permit(:date,
                                      :odometer,
                                      :volume,
                                      :fuel,
                                      :brand,
                                      :price,
                                      :total,
                                      :user_id)
    end
end
