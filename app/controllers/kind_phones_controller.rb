class KindPhonesController < ApplicationController
  before_action :set_kind_phone, only: [:show, :update, :destroy]

  # GET /kind_phones
  def index
    @kind_phones = KindPhone.all

    render json: @kind_phones
  end

  # GET /kind_phones/1
  def show
    render json: @kind_phone
  end

  # POST /kind_phones
  def create
    @kind_phone = KindPhone.new(kind_phone_params)

    if @kind_phone.save
      render json: @kind_phone, status: :created, location: @kind_phone
    else
      render json: @kind_phone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kind_phones/1
  def update
    if @kind_phone.update(kind_phone_params)
      render json: @kind_phone
    else
      render json: @kind_phone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kind_phones/1
  def destroy
    @kind_phone.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kind_phone
      @kind_phone = KindPhone.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kind_phone_params
      params.require(:kind_phone).permit(:kind)
    end
end
