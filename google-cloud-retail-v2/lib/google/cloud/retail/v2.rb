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

require "google/cloud/retail/v2/catalog_service"
require "google/cloud/retail/v2/completion_service"
require "google/cloud/retail/v2/control_service"
require "google/cloud/retail/v2/prediction_service"
require "google/cloud/retail/v2/product_service"
require "google/cloud/retail/v2/search_service"
require "google/cloud/retail/v2/serving_config_service"
require "google/cloud/retail/v2/user_event_service"
require "google/cloud/retail/v2/version"

module Google
  module Cloud
    module Retail
      ##
      # API client module.
      #
      # @example Load this package, including all its services, and instantiate a gRPC client
      #
      #     require "google/cloud/retail/v2"
      #     client = ::Google::Cloud::Retail::V2::CatalogService::Client.new
      #
      # @example Load this package, including all its services, and instantiate a REST client
      #
      #     require "google/cloud/retail/v2"
      #     client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new
      #
      module V2
      end
    end
  end
end

helper_path = ::File.join __dir__, "v2", "_helpers.rb"
require "google/cloud/retail/v2/_helpers" if ::File.file? helper_path
