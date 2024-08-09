# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "google/cloud/apihub/v1/linting_service_pb"
require "google/cloud/apihub/v1/linting_service_services_pb"
require "google/cloud/api_hub/v1/linting_service"

class ::Google::Cloud::ApiHub::V1::LintingService::ClientTest < Minitest::Test
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

  def test_get_style_guide
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::ApiHub::V1::StyleGuide.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_style_guide_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_style_guide, name
      assert_kind_of ::Google::Cloud::ApiHub::V1::GetStyleGuideRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_style_guide_client_stub do
      # Create client
      client = ::Google::Cloud::ApiHub::V1::LintingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_style_guide({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_style_guide name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_style_guide ::Google::Cloud::ApiHub::V1::GetStyleGuideRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_style_guide({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_style_guide(::Google::Cloud::ApiHub::V1::GetStyleGuideRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_style_guide_client_stub.call_rpc_count
    end
  end

  def test_update_style_guide
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::ApiHub::V1::StyleGuide.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    style_guide = {}
    update_mask = {}

    update_style_guide_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_style_guide, name
      assert_kind_of ::Google::Cloud::ApiHub::V1::UpdateStyleGuideRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::ApiHub::V1::StyleGuide), request["style_guide"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_style_guide_client_stub do
      # Create client
      client = ::Google::Cloud::ApiHub::V1::LintingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_style_guide({ style_guide: style_guide, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_style_guide style_guide: style_guide, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_style_guide ::Google::Cloud::ApiHub::V1::UpdateStyleGuideRequest.new(style_guide: style_guide, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_style_guide({ style_guide: style_guide, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_style_guide(::Google::Cloud::ApiHub::V1::UpdateStyleGuideRequest.new(style_guide: style_guide, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_style_guide_client_stub.call_rpc_count
    end
  end

  def test_get_style_guide_contents
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::ApiHub::V1::StyleGuideContents.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_style_guide_contents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_style_guide_contents, name
      assert_kind_of ::Google::Cloud::ApiHub::V1::GetStyleGuideContentsRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_style_guide_contents_client_stub do
      # Create client
      client = ::Google::Cloud::ApiHub::V1::LintingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_style_guide_contents({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_style_guide_contents name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_style_guide_contents ::Google::Cloud::ApiHub::V1::GetStyleGuideContentsRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_style_guide_contents({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_style_guide_contents(::Google::Cloud::ApiHub::V1::GetStyleGuideContentsRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_style_guide_contents_client_stub.call_rpc_count
    end
  end

  def test_lint_spec
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    lint_spec_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :lint_spec, name
      assert_kind_of ::Google::Cloud::ApiHub::V1::LintSpecRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, lint_spec_client_stub do
      # Create client
      client = ::Google::Cloud::ApiHub::V1::LintingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.lint_spec({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.lint_spec name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.lint_spec ::Google::Cloud::ApiHub::V1::LintSpecRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.lint_spec({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.lint_spec(::Google::Cloud::ApiHub::V1::LintSpecRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, lint_spec_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::ApiHub::V1::LintingService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::ApiHub::V1::LintingService::Client::Configuration, config
  end
end
