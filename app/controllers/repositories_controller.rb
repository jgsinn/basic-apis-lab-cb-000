

class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @resp = Faraday.get 'https://api.github.com/search/repositories' do |req|
      req.params['q']= 'recurly'
      req.params['client_id']= 'Iv1.6b48ace725584892'
      req.params['client_secret']= '15c5bac93ab26709539ba2cc9de7e37a33b34cb8'
    end

    body = JSON.parse(@resp.body)
  if @resp.success?
    @repositories = body["response"]["venues"]
  else
    @error = body["meta"]["errorDetail"]
  end
  render 'search'

  end


end
