# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/videointelligence/v1p3beta1/video_intelligence_pb"
require "google/cloud/videointelligence/v1p3beta1/video_intelligence_services_pb"
require "google/cloud/video_intelligence/v1p3beta1/streaming_video_intelligence_service"

class ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingVideoIntelligenceService::ClientTest < Minitest::Test
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

  def test_streaming_annotate_video
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a bidi streaming method.
    video_config = {}

    streaming_annotate_video_client_stub = ClientStub.new [grpc_response].to_enum, grpc_operation do |name, request, options:|
      assert_equal :streaming_annotate_video, name
      assert_kind_of Enumerable, request
      refute_nil options
      request
    end

    Gapic::ServiceStub.stub :new, streaming_annotate_video_client_stub do
      # Create client
      client = ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingVideoIntelligenceService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use enumerable object with hash and protobuf object.
      request_hash = { video_config: video_config }
      request_proto = ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoRequest.new video_config: video_config
      enum_input = [request_hash, request_proto].to_enum
      client.streaming_annotate_video enum_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common).
      request_hash = { video_config: video_config }
      request_proto = ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoRequest.new video_config: video_config
      stream_input = Gapic::StreamInput.new
      client.streaming_annotate_video stream_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoResponse, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Use enumerable object with hash and protobuf object with options.
      request_hash = { video_config: video_config }
      request_proto = ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoRequest.new video_config: video_config
      enum_input = [request_hash, request_proto].to_enum
      client.streaming_annotate_video enum_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common) with options.
      request_hash = { video_config: video_config }
      request_proto = ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoRequest.new video_config: video_config
      stream_input = Gapic::StreamInput.new
      client.streaming_annotate_video stream_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoResponse, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Verify method calls
      assert_equal 4, streaming_annotate_video_client_stub.call_rpc_count
      streaming_annotate_video_client_stub.requests.each do |request|
        request.to_a.each do |r|
          assert_kind_of ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingAnnotateVideoRequest, r
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingVideoConfig), r["video_config"]
          assert_equal :video_config, r.streaming_request
        end
      end
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingVideoIntelligenceService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::VideoIntelligence::V1p3beta1::StreamingVideoIntelligenceService::Client::Configuration, config
  end
end
