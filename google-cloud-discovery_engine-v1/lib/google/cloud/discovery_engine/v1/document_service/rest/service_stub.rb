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

require "google/cloud/discoveryengine/v1/document_service_pb"

module Google
  module Cloud
    module DiscoveryEngine
      module V1
        module DocumentService
          module Rest
            ##
            # REST service stub for the DocumentService service.
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
              # Baseline implementation for the get_document REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::GetDocumentRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::DiscoveryEngine::V1::Document]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::DiscoveryEngine::V1::Document]
              #   A result object deserialized from the server's reply
              def get_document request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_get_document_request request_pb
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
                result = ::Google::Cloud::DiscoveryEngine::V1::Document.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the list_documents REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::ListDocumentsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::DiscoveryEngine::V1::ListDocumentsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::DiscoveryEngine::V1::ListDocumentsResponse]
              #   A result object deserialized from the server's reply
              def list_documents request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_list_documents_request request_pb
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
                result = ::Google::Cloud::DiscoveryEngine::V1::ListDocumentsResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the create_document REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::CreateDocumentRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::DiscoveryEngine::V1::Document]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::DiscoveryEngine::V1::Document]
              #   A result object deserialized from the server's reply
              def create_document request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_create_document_request request_pb
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
                result = ::Google::Cloud::DiscoveryEngine::V1::Document.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the update_document REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::UpdateDocumentRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::DiscoveryEngine::V1::Document]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::DiscoveryEngine::V1::Document]
              #   A result object deserialized from the server's reply
              def update_document request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_update_document_request request_pb
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
                result = ::Google::Cloud::DiscoveryEngine::V1::Document.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the delete_document REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::DeleteDocumentRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Protobuf::Empty]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Protobuf::Empty]
              #   A result object deserialized from the server's reply
              def delete_document request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_delete_document_request request_pb
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
                result = ::Google::Protobuf::Empty.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the import_documents REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::ImportDocumentsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Longrunning::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Longrunning::Operation]
              #   A result object deserialized from the server's reply
              def import_documents request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_import_documents_request request_pb
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
                result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the purge_documents REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::PurgeDocumentsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Longrunning::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Longrunning::Operation]
              #   A result object deserialized from the server's reply
              def purge_documents request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_purge_documents_request request_pb
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
                result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the get_document REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::GetDocumentRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_get_document_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{name}",
                                                          matches: [
                                                            ["name", %r{^projects/[^/]+/locations/[^/]+/dataStores/[^/]+/branches/[^/]+/documents/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{name}",
                                                          matches: [
                                                            ["name", %r{^projects/[^/]+/locations/[^/]+/collections/[^/]+/dataStores/[^/]+/branches/[^/]+/documents/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the list_documents REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::ListDocumentsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_list_documents_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{parent}/documents",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/dataStores/[^/]+/branches/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{parent}/documents",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/collections/[^/]+/dataStores/[^/]+/branches/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the create_document REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::CreateDocumentRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_create_document_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{parent}/documents",
                                                          body: "document",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/dataStores/[^/]+/branches/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{parent}/documents",
                                                          body: "document",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/collections/[^/]+/dataStores/[^/]+/branches/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the update_document REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::UpdateDocumentRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_update_document_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :patch,
                                                          uri_template: "/v1/{document.name}",
                                                          body: "document",
                                                          matches: [
                                                            ["document.name", %r{^projects/[^/]+/locations/[^/]+/dataStores/[^/]+/branches/[^/]+/documents/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :patch,
                                                          uri_template: "/v1/{document.name}",
                                                          body: "document",
                                                          matches: [
                                                            ["document.name", %r{^projects/[^/]+/locations/[^/]+/collections/[^/]+/dataStores/[^/]+/branches/[^/]+/documents/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the delete_document REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::DeleteDocumentRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_delete_document_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :delete,
                                                          uri_template: "/v1/{name}",
                                                          matches: [
                                                            ["name", %r{^projects/[^/]+/locations/[^/]+/dataStores/[^/]+/branches/[^/]+/documents/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :delete,
                                                          uri_template: "/v1/{name}",
                                                          matches: [
                                                            ["name", %r{^projects/[^/]+/locations/[^/]+/collections/[^/]+/dataStores/[^/]+/branches/[^/]+/documents/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the import_documents REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::ImportDocumentsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_import_documents_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{parent}/documents:import",
                                                          body: "*",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/dataStores/[^/]+/branches/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{parent}/documents:import",
                                                          body: "*",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/collections/[^/]+/dataStores/[^/]+/branches/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the purge_documents REST call
              #
              # @param request_pb [::Google::Cloud::DiscoveryEngine::V1::PurgeDocumentsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_purge_documents_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{parent}/documents:purge",
                                                          body: "*",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/dataStores/[^/]+/branches/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{parent}/documents:purge",
                                                          body: "*",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/collections/[^/]+/dataStores/[^/]+/branches/[^/]+/?$}, false]
                                                          ]
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
