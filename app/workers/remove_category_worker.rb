class RemoveCategoryWorker
    include Sidekiq::Worker
    sidekiq_options retry: false

    def perform
        Category.destroy_all
      end
end