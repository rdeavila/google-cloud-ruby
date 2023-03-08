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

require "google/cloud/errors"
require "google/cloud/retail/v2/completion_service_pb"
require "google/cloud/retail/v2/completion_service/rest/service_stub"
require "google/cloud/location/rest"

module Google
  module Cloud
    module Retail
      module V2
        module CompletionService
          module Rest
            ##
            # REST client for the CompletionService service.
            #
            # Auto-completion service for retail.
            #
            # This feature is only available for users who have Retail Search enabled.
            # Enable Retail Search on Cloud Console before using this feature.
            #
            class Client
              include Paths

              # @private
              attr_reader :completion_service_stub

              ##
              # Configure the CompletionService Client class.
              #
              # See {::Google::Cloud::Retail::V2::CompletionService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all CompletionService clients
              #   ::Google::Cloud::Retail::V2::CompletionService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "Retail", "V2"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.timeout = 5.0
                  default_config.retry_policy = {
                    initial_delay: 0.1, max_delay: 5.0, multiplier: 1.3, retry_codes: [14, 4]
                  }

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the CompletionService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Retail::V2::CompletionService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # Create a new CompletionService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Retail::V2::CompletionService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Retail::V2::CompletionService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the CompletionService client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                         !@config.endpoint.split(".").first.include?("-")
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @operations_client = ::Google::Cloud::Retail::V2::CompletionService::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                end

                @location_client = Google::Cloud::Location::Locations::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                end

                @completion_service_stub = ::Google::Cloud::Retail::V2::CompletionService::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::Retail::V2::CompletionService::Rest::Operations]
              #
              attr_reader :operations_client

              ##
              # Get the associated client for mix-in of the Locations.
              #
              # @return [Google::Cloud::Location::Locations::Rest::Client]
              #
              attr_reader :location_client

              # Service calls

              ##
              # Completes the specified prefix with keyword suggestions.
              #
              # This feature is only available for users who have Retail Search enabled.
              # Enable Retail Search on Cloud Console before using this feature.
              #
              # @overload complete_query(request, options = nil)
              #   Pass arguments to `complete_query` via a request object, either of type
              #   {::Google::Cloud::Retail::V2::CompleteQueryRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Retail::V2::CompleteQueryRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload complete_query(catalog: nil, query: nil, visitor_id: nil, language_codes: nil, device_type: nil, dataset: nil, max_suggestions: nil)
              #   Pass arguments to `complete_query` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param catalog [::String]
              #     Required. Catalog for which the completion is performed.
              #
              #     Full resource name of catalog, such as
              #     `projects/*/locations/global/catalogs/default_catalog`.
              #   @param query [::String]
              #     Required. The query used to generate suggestions.
              #
              #     The maximum number of allowed characters is 255.
              #   @param visitor_id [::String]
              #     Required field. A unique identifier for tracking visitors. For example,
              #     this could be implemented with an HTTP cookie, which should be able to
              #     uniquely identify a visitor on a single device. This unique identifier
              #     should not change if the visitor logs in or out of the website.
              #
              #     The field must be a UTF-8 encoded string with a length limit of 128
              #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
              #   @param language_codes [::Array<::String>]
              #     Note that this field applies for `user-data` dataset only. For requests
              #     with `cloud-retail` dataset, setting this field has no effect.
              #
              #     The language filters applied to the output suggestions. If set, it should
              #     contain the language of the query. If not set, suggestions are returned
              #     without considering language restrictions. This is the BCP-47 language
              #     code, such as "en-US" or "sr-Latn". For more information, see [Tags for
              #     Identifying Languages](https://tools.ietf.org/html/bcp47). The maximum
              #     number of language codes is 3.
              #   @param device_type [::String]
              #     The device type context for completion suggestions. We recommend that you
              #     leave this field empty.
              #
              #     It can apply different suggestions on different device types, e.g.
              #     `DESKTOP`, `MOBILE`. If it is empty, the suggestions are across all device
              #     types.
              #
              #     Supported formats:
              #
              #     * `UNKNOWN_DEVICE_TYPE`
              #
              #     * `DESKTOP`
              #
              #     * `MOBILE`
              #
              #     * A customized string starts with `OTHER_`, e.g. `OTHER_IPHONE`.
              #   @param dataset [::String]
              #     Determines which dataset to use for fetching completion. "user-data" will
              #     use the imported dataset through
              #     {::Google::Cloud::Retail::V2::CompletionService::Rest::Client#import_completion_data CompletionService.ImportCompletionData}.
              #     "cloud-retail" will use the dataset generated by cloud retail based on user
              #     events. If leave empty, it will use the "user-data".
              #
              #     Current supported values:
              #
              #     * user-data
              #
              #     * cloud-retail:
              #       This option requires enabling auto-learning function first. See
              #       [guidelines](https://cloud.google.com/retail/docs/completion-overview#generated-completion-dataset).
              #   @param max_suggestions [::Integer]
              #     Completion max suggestions. If left unset or set to 0, then will fallback
              #     to the configured value
              #     {::Google::Cloud::Retail::V2::CompletionConfig#max_suggestions CompletionConfig.max_suggestions}.
              #
              #     The maximum allowed max suggestions is 20. If it is set higher, it will be
              #     capped by 20.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Retail::V2::CompleteQueryResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Retail::V2::CompleteQueryResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def complete_query request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Retail::V2::CompleteQueryRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.complete_query.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Retail::V2::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.complete_query.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.complete_query.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @completion_service_stub.complete_query request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Bulk import of processed completion dataset.
              #
              # Request processing is asynchronous. Partial updating is not supported.
              #
              # The operation is successfully finished only after the imported suggestions
              # are indexed successfully and ready for serving. The process takes hours.
              #
              # This feature is only available for users who have Retail Search enabled.
              # Enable Retail Search on Cloud Console before using this feature.
              #
              # @overload import_completion_data(request, options = nil)
              #   Pass arguments to `import_completion_data` via a request object, either of type
              #   {::Google::Cloud::Retail::V2::ImportCompletionDataRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Retail::V2::ImportCompletionDataRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload import_completion_data(parent: nil, input_config: nil, notification_pubsub_topic: nil)
              #   Pass arguments to `import_completion_data` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The catalog which the suggestions dataset belongs to.
              #
              #     Format: `projects/1234/locations/global/catalogs/default_catalog`.
              #   @param input_config [::Google::Cloud::Retail::V2::CompletionDataInputConfig, ::Hash]
              #     Required. The desired input location of the data.
              #   @param notification_pubsub_topic [::String]
              #     Pub/Sub topic for receiving notification. If this field is set,
              #     when the import is finished, a notification is sent to
              #     specified Pub/Sub topic. The message data is JSON string of a
              #     {::Google::Longrunning::Operation Operation}.
              #     Format of the Pub/Sub topic is `projects/{project}/topics/{topic}`.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def import_completion_data request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Retail::V2::ImportCompletionDataRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.import_completion_data.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Retail::V2::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.import_completion_data.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.import_completion_data.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @completion_service_stub.import_completion_data request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the CompletionService REST API.
              #
              # This class represents the configuration for CompletionService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Retail::V2::CompletionService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # complete_query to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Retail::V2::CompletionService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.complete_query.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Retail::V2::CompletionService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.complete_query.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"retail.googleapis.com"`.
              #   @return [::String]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
              #    *  (`nil`) indicating no credentials
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              #
              class Configuration
                extend ::Gapic::Config

                config_attr :endpoint,      "retail.googleapis.com", ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the CompletionService API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `complete_query`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :complete_query
                  ##
                  # RPC-specific configuration for `import_completion_data`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :import_completion_data

                  # @private
                  def initialize parent_rpcs = nil
                    complete_query_config = parent_rpcs.complete_query if parent_rpcs.respond_to? :complete_query
                    @complete_query = ::Gapic::Config::Method.new complete_query_config
                    import_completion_data_config = parent_rpcs.import_completion_data if parent_rpcs.respond_to? :import_completion_data
                    @import_completion_data = ::Gapic::Config::Method.new import_completion_data_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
