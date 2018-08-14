class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    Faraday.get 'https://api.github.com/search/repositories' do |req|
      req.params['q']= 'recurly'
      req.params['client_id']= '19a9083448ae524b3f07'
      req.params['client_secret']= '00a9e52652c48534ff6b2bb58489c3cba3bbc6ab'
    end
  end
end
