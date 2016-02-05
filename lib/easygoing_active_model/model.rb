module EasygoingActiveModel
  module Model
    extend ActiveSupport::Concern
    include ActiveModel::Model

    def initialize(params={})
      params = params.select{|attr, value| self.respond_to?("#{attr}=")}
      super(params)
    end

  end
end