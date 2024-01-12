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

require "google/cloud/policytroubleshooter/iam/v3/troubleshooter_pb"

module Google
  module Cloud
    module PolicyTroubleshooter
      module Iam
        module V3
          module PolicyTroubleshooter
            module Rest
              ##
              # REST service stub for the PolicyTroubleshooter service.
              # Service stub contains baseline method implementations
              # including transcoding, making the REST call, and deserialing the response.
              #
              class ServiceStub
                def initialize endpoint:, endpoint_template:, universe_domain:, credentials:
                  # These require statements are intentionally placed here to initialize
                  # the REST modules only when it's required.
                  require "gapic/rest"

                  @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint,
                                                               endpoint_template: endpoint_template,
                                                               universe_domain: universe_domain,
                                                               credentials: credentials,
                                                               numeric_enums: true,
                                                               raise_faraday_errors: false
                end

                ##
                # The effective universe domain
                #
                # @return [String]
                #
                def universe_domain
                  @client_stub.universe_domain
                end

                ##
                # The effective endpoint
                #
                # @return [String]
                #
                def endpoint
                  @client_stub.endpoint
                end

                ##
                # Baseline implementation for the troubleshoot_iam_policy REST call
                #
                # @param request_pb [::Google::Cloud::PolicyTroubleshooter::Iam::V3::TroubleshootIamPolicyRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::PolicyTroubleshooter::Iam::V3::TroubleshootIamPolicyResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::PolicyTroubleshooter::Iam::V3::TroubleshootIamPolicyResponse]
                #   A result object deserialized from the server's reply
                def troubleshoot_iam_policy request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_troubleshoot_iam_policy_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::PolicyTroubleshooter::Iam::V3::TroubleshootIamPolicyResponse.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the troubleshoot_iam_policy REST call
                #
                # @param request_pb [::Google::Cloud::PolicyTroubleshooter::Iam::V3::TroubleshootIamPolicyRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_troubleshoot_iam_policy_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/iam:troubleshoot",
                                                            body: "*",
                                                            matches: []
                                                          )
                  transcoder.transcode request_pb
                end
              end
            end
          end
        end
      end
    end
  end
end
