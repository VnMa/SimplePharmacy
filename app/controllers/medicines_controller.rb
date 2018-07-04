class MedicinesController < ApplicationController
  def index
    @medicines = Medicine.includes(:medicine_category).first(20)
  end

  def show
    @medicine = Medicine.find params[:id]
  end

  def new
    @medicine = Medicine.new
  end

  def create
    @medicine = Medicine.create medicine_params
    if @medicine
      flash[:notice] = "Yay, medicine created successfully"
      redirect_to medicines_path
    end
  end

  def edit
    @medicine = Medicine.find params[:id]
  end

  def update
    @medicine = Medicine.find params[:id]
    @medicine.update(medicine_params)
    flash[:notice] = "You have updated this medicine successfully"
    redirect_to medicine_path
  end

  def destroy
  end

  private 
  def medicine_params
    params.require(:medicine).permit(:name, :price, :unit, :medicine_category_id, :use, :description)
  end
end
