class PedidoApiController < ApplicationController
  def new
  	response = RestClient.get "http://www.cittsb.cl:8080/APIComandas/api/menu/listaplatos"
	@objects  = JSON.parse response
  end

  def create
  end
end
