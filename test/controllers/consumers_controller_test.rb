require 'test_helper'

class ConsumersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consumer = consumers(:one)
  end

  test "should get index" do
    get consumers_url
    assert_response :success
  end

  test "should get new" do
    get new_consumer_url
    assert_response :success
  end

  test "should create consumer" do
    assert_difference('Consumer.count') do
      post consumers_url, params: { consumer: { clave: @consumer.clave, correo: @consumer.correo, direccion: @consumer.direccion, nombre: @consumer.nombre, telefono: @consumer.telefono, user_id: @consumer.user_id } }
    end

    assert_redirected_to consumer_url(Consumer.last)
  end

  test "should show consumer" do
    get consumer_url(@consumer)
    assert_response :success
  end

  test "should get edit" do
    get edit_consumer_url(@consumer)
    assert_response :success
  end

  test "should update consumer" do
    patch consumer_url(@consumer), params: { consumer: { clave: @consumer.clave, correo: @consumer.correo, direccion: @consumer.direccion, nombre: @consumer.nombre, telefono: @consumer.telefono, user_id: @consumer.user_id } }
    assert_redirected_to consumer_url(@consumer)
  end

  test "should destroy consumer" do
    assert_difference('Consumer.count', -1) do
      delete consumer_url(@consumer)
    end

    assert_redirected_to consumers_url
  end
end
