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

require "google/cloud/dataplex/v1/metadata_pb"
require "google/cloud/dataplex/v1/metadata_services_pb"
require "google/cloud/dataplex/v1/metadata_service"

class ::Google::Cloud::Dataplex::V1::MetadataService::ClientTest < Minitest::Test
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

  def test_create_entity
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataplex::V1::Entity.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    entity = {}
    validate_only = true

    create_entity_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_entity, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::CreateEntityRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dataplex::V1::Entity), request["entity"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_entity_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_entity({ parent: parent, entity: entity, validate_only: validate_only }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_entity parent: parent, entity: entity, validate_only: validate_only do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_entity ::Google::Cloud::Dataplex::V1::CreateEntityRequest.new(parent: parent, entity: entity, validate_only: validate_only) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_entity({ parent: parent, entity: entity, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_entity(::Google::Cloud::Dataplex::V1::CreateEntityRequest.new(parent: parent, entity: entity, validate_only: validate_only), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_entity_client_stub.call_rpc_count
    end
  end

  def test_update_entity
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataplex::V1::Entity.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    entity = {}
    validate_only = true

    update_entity_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_entity, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::UpdateEntityRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dataplex::V1::Entity), request["entity"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_entity_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_entity({ entity: entity, validate_only: validate_only }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_entity entity: entity, validate_only: validate_only do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_entity ::Google::Cloud::Dataplex::V1::UpdateEntityRequest.new(entity: entity, validate_only: validate_only) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_entity({ entity: entity, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_entity(::Google::Cloud::Dataplex::V1::UpdateEntityRequest.new(entity: entity, validate_only: validate_only), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_entity_client_stub.call_rpc_count
    end
  end

  def test_delete_entity
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"

    delete_entity_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_entity, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::DeleteEntityRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["etag"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_entity_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_entity({ name: name, etag: etag }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_entity name: name, etag: etag do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_entity ::Google::Cloud::Dataplex::V1::DeleteEntityRequest.new(name: name, etag: etag) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_entity({ name: name, etag: etag }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_entity(::Google::Cloud::Dataplex::V1::DeleteEntityRequest.new(name: name, etag: etag), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_entity_client_stub.call_rpc_count
    end
  end

  def test_get_entity
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataplex::V1::Entity.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    view = :ENTITY_VIEW_UNSPECIFIED

    get_entity_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_entity, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::GetEntityRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :ENTITY_VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_entity_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_entity({ name: name, view: view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_entity name: name, view: view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_entity ::Google::Cloud::Dataplex::V1::GetEntityRequest.new(name: name, view: view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_entity({ name: name, view: view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_entity(::Google::Cloud::Dataplex::V1::GetEntityRequest.new(name: name, view: view), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_entity_client_stub.call_rpc_count
    end
  end

  def test_list_entities
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataplex::V1::ListEntitiesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    view = :ENTITY_VIEW_UNSPECIFIED
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_entities_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_entities, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::ListEntitiesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal :ENTITY_VIEW_UNSPECIFIED, request["view"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_entities_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_entities({ parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_entities parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_entities ::Google::Cloud::Dataplex::V1::ListEntitiesRequest.new(parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_entities({ parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_entities(::Google::Cloud::Dataplex::V1::ListEntitiesRequest.new(parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_entities_client_stub.call_rpc_count
    end
  end

  def test_create_partition
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataplex::V1::Partition.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    partition = {}
    validate_only = true

    create_partition_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_partition, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::CreatePartitionRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dataplex::V1::Partition), request["partition"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_partition_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_partition({ parent: parent, partition: partition, validate_only: validate_only }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_partition parent: parent, partition: partition, validate_only: validate_only do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_partition ::Google::Cloud::Dataplex::V1::CreatePartitionRequest.new(parent: parent, partition: partition, validate_only: validate_only) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_partition({ parent: parent, partition: partition, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_partition(::Google::Cloud::Dataplex::V1::CreatePartitionRequest.new(parent: parent, partition: partition, validate_only: validate_only), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_partition_client_stub.call_rpc_count
    end
  end

  def test_delete_partition
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"

    delete_partition_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_partition, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::DeletePartitionRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["etag"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_partition_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_partition({ name: name, etag: etag }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_partition name: name, etag: etag do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_partition ::Google::Cloud::Dataplex::V1::DeletePartitionRequest.new(name: name, etag: etag) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_partition({ name: name, etag: etag }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_partition(::Google::Cloud::Dataplex::V1::DeletePartitionRequest.new(name: name, etag: etag), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_partition_client_stub.call_rpc_count
    end
  end

  def test_get_partition
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataplex::V1::Partition.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_partition_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_partition, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::GetPartitionRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_partition_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_partition({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_partition name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_partition ::Google::Cloud::Dataplex::V1::GetPartitionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_partition({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_partition(::Google::Cloud::Dataplex::V1::GetPartitionRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_partition_client_stub.call_rpc_count
    end
  end

  def test_list_partitions
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataplex::V1::ListPartitionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_partitions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_partitions, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::ListPartitionsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_partitions_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_partitions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_partitions parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_partitions ::Google::Cloud::Dataplex::V1::ListPartitionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_partitions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_partitions(::Google::Cloud::Dataplex::V1::ListPartitionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_partitions_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dataplex::V1::MetadataService::Client::Configuration, config
  end
end
