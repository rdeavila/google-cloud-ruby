# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/publisher_model.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/machine_resources_pb'
require 'google/cloud/aiplatform/v1/model_pb'


descriptor_data = "\n0google/cloud/aiplatform/v1/publisher_model.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x32google/cloud/aiplatform/v1/machine_resources.proto\x1a&google/cloud/aiplatform/v1/model.proto\"\xef\x16\n\x0ePublisherModel\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\nversion_id\x18\x02 \x01(\tB\x06\xe0\x41\x05\xe0\x41\x03\x12`\n\x14open_source_category\x18\x07 \x01(\x0e\x32=.google.cloud.aiplatform.v1.PublisherModel.OpenSourceCategoryB\x03\xe0\x41\x02\x12W\n\x11supported_actions\x18\x13 \x01(\x0b\x32\x37.google.cloud.aiplatform.v1.PublisherModel.CallToActionB\x03\xe0\x41\x01\x12\x17\n\nframeworks\x18\x17 \x03(\tB\x03\xe0\x41\x01\x12Q\n\x0claunch_stage\x18\x1d \x01(\x0e\x32\x36.google.cloud.aiplatform.v1.PublisherModel.LaunchStageB\x03\xe0\x41\x01\x12(\n\x18publisher_model_template\x18\x1e \x01(\tB\x06\xe0\x41\x05\xe0\x41\x03\x12J\n\x10predict_schemata\x18\x1f \x01(\x0b\x32+.google.cloud.aiplatform.v1.PredictSchemataB\x03\xe0\x41\x01\x1aH\n\x11ResourceReference\x12\r\n\x03uri\x18\x01 \x01(\tH\x00\x12\x17\n\rresource_name\x18\x02 \x01(\tH\x00\x42\x0b\n\treference\x1a\x39\n\rDocumentation\x12\x12\n\x05title\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x07\x63ontent\x18\x02 \x01(\tB\x03\xe0\x41\x02\x1a\xe7\x0e\n\x0c\x43\x61llToAction\x12_\n\rview_rest_api\x18\x01 \x01(\x0b\x32\x43.google.cloud.aiplatform.v1.PublisherModel.CallToAction.ViewRestApiB\x03\xe0\x41\x01\x12n\n\ropen_notebook\x18\x02 \x01(\x0b\x32R.google.cloud.aiplatform.v1.PublisherModel.CallToAction.RegionalResourceReferencesB\x03\xe0\x41\x01\x12s\n\x12\x63reate_application\x18\x03 \x01(\x0b\x32R.google.cloud.aiplatform.v1.PublisherModel.CallToAction.RegionalResourceReferencesB\x03\xe0\x41\x01\x12z\n\x19open_fine_tuning_pipeline\x18\x04 \x01(\x0b\x32R.google.cloud.aiplatform.v1.PublisherModel.CallToAction.RegionalResourceReferencesB\x03\xe0\x41\x01\x12|\n\x1bopen_prompt_tuning_pipeline\x18\x05 \x01(\x0b\x32R.google.cloud.aiplatform.v1.PublisherModel.CallToAction.RegionalResourceReferencesB\x03\xe0\x41\x01\x12k\n\nopen_genie\x18\x06 \x01(\x0b\x32R.google.cloud.aiplatform.v1.PublisherModel.CallToAction.RegionalResourceReferencesB\x03\xe0\x41\x01\x12S\n\x06\x64\x65ploy\x18\x07 \x01(\x0b\x32>.google.cloud.aiplatform.v1.PublisherModel.CallToAction.DeployB\x03\xe0\x41\x01\x12z\n\x19open_generation_ai_studio\x18\x08 \x01(\x0b\x32R.google.cloud.aiplatform.v1.PublisherModel.CallToAction.RegionalResourceReferencesB\x03\xe0\x41\x01\x12o\n\x0erequest_access\x18\t \x01(\x0b\x32R.google.cloud.aiplatform.v1.PublisherModel.CallToAction.RegionalResourceReferencesB\x03\xe0\x41\x01\x1a\x9e\x02\n\x1aRegionalResourceReferences\x12{\n\nreferences\x18\x01 \x03(\x0b\x32\x62.google.cloud.aiplatform.v1.PublisherModel.CallToAction.RegionalResourceReferences.ReferencesEntryB\x03\xe0\x41\x02\x12\x12\n\x05title\x18\x02 \x01(\tB\x03\xe0\x41\x02\x1ao\n\x0fReferencesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12K\n\x05value\x18\x02 \x01(\x0b\x32<.google.cloud.aiplatform.v1.PublisherModel.ResourceReference:\x02\x38\x01\x1ax\n\x0bViewRestApi\x12U\n\x0e\x64ocumentations\x18\x01 \x03(\x0b\x32\x38.google.cloud.aiplatform.v1.PublisherModel.DocumentationB\x03\xe0\x41\x02\x12\x12\n\x05title\x18\x02 \x01(\tB\x03\xe0\x41\x02\x1a\xcc\x03\n\x06\x44\x65ploy\x12M\n\x13\x64\x65\x64icated_resources\x18\x05 \x01(\x0b\x32..google.cloud.aiplatform.v1.DedicatedResourcesH\x00\x12M\n\x13\x61utomatic_resources\x18\x06 \x01(\x0b\x32..google.cloud.aiplatform.v1.AutomaticResourcesH\x00\x12\x1a\n\x10shared_resources\x18\x07 \x01(\tH\x00\x12\x1f\n\x12model_display_name\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12S\n\x15large_model_reference\x18\x02 \x01(\x0b\x32/.google.cloud.aiplatform.v1.LargeModelReferenceB\x03\xe0\x41\x01\x12K\n\x0e\x63ontainer_spec\x18\x03 \x01(\x0b\x32..google.cloud.aiplatform.v1.ModelContainerSpecB\x03\xe0\x41\x01\x12\x19\n\x0c\x61rtifact_uri\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05title\x18\x08 \x01(\tB\x03\xe0\x41\x02\x42\x16\n\x14prediction_resources\"\xdb\x01\n\x12OpenSourceCategory\x12$\n OPEN_SOURCE_CATEGORY_UNSPECIFIED\x10\x00\x12\x0f\n\x0bPROPRIETARY\x10\x01\x12+\n\'GOOGLE_OWNED_OSS_WITH_GOOGLE_CHECKPOINT\x10\x02\x12\x30\n,THIRD_PARTY_OWNED_OSS_WITH_GOOGLE_CHECKPOINT\x10\x03\x12\x14\n\x10GOOGLE_OWNED_OSS\x10\x04\x12\x19\n\x15THIRD_PARTY_OWNED_OSS\x10\x05\"n\n\x0bLaunchStage\x12\x1c\n\x18LAUNCH_STAGE_UNSPECIFIED\x10\x00\x12\x10\n\x0c\x45XPERIMENTAL\x10\x01\x12\x13\n\x0fPRIVATE_PREVIEW\x10\x02\x12\x12\n\x0ePUBLIC_PREVIEW\x10\x03\x12\x06\n\x02GA\x10\x04:T\xea\x41Q\n(aiplatform.googleapis.com/PublisherModel\x12%publishers/{publisher}/models/{model}B\xd1\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x13PublisherModelProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.aiplatform.v1.PredictSchemata", "google/cloud/aiplatform/v1/model.proto"],
    ["google.cloud.aiplatform.v1.DedicatedResources", "google/cloud/aiplatform/v1/machine_resources.proto"],
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
    module AIPlatform
      module V1
        PublisherModel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PublisherModel").msgclass
        PublisherModel::ResourceReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PublisherModel.ResourceReference").msgclass
        PublisherModel::Documentation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PublisherModel.Documentation").msgclass
        PublisherModel::CallToAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PublisherModel.CallToAction").msgclass
        PublisherModel::CallToAction::RegionalResourceReferences = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PublisherModel.CallToAction.RegionalResourceReferences").msgclass
        PublisherModel::CallToAction::ViewRestApi = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PublisherModel.CallToAction.ViewRestApi").msgclass
        PublisherModel::CallToAction::Deploy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PublisherModel.CallToAction.Deploy").msgclass
        PublisherModel::OpenSourceCategory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PublisherModel.OpenSourceCategory").enummodule
        PublisherModel::LaunchStage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PublisherModel.LaunchStage").enummodule
      end
    end
  end
end
