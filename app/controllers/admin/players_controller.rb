class Admin::PlayersController < Admin::AdminController
  def index
    @players = Player.all
  end

  def new
    @players = Player.new
  end

  def edit
    @player = Player.find(params[:id])
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      respond_to do |format|
        format.html { redirect_to edit_admin_player_path(@player), notice: @player.name + " has been created." }
      end
    else
      respond_to do |format|
        format.html { render action: "new" }
      end
    end
  end

  def update
    @player = Player.find(params[:id])

    if @player.update(player_params)
      respond_to do |format|
        format.html { redirect_to edit_admin_player_path(@player), notice: @player.name + " has been updated." }
      end
    else
      respond_to do |format|
        format.html { render action: "new" }
      end
    end
  end

  private
  def player_params
    params.require(:player).permit(:name, :mental, :physical, :social, :sprite, :region_server, :race_id, :profession_id)
  end
end
