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
require "google/cloud/dataproc/v1/jobs_pb"
require "google/cloud/dataproc/v1/job_controller/rest"


class ::Google::Cloud::Dataproc::V1::JobController::Rest::ClientTest < Minitest::Test
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

  def test_submit_job
    # Create test objects.
    client_result = ::Google::Cloud::Dataproc::V1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    job = {}
    request_id = "hello world"

    submit_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::JobController::Rest::ServiceStub.stub :transcode_submit_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, submit_job_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::JobController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.submit_job({ project_id: project_id, region: region, job: job, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.submit_job project_id: project_id, region: region, job: job, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.submit_job ::Google::Cloud::Dataproc::V1::SubmitJobRequest.new(project_id: project_id, region: region, job: job, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.submit_job({ project_id: project_id, region: region, job: job, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.submit_job(::Google::Cloud::Dataproc::V1::SubmitJobRequest.new(project_id: project_id, region: region, job: job, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, submit_job_client_stub.call_count
      end
    end
  end

  def test_submit_job_as_operation
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    job = {}
    request_id = "hello world"

    submit_job_as_operation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::JobController::Rest::ServiceStub.stub :transcode_submit_job_as_operation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, submit_job_as_operation_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::JobController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.submit_job_as_operation({ project_id: project_id, region: region, job: job, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.submit_job_as_operation project_id: project_id, region: region, job: job, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.submit_job_as_operation ::Google::Cloud::Dataproc::V1::SubmitJobRequest.new(project_id: project_id, region: region, job: job, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.submit_job_as_operation({ project_id: project_id, region: region, job: job, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.submit_job_as_operation(::Google::Cloud::Dataproc::V1::SubmitJobRequest.new(project_id: project_id, region: region, job: job, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, submit_job_as_operation_client_stub.call_count
      end
    end
  end

  def test_get_job
    # Create test objects.
    client_result = ::Google::Cloud::Dataproc::V1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    job_id = "hello world"

    get_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::JobController::Rest::ServiceStub.stub :transcode_get_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_job_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::JobController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_job({ project_id: project_id, region: region, job_id: job_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_job project_id: project_id, region: region, job_id: job_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_job ::Google::Cloud::Dataproc::V1::GetJobRequest.new(project_id: project_id, region: region, job_id: job_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_job({ project_id: project_id, region: region, job_id: job_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_job(::Google::Cloud::Dataproc::V1::GetJobRequest.new(project_id: project_id, region: region, job_id: job_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_job_client_stub.call_count
      end
    end
  end

  def test_list_jobs
    # Create test objects.
    client_result = ::Google::Cloud::Dataproc::V1::ListJobsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    page_size = 42
    page_token = "hello world"
    cluster_name = "hello world"
    job_state_matcher = :ALL
    filter = "hello world"

    list_jobs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::JobController::Rest::ServiceStub.stub :transcode_list_jobs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_jobs_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::JobController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_jobs({ project_id: project_id, region: region, page_size: page_size, page_token: page_token, cluster_name: cluster_name, job_state_matcher: job_state_matcher, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_jobs project_id: project_id, region: region, page_size: page_size, page_token: page_token, cluster_name: cluster_name, job_state_matcher: job_state_matcher, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_jobs ::Google::Cloud::Dataproc::V1::ListJobsRequest.new(project_id: project_id, region: region, page_size: page_size, page_token: page_token, cluster_name: cluster_name, job_state_matcher: job_state_matcher, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_jobs({ project_id: project_id, region: region, page_size: page_size, page_token: page_token, cluster_name: cluster_name, job_state_matcher: job_state_matcher, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_jobs(::Google::Cloud::Dataproc::V1::ListJobsRequest.new(project_id: project_id, region: region, page_size: page_size, page_token: page_token, cluster_name: cluster_name, job_state_matcher: job_state_matcher, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_jobs_client_stub.call_count
      end
    end
  end

  def test_update_job
    # Create test objects.
    client_result = ::Google::Cloud::Dataproc::V1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    job_id = "hello world"
    job = {}
    update_mask = {}

    update_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::JobController::Rest::ServiceStub.stub :transcode_update_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_job_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::JobController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_job({ project_id: project_id, region: region, job_id: job_id, job: job, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_job project_id: project_id, region: region, job_id: job_id, job: job, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_job ::Google::Cloud::Dataproc::V1::UpdateJobRequest.new(project_id: project_id, region: region, job_id: job_id, job: job, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_job({ project_id: project_id, region: region, job_id: job_id, job: job, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_job(::Google::Cloud::Dataproc::V1::UpdateJobRequest.new(project_id: project_id, region: region, job_id: job_id, job: job, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_job_client_stub.call_count
      end
    end
  end

  def test_cancel_job
    # Create test objects.
    client_result = ::Google::Cloud::Dataproc::V1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    job_id = "hello world"

    cancel_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::JobController::Rest::ServiceStub.stub :transcode_cancel_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, cancel_job_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::JobController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.cancel_job({ project_id: project_id, region: region, job_id: job_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.cancel_job project_id: project_id, region: region, job_id: job_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.cancel_job ::Google::Cloud::Dataproc::V1::CancelJobRequest.new(project_id: project_id, region: region, job_id: job_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.cancel_job({ project_id: project_id, region: region, job_id: job_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.cancel_job(::Google::Cloud::Dataproc::V1::CancelJobRequest.new(project_id: project_id, region: region, job_id: job_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, cancel_job_client_stub.call_count
      end
    end
  end

  def test_delete_job
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    region = "hello world"
    job_id = "hello world"

    delete_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataproc::V1::JobController::Rest::ServiceStub.stub :transcode_delete_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_job_client_stub do
        # Create client
        client = ::Google::Cloud::Dataproc::V1::JobController::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_job({ project_id: project_id, region: region, job_id: job_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_job project_id: project_id, region: region, job_id: job_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_job ::Google::Cloud::Dataproc::V1::DeleteJobRequest.new(project_id: project_id, region: region, job_id: job_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_job({ project_id: project_id, region: region, job_id: job_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_job(::Google::Cloud::Dataproc::V1::DeleteJobRequest.new(project_id: project_id, region: region, job_id: job_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_job_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dataproc::V1::JobController::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dataproc::V1::JobController::Rest::Client::Configuration, config
  end
end
