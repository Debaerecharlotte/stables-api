class Api::V1::StablesController < ApplicationController

  def index
    stables = Stable.all

    if stables
      render json: {status: "SUCCESS", message: "Fetched all the stables successfully", data: stables}, status: :ok
    else
      render json: stables.errors, status: :bad_request
    end
  end

  def create
    stable = Stable.new(stable_params)

    if stable.save
      render json: {status: "SUCCESS", message: "Stable was created successfully!", data: stable}, status: :created
    else
      render json: stable.errors, status: :unprocessable_entity
    end
  end

  # Show a specific friend - GET request
  def show
    stable = Stable.find(params[:id])

    if stable
      render json: {data: stable}, state: :ok
    else
      render json: {message: "Stable could not be found"}, status: :bad_request
    end
  end

  # Delete a specific stable - DELETE request
  def destroy
    stable = Stable.find(params[:id])

    if stable.destroy!
      render json: {message: "stable was deleted successfully"}, status: :ok
    else
      render json: {message: "Stable does not exist"}, status: :bad_request
    end
  end

  # Update details for a specific stable - PATCH request
  def update
    stable = Stable.find(params[:id])

    if stable.update!(stable_params)
      render json: {message: "Stable was updated successfully", data: stable}, status: :ok
    else
      render json: {message: "Stable cannot be updated"}, status: :unprocessable_entity
    end
  end

  private

  def stable_params
    params.require(:stable).permit(:name, :address_first, :address_second, :city, :postcode, :phone, :email, :type, :specialty)
  end

end
