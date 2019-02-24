require 'json'
require 'activeresource'

class Article < ActiveResource::Base
  self.site = ENV['APP_SITE']
end

def handler(event:, context:)
  article = Article.new(event)
  article.save
  article.to_json
end
