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
require "google/cloud/scheduler/v1/cloudscheduler_pb"
require "google/cloud/scheduler/v1/cloud_scheduler/rest"


class ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::ClientTest < Minitest::Test
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

  def test_list_jobs
    # Create test objects.
    client_result = ::Google::Cloud::Scheduler::V1::ListJobsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_jobs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::ServiceStub.stub :transcode_list_jobs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_jobs_client_stub do
        # Create client
        client = ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_jobs({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_jobs parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_jobs ::Google::Cloud::Scheduler::V1::ListJobsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_jobs({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_jobs(::Google::Cloud::Scheduler::V1::ListJobsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_jobs_client_stub.call_count
      end
    end
  end

  def test_get_job
    # Create test objects.
    client_result = ::Google::Cloud::Scheduler::V1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::ServiceStub.stub :transcode_get_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_job_client_stub do
        # Create client
        client = ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_job({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_job name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_job ::Google::Cloud::Scheduler::V1::GetJobRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_job({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_job(::Google::Cloud::Scheduler::V1::GetJobRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_job_client_stub.call_count
      end
    end
  end

  def test_create_job
    # Create test objects.
    client_result = ::Google::Cloud::Scheduler::V1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    job = {}

    create_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::ServiceStub.stub :transcode_create_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_job_client_stub do
        # Create client
        client = ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_job({ parent: parent, job: job }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_job parent: parent, job: job do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_job ::Google::Cloud::Scheduler::V1::CreateJobRequest.new(parent: parent, job: job) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_job({ parent: parent, job: job }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_job(::Google::Cloud::Scheduler::V1::CreateJobRequest.new(parent: parent, job: job), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_job_client_stub.call_count
      end
    end
  end

  def test_update_job
    # Create test objects.
    client_result = ::Google::Cloud::Scheduler::V1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    job = {}
    update_mask = {}

    update_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::ServiceStub.stub :transcode_update_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_job_client_stub do
        # Create client
        client = ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_job({ job: job, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_job job: job, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_job ::Google::Cloud::Scheduler::V1::UpdateJobRequest.new(job: job, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_job({ job: job, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_job(::Google::Cloud::Scheduler::V1::UpdateJobRequest.new(job: job, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_job_client_stub.call_count
      end
    end
  end

  def test_delete_job
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::ServiceStub.stub :transcode_delete_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_job_client_stub do
        # Create client
        client = ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_job({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_job name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_job ::Google::Cloud::Scheduler::V1::DeleteJobRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_job({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_job(::Google::Cloud::Scheduler::V1::DeleteJobRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_job_client_stub.call_count
      end
    end
  end

  def test_pause_job
    # Create test objects.
    client_result = ::Google::Cloud::Scheduler::V1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    pause_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::ServiceStub.stub :transcode_pause_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, pause_job_client_stub do
        # Create client
        client = ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.pause_job({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.pause_job name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.pause_job ::Google::Cloud::Scheduler::V1::PauseJobRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.pause_job({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.pause_job(::Google::Cloud::Scheduler::V1::PauseJobRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, pause_job_client_stub.call_count
      end
    end
  end

  def test_resume_job
    # Create test objects.
    client_result = ::Google::Cloud::Scheduler::V1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    resume_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::ServiceStub.stub :transcode_resume_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, resume_job_client_stub do
        # Create client
        client = ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.resume_job({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.resume_job name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.resume_job ::Google::Cloud::Scheduler::V1::ResumeJobRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.resume_job({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.resume_job(::Google::Cloud::Scheduler::V1::ResumeJobRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, resume_job_client_stub.call_count
      end
    end
  end

  def test_run_job
    # Create test objects.
    client_result = ::Google::Cloud::Scheduler::V1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    run_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::ServiceStub.stub :transcode_run_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, run_job_client_stub do
        # Create client
        client = ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.run_job({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.run_job name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.run_job ::Google::Cloud::Scheduler::V1::RunJobRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.run_job({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.run_job(::Google::Cloud::Scheduler::V1::RunJobRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, run_job_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Scheduler::V1::CloudScheduler::Rest::Client::Configuration, config
  end
end
