# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/conversation_profile.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/v2/audio_config_pb'
require 'google/cloud/dialogflow/v2/participant_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n5google/cloud/dialogflow/v2/conversation_profile.proto\x12\x1agoogle.cloud.dialogflow.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a-google/cloud/dialogflow/v2/audio_config.proto\x1a,google/cloud/dialogflow/v2/participant.proto\x1a#google/longrunning/operations.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xf0\x08\n\x13\x43onversationProfile\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x34\n\x0b\x63reate_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12P\n\x16\x61utomated_agent_config\x18\x03 \x01(\x0b\x32\x30.google.cloud.dialogflow.v2.AutomatedAgentConfig\x12[\n\x1chuman_agent_assistant_config\x18\x04 \x01(\x0b\x32\x35.google.cloud.dialogflow.v2.HumanAgentAssistantConfig\x12W\n\x1ahuman_agent_handoff_config\x18\x05 \x01(\x0b\x32\x33.google.cloud.dialogflow.v2.HumanAgentHandoffConfig\x12K\n\x13notification_config\x18\x06 \x01(\x0b\x32..google.cloud.dialogflow.v2.NotificationConfig\x12\x41\n\x0elogging_config\x18\x07 \x01(\x0b\x32).google.cloud.dialogflow.v2.LoggingConfig\x12]\n%new_message_event_notification_config\x18\x08 \x01(\x0b\x32..google.cloud.dialogflow.v2.NotificationConfig\x12\x42\n\nstt_config\x18\t \x01(\x0b\x32..google.cloud.dialogflow.v2.SpeechToTextConfig\x12\x15\n\rlanguage_code\x18\n \x01(\t\x12\x11\n\ttime_zone\x18\x0e \x01(\t\x12L\n\x11security_settings\x18\r \x01(\tB1\xfa\x41.\n,dialogflow.googleapis.com/CXSecuritySettings\x12\x46\n\ntts_config\x18\x12 \x01(\x0b\x32\x32.google.cloud.dialogflow.v2.SynthesizeSpeechConfig:\xc8\x01\xea\x41\xc4\x01\n-dialogflow.googleapis.com/ConversationProfile\x12>projects/{project}/conversationProfiles/{conversation_profile}\x12Sprojects/{project}/locations/{location}/conversationProfiles/{conversation_profile}\"\x8f\x01\n\x1fListConversationProfilesRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-dialogflow.googleapis.com/ConversationProfile\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x8b\x01\n ListConversationProfilesResponse\x12N\n\x15\x63onversation_profiles\x18\x01 \x03(\x0b\x32/.google.cloud.dialogflow.v2.ConversationProfile\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"d\n\x1dGetConversationProfileRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-dialogflow.googleapis.com/ConversationProfile\"\xbd\x01\n CreateConversationProfileRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-dialogflow.googleapis.com/ConversationProfile\x12R\n\x14\x63onversation_profile\x18\x02 \x01(\x0b\x32/.google.cloud.dialogflow.v2.ConversationProfileB\x03\xe0\x41\x02\"\xac\x01\n UpdateConversationProfileRequest\x12R\n\x14\x63onversation_profile\x18\x01 \x01(\x0b\x32/.google.cloud.dialogflow.v2.ConversationProfileB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"g\n DeleteConversationProfileRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-dialogflow.googleapis.com/ConversationProfile\"\x83\x01\n\x14\x41utomatedAgentConfig\x12\x36\n\x05\x61gent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x64ialogflow.googleapis.com/Agent\x12\x33\n\x0bsession_ttl\x18\x03 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\"\xd5\x1b\n\x19HumanAgentAssistantConfig\x12K\n\x13notification_config\x18\x02 \x01(\x0b\x32..google.cloud.dialogflow.v2.NotificationConfig\x12m\n\x1dhuman_agent_suggestion_config\x18\x03 \x01(\x0b\x32\x46.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionConfig\x12j\n\x1a\x65nd_user_suggestion_config\x18\x04 \x01(\x0b\x32\x46.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionConfig\x12l\n\x17message_analysis_config\x18\x05 \x01(\x0b\x32K.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.MessageAnalysisConfig\x1aH\n\x19SuggestionTriggerSettings\x12\x14\n\x0cno_smalltalk\x18\x01 \x01(\x08\x12\x15\n\ronly_end_user\x18\x02 \x01(\x08\x1a\x88\x06\n\x17SuggestionFeatureConfig\x12I\n\x12suggestion_feature\x18\x05 \x01(\x0b\x32-.google.cloud.dialogflow.v2.SuggestionFeature\x12%\n\x1d\x65nable_event_based_suggestion\x18\x03 \x01(\x08\x12(\n\x1b\x64isable_agent_query_logging\x18\x0e \x01(\x08\x42\x03\xe0\x41\x01\x12\x33\n&enable_query_suggestion_when_no_answer\x18\x0f \x01(\x08\x42\x03\xe0\x41\x01\x12\x30\n#enable_conversation_augmented_query\x18\x10 \x01(\x08\x42\x03\xe0\x41\x01\x12)\n\x1c\x65nable_query_suggestion_only\x18\x11 \x01(\x08\x42\x03\xe0\x41\x01\x12t\n\x1bsuggestion_trigger_settings\x18\n \x01(\x0b\x32O.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionTriggerSettings\x12\x61\n\x0cquery_config\x18\x06 \x01(\x0b\x32K.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig\x12p\n\x19\x63onversation_model_config\x18\x07 \x01(\x0b\x32M.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.ConversationModelConfig\x12t\n\x1b\x63onversation_process_config\x18\x08 \x01(\x0b\x32O.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.ConversationProcessConfig\x1a\x99\x02\n\x10SuggestionConfig\x12\x66\n\x0f\x66\x65\x61ture_configs\x18\x02 \x03(\x0b\x32M.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionFeatureConfig\x12\"\n\x1agroup_suggestion_responses\x18\x03 \x01(\x08\x12?\n\ngenerators\x18\x04 \x03(\tB+\xe0\x41\x01\xfa\x41%\n#dialogflow.googleapis.com/Generator\x12\x38\n+disable_high_latency_features_sync_delivery\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\x1a\x99\r\n\x15SuggestionQueryConfig\x12\x8b\x01\n\x1bknowledge_base_query_source\x18\x01 \x01(\x0b\x32\x64.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySourceH\x00\x12\x80\x01\n\x15\x64ocument_query_source\x18\x02 \x01(\x0b\x32_.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySourceH\x00\x12\x84\x01\n\x17\x64ialogflow_query_source\x18\x03 \x01(\x0b\x32\x61.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySourceH\x00\x12\x13\n\x0bmax_results\x18\x04 \x01(\x05\x12\x1c\n\x14\x63onfidence_threshold\x18\x05 \x01(\x02\x12\x82\x01\n\x17\x63ontext_filter_settings\x18\x07 \x01(\x0b\x32\x61.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings\x12k\n\x08sections\x18\x08 \x01(\x0b\x32T.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.SectionsB\x03\xe0\x41\x01\x12\x19\n\x0c\x63ontext_size\x18\t \x01(\x05\x42\x03\xe0\x41\x01\x1a\x64\n\x18KnowledgeBaseQuerySource\x12H\n\x0fknowledge_bases\x18\x01 \x03(\tB/\xe0\x41\x02\xfa\x41)\n\'dialogflow.googleapis.com/KnowledgeBase\x1aT\n\x13\x44ocumentQuerySource\x12=\n\tdocuments\x18\x01 \x03(\tB*\xe0\x41\x02\xfa\x41$\n\"dialogflow.googleapis.com/Document\x1a\xbe\x02\n\x15\x44ialogflowQuerySource\x12\x36\n\x05\x61gent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x64ialogflow.googleapis.com/Agent\x12\x9c\x01\n\x17human_agent_side_config\x18\x03 \x01(\x0b\x32v.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource.HumanAgentSideConfigB\x03\xe0\x41\x01\x1aN\n\x14HumanAgentSideConfig\x12\x36\n\x05\x61gent\x18\x01 \x01(\tB\'\xe0\x41\x01\xfa\x41!\n\x1f\x64ialogflow.googleapis.com/Agent\x1av\n\x15\x43ontextFilterSettings\x12\x1d\n\x15\x64rop_handoff_messages\x18\x01 \x01(\x08\x12#\n\x1b\x64rop_virtual_agent_messages\x18\x02 \x01(\x08\x12\x19\n\x11\x64rop_ivr_messages\x18\x03 \x01(\x08\x1a\xa2\x02\n\x08Sections\x12w\n\rsection_types\x18\x01 \x03(\x0e\x32`.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.Sections.SectionType\"\x9c\x01\n\x0bSectionType\x12\x1c\n\x18SECTION_TYPE_UNSPECIFIED\x10\x00\x12\r\n\tSITUATION\x10\x01\x12\n\n\x06\x41\x43TION\x10\x02\x12\x0e\n\nRESOLUTION\x10\x03\x12\x1b\n\x17REASON_FOR_CANCELLATION\x10\x04\x12\x19\n\x15\x43USTOMER_SATISFACTION\x10\x05\x12\x0c\n\x08\x45NTITIES\x10\x06\x42\x0e\n\x0cquery_source\x1az\n\x17\x43onversationModelConfig\x12?\n\x05model\x18\x01 \x01(\tB0\xfa\x41-\n+dialogflow.googleapis.com/ConversationModel\x12\x1e\n\x16\x62\x61seline_model_version\x18\x08 \x01(\t\x1a;\n\x19\x43onversationProcessConfig\x12\x1e\n\x16recent_sentences_count\x18\x02 \x01(\x05\x1a\\\n\x15MessageAnalysisConfig\x12 \n\x18\x65nable_entity_extraction\x18\x02 \x01(\x08\x12!\n\x19\x65nable_sentiment_analysis\x18\x03 \x01(\x08\"\xc4\x03\n\x17HumanAgentHandoffConfig\x12\x62\n\x12live_person_config\x18\x01 \x01(\x0b\x32\x44.google.cloud.dialogflow.v2.HumanAgentHandoffConfig.LivePersonConfigH\x00\x12u\n\x1csalesforce_live_agent_config\x18\x02 \x01(\x0b\x32M.google.cloud.dialogflow.v2.HumanAgentHandoffConfig.SalesforceLiveAgentConfigH\x00\x1a/\n\x10LivePersonConfig\x12\x1b\n\x0e\x61\x63\x63ount_number\x18\x01 \x01(\tB\x03\xe0\x41\x02\x1a\x8b\x01\n\x19SalesforceLiveAgentConfig\x12\x1c\n\x0forganization_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x1a\n\rdeployment_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\tbutton_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x1c\n\x0f\x65ndpoint_domain\x18\x04 \x01(\tB\x03\xe0\x41\x02\x42\x0f\n\ragent_service\"\xbf\x01\n\x12NotificationConfig\x12\r\n\x05topic\x18\x01 \x01(\t\x12T\n\x0emessage_format\x18\x02 \x01(\x0e\x32<.google.cloud.dialogflow.v2.NotificationConfig.MessageFormat\"D\n\rMessageFormat\x12\x1e\n\x1aMESSAGE_FORMAT_UNSPECIFIED\x10\x00\x12\t\n\x05PROTO\x10\x01\x12\x08\n\x04JSON\x10\x02\"3\n\rLoggingConfig\x12\"\n\x1a\x65nable_stackdriver_logging\x18\x03 \x01(\x08\"\xd1\x01\n\x11SuggestionFeature\x12@\n\x04type\x18\x01 \x01(\x0e\x32\x32.google.cloud.dialogflow.v2.SuggestionFeature.Type\"z\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x16\n\x12\x41RTICLE_SUGGESTION\x10\x01\x12\x07\n\x03\x46\x41Q\x10\x02\x12\x0f\n\x0bSMART_REPLY\x10\x03\x12\x14\n\x10KNOWLEDGE_SEARCH\x10\x0e\x12\x14\n\x10KNOWLEDGE_ASSIST\x10\x0f\"\x8a\x02\n!SetSuggestionFeatureConfigRequest\x12!\n\x14\x63onversation_profile\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12K\n\x10participant_role\x18\x02 \x01(\x0e\x32,.google.cloud.dialogflow.v2.Participant.RoleB\x03\xe0\x41\x02\x12u\n\x19suggestion_feature_config\x18\x03 \x01(\x0b\x32M.google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionFeatureConfigB\x03\xe0\x41\x02\"\xef\x01\n#ClearSuggestionFeatureConfigRequest\x12!\n\x14\x63onversation_profile\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12K\n\x10participant_role\x18\x02 \x01(\x0e\x32,.google.cloud.dialogflow.v2.Participant.RoleB\x03\xe0\x41\x02\x12X\n\x17suggestion_feature_type\x18\x03 \x01(\x0e\x32\x32.google.cloud.dialogflow.v2.SuggestionFeature.TypeB\x03\xe0\x41\x02\"\xa3\x02\n+SetSuggestionFeatureConfigOperationMetadata\x12\x1c\n\x14\x63onversation_profile\x18\x01 \x01(\t\x12K\n\x10participant_role\x18\x02 \x01(\x0e\x32,.google.cloud.dialogflow.v2.Participant.RoleB\x03\xe0\x41\x02\x12X\n\x17suggestion_feature_type\x18\x03 \x01(\x0e\x32\x32.google.cloud.dialogflow.v2.SuggestionFeature.TypeB\x03\xe0\x41\x02\x12/\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xa5\x02\n-ClearSuggestionFeatureConfigOperationMetadata\x12\x1c\n\x14\x63onversation_profile\x18\x01 \x01(\t\x12K\n\x10participant_role\x18\x02 \x01(\x0e\x32,.google.cloud.dialogflow.v2.Participant.RoleB\x03\xe0\x41\x02\x12X\n\x17suggestion_feature_type\x18\x03 \x01(\x0e\x32\x32.google.cloud.dialogflow.v2.SuggestionFeature.TypeB\x03\xe0\x41\x02\x12/\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp2\xb3\x14\n\x14\x43onversationProfiles\x12\x90\x02\n\x18ListConversationProfiles\x12;.google.cloud.dialogflow.v2.ListConversationProfilesRequest\x1a<.google.cloud.dialogflow.v2.ListConversationProfilesResponse\"y\xda\x41\x06parent\x82\xd3\xe4\x93\x02j\x12,/v2/{parent=projects/*}/conversationProfilesZ:\x12\x38/v2/{parent=projects/*/locations/*}/conversationProfiles\x12\xfd\x01\n\x16GetConversationProfile\x12\x39.google.cloud.dialogflow.v2.GetConversationProfileRequest\x1a/.google.cloud.dialogflow.v2.ConversationProfile\"w\xda\x41\x04name\x82\xd3\xe4\x93\x02j\x12,/v2/{name=projects/*/conversationProfiles/*}Z:\x12\x38/v2/{name=projects/*/locations/*/conversationProfiles/*}\x12\xc8\x02\n\x19\x43reateConversationProfile\x12<.google.cloud.dialogflow.v2.CreateConversationProfileRequest\x1a/.google.cloud.dialogflow.v2.ConversationProfile\"\xbb\x01\xda\x41\x1bparent,conversation_profile\x82\xd3\xe4\x93\x02\x96\x01\",/v2/{parent=projects/*}/conversationProfiles:\x14\x63onversation_profileZP\"8/v2/{parent=projects/*/locations/*}/conversationProfiles:\x14\x63onversation_profile\x12\xf7\x02\n\x19UpdateConversationProfile\x12<.google.cloud.dialogflow.v2.UpdateConversationProfileRequest\x1a/.google.cloud.dialogflow.v2.ConversationProfile\"\xea\x01\xda\x41 conversation_profile,update_mask\x82\xd3\xe4\x93\x02\xc0\x01\x32\x41/v2/{conversation_profile.name=projects/*/conversationProfiles/*}:\x14\x63onversation_profileZe2M/v2/{conversation_profile.name=projects/*/locations/*/conversationProfiles/*}:\x14\x63onversation_profile\x12\xea\x01\n\x19\x44\x65leteConversationProfile\x12<.google.cloud.dialogflow.v2.DeleteConversationProfileRequest\x1a\x16.google.protobuf.Empty\"w\xda\x41\x04name\x82\xd3\xe4\x93\x02j*,/v2/{name=projects/*/conversationProfiles/*}Z:*8/v2/{name=projects/*/locations/*/conversationProfiles/*}\x12\xe8\x03\n\x1aSetSuggestionFeatureConfig\x12=.google.cloud.dialogflow.v2.SetSuggestionFeatureConfigRequest\x1a\x1d.google.longrunning.Operation\"\xeb\x02\xca\x41\x42\n\x13\x43onversationProfile\x12+SetSuggestionFeatureConfigOperationMetadata\xda\x41\x14\x63onversation_profile\xda\x41?conversation_profile,participant_role,suggestion_feature_config\x82\xd3\xe4\x93\x02\xc6\x01\"W/v2/{conversation_profile=projects/*/conversationProfiles/*}:setSuggestionFeatureConfig:\x01*Zh\"c/v2/{conversation_profile=projects/*/locations/*/conversationProfiles/*}:setSuggestionFeatureConfig:\x01*\x12\xf0\x03\n\x1c\x43learSuggestionFeatureConfig\x12?.google.cloud.dialogflow.v2.ClearSuggestionFeatureConfigRequest\x1a\x1d.google.longrunning.Operation\"\xef\x02\xca\x41\x44\n\x13\x43onversationProfile\x12-ClearSuggestionFeatureConfigOperationMetadata\xda\x41\x14\x63onversation_profile\xda\x41=conversation_profile,participant_role,suggestion_feature_type\x82\xd3\xe4\x93\x02\xca\x01\"Y/v2/{conversation_profile=projects/*/conversationProfiles/*}:clearSuggestionFeatureConfig:\x01*Zj\"e/v2/{conversation_profile=projects/*/locations/*/conversationProfiles/*}:clearSuggestionFeatureConfig:\x01*\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\x9d\x02\n\x1e\x63om.google.cloud.dialogflow.v2B\x18\x43onversationProfileProtoP\x01Z>cloud.google.com/go/dialogflow/apiv2/dialogflowpb;dialogflowpb\xa2\x02\x02\x44\x46\xaa\x02\x1aGoogle.Cloud.Dialogflow.V2\xea\x41|\n,dialogflow.googleapis.com/CXSecuritySettings\x12Lprojects/{project}/locations/{location}/securitySettings/{security_settings}b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.dialogflow.v2.SpeechToTextConfig", "google/cloud/dialogflow/v2/audio_config.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Dialogflow
      module V2
        ConversationProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ConversationProfile").msgclass
        ListConversationProfilesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListConversationProfilesRequest").msgclass
        ListConversationProfilesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListConversationProfilesResponse").msgclass
        GetConversationProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GetConversationProfileRequest").msgclass
        CreateConversationProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CreateConversationProfileRequest").msgclass
        UpdateConversationProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.UpdateConversationProfileRequest").msgclass
        DeleteConversationProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DeleteConversationProfileRequest").msgclass
        AutomatedAgentConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AutomatedAgentConfig").msgclass
        HumanAgentAssistantConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig").msgclass
        HumanAgentAssistantConfig::SuggestionTriggerSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionTriggerSettings").msgclass
        HumanAgentAssistantConfig::SuggestionFeatureConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionFeatureConfig").msgclass
        HumanAgentAssistantConfig::SuggestionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionConfig").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig::KnowledgeBaseQuerySource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySource").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig::DocumentQuerySource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySource").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig::DialogflowQuerySource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig::DialogflowQuerySource::HumanAgentSideConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource.HumanAgentSideConfig").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig::ContextFilterSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig::Sections = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.Sections").msgclass
        HumanAgentAssistantConfig::SuggestionQueryConfig::Sections::SectionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.SuggestionQueryConfig.Sections.SectionType").enummodule
        HumanAgentAssistantConfig::ConversationModelConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.ConversationModelConfig").msgclass
        HumanAgentAssistantConfig::ConversationProcessConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.ConversationProcessConfig").msgclass
        HumanAgentAssistantConfig::MessageAnalysisConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentAssistantConfig.MessageAnalysisConfig").msgclass
        HumanAgentHandoffConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentHandoffConfig").msgclass
        HumanAgentHandoffConfig::LivePersonConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentHandoffConfig.LivePersonConfig").msgclass
        HumanAgentHandoffConfig::SalesforceLiveAgentConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.HumanAgentHandoffConfig.SalesforceLiveAgentConfig").msgclass
        NotificationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.NotificationConfig").msgclass
        NotificationConfig::MessageFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.NotificationConfig.MessageFormat").enummodule
        LoggingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.LoggingConfig").msgclass
        SuggestionFeature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestionFeature").msgclass
        SuggestionFeature::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SuggestionFeature.Type").enummodule
        SetSuggestionFeatureConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SetSuggestionFeatureConfigRequest").msgclass
        ClearSuggestionFeatureConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ClearSuggestionFeatureConfigRequest").msgclass
        SetSuggestionFeatureConfigOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SetSuggestionFeatureConfigOperationMetadata").msgclass
        ClearSuggestionFeatureConfigOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ClearSuggestionFeatureConfigOperationMetadata").msgclass
      end
    end
  end
end
