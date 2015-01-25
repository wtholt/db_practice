class PlayersController < ApplicationController
  def index
    @league = League.find params[:league_id]
    @team = @league.teams.find params[:team_id]
    @players = @team.players
  end

  def show
    @league = League.find params[:league_id]
    @team = @league.teams.find params[:team_id]
    @player = @team.players.find params[:id]
  end

  def new
    @league = League.find params[:league_id]
    @team = @league.teams.find params[:team_id]
    @player = @team.players.new
  end

  def create
    @league = League.find params[:league_id]
    @team = @league.teams.find params[:team_id]
    @player = @team.players.create player_params
    redirect_to league_team_players_path(@league, @team)
  end

  def edit
    @league = League.find params[:league_id]
    @team = @league.teams.find params[:team_id]
    @player = @team.players.find params[:id]
  end

  def update
    @league = League.find params[:league_id]
    @team = @league.teams.find params[:team_id]
    @player = @team.players.find params[:id]
    @player.update_attributes player_params
    redirect_to league_team_players_path(@league, @team)
  end

  def destroy
    @league = League.find params[:league_id]
    @team = @league.teams.find params[:team_id]
    @player = @team.players.find params[:id]
    @player.delete
    redirect_to league_team_players_path(@league, @team)
  end

private
  def player_params
    params.require(:player).permit(
      :name,
      :dob,
      :nationality,
      :position,
  )
  end

end
