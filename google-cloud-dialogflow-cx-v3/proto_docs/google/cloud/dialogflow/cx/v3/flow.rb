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


module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          # Settings related to NLU.
          # @!attribute [rw] model_type
          #   @return [::Google::Cloud::Dialogflow::CX::V3::NluSettings::ModelType]
          #     Indicates the type of NLU model.
          # @!attribute [rw] classification_threshold
          #   @return [::Float]
          #     To filter out false positive results and still get variety in matched
          #     natural language inputs for your agent, you can tune the machine learning
          #     classification threshold. If the returned score value is less than the
          #     threshold value, then a no-match event will be triggered. The score values
          #     range from 0.0 (completely uncertain) to 1.0 (completely certain). If set
          #     to 0.0, the default of 0.3 is used.
          # @!attribute [rw] model_training_mode
          #   @return [::Google::Cloud::Dialogflow::CX::V3::NluSettings::ModelTrainingMode]
          #     Indicates NLU model training mode.
          class NluSettings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # NLU model type.
            module ModelType
              # Not specified. `MODEL_TYPE_STANDARD` will be used.
              MODEL_TYPE_UNSPECIFIED = 0

              # Use standard NLU model.
              MODEL_TYPE_STANDARD = 1

              # Use advanced NLU model.
              MODEL_TYPE_ADVANCED = 3
            end

            # NLU model training mode.
            module ModelTrainingMode
              # Not specified. `MODEL_TRAINING_MODE_AUTOMATIC` will be used.
              MODEL_TRAINING_MODE_UNSPECIFIED = 0

              # NLU model training is automatically triggered when a flow gets modified.
              # User can also manually trigger model training in this mode.
              MODEL_TRAINING_MODE_AUTOMATIC = 1

              # User needs to manually trigger NLU model training. Best for large flows
              # whose models take long time to train.
              MODEL_TRAINING_MODE_MANUAL = 2
            end
          end

          # Flows represents the conversation flows when you build your chatbot agent.
          #
          # A flow consists of many pages connected by the transition routes.
          # Conversations always start with the built-in Start Flow (with an all-0 ID).
          # Transition routes can direct the conversation session from the current flow
          # (parent flow) to another flow (sub flow). When the sub flow is finished,
          # Dialogflow will bring the session back to the parent flow, where the sub flow
          # is started.
          #
          # Usually, when a transition route is followed by a matched intent, the intent
          # will be "consumed". This means the intent won't activate more transition
          # routes. However, when the followed transition route moves the conversation
          # session into a different flow, the matched intent can be carried over and to
          # be consumed in the target flow.
          # @!attribute [rw] name
          #   @return [::String]
          #     The unique identifier of the flow.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>`.
          # @!attribute [rw] display_name
          #   @return [::String]
          #     Required. The human-readable name of the flow.
          # @!attribute [rw] description
          #   @return [::String]
          #     The description of the flow. The maximum length is 500 characters. If
          #     exceeded, the request is rejected.
          # @!attribute [rw] transition_routes
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::TransitionRoute>]
          #     A flow's transition routes serve two purposes:
          #
          #     *   They are responsible for matching the user's first utterances in the
          #     flow.
          #     *   They are inherited by every page's [transition
          #     routes][Page.transition_routes] and can support use cases such as the user
          #     saying "help" or "can I talk to a human?", which can be handled in a common
          #     way regardless of the current page. Transition routes defined in the page
          #     have higher priority than those defined in the flow.
          #
          #     TransitionRoutes are evalauted in the following order:
          #
          #     *   TransitionRoutes with intent specified.
          #     *   TransitionRoutes with only condition specified.
          #
          #     TransitionRoutes with intent specified are inherited by pages in the flow.
          # @!attribute [rw] event_handlers
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::EventHandler>]
          #     A flow's event handlers serve two purposes:
          #
          #     *   They are responsible for handling events (e.g. no match,
          #     webhook errors) in the flow.
          #     *   They are inherited by every page's [event
          #     handlers][Page.event_handlers], which can be used to handle common events
          #     regardless of the current page. Event handlers defined in the page
          #     have higher priority than those defined in the flow.
          #
          #     Unlike {::Google::Cloud::Dialogflow::CX::V3::Flow#transition_routes transition_routes}, these handlers are
          #     evaluated on a first-match basis. The first one that matches the event
          #     get executed, with the rest being ignored.
          # @!attribute [rw] transition_route_groups
          #   @return [::Array<::String>]
          #     A flow's transition route group serve two purposes:
          #
          #     *   They are responsible for matching the user's first utterances in the
          #     flow.
          #     *   They are inherited by every page's [transition
          #     route groups][Page.transition_route_groups]. Transition route groups
          #     defined in the page have higher priority than those defined in the flow.
          #
          #     Format:`projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>/transitionRouteGroups/<TransitionRouteGroup ID>`.
          # @!attribute [rw] nlu_settings
          #   @return [::Google::Cloud::Dialogflow::CX::V3::NluSettings]
          #     NLU related settings of the flow.
          class Flow
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#create_flow Flows.CreateFlow}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The agent to create a flow for.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
          # @!attribute [rw] flow
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Flow]
          #     Required. The flow to create.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     The language of the following fields in `flow`:
          #
          #     *  `Flow.event_handlers.trigger_fulfillment.messages`
          #     *  `Flow.event_handlers.trigger_fulfillment.conditional_cases`
          #     *  `Flow.transition_routes.trigger_fulfillment.messages`
          #     *  `Flow.transition_routes.trigger_fulfillment.conditional_cases`
          #
          #     If not specified, the agent's default language is used.
          #     [Many
          #     languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
          #     are supported.
          #     Note: languages must be enabled in the agent before they can be used.
          class CreateFlowRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#delete_flow Flows.DeleteFlow}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the flow to delete.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>`.
          # @!attribute [rw] force
          #   @return [::Boolean]
          #     This field has no effect for flows with no incoming transitions.
          #     For flows with incoming transitions:
          #
          #     *  If `force` is set to false, an error will be returned with message
          #        indicating the incoming transitions.
          #     *  If `force` is set to true, Dialogflow will remove the flow, as well as
          #        any transitions to the flow (i.e. [Target
          #        flow][EventHandler.target_flow] in event handlers or [Target
          #        flow][TransitionRoute.target_flow] in transition routes that point to
          #        this flow will be cleared).
          class DeleteFlowRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#list_flows Flows.ListFlows}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The agent containing the flows.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return in a single page. By default 100 and
          #     at most 1000.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous list request.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     The language to list flows for. The following fields are language
          #     dependent:
          #
          #     *  `Flow.event_handlers.trigger_fulfillment.messages`
          #     *  `Flow.event_handlers.trigger_fulfillment.conditional_cases`
          #     *  `Flow.transition_routes.trigger_fulfillment.messages`
          #     *  `Flow.transition_routes.trigger_fulfillment.conditional_cases`
          #
          #     If not specified, the agent's default language is used.
          #     [Many
          #     languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
          #     are supported.
          #     Note: languages must be enabled in the agent before they can be used.
          class ListFlowsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#list_flows Flows.ListFlows}.
          # @!attribute [rw] flows
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Flow>]
          #     The list of flows. There will be a maximum number of items returned based
          #     on the page_size field in the request.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no more
          #     results in the list.
          class ListFlowsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#get_flow Flows.GetFlow}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the flow to get.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>`.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     The language to retrieve the flow for. The following fields are language
          #     dependent:
          #
          #     *  `Flow.event_handlers.trigger_fulfillment.messages`
          #     *  `Flow.event_handlers.trigger_fulfillment.conditional_cases`
          #     *  `Flow.transition_routes.trigger_fulfillment.messages`
          #     *  `Flow.transition_routes.trigger_fulfillment.conditional_cases`
          #
          #     If not specified, the agent's default language is used.
          #     [Many
          #     languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
          #     are supported.
          #     Note: languages must be enabled in the agent before they can be used.
          class GetFlowRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#update_flow Flows.UpdateFlow}.
          # @!attribute [rw] flow
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Flow]
          #     Required. The flow to update.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     The mask to control which fields get updated. If the mask is not present,
          #     all fields will be updated.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     The language of the following fields in `flow`:
          #
          #     *  `Flow.event_handlers.trigger_fulfillment.messages`
          #     *  `Flow.event_handlers.trigger_fulfillment.conditional_cases`
          #     *  `Flow.transition_routes.trigger_fulfillment.messages`
          #     *  `Flow.transition_routes.trigger_fulfillment.conditional_cases`
          #
          #     If not specified, the agent's default language is used.
          #     [Many
          #     languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
          #     are supported.
          #     Note: languages must be enabled in the agent before they can be used.
          class UpdateFlowRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#train_flow Flows.TrainFlow}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The flow to train.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>`.
          class TrainFlowRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#validate_flow Flows.ValidateFlow}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The flow to validate.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>`.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     If not specified, the agent's default language is used.
          class ValidateFlowRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#get_flow_validation_result Flows.GetFlowValidationResult}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The flow name.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>/validationResult`.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     If not specified, the agent's default language is used.
          class GetFlowValidationResultRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#get_flow_validation_result Flows.GetFlowValidationResult}.
          # @!attribute [rw] name
          #   @return [::String]
          #     The unique identifier of the flow validation result.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>/validationResult`.
          # @!attribute [rw] validation_messages
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::ValidationMessage>]
          #     Contains all validation messages.
          # @!attribute [rw] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Last time the flow was validated.
          class FlowValidationResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#import_flow Flows.ImportFlow}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The agent to import the flow into.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
          # @!attribute [rw] flow_uri
          #   @return [::String]
          #     The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI
          #     to import flow from. The format of this URI must be
          #     `gs://<bucket-name>/<object-name>`.
          #
          #     Dialogflow performs a read operation for the Cloud Storage object
          #     on the caller's behalf, so your request authentication must
          #     have read permissions for the object. For more information, see
          #     [Dialogflow access
          #     control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
          # @!attribute [rw] flow_content
          #   @return [::String]
          #     Uncompressed raw byte content for flow.
          # @!attribute [rw] import_option
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ImportFlowRequest::ImportOption]
          #     Flow import mode. If not specified, `KEEP` is assumed.
          class ImportFlowRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Import option.
            module ImportOption
              # Unspecified. Treated as `KEEP`.
              IMPORT_OPTION_UNSPECIFIED = 0

              # Always respect settings in exported flow content. It may cause a
              # import failure if some settings (e.g. custom NLU) are not supported in
              # the agent to import into.
              KEEP = 1

              # Fallback to default settings if some settings are not supported in the
              # agent to import into. E.g. Standard NLU will be used if custom NLU is
              # not available.
              FALLBACK = 2
            end
          end

          # The response message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#import_flow Flows.ImportFlow}.
          # @!attribute [rw] flow
          #   @return [::String]
          #     The unique identifier of the new flow.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>`.
          class ImportFlowResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#export_flow Flows.ExportFlow}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the flow to export.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/flows/<Flow ID>`.
          # @!attribute [rw] flow_uri
          #   @return [::String]
          #     Optional. The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
          #     export the flow to. The format of this URI must be
          #     `gs://<bucket-name>/<object-name>`.
          #     If left unspecified, the serialized flow is returned inline.
          #
          #     Dialogflow performs a write operation for the Cloud Storage object
          #     on the caller's behalf, so your request authentication must
          #     have write permissions for the object. For more information, see
          #     [Dialogflow access
          #     control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
          # @!attribute [rw] include_referenced_flows
          #   @return [::Boolean]
          #     Optional. Whether to export flows referenced by the specified flow.
          class ExportFlowRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for {::Google::Cloud::Dialogflow::CX::V3::Flows::Client#export_flow Flows.ExportFlow}.
          # @!attribute [rw] flow_uri
          #   @return [::String]
          #     The URI to a file containing the exported flow. This field is populated
          #     only if `flow_uri` is specified in {::Google::Cloud::Dialogflow::CX::V3::ExportFlowRequest ExportFlowRequest}.
          # @!attribute [rw] flow_content
          #   @return [::String]
          #     Uncompressed raw byte content for flow.
          class ExportFlowResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
