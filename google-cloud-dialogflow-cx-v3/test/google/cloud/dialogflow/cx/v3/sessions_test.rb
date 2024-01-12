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

require "google/cloud/dialogflow/cx/v3/session_pb"
require "google/cloud/dialogflow/cx/v3/session_services_pb"
require "google/cloud/dialogflow/cx/v3/sessions"

class ::Google::Cloud::Dialogflow::CX::V3::Sessions::ClientTest < Minitest::Test
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

  def test_detect_intent
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::DetectIntentResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    session = "hello world"
    query_params = {}
    query_input = {}
    output_audio_config = {}

    detect_intent_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :detect_intent, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest, request
      assert_equal "hello world", request["session"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::QueryParameters), request["query_params"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::QueryInput), request["query_input"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::OutputAudioConfig), request["output_audio_config"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, detect_intent_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.detect_intent({ session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.detect_intent session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.detect_intent ::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest.new(session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.detect_intent({ session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.detect_intent(::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest.new(session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, detect_intent_client_stub.call_rpc_count
    end
  end

  def test_streaming_detect_intent
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a bidi streaming method.
    session = "hello world"
    query_params = {}
    query_input = {}
    output_audio_config = {}
    enable_partial_response = true
    enable_debugging_info = true

    streaming_detect_intent_client_stub = ClientStub.new [grpc_response].to_enum, grpc_operation do |name, request, options:|
      assert_equal :streaming_detect_intent, name
      assert_kind_of Enumerable, request
      refute_nil options
      request
    end

    Gapic::ServiceStub.stub :new, streaming_detect_intent_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use enumerable object with hash and protobuf object.
      request_hash = { session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config, enable_partial_response: enable_partial_response, enable_debugging_info: enable_debugging_info }
      request_proto = ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest.new session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config, enable_partial_response: enable_partial_response, enable_debugging_info: enable_debugging_info
      enum_input = [request_hash, request_proto].to_enum
      client.streaming_detect_intent enum_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common).
      request_hash = { session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config, enable_partial_response: enable_partial_response, enable_debugging_info: enable_debugging_info }
      request_proto = ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest.new session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config, enable_partial_response: enable_partial_response, enable_debugging_info: enable_debugging_info
      stream_input = Gapic::StreamInput.new
      client.streaming_detect_intent stream_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentResponse, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Use enumerable object with hash and protobuf object with options.
      request_hash = { session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config, enable_partial_response: enable_partial_response, enable_debugging_info: enable_debugging_info }
      request_proto = ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest.new session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config, enable_partial_response: enable_partial_response, enable_debugging_info: enable_debugging_info
      enum_input = [request_hash, request_proto].to_enum
      client.streaming_detect_intent enum_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common) with options.
      request_hash = { session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config, enable_partial_response: enable_partial_response, enable_debugging_info: enable_debugging_info }
      request_proto = ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest.new session: session, query_params: query_params, query_input: query_input, output_audio_config: output_audio_config, enable_partial_response: enable_partial_response, enable_debugging_info: enable_debugging_info
      stream_input = Gapic::StreamInput.new
      client.streaming_detect_intent stream_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentResponse, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Verify method calls
      assert_equal 4, streaming_detect_intent_client_stub.call_rpc_count
      streaming_detect_intent_client_stub.requests.each do |request|
        request.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest, r
          assert_equal "hello world", r["session"]
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::QueryParameters), r["query_params"]
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::QueryInput), r["query_input"]
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::OutputAudioConfig), r["output_audio_config"]
          assert_equal true, r["enable_partial_response"]
          assert_equal true, r["enable_debugging_info"]
        end
      end
    end
  end

  def test_match_intent
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::MatchIntentResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    session = "hello world"
    query_params = {}
    query_input = {}
    persist_parameter_changes = true

    match_intent_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :match_intent, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest, request
      assert_equal "hello world", request["session"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::QueryParameters), request["query_params"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::QueryInput), request["query_input"]
      assert_equal true, request["persist_parameter_changes"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, match_intent_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.match_intent({ session: session, query_params: query_params, query_input: query_input, persist_parameter_changes: persist_parameter_changes }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.match_intent session: session, query_params: query_params, query_input: query_input, persist_parameter_changes: persist_parameter_changes do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.match_intent ::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest.new(session: session, query_params: query_params, query_input: query_input, persist_parameter_changes: persist_parameter_changes) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.match_intent({ session: session, query_params: query_params, query_input: query_input, persist_parameter_changes: persist_parameter_changes }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.match_intent(::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest.new(session: session, query_params: query_params, query_input: query_input, persist_parameter_changes: persist_parameter_changes), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, match_intent_client_stub.call_rpc_count
    end
  end

  def test_fulfill_intent
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::FulfillIntentResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    match_intent_request = {}
    match = {}
    output_audio_config = {}

    fulfill_intent_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :fulfill_intent, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::FulfillIntentRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest), request["match_intent_request"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::Match), request["match"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::OutputAudioConfig), request["output_audio_config"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, fulfill_intent_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.fulfill_intent({ match_intent_request: match_intent_request, match: match, output_audio_config: output_audio_config }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.fulfill_intent match_intent_request: match_intent_request, match: match, output_audio_config: output_audio_config do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.fulfill_intent ::Google::Cloud::Dialogflow::CX::V3::FulfillIntentRequest.new(match_intent_request: match_intent_request, match: match, output_audio_config: output_audio_config) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.fulfill_intent({ match_intent_request: match_intent_request, match: match, output_audio_config: output_audio_config }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.fulfill_intent(::Google::Cloud::Dialogflow::CX::V3::FulfillIntentRequest.new(match_intent_request: match_intent_request, match: match, output_audio_config: output_audio_config), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, fulfill_intent_client_stub.call_rpc_count
    end
  end

  def test_submit_answer_feedback
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::AnswerFeedback.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    session = "hello world"
    response_id = "hello world"
    answer_feedback = {}
    update_mask = {}

    submit_answer_feedback_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :submit_answer_feedback, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::SubmitAnswerFeedbackRequest, request
      assert_equal "hello world", request["session"]
      assert_equal "hello world", request["response_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::AnswerFeedback), request["answer_feedback"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, submit_answer_feedback_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.submit_answer_feedback({ session: session, response_id: response_id, answer_feedback: answer_feedback, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.submit_answer_feedback session: session, response_id: response_id, answer_feedback: answer_feedback, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.submit_answer_feedback ::Google::Cloud::Dialogflow::CX::V3::SubmitAnswerFeedbackRequest.new(session: session, response_id: response_id, answer_feedback: answer_feedback, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.submit_answer_feedback({ session: session, response_id: response_id, answer_feedback: answer_feedback, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.submit_answer_feedback(::Google::Cloud::Dialogflow::CX::V3::SubmitAnswerFeedbackRequest.new(session: session, response_id: response_id, answer_feedback: answer_feedback, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, submit_answer_feedback_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client::Configuration, config
  end
end
