class CategoriesController < ApplicationController
    before_action :set_categories, only: %i[ index data ]

    def index
        if @categories.length > 0
            redirect_to categories_data_path
        else
            render :index
        end
    end
    def data
    end
    def upload
        csv_file = File.join Rails.root, 'db', 'sharks.csv'
        AddCategoryWorker.perform_async(csv_file)
        redirect_to categories_data_path, notice: 'Informacion de la categoria cargada'
    end
    def destroy
        RemoveCategoryWorker.perform_async
        redirect_to customers_path
    end
    private
    def set_categories
        @categories=Category.all
    end
end
