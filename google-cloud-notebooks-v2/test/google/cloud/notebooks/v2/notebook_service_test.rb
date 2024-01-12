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

require "google/cloud/notebooks/v2/service_pb"
require "google/cloud/notebooks/v2/service_services_pb"
require "google/cloud/notebooks/v2/notebook_service"

class ::Google::Cloud::Notebooks::V2::NotebookService::ClientTest < Minitest::Test
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

  def test_list_instances
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Notebooks::V2::ListInstancesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"
    filter = "hello world"

    list_instances_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_instances, name
      assert_kind_of ::Google::Cloud::Notebooks::V2::ListInstancesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["order_by"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_instances_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_instances({ parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_instances parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_instances ::Google::Cloud::Notebooks::V2::ListInstancesRequest.new(parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_instances({ parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_instances(::Google::Cloud::Notebooks::V2::ListInstancesRequest.new(parent: parent, page_size: page_size, page_token: page_token, order_by: order_by, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_instances_client_stub.call_rpc_count
    end
  end

  def test_get_instance
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Notebooks::V2::Instance.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_instance, name
      assert_kind_of ::Google::Cloud::Notebooks::V2::GetInstanceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_instance({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_instance name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_instance ::Google::Cloud::Notebooks::V2::GetInstanceRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_instance({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_instance(::Google::Cloud::Notebooks::V2::GetInstanceRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_instance_client_stub.call_rpc_count
    end
  end

  def test_create_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    instance_id = "hello world"
    instance = {}
    request_id = "hello world"

    create_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_instance, name
      assert_kind_of ::Google::Cloud::Notebooks::V2::CreateInstanceRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["instance_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Notebooks::V2::Instance), request["instance"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_instance({ parent: parent, instance_id: instance_id, instance: instance, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_instance parent: parent, instance_id: instance_id, instance: instance, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_instance ::Google::Cloud::Notebooks::V2::CreateInstanceRequest.new(parent: parent, instance_id: instance_id, instance: instance, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_instance({ parent: parent, instance_id: instance_id, instance: instance, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_instance(::Google::Cloud::Notebooks::V2::CreateInstanceRequest.new(parent: parent, instance_id: instance_id, instance: instance, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_instance_client_stub.call_rpc_count
    end
  end

  def test_update_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    instance = {}
    update_mask = {}
    request_id = "hello world"

    update_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_instance, name
      assert_kind_of ::Google::Cloud::Notebooks::V2::UpdateInstanceRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Notebooks::V2::Instance), request["instance"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_instance({ instance: instance, update_mask: update_mask, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_instance instance: instance, update_mask: update_mask, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_instance ::Google::Cloud::Notebooks::V2::UpdateInstanceRequest.new(instance: instance, update_mask: update_mask, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_instance({ instance: instance, update_mask: update_mask, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_instance(::Google::Cloud::Notebooks::V2::UpdateInstanceRequest.new(instance: instance, update_mask: update_mask, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_instance_client_stub.call_rpc_count
    end
  end

  def test_delete_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_instance, name
      assert_kind_of ::Google::Cloud::Notebooks::V2::DeleteInstanceRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_instance({ name: name, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_instance name: name, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_instance ::Google::Cloud::Notebooks::V2::DeleteInstanceRequest.new(name: name, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_instance({ name: name, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_instance(::Google::Cloud::Notebooks::V2::DeleteInstanceRequest.new(name: name, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_instance_client_stub.call_rpc_count
    end
  end

  def test_start_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    start_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :start_instance, name
      assert_kind_of ::Google::Cloud::Notebooks::V2::StartInstanceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, start_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.start_instance({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.start_instance name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.start_instance ::Google::Cloud::Notebooks::V2::StartInstanceRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.start_instance({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.start_instance(::Google::Cloud::Notebooks::V2::StartInstanceRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, start_instance_client_stub.call_rpc_count
    end
  end

  def test_stop_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    stop_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :stop_instance, name
      assert_kind_of ::Google::Cloud::Notebooks::V2::StopInstanceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, stop_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.stop_instance({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.stop_instance name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.stop_instance ::Google::Cloud::Notebooks::V2::StopInstanceRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.stop_instance({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.stop_instance(::Google::Cloud::Notebooks::V2::StopInstanceRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, stop_instance_client_stub.call_rpc_count
    end
  end

  def test_reset_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    reset_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :reset_instance, name
      assert_kind_of ::Google::Cloud::Notebooks::V2::ResetInstanceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, reset_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.reset_instance({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.reset_instance name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.reset_instance ::Google::Cloud::Notebooks::V2::ResetInstanceRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.reset_instance({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.reset_instance(::Google::Cloud::Notebooks::V2::ResetInstanceRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, reset_instance_client_stub.call_rpc_count
    end
  end

  def test_check_instance_upgradability
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Notebooks::V2::CheckInstanceUpgradabilityResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    notebook_instance = "hello world"

    check_instance_upgradability_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :check_instance_upgradability, name
      assert_kind_of ::Google::Cloud::Notebooks::V2::CheckInstanceUpgradabilityRequest, request
      assert_equal "hello world", request["notebook_instance"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, check_instance_upgradability_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.check_instance_upgradability({ notebook_instance: notebook_instance }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.check_instance_upgradability notebook_instance: notebook_instance do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.check_instance_upgradability ::Google::Cloud::Notebooks::V2::CheckInstanceUpgradabilityRequest.new(notebook_instance: notebook_instance) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.check_instance_upgradability({ notebook_instance: notebook_instance }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.check_instance_upgradability(::Google::Cloud::Notebooks::V2::CheckInstanceUpgradabilityRequest.new(notebook_instance: notebook_instance), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, check_instance_upgradability_client_stub.call_rpc_count
    end
  end

  def test_upgrade_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    upgrade_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :upgrade_instance, name
      assert_kind_of ::Google::Cloud::Notebooks::V2::UpgradeInstanceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, upgrade_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.upgrade_instance({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.upgrade_instance name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.upgrade_instance ::Google::Cloud::Notebooks::V2::UpgradeInstanceRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.upgrade_instance({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.upgrade_instance(::Google::Cloud::Notebooks::V2::UpgradeInstanceRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, upgrade_instance_client_stub.call_rpc_count
    end
  end

  def test_rollback_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    target_snapshot = "hello world"
    revision_id = "hello world"

    rollback_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :rollback_instance, name
      assert_kind_of ::Google::Cloud::Notebooks::V2::RollbackInstanceRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["target_snapshot"]
      assert_equal "hello world", request["revision_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, rollback_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.rollback_instance({ name: name, target_snapshot: target_snapshot, revision_id: revision_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.rollback_instance name: name, target_snapshot: target_snapshot, revision_id: revision_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.rollback_instance ::Google::Cloud::Notebooks::V2::RollbackInstanceRequest.new(name: name, target_snapshot: target_snapshot, revision_id: revision_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.rollback_instance({ name: name, target_snapshot: target_snapshot, revision_id: revision_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.rollback_instance(::Google::Cloud::Notebooks::V2::RollbackInstanceRequest.new(name: name, target_snapshot: target_snapshot, revision_id: revision_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, rollback_instance_client_stub.call_rpc_count
    end
  end

  def test_diagnose_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    diagnostic_config = {}
    timeout_minutes = 42

    diagnose_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :diagnose_instance, name
      assert_kind_of ::Google::Cloud::Notebooks::V2::DiagnoseInstanceRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Notebooks::V2::DiagnosticConfig), request["diagnostic_config"]
      assert_equal 42, request["timeout_minutes"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, diagnose_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.diagnose_instance({ name: name, diagnostic_config: diagnostic_config, timeout_minutes: timeout_minutes }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.diagnose_instance name: name, diagnostic_config: diagnostic_config, timeout_minutes: timeout_minutes do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.diagnose_instance ::Google::Cloud::Notebooks::V2::DiagnoseInstanceRequest.new(name: name, diagnostic_config: diagnostic_config, timeout_minutes: timeout_minutes) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.diagnose_instance({ name: name, diagnostic_config: diagnostic_config, timeout_minutes: timeout_minutes }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.diagnose_instance(::Google::Cloud::Notebooks::V2::DiagnoseInstanceRequest.new(name: name, diagnostic_config: diagnostic_config, timeout_minutes: timeout_minutes), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, diagnose_instance_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Notebooks::V2::NotebookService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Notebooks::V2::NotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Notebooks::V2::NotebookService::Operations, client.operations_client
  end
end
