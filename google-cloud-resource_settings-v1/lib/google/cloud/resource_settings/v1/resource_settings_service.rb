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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/resource_settings/v1/version"

require "google/cloud/resource_settings/v1/resource_settings_service/credentials"
require "google/cloud/resource_settings/v1/resource_settings_service/paths"
require "google/cloud/resource_settings/v1/resource_settings_service/client"
require "google/cloud/resource_settings/v1/resource_settings_service/rest"

module Google
  module Cloud
    module ResourceSettings
      module V1
        ##
        # An interface to interact with resource settings and setting values throughout
        # the resource hierarchy.
        #
        # Services may surface a number of settings for users to control how their
        # resources behave. Values of settings applied on a given Cloud resource are
        # evaluated hierarchically and inherited by all descendants of that resource.
        #
        # For all requests, returns a `google.rpc.Status` with
        # `google.rpc.Code.PERMISSION_DENIED` if the IAM check fails or the `parent`
        # resource is not in a Cloud Organization.
        # For all requests, returns a `google.rpc.Status` with
        # `google.rpc.Code.INVALID_ARGUMENT` if the request is malformed.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/resource_settings/v1/resource_settings_service"
        #     client = ::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/resource_settings/v1/resource_settings_service/rest"
        #     client = ::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Rest::Client.new
        #
        module ResourceSettingsService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "resource_settings_service", "helpers.rb"
require "google/cloud/resource_settings/v1/resource_settings_service/helpers" if ::File.file? helper_path
