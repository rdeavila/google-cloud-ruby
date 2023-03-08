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
require "google/cloud/retail/v2/search_service_pb"
require "google/cloud/retail/v2/search_service/rest"


class ::Google::Cloud::Retail::V2::SearchService::Rest::ClientTest < Minitest::Test
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
  end

  def test_search
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::SearchResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    placement = "hello world"
    branch = "hello world"
    query = "hello world"
    visitor_id = "hello world"
    user_info = {}
    page_size = 42
    page_token = "hello world"
    offset = 42
    filter = "hello world"
    canonical_filter = "hello world"
    order_by = "hello world"
    facet_specs = [{}]
    dynamic_facet_spec = {}
    boost_spec = {}
    query_expansion_spec = {}
    variant_rollup_keys = ["hello world"]
    page_categories = ["hello world"]
    search_mode = :SEARCH_MODE_UNSPECIFIED
    personalization_spec = {}
    labels = {}
    spell_correction_spec = {}

    search_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::SearchService::Rest::ServiceStub.stub :transcode_search_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::SearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search({ placement: placement, branch: branch, query: query, visitor_id: visitor_id, user_info: user_info, page_size: page_size, page_token: page_token, offset: offset, filter: filter, canonical_filter: canonical_filter, order_by: order_by, facet_specs: facet_specs, dynamic_facet_spec: dynamic_facet_spec, boost_spec: boost_spec, query_expansion_spec: query_expansion_spec, variant_rollup_keys: variant_rollup_keys, page_categories: page_categories, search_mode: search_mode, personalization_spec: personalization_spec, labels: labels, spell_correction_spec: spell_correction_spec }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search placement: placement, branch: branch, query: query, visitor_id: visitor_id, user_info: user_info, page_size: page_size, page_token: page_token, offset: offset, filter: filter, canonical_filter: canonical_filter, order_by: order_by, facet_specs: facet_specs, dynamic_facet_spec: dynamic_facet_spec, boost_spec: boost_spec, query_expansion_spec: query_expansion_spec, variant_rollup_keys: variant_rollup_keys, page_categories: page_categories, search_mode: search_mode, personalization_spec: personalization_spec, labels: labels, spell_correction_spec: spell_correction_spec do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search ::Google::Cloud::Retail::V2::SearchRequest.new(placement: placement, branch: branch, query: query, visitor_id: visitor_id, user_info: user_info, page_size: page_size, page_token: page_token, offset: offset, filter: filter, canonical_filter: canonical_filter, order_by: order_by, facet_specs: facet_specs, dynamic_facet_spec: dynamic_facet_spec, boost_spec: boost_spec, query_expansion_spec: query_expansion_spec, variant_rollup_keys: variant_rollup_keys, page_categories: page_categories, search_mode: search_mode, personalization_spec: personalization_spec, labels: labels, spell_correction_spec: spell_correction_spec) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search({ placement: placement, branch: branch, query: query, visitor_id: visitor_id, user_info: user_info, page_size: page_size, page_token: page_token, offset: offset, filter: filter, canonical_filter: canonical_filter, order_by: order_by, facet_specs: facet_specs, dynamic_facet_spec: dynamic_facet_spec, boost_spec: boost_spec, query_expansion_spec: query_expansion_spec, variant_rollup_keys: variant_rollup_keys, page_categories: page_categories, search_mode: search_mode, personalization_spec: personalization_spec, labels: labels, spell_correction_spec: spell_correction_spec }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search(::Google::Cloud::Retail::V2::SearchRequest.new(placement: placement, branch: branch, query: query, visitor_id: visitor_id, user_info: user_info, page_size: page_size, page_token: page_token, offset: offset, filter: filter, canonical_filter: canonical_filter, order_by: order_by, facet_specs: facet_specs, dynamic_facet_spec: dynamic_facet_spec, boost_spec: boost_spec, query_expansion_spec: query_expansion_spec, variant_rollup_keys: variant_rollup_keys, page_categories: page_categories, search_mode: search_mode, personalization_spec: personalization_spec, labels: labels, spell_correction_spec: spell_correction_spec), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Retail::V2::SearchService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Retail::V2::SearchService::Rest::Client::Configuration, config
  end
end
