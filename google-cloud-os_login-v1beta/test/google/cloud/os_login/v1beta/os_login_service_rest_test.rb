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
require "google/cloud/oslogin/v1beta/oslogin_pb"
require "google/cloud/os_login/v1beta/os_login_service/rest"


class ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::ClientTest < Minitest::Test
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

  def test_create_ssh_public_key
    # Create test objects.
    client_result = ::Google::Cloud::OsLogin::Common::SshPublicKey.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    ssh_public_key = {}

    create_ssh_public_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::ServiceStub.stub :transcode_create_ssh_public_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_ssh_public_key_client_stub do
        # Create client
        client = ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_ssh_public_key({ parent: parent, ssh_public_key: ssh_public_key }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_ssh_public_key parent: parent, ssh_public_key: ssh_public_key do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_ssh_public_key ::Google::Cloud::OsLogin::V1beta::CreateSshPublicKeyRequest.new(parent: parent, ssh_public_key: ssh_public_key) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_ssh_public_key({ parent: parent, ssh_public_key: ssh_public_key }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_ssh_public_key(::Google::Cloud::OsLogin::V1beta::CreateSshPublicKeyRequest.new(parent: parent, ssh_public_key: ssh_public_key), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_ssh_public_key_client_stub.call_count
      end
    end
  end

  def test_delete_posix_account
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_posix_account_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::ServiceStub.stub :transcode_delete_posix_account_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_posix_account_client_stub do
        # Create client
        client = ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_posix_account({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_posix_account name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_posix_account ::Google::Cloud::OsLogin::V1beta::DeletePosixAccountRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_posix_account({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_posix_account(::Google::Cloud::OsLogin::V1beta::DeletePosixAccountRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_posix_account_client_stub.call_count
      end
    end
  end

  def test_delete_ssh_public_key
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_ssh_public_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::ServiceStub.stub :transcode_delete_ssh_public_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_ssh_public_key_client_stub do
        # Create client
        client = ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_ssh_public_key({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_ssh_public_key name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_ssh_public_key ::Google::Cloud::OsLogin::V1beta::DeleteSshPublicKeyRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_ssh_public_key({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_ssh_public_key(::Google::Cloud::OsLogin::V1beta::DeleteSshPublicKeyRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_ssh_public_key_client_stub.call_count
      end
    end
  end

  def test_get_login_profile
    # Create test objects.
    client_result = ::Google::Cloud::OsLogin::V1beta::LoginProfile.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    project_id = "hello world"
    system_id = "hello world"
    view = :LOGIN_PROFILE_VIEW_UNSPECIFIED

    get_login_profile_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::ServiceStub.stub :transcode_get_login_profile_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_login_profile_client_stub do
        # Create client
        client = ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_login_profile({ name: name, project_id: project_id, system_id: system_id, view: view }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_login_profile name: name, project_id: project_id, system_id: system_id, view: view do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_login_profile ::Google::Cloud::OsLogin::V1beta::GetLoginProfileRequest.new(name: name, project_id: project_id, system_id: system_id, view: view) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_login_profile({ name: name, project_id: project_id, system_id: system_id, view: view }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_login_profile(::Google::Cloud::OsLogin::V1beta::GetLoginProfileRequest.new(name: name, project_id: project_id, system_id: system_id, view: view), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_login_profile_client_stub.call_count
      end
    end
  end

  def test_get_ssh_public_key
    # Create test objects.
    client_result = ::Google::Cloud::OsLogin::Common::SshPublicKey.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_ssh_public_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::ServiceStub.stub :transcode_get_ssh_public_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_ssh_public_key_client_stub do
        # Create client
        client = ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_ssh_public_key({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_ssh_public_key name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_ssh_public_key ::Google::Cloud::OsLogin::V1beta::GetSshPublicKeyRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_ssh_public_key({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_ssh_public_key(::Google::Cloud::OsLogin::V1beta::GetSshPublicKeyRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_ssh_public_key_client_stub.call_count
      end
    end
  end

  def test_import_ssh_public_key
    # Create test objects.
    client_result = ::Google::Cloud::OsLogin::V1beta::ImportSshPublicKeyResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    ssh_public_key = {}
    project_id = "hello world"
    view = :LOGIN_PROFILE_VIEW_UNSPECIFIED

    import_ssh_public_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::ServiceStub.stub :transcode_import_ssh_public_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, import_ssh_public_key_client_stub do
        # Create client
        client = ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.import_ssh_public_key({ parent: parent, ssh_public_key: ssh_public_key, project_id: project_id, view: view }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.import_ssh_public_key parent: parent, ssh_public_key: ssh_public_key, project_id: project_id, view: view do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.import_ssh_public_key ::Google::Cloud::OsLogin::V1beta::ImportSshPublicKeyRequest.new(parent: parent, ssh_public_key: ssh_public_key, project_id: project_id, view: view) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.import_ssh_public_key({ parent: parent, ssh_public_key: ssh_public_key, project_id: project_id, view: view }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.import_ssh_public_key(::Google::Cloud::OsLogin::V1beta::ImportSshPublicKeyRequest.new(parent: parent, ssh_public_key: ssh_public_key, project_id: project_id, view: view), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, import_ssh_public_key_client_stub.call_count
      end
    end
  end

  def test_update_ssh_public_key
    # Create test objects.
    client_result = ::Google::Cloud::OsLogin::Common::SshPublicKey.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    ssh_public_key = {}
    update_mask = {}

    update_ssh_public_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::ServiceStub.stub :transcode_update_ssh_public_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_ssh_public_key_client_stub do
        # Create client
        client = ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_ssh_public_key({ name: name, ssh_public_key: ssh_public_key, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_ssh_public_key name: name, ssh_public_key: ssh_public_key, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_ssh_public_key ::Google::Cloud::OsLogin::V1beta::UpdateSshPublicKeyRequest.new(name: name, ssh_public_key: ssh_public_key, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_ssh_public_key({ name: name, ssh_public_key: ssh_public_key, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_ssh_public_key(::Google::Cloud::OsLogin::V1beta::UpdateSshPublicKeyRequest.new(name: name, ssh_public_key: ssh_public_key, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_ssh_public_key_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::OsLogin::V1beta::OsLoginService::Rest::Client::Configuration, config
  end
end
