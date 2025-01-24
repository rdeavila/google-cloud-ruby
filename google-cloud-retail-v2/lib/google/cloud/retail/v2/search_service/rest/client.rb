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
require "google/cloud/retail/v2/search_service_pb"
require "google/cloud/retail/v2/search_service/rest/service_stub"
require "google/cloud/location/rest"

module Google
  module Cloud
    module Retail
      module V2
        module SearchService
          module Rest
            ##
            # REST client for the SearchService service.
            #
            # Service for search.
            #
            # This feature is only available for users who have Retail Search enabled.
            # Enable Retail Search on Cloud Console before using this feature.
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "retail.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :search_service_stub

              ##
              # Configure the SearchService Client class.
              #
              # See {::Google::Cloud::Retail::V2::SearchService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all SearchService clients
              #   ::Google::Cloud::Retail::V2::SearchService::Rest::Client.configure do |config|
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
              # Configure the SearchService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Retail::V2::SearchService::Rest::Client::Configuration}
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
                @search_service_stub.universe_domain
              end

              ##
              # Create a new SearchService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Retail::V2::SearchService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Retail::V2::SearchService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the SearchService client.
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

                @search_service_stub = ::Google::Cloud::Retail::V2::SearchService::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials,
                  logger: @config.logger
                )

                @search_service_stub.logger(stub: true)&.info do |entry|
                  entry.set_system_name
                  entry.set_service
                  entry.message = "Created client for #{entry.service}"
                  entry.set_credentials_fields credentials
                  entry.set "customEndpoint", @config.endpoint if @config.endpoint
                  entry.set "defaultTimeout", @config.timeout if @config.timeout
                  entry.set "quotaProject", @quota_project_id if @quota_project_id
                end

                @location_client = Google::Cloud::Location::Locations::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @search_service_stub.endpoint
                  config.universe_domain = @search_service_stub.universe_domain
                  config.logger = @search_service_stub.logger if config.respond_to? :logger=
                end
              end

              ##
              # Get the associated client for mix-in of the Locations.
              #
              # @return [Google::Cloud::Location::Locations::Rest::Client]
              #
              attr_reader :location_client

              ##
              # The logger used for request/response debug logging.
              #
              # @return [Logger]
              #
              def logger
                @search_service_stub.logger
              end

              # Service calls

              ##
              # Performs a search.
              #
              # This feature is only available for users who have Retail Search enabled.
              # Enable Retail Search on Cloud Console before using this feature.
              #
              # @overload search(request, options = nil)
              #   Pass arguments to `search` via a request object, either of type
              #   {::Google::Cloud::Retail::V2::SearchRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Retail::V2::SearchRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload search(placement: nil, branch: nil, query: nil, visitor_id: nil, user_info: nil, page_size: nil, page_token: nil, offset: nil, filter: nil, canonical_filter: nil, order_by: nil, facet_specs: nil, dynamic_facet_spec: nil, boost_spec: nil, query_expansion_spec: nil, variant_rollup_keys: nil, page_categories: nil, search_mode: nil, personalization_spec: nil, labels: nil, spell_correction_spec: nil, entity: nil, conversational_search_spec: nil, tile_navigation_spec: nil)
              #   Pass arguments to `search` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param placement [::String]
              #     Required. The resource name of the Retail Search serving config, such as
              #     `projects/*/locations/global/catalogs/default_catalog/servingConfigs/default_serving_config`
              #     or the name of the legacy placement resource, such as
              #     `projects/*/locations/global/catalogs/default_catalog/placements/default_search`.
              #     This field is used to identify the serving config name and the set
              #     of models that are used to make the search.
              #   @param branch [::String]
              #     The branch resource name, such as
              #     `projects/*/locations/global/catalogs/default_catalog/branches/0`.
              #
              #     Use "default_branch" as the branch ID or leave this field empty, to search
              #     products under the default branch.
              #   @param query [::String]
              #     Raw search query.
              #
              #     If this field is empty, the request is considered a category browsing
              #     request and returned results are based on
              #     {::Google::Cloud::Retail::V2::SearchRequest#filter filter} and
              #     {::Google::Cloud::Retail::V2::SearchRequest#page_categories page_categories}.
              #   @param visitor_id [::String]
              #     Required. A unique identifier for tracking visitors. For example, this
              #     could be implemented with an HTTP cookie, which should be able to uniquely
              #     identify a visitor on a single device. This unique identifier should not
              #     change if the visitor logs in or out of the website.
              #
              #     This should be the same identifier as
              #     {::Google::Cloud::Retail::V2::UserEvent#visitor_id UserEvent.visitor_id}.
              #
              #     The field must be a UTF-8 encoded string with a length limit of 128
              #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
              #   @param user_info [::Google::Cloud::Retail::V2::UserInfo, ::Hash]
              #     User information.
              #   @param page_size [::Integer]
              #     Maximum number of {::Google::Cloud::Retail::V2::Product Product}s to return. If
              #     unspecified, defaults to a reasonable value. The maximum allowed value is
              #     120. Values above 120 will be coerced to 120.
              #
              #     If this field is negative, an INVALID_ARGUMENT is returned.
              #   @param page_token [::String]
              #     A page token
              #     {::Google::Cloud::Retail::V2::SearchResponse#next_page_token SearchResponse.next_page_token},
              #     received from a previous
              #     {::Google::Cloud::Retail::V2::SearchService::Rest::Client#search SearchService.Search} call.
              #     Provide this to retrieve the subsequent page.
              #
              #     When paginating, all other parameters provided to
              #     {::Google::Cloud::Retail::V2::SearchService::Rest::Client#search SearchService.Search} must
              #     match the call that provided the page token. Otherwise, an INVALID_ARGUMENT
              #     error is returned.
              #   @param offset [::Integer]
              #     A 0-indexed integer that specifies the current offset (that is, starting
              #     result location, amongst the {::Google::Cloud::Retail::V2::Product Product}s
              #     deemed by the API as relevant) in search results. This field is only
              #     considered if {::Google::Cloud::Retail::V2::SearchRequest#page_token page_token}
              #     is unset.
              #
              #     If this field is negative, an INVALID_ARGUMENT is returned.
              #   @param filter [::String]
              #     The filter syntax consists of an expression language for constructing a
              #     predicate from one or more fields of the products being filtered. Filter
              #     expression is case-sensitive. For more information, see
              #     [Filter](https://cloud.google.com/retail/docs/filter-and-order#filter).
              #
              #     If this field is unrecognizable, an INVALID_ARGUMENT is returned.
              #   @param canonical_filter [::String]
              #     The default filter that is applied when a user performs a search without
              #     checking any filters on the search page.
              #
              #     The filter applied to every search request when quality improvement such as
              #     query expansion is needed. In the case a query does not have a sufficient
              #     amount of results this filter will be used to determine whether or not to
              #     enable the query expansion flow. The original filter will still be used for
              #     the query expanded search.
              #     This field is strongly recommended to achieve high search quality.
              #
              #     For more information about filter syntax, see
              #     {::Google::Cloud::Retail::V2::SearchRequest#filter SearchRequest.filter}.
              #   @param order_by [::String]
              #     The order in which products are returned. Products can be ordered by
              #     a field in an {::Google::Cloud::Retail::V2::Product Product} object. Leave it
              #     unset if ordered by relevance. OrderBy expression is case-sensitive. For
              #     more information, see
              #     [Order](https://cloud.google.com/retail/docs/filter-and-order#order).
              #
              #     If this field is unrecognizable, an INVALID_ARGUMENT is returned.
              #   @param facet_specs [::Array<::Google::Cloud::Retail::V2::SearchRequest::FacetSpec, ::Hash>]
              #     Facet specifications for faceted search. If empty, no facets are returned.
              #
              #     A maximum of 200 values are allowed. Otherwise, an INVALID_ARGUMENT error
              #     is returned.
              #   @param dynamic_facet_spec [::Google::Cloud::Retail::V2::SearchRequest::DynamicFacetSpec, ::Hash]
              #     Deprecated. Refer to https://cloud.google.com/retail/docs/configs#dynamic
              #     to enable dynamic facets. Do not set this field.
              #
              #     The specification for dynamically generated facets. Notice that only
              #     textual facets can be dynamically generated.
              #   @param boost_spec [::Google::Cloud::Retail::V2::SearchRequest::BoostSpec, ::Hash]
              #     Boost specification to boost certain products. For more information, see
              #     [Boost results](https://cloud.google.com/retail/docs/boosting).
              #
              #     Notice that if both
              #     {::Google::Cloud::Retail::V2::ServingConfig#boost_control_ids ServingConfig.boost_control_ids}
              #     and
              #     {::Google::Cloud::Retail::V2::SearchRequest#boost_spec SearchRequest.boost_spec}
              #     are set, the boost conditions from both places are evaluated. If a search
              #     request matches multiple boost conditions, the final boost score is equal
              #     to the sum of the boost scores from all matched boost conditions.
              #   @param query_expansion_spec [::Google::Cloud::Retail::V2::SearchRequest::QueryExpansionSpec, ::Hash]
              #     The query expansion specification that specifies the conditions under which
              #     query expansion occurs. For more information, see [Query
              #     expansion](https://cloud.google.com/retail/docs/result-size#query_expansion).
              #   @param variant_rollup_keys [::Array<::String>]
              #     The keys to fetch and rollup the matching
              #     {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
              #     {::Google::Cloud::Retail::V2::Product Product}s attributes,
              #     {::Google::Cloud::Retail::V2::FulfillmentInfo FulfillmentInfo} or
              #     {::Google::Cloud::Retail::V2::LocalInventory LocalInventory}s attributes. The
              #     attributes from all the matching
              #     {::Google::Cloud::Retail::V2::Product::Type::VARIANT variant}
              #     {::Google::Cloud::Retail::V2::Product Product}s or
              #     {::Google::Cloud::Retail::V2::LocalInventory LocalInventory}s are merged and
              #     de-duplicated. Notice that rollup attributes will lead to extra query
              #     latency. Maximum number of keys is 30.
              #
              #     For {::Google::Cloud::Retail::V2::FulfillmentInfo FulfillmentInfo}, a
              #     fulfillment type and a fulfillment ID must be provided in the format of
              #     "fulfillmentType.fulfillmentId". E.g., in "pickupInStore.store123",
              #     "pickupInStore" is fulfillment type and "store123" is the store ID.
              #
              #     Supported keys are:
              #
              #     * colorFamilies
              #     * price
              #     * originalPrice
              #     * discount
              #     * variantId
              #     * inventory(place_id,price)
              #     * inventory(place_id,original_price)
              #     * inventory(place_id,attributes.key), where key is any key in the
              #       {::Google::Cloud::Retail::V2::LocalInventory#attributes Product.local_inventories.attributes}
              #       map.
              #     * attributes.key, where key is any key in the
              #       {::Google::Cloud::Retail::V2::Product#attributes Product.attributes} map.
              #     * pickupInStore.id, where id is any
              #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
              #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
              #       "pickup-in-store".
              #     * shipToStore.id, where id is any
              #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
              #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
              #       "ship-to-store".
              #     * sameDayDelivery.id, where id is any
              #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
              #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
              #       "same-day-delivery".
              #     * nextDayDelivery.id, where id is any
              #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
              #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
              #       "next-day-delivery".
              #     * customFulfillment1.id, where id is any
              #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
              #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
              #       "custom-type-1".
              #     * customFulfillment2.id, where id is any
              #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
              #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
              #       "custom-type-2".
              #     * customFulfillment3.id, where id is any
              #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
              #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
              #       "custom-type-3".
              #     * customFulfillment4.id, where id is any
              #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
              #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
              #       "custom-type-4".
              #     * customFulfillment5.id, where id is any
              #     {::Google::Cloud::Retail::V2::FulfillmentInfo#place_ids FulfillmentInfo.place_ids}
              #     for {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}
              #       "custom-type-5".
              #
              #     If this field is set to an invalid value other than these, an
              #     INVALID_ARGUMENT error is returned.
              #   @param page_categories [::Array<::String>]
              #     The categories associated with a category page. Must be set for category
              #     navigation queries to achieve good search quality. The format should be
              #     the same as
              #     {::Google::Cloud::Retail::V2::UserEvent#page_categories UserEvent.page_categories};
              #
              #     To represent full path of category, use '>' sign to separate different
              #     hierarchies. If '>' is part of the category name, replace it with
              #     other character(s).
              #
              #     Category pages include special pages such as sales or promotions. For
              #     instance, a special sale page may have the category hierarchy:
              #     "pageCategories" : ["Sales > 2017 Black Friday Deals"].
              #   @param search_mode [::Google::Cloud::Retail::V2::SearchRequest::SearchMode]
              #     The search mode of the search request. If not specified, a single search
              #     request triggers both product search and faceted search.
              #   @param personalization_spec [::Google::Cloud::Retail::V2::SearchRequest::PersonalizationSpec, ::Hash]
              #     The specification for personalization.
              #
              #     Notice that if both
              #     {::Google::Cloud::Retail::V2::ServingConfig#personalization_spec ServingConfig.personalization_spec}
              #     and
              #     {::Google::Cloud::Retail::V2::SearchRequest#personalization_spec SearchRequest.personalization_spec}
              #     are set.
              #     {::Google::Cloud::Retail::V2::SearchRequest#personalization_spec SearchRequest.personalization_spec}
              #     will override
              #     {::Google::Cloud::Retail::V2::ServingConfig#personalization_spec ServingConfig.personalization_spec}.
              #   @param labels [::Hash{::String => ::String}]
              #     The labels applied to a resource must meet the following requirements:
              #
              #     * Each resource can have multiple labels, up to a maximum of 64.
              #     * Each label must be a key-value pair.
              #     * Keys have a minimum length of 1 character and a maximum length of 63
              #       characters and cannot be empty. Values can be empty and have a maximum
              #       length of 63 characters.
              #     * Keys and values can contain only lowercase letters, numeric characters,
              #       underscores, and dashes. All characters must use UTF-8 encoding, and
              #       international characters are allowed.
              #     * The key portion of a label must be unique. However, you can use the same
              #       key with multiple resources.
              #     * Keys must start with a lowercase letter or international character.
              #
              #     For more information, see [Requirements for
              #     labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
              #     in the Resource Manager documentation.
              #   @param spell_correction_spec [::Google::Cloud::Retail::V2::SearchRequest::SpellCorrectionSpec, ::Hash]
              #     The spell correction specification that specifies the mode under
              #     which spell correction will take effect.
              #   @param entity [::String]
              #     The entity for customers that may run multiple different entities, domains,
              #     sites or regions, for example, `Google US`, `Google Ads`, `Waymo`,
              #     `google.com`, `youtube.com`, etc.
              #     If this is set, it should be exactly matched with
              #     {::Google::Cloud::Retail::V2::UserEvent#entity UserEvent.entity} to get search
              #     results boosted by entity.
              #   @param conversational_search_spec [::Google::Cloud::Retail::V2::SearchRequest::ConversationalSearchSpec, ::Hash]
              #     Optional. This field specifies all conversational related parameters
              #     addition to traditional retail search.
              #   @param tile_navigation_spec [::Google::Cloud::Retail::V2::SearchRequest::TileNavigationSpec, ::Hash]
              #     Optional. This field specifies tile navigation related parameters.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Retail::V2::SearchResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Retail::V2::SearchResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/retail/v2"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Retail::V2::SearchService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Retail::V2::SearchRequest.new
              #
              #   # Call the search method.
              #   result = client.search request
              #
              #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
              #   # over elements, and API calls will be issued to fetch pages as needed.
              #   result.each do |item|
              #     # Each element is of type ::Google::Cloud::Retail::V2::SearchResponse::SearchResult.
              #     p item
              #   end
              #
              def search request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Retail::V2::SearchRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.search.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Retail::V2::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.search.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.search.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @search_service_stub.search request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the SearchService REST API.
              #
              # This class represents the configuration for SearchService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Retail::V2::SearchService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # search to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Retail::V2::SearchService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.search.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Retail::V2::SearchService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.search.timeout = 20.0
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
              #
              #   Warning: If you accept a credential configuration (JSON file or Hash) from an
              #   external source for authentication to Google Cloud, you must validate it before
              #   providing it to a Google API client library. Providing an unvalidated credential
              #   configuration to Google APIs can compromise the security of your systems and data.
              #   For more information, refer to [Validate credential configurations from external
              #   sources](https://cloud.google.com/docs/authentication/external/externally-sourced-credentials).
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
                DEFAULT_ENDPOINT = "retail.googleapis.com"

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
                # Configuration RPC class for the SearchService API.
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
                  # RPC-specific configuration for `search`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :search

                  # @private
                  def initialize parent_rpcs = nil
                    search_config = parent_rpcs.search if parent_rpcs.respond_to? :search
                    @search = ::Gapic::Config::Method.new search_config

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
