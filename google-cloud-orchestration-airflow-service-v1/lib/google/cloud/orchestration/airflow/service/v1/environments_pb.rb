# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/orchestration/airflow/service/v1/environments.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/orchestration/airflow/service/v1/operations_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/orchestration/airflow/service/v1/environments.proto", :syntax => :proto3) do
    add_message "google.cloud.orchestration.airflow.service.v1.CreateEnvironmentRequest" do
      optional :parent, :string, 1
      optional :environment, :message, 2, "google.cloud.orchestration.airflow.service.v1.Environment"
    end
    add_message "google.cloud.orchestration.airflow.service.v1.GetEnvironmentRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.orchestration.airflow.service.v1.ListEnvironmentsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.orchestration.airflow.service.v1.ListEnvironmentsResponse" do
      repeated :environments, :message, 1, "google.cloud.orchestration.airflow.service.v1.Environment"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.orchestration.airflow.service.v1.DeleteEnvironmentRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.orchestration.airflow.service.v1.UpdateEnvironmentRequest" do
      optional :name, :string, 2
      optional :environment, :message, 1, "google.cloud.orchestration.airflow.service.v1.Environment"
      optional :update_mask, :message, 3, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.orchestration.airflow.service.v1.SaveSnapshotRequest" do
      optional :environment, :string, 1
      optional :snapshot_location, :string, 2
    end
    add_message "google.cloud.orchestration.airflow.service.v1.SaveSnapshotResponse" do
      optional :snapshot_path, :string, 1
    end
    add_message "google.cloud.orchestration.airflow.service.v1.LoadSnapshotRequest" do
      optional :environment, :string, 1
      optional :snapshot_path, :string, 2
      optional :skip_pypi_packages_installation, :bool, 3
      optional :skip_environment_variables_setting, :bool, 4
      optional :skip_airflow_overrides_setting, :bool, 5
      optional :skip_gcs_data_copying, :bool, 6
    end
    add_message "google.cloud.orchestration.airflow.service.v1.LoadSnapshotResponse" do
    end
    add_message "google.cloud.orchestration.airflow.service.v1.EnvironmentConfig" do
      optional :gke_cluster, :string, 1
      optional :dag_gcs_prefix, :string, 2
      optional :node_count, :int32, 3
      optional :software_config, :message, 4, "google.cloud.orchestration.airflow.service.v1.SoftwareConfig"
      optional :node_config, :message, 5, "google.cloud.orchestration.airflow.service.v1.NodeConfig"
      optional :private_environment_config, :message, 7, "google.cloud.orchestration.airflow.service.v1.PrivateEnvironmentConfig"
      optional :web_server_network_access_control, :message, 8, "google.cloud.orchestration.airflow.service.v1.WebServerNetworkAccessControl"
      optional :database_config, :message, 9, "google.cloud.orchestration.airflow.service.v1.DatabaseConfig"
      optional :web_server_config, :message, 10, "google.cloud.orchestration.airflow.service.v1.WebServerConfig"
      optional :encryption_config, :message, 11, "google.cloud.orchestration.airflow.service.v1.EncryptionConfig"
      optional :maintenance_window, :message, 12, "google.cloud.orchestration.airflow.service.v1.MaintenanceWindow"
      optional :workloads_config, :message, 15, "google.cloud.orchestration.airflow.service.v1.WorkloadsConfig"
      optional :environment_size, :enum, 16, "google.cloud.orchestration.airflow.service.v1.EnvironmentConfig.EnvironmentSize"
      optional :airflow_uri, :string, 6
      optional :airflow_byoid_uri, :string, 20
      optional :master_authorized_networks_config, :message, 17, "google.cloud.orchestration.airflow.service.v1.MasterAuthorizedNetworksConfig"
      optional :recovery_config, :message, 18, "google.cloud.orchestration.airflow.service.v1.RecoveryConfig"
    end
    add_enum "google.cloud.orchestration.airflow.service.v1.EnvironmentConfig.EnvironmentSize" do
      value :ENVIRONMENT_SIZE_UNSPECIFIED, 0
      value :ENVIRONMENT_SIZE_SMALL, 1
      value :ENVIRONMENT_SIZE_MEDIUM, 2
      value :ENVIRONMENT_SIZE_LARGE, 3
    end
    add_message "google.cloud.orchestration.airflow.service.v1.WebServerNetworkAccessControl" do
      repeated :allowed_ip_ranges, :message, 1, "google.cloud.orchestration.airflow.service.v1.WebServerNetworkAccessControl.AllowedIpRange"
    end
    add_message "google.cloud.orchestration.airflow.service.v1.WebServerNetworkAccessControl.AllowedIpRange" do
      optional :value, :string, 1
      optional :description, :string, 2
    end
    add_message "google.cloud.orchestration.airflow.service.v1.DatabaseConfig" do
      optional :machine_type, :string, 1
    end
    add_message "google.cloud.orchestration.airflow.service.v1.WebServerConfig" do
      optional :machine_type, :string, 1
    end
    add_message "google.cloud.orchestration.airflow.service.v1.EncryptionConfig" do
      optional :kms_key_name, :string, 1
    end
    add_message "google.cloud.orchestration.airflow.service.v1.MaintenanceWindow" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :recurrence, :string, 3
    end
    add_message "google.cloud.orchestration.airflow.service.v1.SoftwareConfig" do
      optional :image_version, :string, 1
      map :airflow_config_overrides, :string, :string, 2
      map :pypi_packages, :string, :string, 3
      map :env_variables, :string, :string, 4
      optional :python_version, :string, 6
      optional :scheduler_count, :int32, 7
    end
    add_message "google.cloud.orchestration.airflow.service.v1.IPAllocationPolicy" do
      optional :use_ip_aliases, :bool, 1
      oneof :cluster_ip_allocation do
        optional :cluster_secondary_range_name, :string, 2
        optional :cluster_ipv4_cidr_block, :string, 4
      end
      oneof :services_ip_allocation do
        optional :services_secondary_range_name, :string, 3
        optional :services_ipv4_cidr_block, :string, 5
      end
    end
    add_message "google.cloud.orchestration.airflow.service.v1.NodeConfig" do
      optional :location, :string, 1
      optional :machine_type, :string, 2
      optional :network, :string, 3
      optional :subnetwork, :string, 4
      optional :disk_size_gb, :int32, 5
      repeated :oauth_scopes, :string, 6
      optional :service_account, :string, 7
      repeated :tags, :string, 8
      optional :ip_allocation_policy, :message, 9, "google.cloud.orchestration.airflow.service.v1.IPAllocationPolicy"
      optional :enable_ip_masq_agent, :bool, 11
    end
    add_message "google.cloud.orchestration.airflow.service.v1.PrivateClusterConfig" do
      optional :enable_private_endpoint, :bool, 1
      optional :master_ipv4_cidr_block, :string, 2
      optional :master_ipv4_reserved_range, :string, 3
    end
    add_message "google.cloud.orchestration.airflow.service.v1.NetworkingConfig" do
      optional :connection_type, :enum, 1, "google.cloud.orchestration.airflow.service.v1.NetworkingConfig.ConnectionType"
    end
    add_enum "google.cloud.orchestration.airflow.service.v1.NetworkingConfig.ConnectionType" do
      value :CONNECTION_TYPE_UNSPECIFIED, 0
      value :VPC_PEERING, 1
      value :PRIVATE_SERVICE_CONNECT, 2
    end
    add_message "google.cloud.orchestration.airflow.service.v1.PrivateEnvironmentConfig" do
      optional :enable_private_environment, :bool, 1
      optional :private_cluster_config, :message, 2, "google.cloud.orchestration.airflow.service.v1.PrivateClusterConfig"
      optional :web_server_ipv4_cidr_block, :string, 3
      optional :cloud_sql_ipv4_cidr_block, :string, 4
      optional :web_server_ipv4_reserved_range, :string, 5
      optional :cloud_composer_network_ipv4_cidr_block, :string, 7
      optional :cloud_composer_network_ipv4_reserved_range, :string, 8
      optional :enable_privately_used_public_ips, :bool, 6
      optional :cloud_composer_connection_subnetwork, :string, 9
      optional :networking_config, :message, 10, "google.cloud.orchestration.airflow.service.v1.NetworkingConfig"
    end
    add_message "google.cloud.orchestration.airflow.service.v1.WorkloadsConfig" do
      optional :scheduler, :message, 1, "google.cloud.orchestration.airflow.service.v1.WorkloadsConfig.SchedulerResource"
      optional :web_server, :message, 2, "google.cloud.orchestration.airflow.service.v1.WorkloadsConfig.WebServerResource"
      optional :worker, :message, 3, "google.cloud.orchestration.airflow.service.v1.WorkloadsConfig.WorkerResource"
    end
    add_message "google.cloud.orchestration.airflow.service.v1.WorkloadsConfig.SchedulerResource" do
      optional :cpu, :float, 1
      optional :memory_gb, :float, 2
      optional :storage_gb, :float, 3
      optional :count, :int32, 4
    end
    add_message "google.cloud.orchestration.airflow.service.v1.WorkloadsConfig.WebServerResource" do
      optional :cpu, :float, 1
      optional :memory_gb, :float, 2
      optional :storage_gb, :float, 3
    end
    add_message "google.cloud.orchestration.airflow.service.v1.WorkloadsConfig.WorkerResource" do
      optional :cpu, :float, 1
      optional :memory_gb, :float, 2
      optional :storage_gb, :float, 3
      optional :min_count, :int32, 4
      optional :max_count, :int32, 5
    end
    add_message "google.cloud.orchestration.airflow.service.v1.RecoveryConfig" do
      optional :scheduled_snapshots_config, :message, 1, "google.cloud.orchestration.airflow.service.v1.ScheduledSnapshotsConfig"
    end
    add_message "google.cloud.orchestration.airflow.service.v1.ScheduledSnapshotsConfig" do
      optional :enabled, :bool, 1
      optional :snapshot_location, :string, 6
      optional :snapshot_creation_schedule, :string, 3
      optional :time_zone, :string, 5
    end
    add_message "google.cloud.orchestration.airflow.service.v1.MasterAuthorizedNetworksConfig" do
      optional :enabled, :bool, 1
      repeated :cidr_blocks, :message, 2, "google.cloud.orchestration.airflow.service.v1.MasterAuthorizedNetworksConfig.CidrBlock"
    end
    add_message "google.cloud.orchestration.airflow.service.v1.MasterAuthorizedNetworksConfig.CidrBlock" do
      optional :display_name, :string, 1
      optional :cidr_block, :string, 2
    end
    add_message "google.cloud.orchestration.airflow.service.v1.Environment" do
      optional :name, :string, 1
      optional :config, :message, 2, "google.cloud.orchestration.airflow.service.v1.EnvironmentConfig"
      optional :uuid, :string, 3
      optional :state, :enum, 4, "google.cloud.orchestration.airflow.service.v1.Environment.State"
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :update_time, :message, 6, "google.protobuf.Timestamp"
      map :labels, :string, :string, 7
    end
    add_enum "google.cloud.orchestration.airflow.service.v1.Environment.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :RUNNING, 2
      value :UPDATING, 3
      value :DELETING, 4
      value :ERROR, 5
    end
    add_message "google.cloud.orchestration.airflow.service.v1.CheckUpgradeResponse" do
      optional :build_log_uri, :string, 1
      optional :contains_pypi_modules_conflict, :enum, 4, "google.cloud.orchestration.airflow.service.v1.CheckUpgradeResponse.ConflictResult"
      optional :pypi_conflict_build_log_extract, :string, 3
      optional :image_version, :string, 5
      map :pypi_dependencies, :string, :string, 6
    end
    add_enum "google.cloud.orchestration.airflow.service.v1.CheckUpgradeResponse.ConflictResult" do
      value :CONFLICT_RESULT_UNSPECIFIED, 0
      value :CONFLICT, 1
      value :NO_CONFLICT, 2
    end
  end
