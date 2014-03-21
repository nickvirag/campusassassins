class RegisterController < ApplicationController
  def index
    @seasons = [ ]
    Season.all.each do |season|
      if DateTime.current < season.end.time( )
        current_user.players.each do |player|
          if player.season.id == season.id
            break
          end
        end
        @seasons << season
      end
    end
    @current_games = [ ]
    @past_games = [ ]
    @future_games = [ ]
    current_user.players.each do |player|
      if DateTime.current > player.season.start.time( ) && DateTime.current < player.season.end.time( )
        @current_games << player
      elsif DateTime.current < player.season.start.time( )
        @future_games << player
      elsif DateTime.current > player.season.end.time( )
        @past_games << player
      end 
    end

  end
  def create
  	if( params[ :eventName ] != '' && params[ :eventDescription ] != '' && params[ :targets ] != '' && params[ :startTime ] != '' && params[ :endTime ] != '' && params[ :tagPoints ] != '' && params[ :taggedPoints ] != '' )
  		nSeason = Season.new
  		nSeason.display = params[ :eventName ]
      nSeason.description = params[ :eventDescription ]
  		nSeason.targets = params[ :targets ]
  		nSeason.start = params[ :startTime ]
  		nSeason.end = params[ :endTime ]
      nSeason.tagpoints = params[ :tagPoints ]
      nSeason.tagged_points = params[ :taggedPoints ]
  		nSeason.save
      nPlayer = Player.new
      nPlayer.season = nSeason
      nPlayer.user = current_user
      nPlayer.account = 1
      nPlayer.points = 0
      nPlayer.save
      redirect_to :controller => :home, :action => :index
  	else
  		redirect_to :controller => :register, :action => :create
  	end
  end
  def event
    @season = Season.find( params[ :id ] )
  end
  def join
    if( params[ :season_id ] != '' )
      nPlayer = Player.new
      nPlayer.season = Season.find( params[ :season_id ] )
      nPlayer.user = current_user
      nPlayer.account = 0
      nPlayer.points = 0
      nPlayer.save
    end
    redirect_to :controller => :home, :action => :index
  end
end
