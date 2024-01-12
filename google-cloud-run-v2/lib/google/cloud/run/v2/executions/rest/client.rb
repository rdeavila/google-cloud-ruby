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
require "google/cloud/run/v2/execution_pb"
require "google/cloud/run/v2/executions/rest/service_stub"
require "google/cloud/location/rest"

module Google
  module Cloud
    module Run
      module V2
        module Executions
          module Rest
            ##
            # REST client for the Executions service.
            #
            # Cloud Run Execution Control Plane API.
            #
            class Client
              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "run.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :executions_stub

              ##
              # Configure the Executions Client class.
              #
              # See {::Google::Cloud::Run::V2::Executions::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all Executions clients
              #   ::Google::Cloud::Run::V2::Executions::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "Run", "V2"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the Executions Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Run::V2::Executions::Rest::Client::Configuration}
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
                @executions_stub.universe_domain
              end

              ##
              # Create a new Executions REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Run::V2::Executions::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Run::V2::Executions::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Executions client.
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

                @operations_client = ::Google::Cloud::Run::V2::Executions::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                  config.universe_domain = @config.universe_domain
                end

                @executions_stub = ::Google::Cloud::Run::V2::Executions::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials
                )

                @location_client = Google::Cloud::Location::Locations::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @executions_stub.endpoint
                  config.universe_domain = @executions_stub.universe_domain
                end
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::Run::V2::Executions::Rest::Operations]
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
              # Gets information about an Execution.
              #
              # @overload get_execution(request, options = nil)
              #   Pass arguments to `get_execution` via a request object, either of type
              #   {::Google::Cloud::Run::V2::GetExecutionRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Run::V2::GetExecutionRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload get_execution(name: nil)
              #   Pass arguments to `get_execution` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The full name of the Execution.
              #     Format:
              #     `projects/{project}/locations/{location}/jobs/{job}/executions/{execution}`,
              #     where `{project}` can be project id or number.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Run::V2::Execution]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Run::V2::Execution]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/run/v2"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Run::V2::Executions::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Run::V2::GetExecutionRequest.new
              #
              #   # Call the get_execution method.
              #   result = client.get_execution request
              #
              #   # The returned object is of type Google::Cloud::Run::V2::Execution.
              #   p result
              #
              def get_execution request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Run::V2::GetExecutionRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.get_execution.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Run::V2::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.get_execution.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.get_execution.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @executions_stub.get_execution request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Lists Executions from a Job.
              #
              # @overload list_executions(request, options = nil)
              #   Pass arguments to `list_executions` via a request object, either of type
              #   {::Google::Cloud::Run::V2::ListExecutionsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Run::V2::ListExecutionsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload list_executions(parent: nil, page_size: nil, page_token: nil, show_deleted: nil)
              #   Pass arguments to `list_executions` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The Execution from which the Executions should be listed.
              #     To list all Executions across Jobs, use "-" instead of Job name.
              #     Format: `projects/{project}/locations/{location}/jobs/{job}`, where
              #     `{project}` can be project id or number.
              #   @param page_size [::Integer]
              #     Maximum number of Executions to return in this call.
              #   @param page_token [::String]
              #     A page token received from a previous call to ListExecutions.
              #     All other parameters must match.
              #   @param show_deleted [::Boolean]
              #     If true, returns deleted (but unexpired) resources along with active ones.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Run::V2::Execution>]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Run::V2::Execution>]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/run/v2"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Run::V2::Executions::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Run::V2::ListExecutionsRequest.new
              #
              #   # Call the list_executions method.
              #   result = client.list_executions request
              #
              #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
              #   # over elements, and API calls will be issued to fetch pages as needed.
              #   result.each do |item|
              #     # Each element is of type ::Google::Cloud::Run::V2::Execution.
              #     p item
              #   end
              #
              def list_executions request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Run::V2::ListExecutionsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.list_executions.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Run::V2::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.list_executions.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.list_executions.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @executions_stub.list_executions request, options do |result, operation|
                  result = ::Gapic::Rest::PagedEnumerable.new @executions_stub, :list_executions, "executions", request, result, options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Deletes an Execution.
              #
              # @overload delete_execution(request, options = nil)
              #   Pass arguments to `delete_execution` via a request object, either of type
              #   {::Google::Cloud::Run::V2::DeleteExecutionRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Run::V2::DeleteExecutionRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload delete_execution(name: nil, validate_only: nil, etag: nil)
              #   Pass arguments to `delete_execution` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The name of the Execution to delete.
              #     Format:
              #     `projects/{project}/locations/{location}/jobs/{job}/executions/{execution}`,
              #     where `{project}` can be project id or number.
              #   @param validate_only [::Boolean]
              #     Indicates that the request should be validated without actually
              #     deleting any resources.
              #   @param etag [::String]
              #     A system-generated fingerprint for this version of the resource.
              #     This may be used to detect modification conflict during updates.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/run/v2"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Run::V2::Executions::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Run::V2::DeleteExecutionRequest.new
              #
              #   # Call the delete_execution method.
              #   result = client.delete_execution request
              #
              #   # The returned object is of type Gapic::Operation. You can use it to
              #   # check the status of an operation, cancel it, or wait for results.
              #   # Here is how to wait for a response.
              #   result.wait_until_done! timeout: 60
              #   if result.response?
              #     p result.response
              #   else
              #     puts "No response received."
              #   end
              #
              def delete_execution request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Run::V2::DeleteExecutionRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.delete_execution.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Run::V2::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.delete_execution.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.delete_execution.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @executions_stub.delete_execution request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Cancels an Execution.
              #
              # @overload cancel_execution(request, options = nil)
              #   Pass arguments to `cancel_execution` via a request object, either of type
              #   {::Google::Cloud::Run::V2::CancelExecutionRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Run::V2::CancelExecutionRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload cancel_execution(name: nil, validate_only: nil, etag: nil)
              #   Pass arguments to `cancel_execution` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The name of the Execution to cancel.
              #     Format:
              #     `projects/{project}/locations/{location}/jobs/{job}/executions/{execution}`,
              #     where `{project}` can be project id or number.
              #   @param validate_only [::Boolean]
              #     Indicates that the request should be validated without actually
              #     cancelling any resources.
              #   @param etag [::String]
              #     A system-generated fingerprint for this version of the resource.
              #     This may be used to detect modification conflict during updates.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/run/v2"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Run::V2::Executions::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Run::V2::CancelExecutionRequest.new
              #
              #   # Call the cancel_execution method.
              #   result = client.cancel_execution request
              #
              #   # The returned object is of type Gapic::Operation. You can use it to
              #   # check the status of an operation, cancel it, or wait for results.
              #   # Here is how to wait for a response.
              #   result.wait_until_done! timeout: 60
              #   if result.response?
              #     p result.response
              #   else
              #     puts "No response received."
              #   end
              #
              def cancel_execution request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Run::V2::CancelExecutionRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.cancel_execution.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Run::V2::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.cancel_execution.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.cancel_execution.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @executions_stub.cancel_execution request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the Executions REST API.
              #
              # This class represents the configuration for Executions REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Run::V2::Executions::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # get_execution to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Run::V2::Executions::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.get_execution.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Run::V2::Executions::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.get_execution.timeout = 20.0
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
              # @!attribute [rw] universe_domain
              #   The universe domain within which to make requests. This determines the
              #   default endpoint URL. The default value of nil uses the environment
              #   universe (usually the default "googleapis.com" universe).
              #   @return [::String,nil]
              #
              class Configuration
                extend ::Gapic::Config

                # @private
                # The endpoint specific to the default "googleapis.com" universe. Deprecated.
                DEFAULT_ENDPOINT = "run.googleapis.com"

                config_attr :endpoint,      nil, ::String, nil
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
                config_attr :universe_domain, nil, ::String, nil

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
                # Configuration RPC class for the Executions API.
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
                  # RPC-specific configuration for `get_execution`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_execution
                  ##
                  # RPC-specific configuration for `list_executions`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_executions
                  ##
                  # RPC-specific configuration for `delete_execution`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_execution
                  ##
                  # RPC-specific configuration for `cancel_execution`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :cancel_execution

                  # @private
                  def initialize parent_rpcs = nil
                    get_execution_config = parent_rpcs.get_execution if parent_rpcs.respond_to? :get_execution
                    @get_execution = ::Gapic::Config::Method.new get_execution_config
                    list_executions_config = parent_rpcs.list_executions if parent_rpcs.respond_to? :list_executions
                    @list_executions = ::Gapic::Config::Method.new list_executions_config
                    delete_execution_config = parent_rpcs.delete_execution if parent_rpcs.respond_to? :delete_execution
                    @delete_execution = ::Gapic::Config::Method.new delete_execution_config
                    cancel_execution_config = parent_rpcs.cancel_execution if parent_rpcs.respond_to? :cancel_execution
                    @cancel_execution = ::Gapic::Config::Method.new cancel_execution_config

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
