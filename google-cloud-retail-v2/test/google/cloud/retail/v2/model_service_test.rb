# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "google/cloud/retail/v2/model_service_pb"
require "google/cloud/retail/v2/model_service_services_pb"
require "google/cloud/retail/v2/model_service"

class ::Google::Cloud::Retail::V2::ModelService::ClientTest < Minitest::Test
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

  def test_create_model
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    model = {}
    dry_run = true

    create_model_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_model, name
      assert_kind_of ::Google::Cloud::Retail::V2::CreateModelRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::Model), request["model"]
      assert_equal true, request["dry_run"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_model_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ModelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_model({ parent: parent, model: model, dry_run: dry_run }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_model parent: parent, model: model, dry_run: dry_run do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_model ::Google::Cloud::Retail::V2::CreateModelRequest.new(parent: parent, model: model, dry_run: dry_run) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_model({ parent: parent, model: model, dry_run: dry_run }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_model(::Google::Cloud::Retail::V2::CreateModelRequest.new(parent: parent, model: model, dry_run: dry_run), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_model_client_stub.call_rpc_count
    end
  end

  def test_get_model
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::Model.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_model_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_model, name
      assert_kind_of ::Google::Cloud::Retail::V2::GetModelRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_model_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ModelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_model({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_model name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_model ::Google::Cloud::Retail::V2::GetModelRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_model({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_model(::Google::Cloud::Retail::V2::GetModelRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_model_client_stub.call_rpc_count
    end
  end

  def test_pause_model
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::Model.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    pause_model_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :pause_model, name
      assert_kind_of ::Google::Cloud::Retail::V2::PauseModelRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, pause_model_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ModelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.pause_model({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.pause_model name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.pause_model ::Google::Cloud::Retail::V2::PauseModelRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.pause_model({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.pause_model(::Google::Cloud::Retail::V2::PauseModelRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, pause_model_client_stub.call_rpc_count
    end
  end

  def test_resume_model
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::Model.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    resume_model_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :resume_model, name
      assert_kind_of ::Google::Cloud::Retail::V2::ResumeModelRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, resume_model_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ModelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.resume_model({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.resume_model name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.resume_model ::Google::Cloud::Retail::V2::ResumeModelRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.resume_model({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.resume_model(::Google::Cloud::Retail::V2::ResumeModelRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, resume_model_client_stub.call_rpc_count
    end
  end

  def test_delete_model
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_model_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_model, name
      assert_kind_of ::Google::Cloud::Retail::V2::DeleteModelRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_model_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ModelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_model({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_model name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_model ::Google::Cloud::Retail::V2::DeleteModelRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_model({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_model(::Google::Cloud::Retail::V2::DeleteModelRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_model_client_stub.call_rpc_count
    end
  end

  def test_list_models
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::ListModelsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_models_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_models, name
      assert_kind_of ::Google::Cloud::Retail::V2::ListModelsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_models_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ModelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_models({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_models parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_models ::Google::Cloud::Retail::V2::ListModelsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_models({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_models(::Google::Cloud::Retail::V2::ListModelsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_models_client_stub.call_rpc_count
    end
  end

  def test_update_model
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::Model.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    model = {}
    update_mask = {}

    update_model_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_model, name
      assert_kind_of ::Google::Cloud::Retail::V2::UpdateModelRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::Model), request["model"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_model_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ModelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_model({ model: model, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_model model: model, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_model ::Google::Cloud::Retail::V2::UpdateModelRequest.new(model: model, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_model({ model: model, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_model(::Google::Cloud::Retail::V2::UpdateModelRequest.new(model: model, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_model_client_stub.call_rpc_count
    end
  end

  def test_tune_model
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    tune_model_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :tune_model, name
      assert_kind_of ::Google::Cloud::Retail::V2::TuneModelRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, tune_model_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ModelService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.tune_model({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.tune_model name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.tune_model ::Google::Cloud::Retail::V2::TuneModelRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.tune_model({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.tune_model(::Google::Cloud::Retail::V2::TuneModelRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, tune_model_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Retail::V2::ModelService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Retail::V2::ModelService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Retail::V2::ModelService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Retail::V2::ModelService::Operations, client.operations_client
  end
end
