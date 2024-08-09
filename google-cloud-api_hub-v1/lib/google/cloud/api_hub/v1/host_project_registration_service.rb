# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "google/cloud/api_hub/v1/version"

require "google/cloud/api_hub/v1/host_project_registration_service/credentials"
require "google/cloud/api_hub/v1/host_project_registration_service/paths"
require "google/cloud/api_hub/v1/host_project_registration_service/client"
require "google/cloud/api_hub/v1/host_project_registration_service/rest"

module Google
  module Cloud
    module ApiHub
      module V1
        ##
        # This service is used for managing the host project registrations.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/api_hub/v1/host_project_registration_service"
        #     client = ::Google::Cloud::ApiHub::V1::HostProjectRegistrationService::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/api_hub/v1/host_project_registration_service/rest"
        #     client = ::Google::Cloud::ApiHub::V1::HostProjectRegistrationService::Rest::Client.new
        #
        module HostProjectRegistrationService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "host_project_registration_service", "helpers.rb"
require "google/cloud/api_hub/v1/host_project_registration_service/helpers" if ::File.file? helper_path
