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


module Google
  module Cloud
    module AIPlatform
      module V1
        # Request message for
        # {::Google::Cloud::AIPlatform::V1::ModelGardenService::Client#get_publisher_model ModelGardenService.GetPublisherModel}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the PublisherModel resource.
        #     Format:
        #     `publishers/{publisher}/models/{publisher_model}`
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The IETF BCP-47 language code representing the language in which
        #     the publisher model's text information should be written in (see go/bcp47).
        # @!attribute [rw] view
        #   @return [::Google::Cloud::AIPlatform::V1::PublisherModelView]
        #     Optional. PublisherModel view specifying which fields to read.
        class GetPublisherModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # View enumeration of PublisherModel.
        module PublisherModelView
          # The default / unset value. The API will default to the BASIC view.
          PUBLISHER_MODEL_VIEW_UNSPECIFIED = 0

          # Include basic metadata about the publisher model, but not the full
          # contents.
          PUBLISHER_MODEL_VIEW_BASIC = 1

          # Include everything.
          PUBLISHER_MODEL_VIEW_FULL = 2

          # Include: VersionId, ModelVersionExternalName, and SupportedActions.
          PUBLISHER_MODEL_VERSION_VIEW_BASIC = 3
        end
      end
    end
  end
end
