class RepositoriesController < ApplicationController

  def search

  end

  def github_search
<<<<<<< HEAD
    client_id = 'f63f1376a8298a95f544'
    client_secret = '0a472ad264b3b40d5f68e44fe57dfc6866936e06'
    @response = Faraday.get 'https://api.github.com/search/repositories' do |req|
      req.params['client_id'] = 'client_id'
      req.params['client_secret'] = 'client_secret'
=======
    @response = Faraday.get 'https://api.github.com/search/repositories' do |req|
      req.params['client_id'] = 'f63f1376a8298a95f544'
      req.params['client_secret'] = '0a472ad264b3b40d5f68e44fe57dfc6866936e06'
>>>>>>> 02bd0ed17f9e836593c84a36e91c76ad8cd1abed
      req.params['q'] = params[:query]
    end
    body_hash = JSON.parse(@response.body)
    @repos = body_hash['items']
    render 'search'
  end

end
