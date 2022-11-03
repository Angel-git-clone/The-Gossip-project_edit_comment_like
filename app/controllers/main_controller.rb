class MainController < ApplicationController

  def team
  end

  def contact
  end

  def welcome
    @first_name = params[:first_name]
  end

  def home
    @gossip = Gossip.all #récupère le tableau en intégral
  end

  def gossip
  @id = Gossip.find(params[:id])
  end

end
