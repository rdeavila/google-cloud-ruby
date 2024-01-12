# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/cloud/service_directory/v1/registration_service"

class ::Google::Cloud::ServiceDirectory::V1::RegistrationService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end
  end

  def test_endpoint_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ServiceDirectory::V1::RegistrationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.endpoint_path project: "value0", location: "value1", namespace: "value2", service: "value3", endpoint: "value4"
      assert_equal "projects/value0/locations/value1/namespaces/value2/services/value3/endpoints/value4", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ServiceDirectory::V1::RegistrationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_namespace_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ServiceDirectory::V1::RegistrationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.namespace_path project: "value0", location: "value1", namespace: "value2"
      assert_equal "projects/value0/locations/value1/namespaces/value2", path
    end
  end

  def test_network_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ServiceDirectory::V1::RegistrationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.network_path project: "value0", network: "value1"
      assert_equal "projects/value0/locations/global/networks/value1", path
    end
  end

  def test_service_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::ServiceDirectory::V1::RegistrationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.service_path project: "value0", location: "value1", namespace: "value2", service: "value3"
      assert_equal "projects/value0/locations/value1/namespaces/value2/services/value3", path
    end
  end
end
