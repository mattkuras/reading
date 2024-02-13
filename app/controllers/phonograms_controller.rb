class PhonogramsController < ApplicationController
  def new
    @phonogram = Phonogram.new
  end

  def create
    phonogram = Phonogram.new(phonogram_params)
    phonogram.save
    redirect_to new_phonogram_path
  end

  private

  def phonogram_params
    params.require(:phonogram).permit(:sound, :name, :level)
  end
end
