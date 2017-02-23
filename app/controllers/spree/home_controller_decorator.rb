Spree::HomeController.class_eval do
  require 'spree/base_controller'

    def index
      render layout: false

    end

    def cgu

    end

    def contact

    end

    def faq

    end

    def list_products
        @searcher = build_searcher(params.merge(include_images: true))
        @products = @searcher.retrieve_products
    end

    def milor

    end

  end

