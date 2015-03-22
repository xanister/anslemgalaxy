class PlayersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @players = current_user.players
    respond_with(@players)
  end

  def show
    respond_with(@player)
  end

  def new
    @player = Player.new
    @player.user = current_user
    respond_with(@player)
  end

  def edit
  end

  def create
    @player = Player.new(player_params)
    @player.user = current_user
    @player.save
    respond_with(@player)
  end

  def update
    @player.update(player_params)
    @player.user = current_user
    respond_with(@player)
  end

  def destroy
    @player.destroy
    respond_with(@player)
  end

  private
    def set_player
      @player = Player.find(params[:id])
    end

    def player_params
      params.require(:player).permit(:name, :sprite, :region_server, :mental, :physical, :social)
    end
end
