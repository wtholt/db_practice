class LeaguesController < ApplicationController
  def show
    @league = League.find params[:id]
  end

  def new
    @league = League.new
  end

  def create
    @league = League.create league_params
    redirect_to root_path
  end

  def edit
    @league = League.find params[:id]
  end

  def update
    @league = League.find params[:id]
    @league.update_attributes league_params
    redirect_to root_path
  end

  def destroy
    @league = League.find params[:id]
    @league.destroy
    redirect_to root_path
  end

private
  def league_params
    params.require(:league).permit(
        :name,
        :country,
        :founded,
        :teams,
        :champion
      )
  end
end
