class KindPhonesController < ApplicationController
  before_action :set_kind_phone, only: %i(show update destroy)
  
  def index
    @kind_phones = KindPhone.all

    render json: @kind_phones
  end

  def show
    render json: @kind_phone
  end

  def create
    @kind_phone = KindPhone.new(kind_phone_params)

    if @kind_phone.save
      render json: @kind_phone, status: :created, location: @kind_phone
    else
      render json: @kind_phone.errors, status: :unprocessable_entity
    end
  end

  def update
    if @kind_phone.update(kind_phone_params)
      render json: @kind_phone
    else
      render json: @kind_phone.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @kind_phone.destroy
  end

  private
    def set_kind_phone
      @kind_phone = KindPhone.find(params[:id])
    end

    def kind_phone_params
      params.require(:kind_phone).permit(:kind)
    end
end
