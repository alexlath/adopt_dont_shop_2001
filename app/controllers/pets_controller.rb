class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  private

  def pet_params
    params.permit(:image, :name, :description, :approx_age, :sex, :status)
  end

end