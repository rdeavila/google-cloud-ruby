# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "google/cloud/vision_ai/v1/warehouse"

class ::Google::Cloud::VisionAI::V1::Warehouse::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_annotation_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::VisionAI::V1::Warehouse::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.annotation_path project_number: "value0", location: "value1", corpus: "value2", asset: "value3", annotation: "value4"
      assert_equal "projects/value0/locations/value1/corpora/value2/assets/value3/annotations/value4", path
    end
  end

  def test_asset_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::VisionAI::V1::Warehouse::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.asset_path project_number: "value0", location: "value1", corpus: "value2", asset: "value3"
      assert_equal "projects/value0/locations/value1/corpora/value2/assets/value3", path
    end
  end

  def test_collection_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::VisionAI::V1::Warehouse::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.collection_path project_number: "value0", location: "value1", corpus: "value2", collection: "value3"
      assert_equal "projects/value0/locations/value1/corpora/value2/collections/value3", path
    end
  end

  def test_corpus_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::VisionAI::V1::Warehouse::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.corpus_path project_number: "value0", location: "value1", corpus: "value2"
      assert_equal "projects/value0/locations/value1/corpora/value2", path
    end
  end

  def test_data_schema_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::VisionAI::V1::Warehouse::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_schema_path project_number: "value0", location: "value1", corpus: "value2", data_schema: "value3"
      assert_equal "projects/value0/locations/value1/corpora/value2/dataSchemas/value3", path
    end
  end

  def test_index_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::VisionAI::V1::Warehouse::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.index_path project_number: "value0", location: "value1", corpus: "value2", index: "value3"
      assert_equal "projects/value0/locations/value1/corpora/value2/indexes/value3", path
    end
  end

  def test_index_endpoint_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::VisionAI::V1::Warehouse::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.index_endpoint_path project: "value0", location: "value1", index_endpoint: "value2"
      assert_equal "projects/value0/locations/value1/indexEndpoints/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::VisionAI::V1::Warehouse::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_search_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::VisionAI::V1::Warehouse::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.search_config_path project_number: "value0", location: "value1", corpus: "value2", search_config: "value3"
      assert_equal "projects/value0/locations/value1/corpora/value2/searchConfigs/value3", path
    end
  end

  def test_search_hypernym_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::VisionAI::V1::Warehouse::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.search_hypernym_path project_number: "value0", location: "value1", corpus: "value2", search_hypernym: "value3"
      assert_equal "projects/value0/locations/value1/corpora/value2/searchHypernyms/value3", path
    end
  end
end
