require 'rubygems'
require 'httparty'


def getrecipe()
       recipeurl = '{"recipelink_pancakes": "'+ getrecipeurl('pancake') + '", ' + 
      '"recipelink_tacos": "' + getrecipeurl('tacos') + '", ' +
      '"recipelink_steak": "' + getrecipeurl('steak') + '", ' +
      '"recipelink_lasagne": "' + getrecipeurl('lasagne') + '" ' + "}"
       return recipeurl
end

def getrecipeurl(item)
    url = 'https://www.themealdb.com/api/json/v1/1/search.php?s=' + item
    response = HTTParty.get(url)
    responseurl = JSON.parse(response.body)["meals"][0]["strSource"]
    return responseurl
end