class Spree::ReverseController < Spree::BaseController
  require 'spree/base_controller'

  def index
  end

  def new
    @questions = QuestionDecision.all

    render :json => @questions.to_json(
        :only => [:statement, :id, :typeq],
        :include => [
            :answers => { :only => [:content]}])

  end

  def update
    @profil = ReverseProfil.find(params[:id])
    @profil.update(reverse_profil_params)
    @profil.update(:instanciation => 1)
    respond_to do |format|
      if  @profil.save
        format.html { render 'spree/reverse/mark' }
        format.json { head :no_content }
      else
        # format.js
        format.html { render action: '/reverse/index' }
        format.json { render json: @profil.errors, status: :unprocessable_entity }
      end
    end
  end

  def score
    @profil = ReverseProfil.new
    eval(params['data']).each_with_index do |reponse,index|
      #reponse= 1 si réponse a, 2 si reponse b, 3 si reponse c
        @profil.update_rep((index+1),reponse)
    end

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

    @id.each_with_index do |iditem,index|
      @profil.update_item(index+1,iditem)
    end

    if @profil.save
      render "spree/reverse/edit", :layout => false

    else
      p @profil.errors
      render :json => 'error'.to_json
    end

  end


  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def reverse_profil_params
    params.require(:reverse_profil).permit(:item1mark,:item2mark, :item3mark)
  end

end
