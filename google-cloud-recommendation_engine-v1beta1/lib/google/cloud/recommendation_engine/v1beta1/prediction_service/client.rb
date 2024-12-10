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

require "google/cloud/errors"
require "google/cloud/recommendationengine/v1beta1/prediction_service_pb"

module Google
  module Cloud
    module RecommendationEngine
      module V1beta1
        module PredictionService
          ##
          # Client for the PredictionService service.
          #
          # Service for making recommendation prediction.
          #
          class Client
            # @private
            API_VERSION = ""

            # @private
            DEFAULT_ENDPOINT_TEMPLATE = "recommendationengine.$UNIVERSE_DOMAIN$"

            include Paths

            # @private
            attr_reader :prediction_service_stub

            ##
            # Configure the PredictionService Client class.
            #
            # See {::Google::Cloud::RecommendationEngine::V1beta1::PredictionService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all PredictionService clients
            #   ::Google::Cloud::RecommendationEngine::V1beta1::PredictionService::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "RecommendationEngine", "V1beta1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.predict.timeout = 600.0
                default_config.rpcs.predict.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14, 4]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the PredictionService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::RecommendationEngine::V1beta1::PredictionService::Client::Configuration}
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
            # The effective universe domain
            #
            # @return [String]
            #
            def universe_domain
              @prediction_service_stub.universe_domain
            end

            ##
            # Create a new PredictionService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::RecommendationEngine::V1beta1::PredictionService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::RecommendationEngine::V1beta1::PredictionService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the PredictionService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/recommendationengine/v1beta1/prediction_service_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint.nil? ||
                                       (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                       !@config.endpoint.split(".").first.include?("-"))
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @prediction_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::RecommendationEngine::V1beta1::PredictionService::Stub,
                credentials: credentials,
                endpoint: @config.endpoint,
                endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                universe_domain: @config.universe_domain,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors,
                channel_pool_config: @config.channel_pool,
                logger: @config.logger
              )

              @prediction_service_stub.stub_logger&.info do |entry|
                entry.set_system_name
                entry.set_service
                entry.message = "Created client for #{entry.service}"
                entry.set_credentials_fields credentials
                entry.set "customEndpoint", @config.endpoint if @config.endpoint
                entry.set "defaultTimeout", @config.timeout if @config.timeout
                entry.set "quotaProject", @quota_project_id if @quota_project_id
              end
            end

            ##
            # The logger used for request/response debug logging.
            #
            # @return [Logger]
            #
            def logger
              @prediction_service_stub.logger
            end

            # Service calls

            ##
            # Makes a recommendation prediction. If using API Key based authentication,
            # the API Key must be registered using the
            # {::Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistry::Client PredictionApiKeyRegistry}
            # service. [Learn more](/recommendations-ai/docs/setting-up#register-key).
            #
            # @overload predict(request, options = nil)
            #   Pass arguments to `predict` via a request object, either of type
            #   {::Google::Cloud::RecommendationEngine::V1beta1::PredictRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::RecommendationEngine::V1beta1::PredictRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload predict(name: nil, user_event: nil, page_size: nil, page_token: nil, filter: nil, dry_run: nil, params: nil, labels: nil)
            #   Pass arguments to `predict` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. Full resource name of the format:
            #     `{name=projects/*/locations/global/catalogs/default_catalog/eventStores/default_event_store/placements/*}`
            #     The id of the recommendation engine placement. This id is used to identify
            #     the set of models that will be used to make the prediction.
            #
            #     We currently support three placements with the following IDs by default:
            #
            #     * `shopping_cart`: Predicts items frequently bought together with one or
            #       more catalog items in the same shopping session. Commonly displayed after
            #       `add-to-cart` events, on product detail pages, or on the shopping cart
            #       page.
            #
            #     * `home_page`: Predicts the next product that a user will most likely
            #       engage with or purchase based on the shopping or viewing history of the
            #       specified `userId` or `visitorId`. For example - Recommendations for you.
            #
            #     * `product_detail`: Predicts the next product that a user will most likely
            #       engage with or purchase. The prediction is based on the shopping or
            #       viewing history of the specified `userId` or `visitorId` and its
            #       relevance to a specified `CatalogItem`. Typically used on product detail
            #       pages. For example - More items like this.
            #
            #     * `recently_viewed_default`: Returns up to 75 items recently viewed by the
            #       specified `userId` or `visitorId`, most recent ones first. Returns
            #       nothing if neither of them has viewed any items yet. For example -
            #       Recently viewed.
            #
            #     The full list of available placements can be seen at
            #     https://console.cloud.google.com/recommendation/datafeeds/default_catalog/dashboard
            #   @param user_event [::Google::Cloud::RecommendationEngine::V1beta1::UserEvent, ::Hash]
            #     Required. Context about the user, what they are looking at and what action
            #     they took to trigger the predict request. Note that this user event detail
            #     won't be ingested to userEvent logs. Thus, a separate userEvent write
            #     request is required for event logging.
            #   @param page_size [::Integer]
            #     Optional. Maximum number of results to return per page. Set this property
            #     to the number of prediction results required. If zero, the service will
            #     choose a reasonable default.
            #   @param page_token [::String]
            #     Optional. The previous PredictResponse.next_page_token.
            #   @param filter [::String]
            #     Optional. Filter for restricting prediction results. Accepts values for
            #     tags and the `filterOutOfStockItems` flag.
            #
            #      * Tag expressions. Restricts predictions to items that match all of the
            #        specified tags. Boolean operators `OR` and `NOT` are supported if the
            #        expression is enclosed in parentheses, and must be separated from the
            #        tag values by a space. `-"tagA"` is also supported and is equivalent to
            #        `NOT "tagA"`. Tag values must be double quoted UTF-8 encoded strings
            #        with a size limit of 1 KiB.
            #
            #      * filterOutOfStockItems. Restricts predictions to items that do not have a
            #        stockState value of OUT_OF_STOCK.
            #
            #     Examples:
            #
            #      * tag=("Red" OR "Blue") tag="New-Arrival" tag=(NOT "promotional")
            #      * filterOutOfStockItems  tag=(-"promotional")
            #      * filterOutOfStockItems
            #   @param dry_run [::Boolean]
            #     Optional. Use dryRun mode for this prediction query. If set to true, a
            #     dummy model will be used that returns arbitrary catalog items.
            #     Note that the dryRun mode should only be used for testing the API, or if
            #     the model is not ready.
            #   @param params [::Hash{::String => ::Google::Protobuf::Value, ::Hash}]
            #     Optional. Additional domain specific parameters for the predictions.
            #
            #     Allowed values:
            #
            #     * `returnCatalogItem`: Boolean. If set to true, the associated catalogItem
            #        object will be returned in the
            #       `PredictResponse.PredictionResult.itemMetadata` object in the method
            #        response.
            #     * `returnItemScore`: Boolean. If set to true, the prediction 'score'
            #        corresponding to each returned item will be set in the `metadata`
            #        field in the prediction response. The given 'score' indicates the
            #        probability of an item being clicked/purchased given the user's context
            #        and history.
            #   @param labels [::Hash{::String => ::String}]
            #     Optional. The labels for the predict request.
            #
            #      * Label keys can contain lowercase letters, digits and hyphens, must start
            #        with a letter, and must end with a letter or digit.
            #      * Non-zero label values can contain lowercase letters, digits and hyphens,
            #        must start with a letter, and must end with a letter or digit.
            #      * No more than 64 labels can be associated with a given request.
            #
            #     See https://goo.gl/xmQnxf for more information on and examples of labels.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::RecommendationEngine::V1beta1::PredictResponse::PredictionResult>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::RecommendationEngine::V1beta1::PredictResponse::PredictionResult>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/recommendation_engine/v1beta1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::RecommendationEngine::V1beta1::PredictionService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::RecommendationEngine::V1beta1::PredictRequest.new
            #
            #   # Call the predict method.
            #   result = client.predict request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
            #   # over elements, and API calls will be issued to fetch pages as needed.
            #   result.each do |item|
            #     # Each element is of type ::Google::Cloud::RecommendationEngine::V1beta1::PredictResponse::PredictionResult.
            #     p item
            #   end
            #
            def predict request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::RecommendationEngine::V1beta1::PredictRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.predict.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::RecommendationEngine::V1beta1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.predict.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.predict.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @prediction_service_stub.call_rpc :predict, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @prediction_service_stub, :predict, request, response, operation, options
                yield response, operation if block_given?
                throw :response, response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the PredictionService API.
            #
            # This class represents the configuration for PredictionService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::RecommendationEngine::V1beta1::PredictionService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # predict to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::RecommendationEngine::V1beta1::PredictionService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.predict.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::RecommendationEngine::V1beta1::PredictionService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.predict.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   A custom service endpoint, as a hostname or hostname:port. The default is
            #   nil, indicating to use the default endpoint in the current universe domain.
            #   @return [::String,nil]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
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
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
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
            # @!attribute [rw] universe_domain
            #   The universe domain within which to make requests. This determines the
            #   default endpoint URL. The default value of nil uses the environment
            #   universe (usually the default "googleapis.com" universe).
            #   @return [::String,nil]
            # @!attribute [rw] logger
            #   A custom logger to use for request/response debug logging, or the value
            #   `:default` (the default) to construct a default logger, or `nil` to
            #   explicitly disable logging.
            #   @return [::Logger,:default,nil]
            #
            class Configuration
              extend ::Gapic::Config

              # @private
              # The endpoint specific to the default "googleapis.com" universe. Deprecated.
              DEFAULT_ENDPOINT = "recommendationengine.googleapis.com"

              config_attr :endpoint,      nil, ::String, nil
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil
              config_attr :universe_domain, nil, ::String, nil
              config_attr :logger, :default, ::Logger, nil, :default

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
              # Configuration for the channel pool
              # @return [::Gapic::ServiceStub::ChannelPool::Configuration]
              #
              def channel_pool
                @channel_pool ||= ::Gapic::ServiceStub::ChannelPool::Configuration.new
              end

              ##
              # Configuration RPC class for the PredictionService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
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
                # RPC-specific configuration for `predict`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :predict

                # @private
                def initialize parent_rpcs = nil
                  predict_config = parent_rpcs.predict if parent_rpcs.respond_to? :predict
                  @predict = ::Gapic::Config::Method.new predict_config

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
