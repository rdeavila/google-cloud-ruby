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
require "gapic/rest"
require "google/cloud/dataplex/v1/metadata_pb"
require "google/cloud/dataplex/v1/metadata_service/rest"


class ::Google::Cloud::Dataplex::V1::MetadataService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

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
    # Create test objects.
    client_result = ::Google::Cloud::Dataplex::V1::Entity.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    entity = {}
    validate_only = true

    create_entity_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataplex::V1::MetadataService::Rest::ServiceStub.stub :transcode_create_entity_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_entity_client_stub do
        # Create client
        client = ::Google::Cloud::Dataplex::V1::MetadataService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_entity({ parent: parent, entity: entity, validate_only: validate_only }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_entity parent: parent, entity: entity, validate_only: validate_only do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_entity ::Google::Cloud::Dataplex::V1::CreateEntityRequest.new(parent: parent, entity: entity, validate_only: validate_only) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_entity({ parent: parent, entity: entity, validate_only: validate_only }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_entity(::Google::Cloud::Dataplex::V1::CreateEntityRequest.new(parent: parent, entity: entity, validate_only: validate_only), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_entity_client_stub.call_count
      end
    end
  end

  def test_update_entity
    # Create test objects.
    client_result = ::Google::Cloud::Dataplex::V1::Entity.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    entity = {}
    validate_only = true

    update_entity_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataplex::V1::MetadataService::Rest::ServiceStub.stub :transcode_update_entity_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_entity_client_stub do
        # Create client
        client = ::Google::Cloud::Dataplex::V1::MetadataService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_entity({ entity: entity, validate_only: validate_only }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_entity entity: entity, validate_only: validate_only do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_entity ::Google::Cloud::Dataplex::V1::UpdateEntityRequest.new(entity: entity, validate_only: validate_only) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_entity({ entity: entity, validate_only: validate_only }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_entity(::Google::Cloud::Dataplex::V1::UpdateEntityRequest.new(entity: entity, validate_only: validate_only), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_entity_client_stub.call_count
      end
    end
  end

  def test_delete_entity
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"

    delete_entity_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataplex::V1::MetadataService::Rest::ServiceStub.stub :transcode_delete_entity_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_entity_client_stub do
        # Create client
        client = ::Google::Cloud::Dataplex::V1::MetadataService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_entity({ name: name, etag: etag }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_entity name: name, etag: etag do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_entity ::Google::Cloud::Dataplex::V1::DeleteEntityRequest.new(name: name, etag: etag) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_entity({ name: name, etag: etag }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_entity(::Google::Cloud::Dataplex::V1::DeleteEntityRequest.new(name: name, etag: etag), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_entity_client_stub.call_count
      end
    end
  end

  def test_get_entity
    # Create test objects.
    client_result = ::Google::Cloud::Dataplex::V1::Entity.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    view = :ENTITY_VIEW_UNSPECIFIED

    get_entity_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataplex::V1::MetadataService::Rest::ServiceStub.stub :transcode_get_entity_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_entity_client_stub do
        # Create client
        client = ::Google::Cloud::Dataplex::V1::MetadataService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_entity({ name: name, view: view }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_entity name: name, view: view do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_entity ::Google::Cloud::Dataplex::V1::GetEntityRequest.new(name: name, view: view) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_entity({ name: name, view: view }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_entity(::Google::Cloud::Dataplex::V1::GetEntityRequest.new(name: name, view: view), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_entity_client_stub.call_count
      end
    end
  end

  def test_list_entities
    # Create test objects.
    client_result = ::Google::Cloud::Dataplex::V1::ListEntitiesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    view = :ENTITY_VIEW_UNSPECIFIED
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_entities_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataplex::V1::MetadataService::Rest::ServiceStub.stub :transcode_list_entities_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_entities_client_stub do
        # Create client
        client = ::Google::Cloud::Dataplex::V1::MetadataService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_entities({ parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_entities parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_entities ::Google::Cloud::Dataplex::V1::ListEntitiesRequest.new(parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_entities({ parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_entities(::Google::Cloud::Dataplex::V1::ListEntitiesRequest.new(parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_entities_client_stub.call_count
      end
    end
  end

  def test_create_partition
    # Create test objects.
    client_result = ::Google::Cloud::Dataplex::V1::Partition.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    partition = {}
    validate_only = true

    create_partition_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataplex::V1::MetadataService::Rest::ServiceStub.stub :transcode_create_partition_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_partition_client_stub do
        # Create client
        client = ::Google::Cloud::Dataplex::V1::MetadataService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_partition({ parent: parent, partition: partition, validate_only: validate_only }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_partition parent: parent, partition: partition, validate_only: validate_only do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_partition ::Google::Cloud::Dataplex::V1::CreatePartitionRequest.new(parent: parent, partition: partition, validate_only: validate_only) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_partition({ parent: parent, partition: partition, validate_only: validate_only }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_partition(::Google::Cloud::Dataplex::V1::CreatePartitionRequest.new(parent: parent, partition: partition, validate_only: validate_only), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_partition_client_stub.call_count
      end
    end
  end

  def test_delete_partition
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"

    delete_partition_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataplex::V1::MetadataService::Rest::ServiceStub.stub :transcode_delete_partition_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_partition_client_stub do
        # Create client
        client = ::Google::Cloud::Dataplex::V1::MetadataService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_partition({ name: name, etag: etag }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_partition name: name, etag: etag do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_partition ::Google::Cloud::Dataplex::V1::DeletePartitionRequest.new(name: name, etag: etag) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_partition({ name: name, etag: etag }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_partition(::Google::Cloud::Dataplex::V1::DeletePartitionRequest.new(name: name, etag: etag), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_partition_client_stub.call_count
      end
    end
  end

  def test_get_partition
    # Create test objects.
    client_result = ::Google::Cloud::Dataplex::V1::Partition.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_partition_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataplex::V1::MetadataService::Rest::ServiceStub.stub :transcode_get_partition_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_partition_client_stub do
        # Create client
        client = ::Google::Cloud::Dataplex::V1::MetadataService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_partition({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_partition name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_partition ::Google::Cloud::Dataplex::V1::GetPartitionRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_partition({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_partition(::Google::Cloud::Dataplex::V1::GetPartitionRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_partition_client_stub.call_count
      end
    end
  end

  def test_list_partitions
    # Create test objects.
    client_result = ::Google::Cloud::Dataplex::V1::ListPartitionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_partitions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataplex::V1::MetadataService::Rest::ServiceStub.stub :transcode_list_partitions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_partitions_client_stub do
        # Create client
        client = ::Google::Cloud::Dataplex::V1::MetadataService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_partitions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_partitions parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_partitions ::Google::Cloud::Dataplex::V1::ListPartitionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_partitions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_partitions(::Google::Cloud::Dataplex::V1::ListPartitionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_partitions_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dataplex::V1::MetadataService::Rest::Client::Configuration, config
  end
end