end

module Google
  module Cloud
    module Orchestration
      module Airflow
        module Service
          module V1
            CreateEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.CreateEnvironmentRequest").msgclass
            GetEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.GetEnvironmentRequest").msgclass
            ListEnvironmentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.ListEnvironmentsRequest").msgclass
            ListEnvironmentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.ListEnvironmentsResponse").msgclass
            DeleteEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.DeleteEnvironmentRequest").msgclass
            UpdateEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.UpdateEnvironmentRequest").msgclass
            SaveSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.SaveSnapshotRequest").msgclass
            SaveSnapshotResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.SaveSnapshotResponse").msgclass
            LoadSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.LoadSnapshotRequest").msgclass
            LoadSnapshotResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.LoadSnapshotResponse").msgclass
            EnvironmentConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.EnvironmentConfig").msgclass
            EnvironmentConfig::EnvironmentSize = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.EnvironmentConfig.EnvironmentSize").enummodule
            WebServerNetworkAccessControl = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.WebServerNetworkAccessControl").msgclass
            WebServerNetworkAccessControl::AllowedIpRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.WebServerNetworkAccessControl.AllowedIpRange").msgclass
            DatabaseConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.DatabaseConfig").msgclass
            WebServerConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.WebServerConfig").msgclass
            EncryptionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.EncryptionConfig").msgclass
            MaintenanceWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.MaintenanceWindow").msgclass
            SoftwareConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.SoftwareConfig").msgclass
            IPAllocationPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.IPAllocationPolicy").msgclass
            NodeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.NodeConfig").msgclass
            PrivateClusterConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.PrivateClusterConfig").msgclass
            NetworkingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.NetworkingConfig").msgclass
            NetworkingConfig::ConnectionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.NetworkingConfig.ConnectionType").enummodule
            PrivateEnvironmentConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.PrivateEnvironmentConfig").msgclass
            WorkloadsConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.WorkloadsConfig").msgclass
            WorkloadsConfig::SchedulerResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.WorkloadsConfig.SchedulerResource").msgclass
            WorkloadsConfig::WebServerResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.WorkloadsConfig.WebServerResource").msgclass
            WorkloadsConfig::WorkerResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.WorkloadsConfig.WorkerResource").msgclass
            RecoveryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.RecoveryConfig").msgclass
            ScheduledSnapshotsConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.ScheduledSnapshotsConfig").msgclass
            MasterAuthorizedNetworksConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.MasterAuthorizedNetworksConfig").msgclass
            MasterAuthorizedNetworksConfig::CidrBlock = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.MasterAuthorizedNetworksConfig.CidrBlock").msgclass
            Environment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.Environment").msgclass
            Environment::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.Environment.State").enummodule
            CheckUpgradeResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.CheckUpgradeResponse").msgclass
            CheckUpgradeResponse::ConflictResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.CheckUpgradeResponse.ConflictResult").enummodule
          end
        end
      end
    end
  end
end
