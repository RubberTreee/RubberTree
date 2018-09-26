class ProspectsController < ApplicationController
  def home; end

  def new
    @prospect = Prospect.new
  end

  def create
    @prospect = Prospect.new(prospect_params)

    respond_to do |format|
      if @prospect.save
        format.html { render :thanks }
      else
        format.html { render :new, notice: @prospect.errors }
      end
    end
  end

  private

  def prospect_params
    params
      .require(:prospect)
      .permit(
        :first_name,
        :last_name,
        :email,
        :mobile,
        :how_heard,
        :marketing
      )
  end
end
