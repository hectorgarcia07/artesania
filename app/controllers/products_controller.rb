class ProductsController < ApplicationController
    def index
    end

    def create
    end

    def new
        @product = Product.new
        @product.categories.new
        
    end

    def edit
    end

    def show
    end

    def update
    end

    def destroy
    end
end
