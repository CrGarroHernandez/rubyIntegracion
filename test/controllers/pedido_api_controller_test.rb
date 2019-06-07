require 'test_helper'

class PedidoApiControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pedido_api_new_url
    assert_response :success
  end

  test "should get create" do
    get pedido_api_create_url
    assert_response :success
  end

end
