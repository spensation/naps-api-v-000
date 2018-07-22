#naps_controller.rb

class Api::V1::NapsController < Api::V1::BaseController
  def index
    respond_with Nap.all.order(:id).reverse
  end

  def create
    respond_with :api, :v1, Nap.create(nap_params)
  end

  def destroy
    respond_with :api, :v1, Nap.destroy(params[:id])
  end

  def update
    nap = Nap.find(params["id"])
    nap.update_attributes(nap_params)
    respond_with nap, json: nap
  end

  private

  def nap_params
    params.require(:nap).permit(:id, :name, :description)
  end
end
