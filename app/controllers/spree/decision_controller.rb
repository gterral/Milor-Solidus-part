class Spree::DecisionController < Spree::BaseController
  require 'spree/base_controller'
  require 'rubygems'
  require 'decisiontree'

  def index
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
      @profil.update_rep((index+1),reponse)
    end

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

      render :json => {'id' => @id, 'url' => @url, 'description' => @description,'name' => @name,'price'=>@price}
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

  def test
    p 'test'
    p @la

    tableauprofil = ReverseProfil.where('instanciation':1).all

    @tab = []

    tableauprofil.each do |profil|
      tableau = []
      tableau.push(profil.rep1,profil.rep2,profil.rep3,profil.rep4,profil.rep5,profil.rep6,profil.rep7,profil.rep8,profil.rep9,profil.rep10,profil.rep11,profil.rep12,profil.rep13,profil.rep14,profil.rep15,profil.rep16,profil.rep17,profil.rep18,profil.rep19,profil.rep20,profil.item1,profil.item1mark,profil.item2,profil.item2mark,profil.item3,profil.item3mark)
      @tab.push(tableau)
    end

    p 'ici tableau fini'
    p @tab

  end

end
