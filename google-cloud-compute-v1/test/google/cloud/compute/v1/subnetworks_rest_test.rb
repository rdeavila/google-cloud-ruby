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
require "gapic/rest"
require "google/cloud/compute/v1/compute_pb"
require "google/cloud/compute/v1/subnetworks/rest"


class ::Google::Cloud::Compute::V1::Subnetworks::Rest::ClientTest < Minitest::Test
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

  def test_aggregated_list
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::SubnetworkAggregatedList.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    include_all_scopes = true
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    return_partial_success = true
    service_project_number = 42

    aggregated_list_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Subnetworks::Rest::ServiceStub.stub :transcode_aggregated_list_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, aggregated_list_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.aggregated_list({ filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, service_project_number: service_project_number }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.aggregated_list filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, service_project_number: service_project_number do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.aggregated_list ::Google::Cloud::Compute::V1::AggregatedListSubnetworksRequest.new(filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, service_project_number: service_project_number) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.aggregated_list({ filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, service_project_number: service_project_number }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.aggregated_list(::Google::Cloud::Compute::V1::AggregatedListSubnetworksRequest.new(filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, service_project_number: service_project_number), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, aggregated_list_client_stub.call_count
      end
    end
  end

  def test_delete
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    region = "hello world"
    request_id = "hello world"
    subnetwork = "hello world"

    delete_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Subnetworks::Rest::ServiceStub.stub :transcode_delete_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete({ project: project, region: region, request_id: request_id, subnetwork: subnetwork }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete project: project, region: region, request_id: request_id, subnetwork: subnetwork do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete ::Google::Cloud::Compute::V1::DeleteSubnetworkRequest.new(project: project, region: region, request_id: request_id, subnetwork: subnetwork) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete({ project: project, region: region, request_id: request_id, subnetwork: subnetwork }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete(::Google::Cloud::Compute::V1::DeleteSubnetworkRequest.new(project: project, region: region, request_id: request_id, subnetwork: subnetwork), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_client_stub.call_count
      end
    end
  end

  def test_expand_ip_cidr_range
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    region = "hello world"
    request_id = "hello world"
    subnetwork = "hello world"
    subnetworks_expand_ip_cidr_range_request_resource = {}

    expand_ip_cidr_range_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Subnetworks::Rest::ServiceStub.stub :transcode_expand_ip_cidr_range_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, expand_ip_cidr_range_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.expand_ip_cidr_range({ project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetworks_expand_ip_cidr_range_request_resource: subnetworks_expand_ip_cidr_range_request_resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.expand_ip_cidr_range project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetworks_expand_ip_cidr_range_request_resource: subnetworks_expand_ip_cidr_range_request_resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.expand_ip_cidr_range ::Google::Cloud::Compute::V1::ExpandIpCidrRangeSubnetworkRequest.new(project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetworks_expand_ip_cidr_range_request_resource: subnetworks_expand_ip_cidr_range_request_resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.expand_ip_cidr_range({ project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetworks_expand_ip_cidr_range_request_resource: subnetworks_expand_ip_cidr_range_request_resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.expand_ip_cidr_range(::Google::Cloud::Compute::V1::ExpandIpCidrRangeSubnetworkRequest.new(project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetworks_expand_ip_cidr_range_request_resource: subnetworks_expand_ip_cidr_range_request_resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, expand_ip_cidr_range_client_stub.call_count
      end
    end
  end

  def test_get
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Subnetwork.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    region = "hello world"
    subnetwork = "hello world"

    get_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Subnetworks::Rest::ServiceStub.stub :transcode_get_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get({ project: project, region: region, subnetwork: subnetwork }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get project: project, region: region, subnetwork: subnetwork do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get ::Google::Cloud::Compute::V1::GetSubnetworkRequest.new(project: project, region: region, subnetwork: subnetwork) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get({ project: project, region: region, subnetwork: subnetwork }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get(::Google::Cloud::Compute::V1::GetSubnetworkRequest.new(project: project, region: region, subnetwork: subnetwork), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_client_stub.call_count
      end
    end
  end

  def test_get_iam_policy
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    options_requested_policy_version = 42
    project = "hello world"
    region = "hello world"
    resource = "hello world"

    get_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Subnetworks::Rest::ServiceStub.stub :transcode_get_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_iam_policy({ options_requested_policy_version: options_requested_policy_version, project: project, region: region, resource: resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_iam_policy options_requested_policy_version: options_requested_policy_version, project: project, region: region, resource: resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_iam_policy ::Google::Cloud::Compute::V1::GetIamPolicySubnetworkRequest.new(options_requested_policy_version: options_requested_policy_version, project: project, region: region, resource: resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_iam_policy({ options_requested_policy_version: options_requested_policy_version, project: project, region: region, resource: resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_iam_policy(::Google::Cloud::Compute::V1::GetIamPolicySubnetworkRequest.new(options_requested_policy_version: options_requested_policy_version, project: project, region: region, resource: resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_iam_policy_client_stub.call_count
      end
    end
  end

  def test_insert
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    region = "hello world"
    request_id = "hello world"
    subnetwork_resource = {}

    insert_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Subnetworks::Rest::ServiceStub.stub :transcode_insert_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, insert_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.insert({ project: project, region: region, request_id: request_id, subnetwork_resource: subnetwork_resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.insert project: project, region: region, request_id: request_id, subnetwork_resource: subnetwork_resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.insert ::Google::Cloud::Compute::V1::InsertSubnetworkRequest.new(project: project, region: region, request_id: request_id, subnetwork_resource: subnetwork_resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.insert({ project: project, region: region, request_id: request_id, subnetwork_resource: subnetwork_resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.insert(::Google::Cloud::Compute::V1::InsertSubnetworkRequest.new(project: project, region: region, request_id: request_id, subnetwork_resource: subnetwork_resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, insert_client_stub.call_count
      end
    end
  end

  def test_list
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::SubnetworkList.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    region = "hello world"
    return_partial_success = true

    list_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Subnetworks::Rest::ServiceStub.stub :transcode_list_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, region: region, return_partial_success: return_partial_success }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, region: region, return_partial_success: return_partial_success do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list ::Google::Cloud::Compute::V1::ListSubnetworksRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, region: region, return_partial_success: return_partial_success) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, region: region, return_partial_success: return_partial_success }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list(::Google::Cloud::Compute::V1::ListSubnetworksRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, region: region, return_partial_success: return_partial_success), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_client_stub.call_count
      end
    end
  end

  def test_list_usable
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::UsableSubnetworksAggregatedList.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    return_partial_success = true

    list_usable_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Subnetworks::Rest::ServiceStub.stub :transcode_list_usable_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_usable_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_usable({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_usable filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_usable ::Google::Cloud::Compute::V1::ListUsableSubnetworksRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_usable({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_usable(::Google::Cloud::Compute::V1::ListUsableSubnetworksRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_usable_client_stub.call_count
      end
    end
  end

  def test_patch
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    drain_timeout_seconds = 42
    project = "hello world"
    region = "hello world"
    request_id = "hello world"
    subnetwork = "hello world"
    subnetwork_resource = {}

    patch_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Subnetworks::Rest::ServiceStub.stub :transcode_patch_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, patch_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.patch({ drain_timeout_seconds: drain_timeout_seconds, project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetwork_resource: subnetwork_resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.patch drain_timeout_seconds: drain_timeout_seconds, project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetwork_resource: subnetwork_resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.patch ::Google::Cloud::Compute::V1::PatchSubnetworkRequest.new(drain_timeout_seconds: drain_timeout_seconds, project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetwork_resource: subnetwork_resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.patch({ drain_timeout_seconds: drain_timeout_seconds, project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetwork_resource: subnetwork_resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.patch(::Google::Cloud::Compute::V1::PatchSubnetworkRequest.new(drain_timeout_seconds: drain_timeout_seconds, project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetwork_resource: subnetwork_resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, patch_client_stub.call_count
      end
    end
  end

  def test_set_iam_policy
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    region = "hello world"
    region_set_policy_request_resource = {}
    resource = "hello world"

    set_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Subnetworks::Rest::ServiceStub.stub :transcode_set_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.set_iam_policy({ project: project, region: region, region_set_policy_request_resource: region_set_policy_request_resource, resource: resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.set_iam_policy project: project, region: region, region_set_policy_request_resource: region_set_policy_request_resource, resource: resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.set_iam_policy ::Google::Cloud::Compute::V1::SetIamPolicySubnetworkRequest.new(project: project, region: region, region_set_policy_request_resource: region_set_policy_request_resource, resource: resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_iam_policy({ project: project, region: region, region_set_policy_request_resource: region_set_policy_request_resource, resource: resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_iam_policy(::Google::Cloud::Compute::V1::SetIamPolicySubnetworkRequest.new(project: project, region: region, region_set_policy_request_resource: region_set_policy_request_resource, resource: resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_iam_policy_client_stub.call_count
      end
    end
  end

  def test_set_private_ip_google_access
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    region = "hello world"
    request_id = "hello world"
    subnetwork = "hello world"
    subnetworks_set_private_ip_google_access_request_resource = {}

    set_private_ip_google_access_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Subnetworks::Rest::ServiceStub.stub :transcode_set_private_ip_google_access_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_private_ip_google_access_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.set_private_ip_google_access({ project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetworks_set_private_ip_google_access_request_resource: subnetworks_set_private_ip_google_access_request_resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.set_private_ip_google_access project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetworks_set_private_ip_google_access_request_resource: subnetworks_set_private_ip_google_access_request_resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.set_private_ip_google_access ::Google::Cloud::Compute::V1::SetPrivateIpGoogleAccessSubnetworkRequest.new(project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetworks_set_private_ip_google_access_request_resource: subnetworks_set_private_ip_google_access_request_resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_private_ip_google_access({ project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetworks_set_private_ip_google_access_request_resource: subnetworks_set_private_ip_google_access_request_resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_private_ip_google_access(::Google::Cloud::Compute::V1::SetPrivateIpGoogleAccessSubnetworkRequest.new(project: project, region: region, request_id: request_id, subnetwork: subnetwork, subnetworks_set_private_ip_google_access_request_resource: subnetworks_set_private_ip_google_access_request_resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_private_ip_google_access_client_stub.call_count
      end
    end
  end

  def test_test_iam_permissions
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::TestPermissionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    region = "hello world"
    resource = "hello world"
    test_permissions_request_resource = {}

    test_iam_permissions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Subnetworks::Rest::ServiceStub.stub :transcode_test_iam_permissions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, test_iam_permissions_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.test_iam_permissions({ project: project, region: region, resource: resource, test_permissions_request_resource: test_permissions_request_resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.test_iam_permissions project: project, region: region, resource: resource, test_permissions_request_resource: test_permissions_request_resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.test_iam_permissions ::Google::Cloud::Compute::V1::TestIamPermissionsSubnetworkRequest.new(project: project, region: region, resource: resource, test_permissions_request_resource: test_permissions_request_resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.test_iam_permissions({ project: project, region: region, resource: resource, test_permissions_request_resource: test_permissions_request_resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.test_iam_permissions(::Google::Cloud::Compute::V1::TestIamPermissionsSubnetworkRequest.new(project: project, region: region, resource: resource, test_permissions_request_resource: test_permissions_request_resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, test_iam_permissions_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Compute::V1::Subnetworks::Rest::Client::Configuration, config
  end
end
