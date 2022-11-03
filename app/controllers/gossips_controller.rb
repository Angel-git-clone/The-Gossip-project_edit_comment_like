class GossipsController < ApplicationController
  
  def new
    @gossips = Gossip.new
  end

  def create
    @gossips = Gossip.new(title: params[:title], content: params[:content], user_id: rand(1..10))

    if @gossips.save
      puts "C'est bon tout fonctionne !!"
      redirect_to gossips_path
    else
      puts "Hélas, ce fût un échec..."
      render new_gossip_path
    end
  end

  def show
    @gossips = Gossip.find(params[:id])
  end
  
  def index
    @gossips = Gossip.all
  end

  def edit
    @gossips = Gossip.find(params[:id])
  end

  def update
    @gossips = Gossip.find(params[:id])

    @gossips.update(title: params[:title], content: params[:content])

    if @gossips.save
      puts "C'est bon tout fonctionne !!"
      redirect_to gossips_path
    else
      puts "Hélas, ce fût un échec..."
      render new_gossip_path
    end
  end

  def destroy
  end

end
