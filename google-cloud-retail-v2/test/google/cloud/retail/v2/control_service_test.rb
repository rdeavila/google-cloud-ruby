# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/retail/v2/control_service_pb"
require "google/cloud/retail/v2/control_service_services_pb"
require "google/cloud/retail/v2/control_service"

class ::Google::Cloud::Retail::V2::ControlService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_create_control
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::Control.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    control = {}
    control_id = "hello world"

    create_control_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_control, name
      assert_kind_of ::Google::Cloud::Retail::V2::CreateControlRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::Control), request["control"]
      assert_equal "hello world", request["control_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_control_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ControlService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_control({ parent: parent, control: control, control_id: control_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_control parent: parent, control: control, control_id: control_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_control ::Google::Cloud::Retail::V2::CreateControlRequest.new(parent: parent, control: control, control_id: control_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_control({ parent: parent, control: control, control_id: control_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_control(::Google::Cloud::Retail::V2::CreateControlRequest.new(parent: parent, control: control, control_id: control_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_control_client_stub.call_rpc_count
    end
  end

  def test_delete_control
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_control_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_control, name
      assert_kind_of ::Google::Cloud::Retail::V2::DeleteControlRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_control_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ControlService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_control({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_control name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_control ::Google::Cloud::Retail::V2::DeleteControlRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_control({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_control(::Google::Cloud::Retail::V2::DeleteControlRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_control_client_stub.call_rpc_count
    end
  end

  def test_update_control
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::Control.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    control = {}
    update_mask = {}

    update_control_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_control, name
      assert_kind_of ::Google::Cloud::Retail::V2::UpdateControlRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::Control), request["control"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_control_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ControlService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_control({ control: control, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_control control: control, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_control ::Google::Cloud::Retail::V2::UpdateControlRequest.new(control: control, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_control({ control: control, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_control(::Google::Cloud::Retail::V2::UpdateControlRequest.new(control: control, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_control_client_stub.call_rpc_count
    end
  end

  def test_get_control
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::Control.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_control_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_control, name
      assert_kind_of ::Google::Cloud::Retail::V2::GetControlRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_control_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ControlService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_control({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_control name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_control ::Google::Cloud::Retail::V2::GetControlRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_control({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_control(::Google::Cloud::Retail::V2::GetControlRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_control_client_stub.call_rpc_count
    end
  end

  def test_list_controls
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::ListControlsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_controls_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_controls, name
      assert_kind_of ::Google::Cloud::Retail::V2::ListControlsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_controls_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ControlService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_controls({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_controls parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_controls ::Google::Cloud::Retail::V2::ListControlsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_controls({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_controls(::Google::Cloud::Retail::V2::ListControlsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_controls_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Retail::V2::ControlService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Retail::V2::ControlService::Client::Configuration, config
  end
end
