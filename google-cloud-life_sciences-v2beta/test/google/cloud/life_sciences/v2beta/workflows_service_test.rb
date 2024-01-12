# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/lifesciences/v2beta/workflows_pb"
require "google/cloud/lifesciences/v2beta/workflows_services_pb"
require "google/cloud/life_sciences/v2beta/workflows_service"

class ::Google::Cloud::LifeSciences::V2beta::WorkflowsService::ClientTest < Minitest::Test
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

  def test_run_pipeline
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    pipeline = {}
    labels = {}
    pub_sub_topic = "hello world"

    run_pipeline_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :run_pipeline, name
      assert_kind_of ::Google::Cloud::LifeSciences::V2beta::RunPipelineRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::LifeSciences::V2beta::Pipeline), request["pipeline"]
      assert_equal({}, request["labels"].to_h)
      assert_equal "hello world", request["pub_sub_topic"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, run_pipeline_client_stub do
      # Create client
      client = ::Google::Cloud::LifeSciences::V2beta::WorkflowsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.run_pipeline({ parent: parent, pipeline: pipeline, labels: labels, pub_sub_topic: pub_sub_topic }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.run_pipeline parent: parent, pipeline: pipeline, labels: labels, pub_sub_topic: pub_sub_topic do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.run_pipeline ::Google::Cloud::LifeSciences::V2beta::RunPipelineRequest.new(parent: parent, pipeline: pipeline, labels: labels, pub_sub_topic: pub_sub_topic) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.run_pipeline({ parent: parent, pipeline: pipeline, labels: labels, pub_sub_topic: pub_sub_topic }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.run_pipeline(::Google::Cloud::LifeSciences::V2beta::RunPipelineRequest.new(parent: parent, pipeline: pipeline, labels: labels, pub_sub_topic: pub_sub_topic), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, run_pipeline_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::LifeSciences::V2beta::WorkflowsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::LifeSciences::V2beta::WorkflowsService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::LifeSciences::V2beta::WorkflowsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::LifeSciences::V2beta::WorkflowsService::Operations, client.operations_client
  end
end
