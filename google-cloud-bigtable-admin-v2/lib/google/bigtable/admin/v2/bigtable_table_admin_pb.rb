# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/bigtable/admin/v2/bigtable_table_admin.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/bigtable/admin/v2/common_pb'
require 'google/bigtable/admin/v2/table_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n3google/bigtable/admin/v2/bigtable_table_admin.proto\x12\x18google.bigtable.admin.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a%google/bigtable/admin/v2/common.proto\x1a$google/bigtable/admin/v2/table.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a#google/longrunning/operations.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xb1\x01\n\x13RestoreTableRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Instance\x12\x15\n\x08table_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12:\n\x06\x62\x61\x63kup\x18\x03 \x01(\tB(\xfa\x41%\n#bigtableadmin.googleapis.com/BackupH\x00\x42\x08\n\x06source\"\x98\x02\n\x14RestoreTableMetadata\x12\x0c\n\x04name\x18\x01 \x01(\t\x12@\n\x0bsource_type\x18\x02 \x01(\x0e\x32+.google.bigtable.admin.v2.RestoreSourceType\x12;\n\x0b\x62\x61\x63kup_info\x18\x03 \x01(\x0b\x32$.google.bigtable.admin.v2.BackupInfoH\x00\x12%\n\x1doptimize_table_operation_name\x18\x04 \x01(\t\x12=\n\x08progress\x18\x05 \x01(\x0b\x32+.google.bigtable.admin.v2.OperationProgressB\r\n\x0bsource_info\"l\n\x1dOptimizeRestoredTableMetadata\x12\x0c\n\x04name\x18\x01 \x01(\t\x12=\n\x08progress\x18\x02 \x01(\x0b\x32+.google.bigtable.admin.v2.OperationProgress\"\x81\x02\n\x12\x43reateTableRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Instance\x12\x15\n\x08table_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x33\n\x05table\x18\x03 \x01(\x0b\x32\x1f.google.bigtable.admin.v2.TableB\x03\xe0\x41\x02\x12J\n\x0einitial_splits\x18\x04 \x03(\x0b\x32\x32.google.bigtable.admin.v2.CreateTableRequest.Split\x1a\x14\n\x05Split\x12\x0b\n\x03key\x18\x01 \x01(\x0c\"\xbe\x01\n\x1e\x43reateTableFromSnapshotRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Instance\x12\x15\n\x08table_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x46\n\x0fsource_snapshot\x18\x03 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Snapshot\"\x99\x01\n\x13\x44ropRowRangeRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"bigtableadmin.googleapis.com/Table\x12\x18\n\x0erow_key_prefix\x18\x02 \x01(\x0cH\x00\x12$\n\x1a\x64\x65lete_all_data_from_table\x18\x03 \x01(\x08H\x00\x42\x08\n\x06target\"\xad\x01\n\x11ListTablesRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Instance\x12\x32\n\x04view\x18\x02 \x01(\x0e\x32$.google.bigtable.admin.v2.Table.View\x12\x11\n\tpage_size\x18\x04 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"^\n\x12ListTablesResponse\x12/\n\x06tables\x18\x01 \x03(\x0b\x32\x1f.google.bigtable.admin.v2.Table\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x7f\n\x0fGetTableRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"bigtableadmin.googleapis.com/Table\x12\x32\n\x04view\x18\x02 \x01(\x0e\x32$.google.bigtable.admin.v2.Table.View\"\x7f\n\x12UpdateTableRequest\x12\x33\n\x05table\x18\x01 \x01(\x0b\x32\x1f.google.bigtable.admin.v2.TableB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"\x81\x01\n\x13UpdateTableMetadata\x12\x0c\n\x04name\x18\x01 \x01(\t\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"N\n\x12\x44\x65leteTableRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"bigtableadmin.googleapis.com/Table\"P\n\x14UndeleteTableRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"bigtableadmin.googleapis.com/Table\"\x83\x01\n\x15UndeleteTableMetadata\x12\x0c\n\x04name\x18\x01 \x01(\t\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xfd\x02\n\x1bModifyColumnFamiliesRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"bigtableadmin.googleapis.com/Table\x12^\n\rmodifications\x18\x02 \x03(\x0b\x32\x42.google.bigtable.admin.v2.ModifyColumnFamiliesRequest.ModificationB\x03\xe0\x41\x02\x12\x1c\n\x0fignore_warnings\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\x1a\xa5\x01\n\x0cModification\x12\n\n\x02id\x18\x01 \x01(\t\x12\x38\n\x06\x63reate\x18\x02 \x01(\x0b\x32&.google.bigtable.admin.v2.ColumnFamilyH\x00\x12\x38\n\x06update\x18\x03 \x01(\x0b\x32&.google.bigtable.admin.v2.ColumnFamilyH\x00\x12\x0e\n\x04\x64rop\x18\x04 \x01(\x08H\x00\x42\x05\n\x03mod\"[\n\x1fGenerateConsistencyTokenRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"bigtableadmin.googleapis.com/Table\"=\n GenerateConsistencyTokenResponse\x12\x19\n\x11\x63onsistency_token\x18\x01 \x01(\t\"s\n\x17\x43heckConsistencyRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"bigtableadmin.googleapis.com/Table\x12\x1e\n\x11\x63onsistency_token\x18\x02 \x01(\tB\x03\xe0\x41\x02\".\n\x18\x43heckConsistencyResponse\x12\x12\n\nconsistent\x18\x01 \x01(\x08\"\xe6\x01\n\x14SnapshotTableRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"bigtableadmin.googleapis.com/Table\x12=\n\x07\x63luster\x18\x02 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$bigtableadmin.googleapis.com/Cluster\x12\x18\n\x0bsnapshot_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12&\n\x03ttl\x18\x04 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x13\n\x0b\x64\x65scription\x18\x05 \x01(\t\"Q\n\x12GetSnapshotRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Snapshot\"{\n\x14ListSnapshotsRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$bigtableadmin.googleapis.com/Cluster\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"g\n\x15ListSnapshotsResponse\x12\x35\n\tsnapshots\x18\x01 \x03(\x0b\x32\".google.bigtable.admin.v2.Snapshot\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"T\n\x15\x44\x65leteSnapshotRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Snapshot\"\xc4\x01\n\x15SnapshotTableMetadata\x12H\n\x10original_request\x18\x01 \x01(\x0b\x32..google.bigtable.admin.v2.SnapshotTableRequest\x12\x30\n\x0crequest_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x66inish_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xd8\x01\n\x1f\x43reateTableFromSnapshotMetadata\x12R\n\x10original_request\x18\x01 \x01(\x0b\x32\x38.google.bigtable.admin.v2.CreateTableFromSnapshotRequest\x12\x30\n\x0crequest_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x66inish_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xa2\x01\n\x13\x43reateBackupRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$bigtableadmin.googleapis.com/Cluster\x12\x16\n\tbackup_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x35\n\x06\x62\x61\x63kup\x18\x03 \x01(\x0b\x32 .google.bigtable.admin.v2.BackupB\x03\xe0\x41\x02\"\x98\x01\n\x14\x43reateBackupMetadata\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0csource_table\x18\x02 \x01(\t\x12.\n\nstart_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x82\x01\n\x13UpdateBackupRequest\x12\x35\n\x06\x62\x61\x63kup\x18\x01 \x01(\x0b\x32 .google.bigtable.admin.v2.BackupB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"M\n\x10GetBackupRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#bigtableadmin.googleapis.com/Backup\"P\n\x13\x44\x65leteBackupRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#bigtableadmin.googleapis.com/Backup\"\x9b\x01\n\x12ListBackupsRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$bigtableadmin.googleapis.com/Cluster\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x10\n\x08order_by\x18\x03 \x01(\t\x12\x11\n\tpage_size\x18\x04 \x01(\x05\x12\x12\n\npage_token\x18\x05 \x01(\t\"a\n\x13ListBackupsResponse\x12\x31\n\x07\x62\x61\x63kups\x18\x01 \x03(\x0b\x32 .google.bigtable.admin.v2.Backup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xe3\x01\n\x11\x43opyBackupRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$bigtableadmin.googleapis.com/Cluster\x12\x16\n\tbackup_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x42\n\rsource_backup\x18\x03 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#bigtableadmin.googleapis.com/Backup\x12\x34\n\x0b\x65xpire_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x02\"\xcd\x01\n\x12\x43opyBackupMetadata\x12\x36\n\x04name\x18\x01 \x01(\tB(\xfa\x41%\n#bigtableadmin.googleapis.com/Backup\x12@\n\x12source_backup_info\x18\x02 \x01(\x0b\x32$.google.bigtable.admin.v2.BackupInfo\x12=\n\x08progress\x18\x03 \x01(\x0b\x32+.google.bigtable.admin.v2.OperationProgress2\xa2*\n\x12\x42igtableTableAdmin\x12\xab\x01\n\x0b\x43reateTable\x12,.google.bigtable.admin.v2.CreateTableRequest\x1a\x1f.google.bigtable.admin.v2.Table\"M\xda\x41\x15parent,table_id,table\x82\xd3\xe4\x93\x02/\"*/v2/{parent=projects/*/instances/*}/tables:\x01*\x12\x8a\x02\n\x17\x43reateTableFromSnapshot\x12\x38.google.bigtable.admin.v2.CreateTableFromSnapshotRequest\x1a\x1d.google.longrunning.Operation\"\x95\x01\xca\x41(\n\x05Table\x12\x1f\x43reateTableFromSnapshotMetadata\xda\x41\x1fparent,table_id,source_snapshot\x82\xd3\xe4\x93\x02\x42\"=/v2/{parent=projects/*/instances/*}/tables:createFromSnapshot:\x01*\x12\xa4\x01\n\nListTables\x12+.google.bigtable.admin.v2.ListTablesRequest\x1a,.google.bigtable.admin.v2.ListTablesResponse\";\xda\x41\x06parent\x82\xd3\xe4\x93\x02,\x12*/v2/{parent=projects/*/instances/*}/tables\x12\x91\x01\n\x08GetTable\x12).google.bigtable.admin.v2.GetTableRequest\x1a\x1f.google.bigtable.admin.v2.Table\"9\xda\x41\x04name\x82\xd3\xe4\x93\x02,\x12*/v2/{name=projects/*/instances/*/tables/*}\x12\xce\x01\n\x0bUpdateTable\x12,.google.bigtable.admin.v2.UpdateTableRequest\x1a\x1d.google.longrunning.Operation\"r\xca\x41\x1c\n\x05Table\x12\x13UpdateTableMetadata\xda\x41\x11table,update_mask\x82\xd3\xe4\x93\x02\x39\x32\x30/v2/{table.name=projects/*/instances/*/tables/*}:\x05table\x12\x8e\x01\n\x0b\x44\x65leteTable\x12,.google.bigtable.admin.v2.DeleteTableRequest\x1a\x16.google.protobuf.Empty\"9\xda\x41\x04name\x82\xd3\xe4\x93\x02,**/v2/{name=projects/*/instances/*/tables/*}\x12\xc6\x01\n\rUndeleteTable\x12..google.bigtable.admin.v2.UndeleteTableRequest\x1a\x1d.google.longrunning.Operation\"f\xca\x41\x1e\n\x05Table\x12\x15UndeleteTableMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38\"3/v2/{name=projects/*/instances/*/tables/*}:undelete:\x01*\x12\xcf\x01\n\x14ModifyColumnFamilies\x12\x35.google.bigtable.admin.v2.ModifyColumnFamiliesRequest\x1a\x1f.google.bigtable.admin.v2.Table\"_\xda\x41\x12name,modifications\x82\xd3\xe4\x93\x02\x44\"?/v2/{name=projects/*/instances/*/tables/*}:modifyColumnFamilies:\x01*\x12\x99\x01\n\x0c\x44ropRowRange\x12-.google.bigtable.admin.v2.DropRowRangeRequest\x1a\x16.google.protobuf.Empty\"B\x82\xd3\xe4\x93\x02<\"7/v2/{name=projects/*/instances/*/tables/*}:dropRowRange:\x01*\x12\xe8\x01\n\x18GenerateConsistencyToken\x12\x39.google.bigtable.admin.v2.GenerateConsistencyTokenRequest\x1a:.google.bigtable.admin.v2.GenerateConsistencyTokenResponse\"U\xda\x41\x04name\x82\xd3\xe4\x93\x02H\"C/v2/{name=projects/*/instances/*/tables/*}:generateConsistencyToken:\x01*\x12\xda\x01\n\x10\x43heckConsistency\x12\x31.google.bigtable.admin.v2.CheckConsistencyRequest\x1a\x32.google.bigtable.admin.v2.CheckConsistencyResponse\"_\xda\x41\x16name,consistency_token\x82\xd3\xe4\x93\x02@\";/v2/{name=projects/*/instances/*/tables/*}:checkConsistency:\x01*\x12\xea\x01\n\rSnapshotTable\x12..google.bigtable.admin.v2.SnapshotTableRequest\x1a\x1d.google.longrunning.Operation\"\x89\x01\xca\x41!\n\x08Snapshot\x12\x15SnapshotTableMetadata\xda\x41$name,cluster,snapshot_id,description\x82\xd3\xe4\x93\x02\x38\"3/v2/{name=projects/*/instances/*/tables/*}:snapshot:\x01*\x12\xa8\x01\n\x0bGetSnapshot\x12,.google.bigtable.admin.v2.GetSnapshotRequest\x1a\".google.bigtable.admin.v2.Snapshot\"G\xda\x41\x04name\x82\xd3\xe4\x93\x02:\x12\x38/v2/{name=projects/*/instances/*/clusters/*/snapshots/*}\x12\xbb\x01\n\rListSnapshots\x12..google.bigtable.admin.v2.ListSnapshotsRequest\x1a/.google.bigtable.admin.v2.ListSnapshotsResponse\"I\xda\x41\x06parent\x82\xd3\xe4\x93\x02:\x12\x38/v2/{parent=projects/*/instances/*/clusters/*}/snapshots\x12\xa2\x01\n\x0e\x44\x65leteSnapshot\x12/.google.bigtable.admin.v2.DeleteSnapshotRequest\x1a\x16.google.protobuf.Empty\"G\xda\x41\x04name\x82\xd3\xe4\x93\x02:*8/v2/{name=projects/*/instances/*/clusters/*/snapshots/*}\x12\xe0\x01\n\x0c\x43reateBackup\x12-.google.bigtable.admin.v2.CreateBackupRequest\x1a\x1d.google.longrunning.Operation\"\x81\x01\xca\x41\x1e\n\x06\x42\x61\x63kup\x12\x14\x43reateBackupMetadata\xda\x41\x17parent,backup_id,backup\x82\xd3\xe4\x93\x02@\"6/v2/{parent=projects/*/instances/*/clusters/*}/backups:\x06\x62\x61\x63kup\x12\xa0\x01\n\tGetBackup\x12*.google.bigtable.admin.v2.GetBackupRequest\x1a .google.bigtable.admin.v2.Backup\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38\x12\x36/v2/{name=projects/*/instances/*/clusters/*/backups/*}\x12\xc3\x01\n\x0cUpdateBackup\x12-.google.bigtable.admin.v2.UpdateBackupRequest\x1a .google.bigtable.admin.v2.Backup\"b\xda\x41\x12\x62\x61\x63kup,update_mask\x82\xd3\xe4\x93\x02G2=/v2/{backup.name=projects/*/instances/*/clusters/*/backups/*}:\x06\x62\x61\x63kup\x12\x9c\x01\n\x0c\x44\x65leteBackup\x12-.google.bigtable.admin.v2.DeleteBackupRequest\x1a\x16.google.protobuf.Empty\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38*6/v2/{name=projects/*/instances/*/clusters/*/backups/*}\x12\xb3\x01\n\x0bListBackups\x12,.google.bigtable.admin.v2.ListBackupsRequest\x1a-.google.bigtable.admin.v2.ListBackupsResponse\"G\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x38\x12\x36/v2/{parent=projects/*/instances/*/clusters/*}/backups\x12\xbb\x01\n\x0cRestoreTable\x12-.google.bigtable.admin.v2.RestoreTableRequest\x1a\x1d.google.longrunning.Operation\"]\xca\x41\x1d\n\x05Table\x12\x14RestoreTableMetadata\x82\xd3\xe4\x93\x02\x37\"2/v2/{parent=projects/*/instances/*}/tables:restore:\x01*\x12\xed\x01\n\nCopyBackup\x12+.google.bigtable.admin.v2.CopyBackupRequest\x1a\x1d.google.longrunning.Operation\"\x92\x01\xca\x41\x1c\n\x06\x42\x61\x63kup\x12\x12\x43opyBackupMetadata\xda\x41*parent,backup_id,source_backup,expire_time\x82\xd3\xe4\x93\x02@\";/v2/{parent=projects/*/instances/*/clusters/*}/backups:copy:\x01*\x12\xec\x01\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"\xa0\x01\xda\x41\x08resource\x82\xd3\xe4\x93\x02\x8e\x01\";/v2/{resource=projects/*/instances/*/tables/*}:getIamPolicy:\x01*ZL\"G/v2/{resource=projects/*/instances/*/clusters/*/backups/*}:getIamPolicy:\x01*\x12\xf3\x01\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"\xa7\x01\xda\x41\x0fresource,policy\x82\xd3\xe4\x93\x02\x8e\x01\";/v2/{resource=projects/*/instances/*/tables/*}:setIamPolicy:\x01*ZL\"G/v2/{resource=projects/*/instances/*/clusters/*/backups/*}:setIamPolicy:\x01*\x12\xa4\x02\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"\xb8\x01\xda\x41\x14resource,permissions\x82\xd3\xe4\x93\x02\x9a\x01\"A/v2/{resource=projects/*/instances/*/tables/*}:testIamPermissions:\x01*ZR\"M/v2/{resource=projects/*/instances/*/clusters/*/backups/*}:testIamPermissions:\x01*\x1a\xde\x02\xca\x41\x1c\x62igtableadmin.googleapis.com\xd2\x41\xbb\x02https://www.googleapis.com/auth/bigtable.admin,https://www.googleapis.com/auth/bigtable.admin.table,https://www.googleapis.com/auth/cloud-bigtable.admin,https://www.googleapis.com/auth/cloud-bigtable.admin.table,https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloud-platform.read-onlyB\xdf\x01\n\x1c\x63om.google.bigtable.admin.v2B\x17\x42igtableTableAdminProtoP\x01Z=google.golang.org/genproto/googleapis/bigtable/admin/v2;admin\xaa\x02\x1eGoogle.Cloud.Bigtable.Admin.V2\xca\x02\x1eGoogle\\Cloud\\Bigtable\\Admin\\V2\xea\x02\"Google::Cloud::Bigtable::Admin::V2b\x06proto3"

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
    ["google.bigtable.admin.v2.BackupInfo", "google/bigtable/admin/v2/table.proto"],
    ["google.bigtable.admin.v2.OperationProgress", "google/bigtable/admin/v2/common.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
    module Bigtable
      module Admin
        module V2
          RestoreTableRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.RestoreTableRequest").msgclass
          RestoreTableMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.RestoreTableMetadata").msgclass
          OptimizeRestoredTableMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.OptimizeRestoredTableMetadata").msgclass
          CreateTableRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateTableRequest").msgclass
          CreateTableRequest::Split = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateTableRequest.Split").msgclass
          CreateTableFromSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateTableFromSnapshotRequest").msgclass
          DropRowRangeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.DropRowRangeRequest").msgclass
          ListTablesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListTablesRequest").msgclass
          ListTablesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListTablesResponse").msgclass
          GetTableRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GetTableRequest").msgclass
          UpdateTableRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.UpdateTableRequest").msgclass
          UpdateTableMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.UpdateTableMetadata").msgclass
          DeleteTableRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.DeleteTableRequest").msgclass
          UndeleteTableRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.UndeleteTableRequest").msgclass
          UndeleteTableMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.UndeleteTableMetadata").msgclass
          ModifyColumnFamiliesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ModifyColumnFamiliesRequest").msgclass
          ModifyColumnFamiliesRequest::Modification = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ModifyColumnFamiliesRequest.Modification").msgclass
          GenerateConsistencyTokenRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GenerateConsistencyTokenRequest").msgclass
          GenerateConsistencyTokenResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GenerateConsistencyTokenResponse").msgclass
          CheckConsistencyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CheckConsistencyRequest").msgclass
          CheckConsistencyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CheckConsistencyResponse").msgclass
          SnapshotTableRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.SnapshotTableRequest").msgclass
          GetSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GetSnapshotRequest").msgclass
          ListSnapshotsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListSnapshotsRequest").msgclass
          ListSnapshotsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListSnapshotsResponse").msgclass
          DeleteSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.DeleteSnapshotRequest").msgclass
          SnapshotTableMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.SnapshotTableMetadata").msgclass
          CreateTableFromSnapshotMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateTableFromSnapshotMetadata").msgclass
          CreateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateBackupRequest").msgclass
          CreateBackupMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateBackupMetadata").msgclass
          UpdateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.UpdateBackupRequest").msgclass
          GetBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GetBackupRequest").msgclass
          DeleteBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.DeleteBackupRequest").msgclass
          ListBackupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListBackupsRequest").msgclass
          ListBackupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListBackupsResponse").msgclass
          CopyBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CopyBackupRequest").msgclass
          CopyBackupMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CopyBackupMetadata").msgclass
        end
      end
    end
  end
end
