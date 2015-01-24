class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @league = League.find params[:league_id]
    @team = Team.find params[:id]
  end

  def new
    @league = League.find params[:league_id]
    @team = @league.teams.new
  end

  def create
    @league = League.find params[:league_id]
    @team = @league.teams.create team_params
    redirect_to @league
  end

  def edit
    @league = League.find params[:league_id]
    @team = Team.find params[:id]
  end

  def update
    @league = League.find params[:league_id]
    @team = Team.find params[:id]
    @team.update_attributes team_params
    redirect_to @league
  end

  def destroy
    @league = League.find params[:league_id]
    @team = Team.find params[:id]
    @team.destroy
    redirect_to @league
  end

private
  def team_params
    params.require(:team).permit(
        :name,
        :founded,
        :ground,
        :coach
      )
  end
end
