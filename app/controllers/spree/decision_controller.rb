class Spree::DecisionController < Spree::BaseController
  require 'spree/base_controller'
  require 'rubygems'
  require 'decisiontree'

  def index
  end

  def reverse
  end

  def new
    @questions = QuestionDecision.all

    render :json => @questions.to_json(
        :only => [:statement, :id, :typeq],
        :include => [
            :answers => { :only => [:content]}])

  end

  def score
    @profil = Profil.new
    params[:decision]['_json'].each_with_index do |reponse,index|
      @profil.update_dim(Answer.find(index+1).question_decision.dimension,Answer.find((index+1)*reponse).impact)
    end

    p @profil

    if @profil.save

      @url= []
      @id = []
      @description = []
      @name = []
      @price = []

      Spree::Product.order("RANDOM()").limit(3).each do |product|
        @id.push(product.id)
        @url.push(spree.product_path(product))
        @description.push(product.description)
        @name.push(product.slug)
        @price.push(product.price.to_s)
      end

      p @url
      p @id
      p @description
      p @name
      p @price
      render :json => {'id' => @id, 'url' => @url, 'description' => @description,'name' => @name,'price'=>@price}
    else
      render :json => 'error'.to_json
    end

  end

  def random
    @profil = Profil.new
    params[:decision]['_json'].each_with_index do |reponse,index|
      @profil.update_dim(Answer.find(index+1).question_decision.dimension,Answer.find((index+1)*reponse).impact)
    end

    p @profil

    if @profil.save

      @url= []
      @id = []
      @description = []
      @name = []
      @price = []

      Spree::Product.order("RANDOM()").limit(3).each do |product|
        @id.push(product.id)
        @url.push(spree.product_path(product))
        @description.push(product.description)
        @name.push(product.slug)
        @price.push(product.price.to_s)
      end

      render :json => {'profil'=>@profil, 'id' => @id, 'url' => @url, 'description' => @description,'name' => @name,'price'=>@price}
    else
      render :json => 'error'.to_json
    end

  end

  def view
  end

  def train(profil)
    #Spree::Product.with_property('Dimension')
    #[0,0,0,0,0,1,1,1,1,1,2,2,2,2,2]

    attributes = ['Ouverture', 'Conscienciosité', 'Extraversion', 'Agréabilité','Neuroticisme', 'Sport','Technologie','Culture','Ecologie','Gastronomie','Genre','Age','Prix','Alcool','Objet']
    training = []

    Spree::Product.with_property('Dimension').each do |product|
      training.push(product.properties.dimension,product.id)
    end

    dec_tree = DecisionTree::ID3Tree.new(attributes, training, 1, :continuous)
    dec_tree.train

    decision = dec_tree.predict(profil)

    return decision

  end


end
