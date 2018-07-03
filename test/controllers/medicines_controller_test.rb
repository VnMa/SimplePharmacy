require 'test_helper'

class MedicinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medicines_index_url
    assert_response :success
  end

  test "should get edit" do
    get medicines_edit_url
    assert_response :success
  end

  test "should get update" do
    get medicines_update_url
    assert_response :success
  end

  test "should get destroy" do
    get medicines_destroy_url
    assert_response :success
  end

end
