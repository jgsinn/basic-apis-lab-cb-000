class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    Faraday.get 'https://api.github.com/search/repositories?client_id=19a9083448ae524b3f07&client_secret=00a9e52652c48534ff6b2bb58489c3cba3bbc6ab' do |req|
      req.params['q']= 'recurly'

    end
  end
end
