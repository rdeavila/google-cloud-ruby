# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/parallelstore/v1beta/parallelstore.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/field_info_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n5google/cloud/parallelstore/v1beta/parallelstore.proto\x12!google.cloud.parallelstore.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1bgoogle/api/field_info.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xe1\x06\n\x08Instance\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x18\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x45\n\x05state\x18\x03 \x01(\x0e\x32\x31.google.cloud.parallelstore.v1beta.Instance.StateB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12L\n\x06labels\x18\x06 \x03(\x0b\x32\x37.google.cloud.parallelstore.v1beta.Instance.LabelsEntryB\x03\xe0\x41\x01\x12\x1c\n\x0c\x63\x61pacity_gib\x18\x08 \x01(\x03\x42\x06\xe0\x41\x05\xe0\x41\x02\x12\x19\n\x0c\x64\x61os_version\x18\t \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\raccess_points\x18\n \x03(\tB\x03\xe0\x41\x03\x12:\n\x07network\x18\x0b \x01(\tB)\xe0\x41\x05\xe0\x41\x01\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\x12\x44\n\x11reserved_ip_range\x18\x0c \x01(\tB)\xe0\x41\x05\xe0\x41\x01\xfa\x41 \n\x1e\x63ompute.googleapis.com/Address\x12N\n\x1b\x65\x66\x66\x65\x63tive_reserved_ip_range\x18\x0e \x01(\tB)\xe0\x41\x05\xe0\x41\x03\xfa\x41 \n\x1e\x63ompute.googleapis.com/Address\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"R\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04:}\xea\x41z\n%parallelstore.googleapis.com/Instance\x12<projects/{project}/locations/{location}/instances/{instance}*\tinstances2\x08instance\"\xb2\x01\n\x14ListInstancesRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\x12%parallelstore.googleapis.com/Instance\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x85\x01\n\x15ListInstancesResponse\x12>\n\tinstances\x18\x01 \x03(\x0b\x32+.google.cloud.parallelstore.v1beta.Instance\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"Q\n\x12GetInstanceRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%parallelstore.googleapis.com/Instance\"\xcd\x01\n\x15\x43reateInstanceRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\x12%parallelstore.googleapis.com/Instance\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x42\n\x08instance\x18\x03 \x01(\x0b\x32+.google.cloud.parallelstore.v1beta.InstanceB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\xaa\x01\n\x15UpdateInstanceRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x42\n\x08instance\x18\x02 \x01(\x0b\x32+.google.cloud.parallelstore.v1beta.InstanceB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"m\n\x15\x44\x65leteInstanceRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%parallelstore.googleapis.com/Instance\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\x80\x02\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\"#\n\x0fSourceGcsBucket\x12\x10\n\x03uri\x18\x01 \x01(\tB\x03\xe0\x41\x02\"(\n\x14\x44\x65stinationGcsBucket\x12\x10\n\x03uri\x18\x01 \x01(\tB\x03\xe0\x41\x02\"(\n\x13SourceParallelstore\x12\x11\n\x04path\x18\x01 \x01(\tB\x03\xe0\x41\x01\"-\n\x18\x44\x65stinationParallelstore\x12\x11\n\x04path\x18\x01 \x01(\tB\x03\xe0\x41\x01\"\xbd\x02\n\x11ImportDataRequest\x12O\n\x11source_gcs_bucket\x18\x02 \x01(\x0b\x32\x32.google.cloud.parallelstore.v1beta.SourceGcsBucketH\x00\x12`\n\x19\x64\x65stination_parallelstore\x18\x03 \x01(\x0b\x32;.google.cloud.parallelstore.v1beta.DestinationParallelstoreH\x01\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%parallelstore.googleapis.com/Instance\x12\x1f\n\nrequest_id\x18\x04 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\x42\x08\n\x06sourceB\r\n\x0b\x64\x65stination\"\xbd\x02\n\x11\x45xportDataRequest\x12V\n\x14source_parallelstore\x18\x02 \x01(\x0b\x32\x36.google.cloud.parallelstore.v1beta.SourceParallelstoreH\x00\x12Y\n\x16\x64\x65stination_gcs_bucket\x18\x03 \x01(\x0b\x32\x37.google.cloud.parallelstore.v1beta.DestinationGcsBucketH\x01\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%parallelstore.googleapis.com/Instance\x12\x1f\n\nrequest_id\x18\x04 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\x42\x08\n\x06sourceB\r\n\x0b\x64\x65stination\"\x14\n\x12ImportDataResponse\"\xdb\x02\n\x12ImportDataMetadata\x12X\n\x12operation_metadata\x18\x01 \x01(\x0b\x32<.google.cloud.parallelstore.v1beta.TransferOperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x07 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x08 \x01(\tB\x03\xe0\x41\x03\"\x14\n\x12\x45xportDataResponse\"\xdb\x02\n\x12\x45xportDataMetadata\x12X\n\x12operation_metadata\x18\x01 \x01(\x0b\x32<.google.cloud.parallelstore.v1beta.TransferOperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x07 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x08 \x01(\tB\x03\xe0\x41\x03\"\xc7\x04\n\x19TransferOperationMetadata\x12[\n\x14source_parallelstore\x18\x07 \x01(\x0b\x32\x36.google.cloud.parallelstore.v1beta.SourceParallelstoreB\x03\xe0\x41\x03H\x00\x12T\n\x11source_gcs_bucket\x18\x08 \x01(\x0b\x32\x32.google.cloud.parallelstore.v1beta.SourceGcsBucketB\x03\xe0\x41\x03H\x00\x12^\n\x16\x64\x65stination_gcs_bucket\x18\t \x01(\x0b\x32\x37.google.cloud.parallelstore.v1beta.DestinationGcsBucketB\x03\xe0\x41\x03H\x01\x12\x65\n\x19\x64\x65stination_parallelstore\x18\n \x01(\x0b\x32;.google.cloud.parallelstore.v1beta.DestinationParallelstoreB\x03\xe0\x41\x03H\x01\x12J\n\x08\x63ounters\x18\x03 \x01(\x0b\x32\x33.google.cloud.parallelstore.v1beta.TransferCountersB\x03\xe0\x41\x03\x12K\n\rtransfer_type\x18\x06 \x01(\x0e\x32/.google.cloud.parallelstore.v1beta.TransferTypeB\x03\xe0\x41\x03\x42\x08\n\x06sourceB\r\n\x0b\x64\x65stination\"\x9c\x01\n\x10TransferCounters\x12\x15\n\robjects_found\x18\x01 \x01(\x03\x12\x13\n\x0b\x62ytes_found\x18\x02 \x01(\x03\x12\x17\n\x0fobjects_skipped\x18\x03 \x01(\x03\x12\x15\n\rbytes_skipped\x18\x04 \x01(\x03\x12\x16\n\x0eobjects_copied\x18\x05 \x01(\x03\x12\x14\n\x0c\x62ytes_copied\x18\x06 \x01(\x03*E\n\x0cTransferType\x12\x1d\n\x19TRANSFER_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06IMPORT\x10\x01\x12\n\n\x06\x45XPORT\x10\x02\x32\xcd\x0c\n\rParallelstore\x12\xc6\x01\n\rListInstances\x12\x37.google.cloud.parallelstore.v1beta.ListInstancesRequest\x1a\x38.google.cloud.parallelstore.v1beta.ListInstancesResponse\"B\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x33\x12\x31/v1beta/{parent=projects/*/locations/*}/instances\x12\xb3\x01\n\x0bGetInstance\x12\x35.google.cloud.parallelstore.v1beta.GetInstanceRequest\x1a+.google.cloud.parallelstore.v1beta.Instance\"@\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33\x12\x31/v1beta/{name=projects/*/locations/*/instances/*}\x12\xed\x01\n\x0e\x43reateInstance\x12\x38.google.cloud.parallelstore.v1beta.CreateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x81\x01\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x1bparent,instance,instance_id\x82\xd3\xe4\x93\x02=\"1/v1beta/{parent=projects/*/locations/*}/instances:\x08instance\x12\xef\x01\n\x0eUpdateInstance\x12\x38.google.cloud.parallelstore.v1beta.UpdateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x83\x01\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x14instance,update_mask\x82\xd3\xe4\x93\x02\x46\x32:/v1beta/{instance.name=projects/*/locations/*/instances/*}:\x08instance\x12\xd8\x01\n\x0e\x44\x65leteInstance\x12\x38.google.cloud.parallelstore.v1beta.DeleteInstanceRequest\x1a\x1d.google.longrunning.Operation\"m\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33*1/v1beta/{name=projects/*/locations/*/instances/*}\x12\xd5\x01\n\nImportData\x12\x34.google.cloud.parallelstore.v1beta.ImportDataRequest\x1a\x1d.google.longrunning.Operation\"r\xca\x41(\n\x12ImportDataResponse\x12\x12ImportDataMetadata\x82\xd3\xe4\x93\x02\x41\"</v1beta/{name=projects/*/locations/*/instances/*}:importData:\x01*\x12\xd5\x01\n\nExportData\x12\x34.google.cloud.parallelstore.v1beta.ExportDataRequest\x1a\x1d.google.longrunning.Operation\"r\xca\x41(\n\x12\x45xportDataResponse\x12\x12\x45xportDataMetadata\x82\xd3\xe4\x93\x02\x41\"</v1beta/{name=projects/*/locations/*/instances/*}:exportData:\x01*\x1aP\xca\x41\x1cparallelstore.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xa6\x03\n%com.google.cloud.parallelstore.v1betaB\x12ParallelstoreProtoP\x01ZKcloud.google.com/go/parallelstore/apiv1beta/parallelstorepb;parallelstorepb\xaa\x02!Google.Cloud.Parallelstore.V1Beta\xca\x02!Google\\Cloud\\Parallelstore\\V1beta\xea\x02$Google::Cloud::Parallelstore::V1beta\xea\x41N\n\x1e\x63ompute.googleapis.com/Network\x12,projects/{project}/global/networks/{network}\xea\x41Y\n\x1e\x63ompute.googleapis.com/Address\x12\x37projects/{project}/regions/{region}/addresses/{address}b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module Parallelstore
      module V1beta
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.Instance").msgclass
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.Instance.State").enummodule
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.ListInstancesResponse").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.GetInstanceRequest").msgclass
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.CreateInstanceRequest").msgclass
        UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.UpdateInstanceRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.DeleteInstanceRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.OperationMetadata").msgclass
        SourceGcsBucket = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.SourceGcsBucket").msgclass
        DestinationGcsBucket = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.DestinationGcsBucket").msgclass
        SourceParallelstore = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.SourceParallelstore").msgclass
        DestinationParallelstore = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.DestinationParallelstore").msgclass
        ImportDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.ImportDataRequest").msgclass
        ExportDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.ExportDataRequest").msgclass
        ImportDataResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.ImportDataResponse").msgclass
        ImportDataMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.ImportDataMetadata").msgclass
        ExportDataResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.ExportDataResponse").msgclass
        ExportDataMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.ExportDataMetadata").msgclass
        TransferOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.TransferOperationMetadata").msgclass
        TransferCounters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.TransferCounters").msgclass
        TransferType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.parallelstore.v1beta.TransferType").enummodule
      end
    end
  end
end
