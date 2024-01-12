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
require "google/firestore/v1/firestore_pb"
require "google/cloud/firestore/v1/firestore/rest"


class ::Google::Cloud::Firestore::V1::Firestore::Rest::ClientTest < Minitest::Test
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

  def test_get_document
    # Create test objects.
    client_result = ::Google::Cloud::Firestore::V1::Document.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    mask = {}
    transaction = "hello world"

    get_document_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_get_document_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_document_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_document({ name: name, mask: mask, transaction: transaction }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_document name: name, mask: mask, transaction: transaction do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_document ::Google::Cloud::Firestore::V1::GetDocumentRequest.new(name: name, mask: mask, transaction: transaction) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_document({ name: name, mask: mask, transaction: transaction }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_document(::Google::Cloud::Firestore::V1::GetDocumentRequest.new(name: name, mask: mask, transaction: transaction), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_document_client_stub.call_count
      end
    end
  end

  def test_list_documents
    # Create test objects.
    client_result = ::Google::Cloud::Firestore::V1::ListDocumentsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    collection_id = "hello world"
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"
    mask = {}
    transaction = "hello world"
    show_missing = true

    list_documents_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_list_documents_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_documents_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_documents({ parent: parent, collection_id: collection_id, page_size: page_size, page_token: page_token, order_by: order_by, mask: mask, transaction: transaction, show_missing: show_missing }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_documents parent: parent, collection_id: collection_id, page_size: page_size, page_token: page_token, order_by: order_by, mask: mask, transaction: transaction, show_missing: show_missing do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_documents ::Google::Cloud::Firestore::V1::ListDocumentsRequest.new(parent: parent, collection_id: collection_id, page_size: page_size, page_token: page_token, order_by: order_by, mask: mask, transaction: transaction, show_missing: show_missing) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_documents({ parent: parent, collection_id: collection_id, page_size: page_size, page_token: page_token, order_by: order_by, mask: mask, transaction: transaction, show_missing: show_missing }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_documents(::Google::Cloud::Firestore::V1::ListDocumentsRequest.new(parent: parent, collection_id: collection_id, page_size: page_size, page_token: page_token, order_by: order_by, mask: mask, transaction: transaction, show_missing: show_missing), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_documents_client_stub.call_count
      end
    end
  end

  def test_update_document
    # Create test objects.
    client_result = ::Google::Cloud::Firestore::V1::Document.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    document = {}
    update_mask = {}
    mask = {}
    current_document = {}

    update_document_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_update_document_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_document_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_document({ document: document, update_mask: update_mask, mask: mask, current_document: current_document }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_document document: document, update_mask: update_mask, mask: mask, current_document: current_document do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_document ::Google::Cloud::Firestore::V1::UpdateDocumentRequest.new(document: document, update_mask: update_mask, mask: mask, current_document: current_document) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_document({ document: document, update_mask: update_mask, mask: mask, current_document: current_document }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_document(::Google::Cloud::Firestore::V1::UpdateDocumentRequest.new(document: document, update_mask: update_mask, mask: mask, current_document: current_document), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_document_client_stub.call_count
      end
    end
  end

  def test_delete_document
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    current_document = {}

    delete_document_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_delete_document_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_document_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_document({ name: name, current_document: current_document }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_document name: name, current_document: current_document do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_document ::Google::Cloud::Firestore::V1::DeleteDocumentRequest.new(name: name, current_document: current_document) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_document({ name: name, current_document: current_document }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_document(::Google::Cloud::Firestore::V1::DeleteDocumentRequest.new(name: name, current_document: current_document), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_document_client_stub.call_count
      end
    end
  end

  def test_batch_get_documents
    # Create test objects.
    client_result = ::Google::Cloud::Firestore::V1::BatchGetDocumentsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    database = "hello world"
    documents = ["hello world"]
    mask = {}
    transaction = "hello world"

    batch_get_documents_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, is_server_streaming:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_batch_get_documents_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, batch_get_documents_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.batch_get_documents({ database: database, documents: documents, mask: mask, transaction: transaction }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use named arguments
        client.batch_get_documents database: database, documents: documents, mask: mask, transaction: transaction do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use protobuf object
        client.batch_get_documents ::Google::Cloud::Firestore::V1::BatchGetDocumentsRequest.new(database: database, documents: documents, mask: mask, transaction: transaction) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use hash object with options
        client.batch_get_documents({ database: database, documents: documents, mask: mask, transaction: transaction }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use protobuf object with options
        client.batch_get_documents(::Google::Cloud::Firestore::V1::BatchGetDocumentsRequest.new(database: database, documents: documents, mask: mask, transaction: transaction), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Verify method calls
        assert_equal 5, batch_get_documents_client_stub.call_count
      end
    end
  end

  def test_begin_transaction
    # Create test objects.
    client_result = ::Google::Cloud::Firestore::V1::BeginTransactionResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    database = "hello world"
    options = {}

    begin_transaction_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_begin_transaction_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, begin_transaction_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.begin_transaction({ database: database, options: options }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.begin_transaction database: database, options: options do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.begin_transaction ::Google::Cloud::Firestore::V1::BeginTransactionRequest.new(database: database, options: options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.begin_transaction({ database: database, options: options }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.begin_transaction(::Google::Cloud::Firestore::V1::BeginTransactionRequest.new(database: database, options: options), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, begin_transaction_client_stub.call_count
      end
    end
  end

  def test_commit
    # Create test objects.
    client_result = ::Google::Cloud::Firestore::V1::CommitResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    database = "hello world"
    writes = [{}]
    transaction = "hello world"

    commit_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_commit_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, commit_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.commit({ database: database, writes: writes, transaction: transaction }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.commit database: database, writes: writes, transaction: transaction do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.commit ::Google::Cloud::Firestore::V1::CommitRequest.new(database: database, writes: writes, transaction: transaction) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.commit({ database: database, writes: writes, transaction: transaction }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.commit(::Google::Cloud::Firestore::V1::CommitRequest.new(database: database, writes: writes, transaction: transaction), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, commit_client_stub.call_count
      end
    end
  end

  def test_rollback
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    database = "hello world"
    transaction = "hello world"

    rollback_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_rollback_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, rollback_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.rollback({ database: database, transaction: transaction }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.rollback database: database, transaction: transaction do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.rollback ::Google::Cloud::Firestore::V1::RollbackRequest.new(database: database, transaction: transaction) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.rollback({ database: database, transaction: transaction }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.rollback(::Google::Cloud::Firestore::V1::RollbackRequest.new(database: database, transaction: transaction), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, rollback_client_stub.call_count
      end
    end
  end

  def test_run_query
    # Create test objects.
    client_result = ::Google::Cloud::Firestore::V1::RunQueryResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    structured_query = {}
    transaction = "hello world"
    mode = :NORMAL

    run_query_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, is_server_streaming:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_run_query_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, run_query_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.run_query({ parent: parent, structured_query: structured_query, transaction: transaction, mode: mode }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use named arguments
        client.run_query parent: parent, structured_query: structured_query, transaction: transaction, mode: mode do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use protobuf object
        client.run_query ::Google::Cloud::Firestore::V1::RunQueryRequest.new(parent: parent, structured_query: structured_query, transaction: transaction, mode: mode) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use hash object with options
        client.run_query({ parent: parent, structured_query: structured_query, transaction: transaction, mode: mode }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use protobuf object with options
        client.run_query(::Google::Cloud::Firestore::V1::RunQueryRequest.new(parent: parent, structured_query: structured_query, transaction: transaction, mode: mode), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Verify method calls
        assert_equal 5, run_query_client_stub.call_count
      end
    end
  end

  def test_run_aggregation_query
    # Create test objects.
    client_result = ::Google::Cloud::Firestore::V1::RunAggregationQueryResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    structured_aggregation_query = {}
    transaction = "hello world"
    mode = :NORMAL

    run_aggregation_query_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, is_server_streaming:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_run_aggregation_query_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, run_aggregation_query_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.run_aggregation_query({ parent: parent, structured_aggregation_query: structured_aggregation_query, transaction: transaction, mode: mode }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use named arguments
        client.run_aggregation_query parent: parent, structured_aggregation_query: structured_aggregation_query, transaction: transaction, mode: mode do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use protobuf object
        client.run_aggregation_query ::Google::Cloud::Firestore::V1::RunAggregationQueryRequest.new(parent: parent, structured_aggregation_query: structured_aggregation_query, transaction: transaction, mode: mode) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use hash object with options
        client.run_aggregation_query({ parent: parent, structured_aggregation_query: structured_aggregation_query, transaction: transaction, mode: mode }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use protobuf object with options
        client.run_aggregation_query(::Google::Cloud::Firestore::V1::RunAggregationQueryRequest.new(parent: parent, structured_aggregation_query: structured_aggregation_query, transaction: transaction, mode: mode), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Verify method calls
        assert_equal 5, run_aggregation_query_client_stub.call_count
      end
    end
  end

  def test_partition_query
    # Create test objects.
    client_result = ::Google::Cloud::Firestore::V1::PartitionQueryResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    structured_query = {}
    partition_count = 42
    page_token = "hello world"
    page_size = 42
    read_time = {}

    partition_query_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_partition_query_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, partition_query_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.partition_query({ parent: parent, structured_query: structured_query, partition_count: partition_count, page_token: page_token, page_size: page_size, read_time: read_time }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.partition_query parent: parent, structured_query: structured_query, partition_count: partition_count, page_token: page_token, page_size: page_size, read_time: read_time do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.partition_query ::Google::Cloud::Firestore::V1::PartitionQueryRequest.new(parent: parent, structured_query: structured_query, partition_count: partition_count, page_token: page_token, page_size: page_size, read_time: read_time) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.partition_query({ parent: parent, structured_query: structured_query, partition_count: partition_count, page_token: page_token, page_size: page_size, read_time: read_time }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.partition_query(::Google::Cloud::Firestore::V1::PartitionQueryRequest.new(parent: parent, structured_query: structured_query, partition_count: partition_count, page_token: page_token, page_size: page_size, read_time: read_time), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, partition_query_client_stub.call_count
      end
    end
  end

  def test_list_collection_ids
    # Create test objects.
    client_result = ::Google::Cloud::Firestore::V1::ListCollectionIdsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    read_time = {}

    list_collection_ids_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_list_collection_ids_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_collection_ids_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_collection_ids({ parent: parent, page_size: page_size, page_token: page_token, read_time: read_time }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_collection_ids parent: parent, page_size: page_size, page_token: page_token, read_time: read_time do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_collection_ids ::Google::Cloud::Firestore::V1::ListCollectionIdsRequest.new(parent: parent, page_size: page_size, page_token: page_token, read_time: read_time) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_collection_ids({ parent: parent, page_size: page_size, page_token: page_token, read_time: read_time }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_collection_ids(::Google::Cloud::Firestore::V1::ListCollectionIdsRequest.new(parent: parent, page_size: page_size, page_token: page_token, read_time: read_time), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_collection_ids_client_stub.call_count
      end
    end
  end

  def test_batch_write
    # Create test objects.
    client_result = ::Google::Cloud::Firestore::V1::BatchWriteResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    database = "hello world"
    writes = [{}]
    labels = {}

    batch_write_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_batch_write_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, batch_write_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.batch_write({ database: database, writes: writes, labels: labels }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.batch_write database: database, writes: writes, labels: labels do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.batch_write ::Google::Cloud::Firestore::V1::BatchWriteRequest.new(database: database, writes: writes, labels: labels) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.batch_write({ database: database, writes: writes, labels: labels }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.batch_write(::Google::Cloud::Firestore::V1::BatchWriteRequest.new(database: database, writes: writes, labels: labels), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, batch_write_client_stub.call_count
      end
    end
  end

  def test_create_document
    # Create test objects.
    client_result = ::Google::Cloud::Firestore::V1::Document.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    collection_id = "hello world"
    document_id = "hello world"
    document = {}
    mask = {}

    create_document_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Firestore::V1::Firestore::Rest::ServiceStub.stub :transcode_create_document_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_document_client_stub do
        # Create client
        client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_document({ parent: parent, collection_id: collection_id, document_id: document_id, document: document, mask: mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_document parent: parent, collection_id: collection_id, document_id: document_id, document: document, mask: mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_document ::Google::Cloud::Firestore::V1::CreateDocumentRequest.new(parent: parent, collection_id: collection_id, document_id: document_id, document: document, mask: mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_document({ parent: parent, collection_id: collection_id, document_id: document_id, document: document, mask: mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_document(::Google::Cloud::Firestore::V1::CreateDocumentRequest.new(parent: parent, collection_id: collection_id, document_id: document_id, document: document, mask: mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_document_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Firestore::V1::Firestore::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Firestore::V1::Firestore::Rest::Client::Configuration, config
  end
end
