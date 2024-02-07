# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/batch/v1/task.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/batch/v1/volume_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n google/cloud/batch/v1/task.proto\x12\x15google.cloud.batch.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\"google/cloud/batch/v1/volume.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"O\n\x0f\x43omputeResource\x12\x11\n\tcpu_milli\x18\x01 \x01(\x03\x12\x12\n\nmemory_mib\x18\x02 \x01(\x03\x12\x15\n\rboot_disk_mib\x18\x04 \x01(\x03\"\xdb\x01\n\x0bStatusEvent\x12\x0c\n\x04type\x18\x03 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x01 \x01(\t\x12.\n\nevent_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12<\n\x0etask_execution\x18\x04 \x01(\x0b\x32$.google.cloud.batch.v1.TaskExecution\x12;\n\ntask_state\x18\x05 \x01(\x0e\x32\'.google.cloud.batch.v1.TaskStatus.State\"\"\n\rTaskExecution\x12\x11\n\texit_code\x18\x01 \x01(\x05\"\xf2\x01\n\nTaskStatus\x12\x36\n\x05state\x18\x01 \x01(\x0e\x32\'.google.cloud.batch.v1.TaskStatus.State\x12\x39\n\rstatus_events\x18\x02 \x03(\x0b\x32\".google.cloud.batch.v1.StatusEvent\"q\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PENDING\x10\x01\x12\x0c\n\x08\x41SSIGNED\x10\x02\x12\x0b\n\x07RUNNING\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04\x12\r\n\tSUCCEEDED\x10\x05\x12\x0e\n\nUNEXECUTED\x10\x06\"\x9e\x06\n\x08Runnable\x12>\n\tcontainer\x18\x01 \x01(\x0b\x32).google.cloud.batch.v1.Runnable.ContainerH\x00\x12\x38\n\x06script\x18\x02 \x01(\x0b\x32&.google.cloud.batch.v1.Runnable.ScriptH\x00\x12:\n\x07\x62\x61rrier\x18\x06 \x01(\x0b\x32\'.google.cloud.batch.v1.Runnable.BarrierH\x00\x12\x19\n\x0c\x64isplay_name\x18\n \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\x12ignore_exit_status\x18\x03 \x01(\x08\x12\x12\n\nbackground\x18\x04 \x01(\x08\x12\x12\n\nalways_run\x18\x05 \x01(\x08\x12\x37\n\x0b\x65nvironment\x18\x07 \x01(\x0b\x32\".google.cloud.batch.v1.Environment\x12*\n\x07timeout\x18\x08 \x01(\x0b\x32\x19.google.protobuf.Duration\x12;\n\x06labels\x18\t \x03(\x0b\x32+.google.cloud.batch.v1.Runnable.LabelsEntry\x1a\xcf\x01\n\tContainer\x12\x11\n\timage_uri\x18\x01 \x01(\t\x12\x10\n\x08\x63ommands\x18\x02 \x03(\t\x12\x12\n\nentrypoint\x18\x03 \x01(\t\x12\x0f\n\x07volumes\x18\x07 \x03(\t\x12\x0f\n\x07options\x18\x08 \x01(\t\x12\x1e\n\x16\x62lock_external_network\x18\t \x01(\x08\x12\x10\n\x08username\x18\n \x01(\t\x12\x10\n\x08password\x18\x0b \x01(\t\x12#\n\x16\x65nable_image_streaming\x18\x0c \x01(\x08\x42\x03\xe0\x41\x01\x1a\x33\n\x06Script\x12\x0e\n\x04path\x18\x01 \x01(\tH\x00\x12\x0e\n\x04text\x18\x02 \x01(\tH\x00\x42\t\n\x07\x63ommand\x1a\x17\n\x07\x42\x61rrier\x12\x0c\n\x04name\x18\x01 \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42\x0c\n\nexecutable\"\xfd\x03\n\x08TaskSpec\x12\x32\n\trunnables\x18\x08 \x03(\x0b\x32\x1f.google.cloud.batch.v1.Runnable\x12@\n\x10\x63ompute_resource\x18\x03 \x01(\x0b\x32&.google.cloud.batch.v1.ComputeResource\x12\x33\n\x10max_run_duration\x18\x04 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x17\n\x0fmax_retry_count\x18\x05 \x01(\x05\x12\x42\n\x12lifecycle_policies\x18\t \x03(\x0b\x32&.google.cloud.batch.v1.LifecyclePolicy\x12K\n\x0c\x65nvironments\x18\x06 \x03(\x0b\x32\x31.google.cloud.batch.v1.TaskSpec.EnvironmentsEntryB\x02\x18\x01\x12.\n\x07volumes\x18\x07 \x03(\x0b\x32\x1d.google.cloud.batch.v1.Volume\x12\x37\n\x0b\x65nvironment\x18\n \x01(\x0b\x32\".google.cloud.batch.v1.Environment\x1a\x33\n\x11\x45nvironmentsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x8a\x02\n\x0fLifecyclePolicy\x12=\n\x06\x61\x63tion\x18\x01 \x01(\x0e\x32-.google.cloud.batch.v1.LifecyclePolicy.Action\x12P\n\x10\x61\x63tion_condition\x18\x02 \x01(\x0b\x32\x36.google.cloud.batch.v1.LifecyclePolicy.ActionCondition\x1a%\n\x0f\x41\x63tionCondition\x12\x12\n\nexit_codes\x18\x01 \x03(\x05\"?\n\x06\x41\x63tion\x12\x16\n\x12\x41\x43TION_UNSPECIFIED\x10\x00\x12\x0e\n\nRETRY_TASK\x10\x01\x12\r\n\tFAIL_TASK\x10\x02\"\xc0\x01\n\x04Task\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x31\n\x06status\x18\x02 \x01(\x0b\x32!.google.cloud.batch.v1.TaskStatus:w\xea\x41t\n\x19\x62\x61tch.googleapis.com/Task\x12Wprojects/{project}/locations/{location}/jobs/{job}/taskGroups/{task_group}/tasks/{task}\"\x8f\x03\n\x0b\x45nvironment\x12\x44\n\tvariables\x18\x01 \x03(\x0b\x32\x31.google.cloud.batch.v1.Environment.VariablesEntry\x12Q\n\x10secret_variables\x18\x02 \x03(\x0b\x32\x37.google.cloud.batch.v1.Environment.SecretVariablesEntry\x12I\n\x13\x65ncrypted_variables\x18\x03 \x01(\x0b\x32,.google.cloud.batch.v1.Environment.KMSEnvMap\x1a\x32\n\tKMSEnvMap\x12\x10\n\x08key_name\x18\x01 \x01(\t\x12\x13\n\x0b\x63ipher_text\x18\x02 \x01(\t\x1a\x30\n\x0eVariablesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x36\n\x14SecretVariablesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42\xaa\x01\n\x19\x63om.google.cloud.batch.v1B\tTaskProtoP\x01Z/cloud.google.com/go/batch/apiv1/batchpb;batchpb\xa2\x02\x03GCB\xaa\x02\x15Google.Cloud.Batch.V1\xca\x02\x15Google\\Cloud\\Batch\\V1\xea\x02\x18Google::Cloud::Batch::V1b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.cloud.batch.v1.Volume", "google/cloud/batch/v1/volume.proto"],
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
    module Batch
      module V1
        ComputeResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.ComputeResource").msgclass
        StatusEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.StatusEvent").msgclass
        TaskExecution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.TaskExecution").msgclass
        TaskStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.TaskStatus").msgclass
        TaskStatus::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.TaskStatus.State").enummodule
        Runnable = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.Runnable").msgclass
        Runnable::Container = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.Runnable.Container").msgclass
        Runnable::Script = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.Runnable.Script").msgclass
        Runnable::Barrier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.Runnable.Barrier").msgclass
        TaskSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.TaskSpec").msgclass
        LifecyclePolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.LifecyclePolicy").msgclass
        LifecyclePolicy::ActionCondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.LifecyclePolicy.ActionCondition").msgclass
        LifecyclePolicy::Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.LifecyclePolicy.Action").enummodule
        Task = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.Task").msgclass
        Environment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.Environment").msgclass
        Environment::KMSEnvMap = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.batch.v1.Environment.KMSEnvMap").msgclass
      end
    end
  end
end
