# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Dataproc
      module V1
        # Runtime configuration for a workload.
        # @!attribute [rw] version
        #   @return [::String]
        #     Optional. Version of the batch runtime.
        # @!attribute [rw] container_image
        #   @return [::String]
        #     Optional. Optional custom container image for the job runtime environment.
        #     If not specified, a default container image will be used.
        # @!attribute [rw] properties
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. A mapping of property names to values, which are used to
        #     configure workload execution.
        # @!attribute [rw] repository_config
        #   @return [::Google::Cloud::Dataproc::V1::RepositoryConfig]
        #     Optional. Dependency repository configuration.
        class RuntimeConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class PropertiesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Environment configuration for a workload.
        # @!attribute [rw] execution_config
        #   @return [::Google::Cloud::Dataproc::V1::ExecutionConfig]
        #     Optional. Execution configuration for a workload.
        # @!attribute [rw] peripherals_config
        #   @return [::Google::Cloud::Dataproc::V1::PeripheralsConfig]
        #     Optional. Peripherals configuration that workload has access to.
        class EnvironmentConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Execution configuration for a workload.
        # @!attribute [rw] service_account
        #   @return [::String]
        #     Optional. Service account that used to execute workload.
        # @!attribute [rw] network_uri
        #   @return [::String]
        #     Optional. Network URI to connect workload to.
        # @!attribute [rw] subnetwork_uri
        #   @return [::String]
        #     Optional. Subnetwork URI to connect workload to.
        # @!attribute [rw] network_tags
        #   @return [::Array<::String>]
        #     Optional. Tags used for network traffic control.
        # @!attribute [rw] kms_key
        #   @return [::String]
        #     Optional. The Cloud KMS key to use for encryption.
        # @!attribute [rw] idle_ttl
        #   @return [::Google::Protobuf::Duration]
        #     Optional. Applies to sessions only. The duration to keep the session alive
        #     while it's idling. Exceeding this threshold causes the session to
        #     terminate. This field cannot be set on a batch workload. Minimum value is
        #     10 minutes; maximum value is 14 days (see JSON representation of
        #     [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json)).
        #     Defaults to 1 hour if not set.
        #     If both `ttl` and `idle_ttl` are specified for an interactive session,
        #     the conditions are treated as `OR` conditions: the workload will be
        #     terminated when it has been idle for `idle_ttl` or when `ttl` has been
        #     exceeded, whichever occurs first.
        # @!attribute [rw] ttl
        #   @return [::Google::Protobuf::Duration]
        #     Optional. The duration after which the workload will be terminated,
        #     specified as the JSON representation for
        #     [Duration](https://protobuf.dev/programming-guides/proto3/#json).
        #     When the workload exceeds this duration, it will be unconditionally
        #     terminated without waiting for ongoing work to finish. If `ttl` is not
        #     specified for a batch workload, the workload will be allowed to run until
        #     it exits naturally (or run forever without exiting). If `ttl` is not
        #     specified for an interactive session, it defaults to 24 hours. If `ttl` is
        #     not specified for a batch that uses 2.1+ runtime version, it defaults to 4
        #     hours. Minimum value is 10 minutes; maximum value is 14 days. If both `ttl`
        #     and `idle_ttl` are specified (for an interactive session), the conditions
        #     are treated as `OR` conditions: the workload will be terminated when it has
        #     been idle for `idle_ttl` or when `ttl` has been exceeded, whichever occurs
        #     first.
        # @!attribute [rw] staging_bucket
        #   @return [::String]
        #     Optional. A Cloud Storage bucket used to stage workload dependencies,
        #     config files, and store workload output and other ephemeral data, such as
        #     Spark history files. If you do not specify a staging bucket, Cloud Dataproc
        #     will determine a Cloud Storage location according to the region where your
        #     workload is running, and then create and manage project-level, per-location
        #     staging and temporary buckets.
        #     **This field requires a Cloud Storage bucket name, not a `gs://...` URI to
        #     a Cloud Storage bucket.**
        class ExecutionConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Spark History Server configuration for the workload.
        # @!attribute [rw] dataproc_cluster
        #   @return [::String]
        #     Optional. Resource name of an existing Dataproc Cluster to act as a Spark
        #     History Server for the workload.
        #
        #     Example:
        #
        #     * `projects/[project_id]/regions/[region]/clusters/[cluster_name]`
        class SparkHistoryServerConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Auxiliary services configuration for a workload.
        # @!attribute [rw] metastore_service
        #   @return [::String]
        #     Optional. Resource name of an existing Dataproc Metastore service.
        #
        #     Example:
        #
        #     * `projects/[project_id]/locations/[region]/services/[service_id]`
        # @!attribute [rw] spark_history_server_config
        #   @return [::Google::Cloud::Dataproc::V1::SparkHistoryServerConfig]
        #     Optional. The Spark History Server configuration for the workload.
        class PeripheralsConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime information about workload execution.
        # @!attribute [r] endpoints
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Output only. Map of remote access endpoints (such as web interfaces and
        #     APIs) to their URIs.
        # @!attribute [r] output_uri
        #   @return [::String]
        #     Output only. A URI pointing to the location of the stdout and stderr of the
        #     workload.
        # @!attribute [r] diagnostic_output_uri
        #   @return [::String]
        #     Output only. A URI pointing to the location of the diagnostics tarball.
        # @!attribute [r] approximate_usage
        #   @return [::Google::Cloud::Dataproc::V1::UsageMetrics]
        #     Output only. Approximate workload resource usage, calculated when
        #     the workload completes (see [Dataproc Serverless pricing]
        #     (https://cloud.google.com/dataproc-serverless/pricing)).
        #
        #     **Note:** This metric calculation may change in the future, for
        #     example, to capture cumulative workload resource
        #     consumption during workload execution (see the
        #     [Dataproc Serverless release notes]
        #     (https://cloud.google.com/dataproc-serverless/docs/release-notes)
        #     for announcements, changes, fixes
        #     and other Dataproc developments).
        # @!attribute [r] current_usage
        #   @return [::Google::Cloud::Dataproc::V1::UsageSnapshot]
        #     Output only. Snapshot of current workload resource usage.
        class RuntimeInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class EndpointsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Usage metrics represent approximate total resources consumed by a workload.
        # @!attribute [rw] milli_dcu_seconds
        #   @return [::Integer]
        #     Optional. DCU (Dataproc Compute Units) usage in (`milliDCU` x `seconds`)
        #     (see [Dataproc Serverless pricing]
        #     (https://cloud.google.com/dataproc-serverless/pricing)).
        # @!attribute [rw] shuffle_storage_gb_seconds
        #   @return [::Integer]
        #     Optional. Shuffle storage usage in (`GB` x `seconds`) (see
        #     [Dataproc Serverless pricing]
        #     (https://cloud.google.com/dataproc-serverless/pricing)).
        # @!attribute [rw] milli_accelerator_seconds
        #   @return [::Integer]
        #     Optional. Accelerator usage in (`milliAccelerator` x `seconds`) (see
        #     [Dataproc Serverless pricing]
        #     (https://cloud.google.com/dataproc-serverless/pricing)).
        # @!attribute [rw] accelerator_type
        #   @return [::String]
        #     Optional. Accelerator type being used, if any
        class UsageMetrics
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The usage snapshot represents the resources consumed by a workload at a
        # specified time.
        # @!attribute [rw] milli_dcu
        #   @return [::Integer]
        #     Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) (see
        #     [Dataproc Serverless pricing]
        #     (https://cloud.google.com/dataproc-serverless/pricing)).
        # @!attribute [rw] shuffle_storage_gb
        #   @return [::Integer]
        #     Optional. Shuffle Storage in gigabytes (GB). (see [Dataproc Serverless
        #     pricing] (https://cloud.google.com/dataproc-serverless/pricing))
        # @!attribute [rw] milli_dcu_premium
        #   @return [::Integer]
        #     Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) charged at
        #     premium tier (see [Dataproc Serverless pricing]
        #     (https://cloud.google.com/dataproc-serverless/pricing)).
        # @!attribute [rw] shuffle_storage_gb_premium
        #   @return [::Integer]
        #     Optional. Shuffle Storage in gigabytes (GB) charged at premium tier. (see
        #     [Dataproc Serverless pricing]
        #     (https://cloud.google.com/dataproc-serverless/pricing))
        # @!attribute [rw] milli_accelerator
        #   @return [::Integer]
        #     Optional. Milli (one-thousandth) accelerator. (see [Dataproc
        #     Serverless pricing] (https://cloud.google.com/dataproc-serverless/pricing))
        # @!attribute [rw] accelerator_type
        #   @return [::String]
        #     Optional. Accelerator type being used, if any
        # @!attribute [rw] snapshot_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. The timestamp of the usage snapshot.
        class UsageSnapshot
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The cluster's GKE config.
        # @!attribute [rw] gke_cluster_target
        #   @return [::String]
        #     Optional. A target GKE cluster to deploy to. It must be in the same project
        #     and region as the Dataproc cluster (the GKE cluster can be zonal or
        #     regional). Format:
        #     'projects/\\{project}/locations/\\{location}/clusters/\\{cluster_id}'
        # @!attribute [rw] node_pool_target
        #   @return [::Array<::Google::Cloud::Dataproc::V1::GkeNodePoolTarget>]
        #     Optional. GKE node pools where workloads will be scheduled. At least one
        #     node pool must be assigned the `DEFAULT`
        #     {::Google::Cloud::Dataproc::V1::GkeNodePoolTarget::Role GkeNodePoolTarget.Role}.
        #     If a `GkeNodePoolTarget` is not specified, Dataproc constructs a `DEFAULT`
        #     `GkeNodePoolTarget`. Each role can be given to only one
        #     `GkeNodePoolTarget`. All node pools must have the same location settings.
        class GkeClusterConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The configuration for running the Dataproc cluster on Kubernetes.
        # @!attribute [rw] kubernetes_namespace
        #   @return [::String]
        #     Optional. A namespace within the Kubernetes cluster to deploy into. If this
        #     namespace does not exist, it is created. If it exists, Dataproc verifies
        #     that another Dataproc VirtualCluster is not installed into it. If not
        #     specified, the name of the Dataproc Cluster is used.
        # @!attribute [rw] gke_cluster_config
        #   @return [::Google::Cloud::Dataproc::V1::GkeClusterConfig]
        #     Required. The configuration for running the Dataproc cluster on GKE.
        # @!attribute [rw] kubernetes_software_config
        #   @return [::Google::Cloud::Dataproc::V1::KubernetesSoftwareConfig]
        #     Optional. The software configuration for this Dataproc cluster running on
        #     Kubernetes.
        class KubernetesClusterConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The software configuration for this Dataproc cluster running on Kubernetes.
        # @!attribute [rw] component_version
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The components that should be installed in this Dataproc cluster. The key
        #     must be a string from the KubernetesComponent enumeration. The value is
        #     the version of the software to be installed.
        #     At least one entry must be specified.
        # @!attribute [rw] properties
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The properties to set on daemon config files.
        #
        #     Property keys are specified in `prefix:property` format, for example
        #     `spark:spark.kubernetes.container.image`. The following are supported
        #     prefixes and their mappings:
        #
        #     * spark:  `spark-defaults.conf`
        #
        #     For more information, see [Cluster
        #     properties](https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
        class KubernetesSoftwareConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class ComponentVersionEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class PropertiesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # GKE node pools that Dataproc workloads run on.
        # @!attribute [rw] node_pool
        #   @return [::String]
        #     Required. The target GKE node pool.
        #     Format:
        #     'projects/\\{project}/locations/\\{location}/clusters/\\{cluster}/nodePools/\\{node_pool}'
        # @!attribute [rw] roles
        #   @return [::Array<::Google::Cloud::Dataproc::V1::GkeNodePoolTarget::Role>]
        #     Required. The roles associated with the GKE node pool.
        # @!attribute [rw] node_pool_config
        #   @return [::Google::Cloud::Dataproc::V1::GkeNodePoolConfig]
        #     Input only. The configuration for the GKE node pool.
        #
        #     If specified, Dataproc attempts to create a node pool with the
        #     specified shape. If one with the same name already exists, it is
        #     verified against all specified fields. If a field differs, the
        #     virtual cluster creation will fail.
        #
        #     If omitted, any node pool with the specified name is used. If a
        #     node pool with the specified name does not exist, Dataproc create a
        #     node pool with default values.
        #
        #     This is an input only field. It will not be returned by the API.
        class GkeNodePoolTarget
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # `Role` specifies the tasks that will run on the node pool. Roles can be
          # specific to workloads. Exactly one
          # {::Google::Cloud::Dataproc::V1::GkeNodePoolTarget GkeNodePoolTarget} within the
          # virtual cluster must have the `DEFAULT` role, which is used to run all
          # workloads that are not associated with a node pool.
          module Role
            # Role is unspecified.
            ROLE_UNSPECIFIED = 0

            # At least one node pool must have the `DEFAULT` role.
            # Work assigned to a role that is not associated with a node pool
            # is assigned to the node pool with the `DEFAULT` role. For example,
            # work assigned to the `CONTROLLER` role will be assigned to the node pool
            # with the `DEFAULT` role if no node pool has the `CONTROLLER` role.
            DEFAULT = 1

            # Run work associated with the Dataproc control plane (for example,
            # controllers and webhooks). Very low resource requirements.
            CONTROLLER = 2

            # Run work associated with a Spark driver of a job.
            SPARK_DRIVER = 3

            # Run work associated with a Spark executor of a job.
            SPARK_EXECUTOR = 4
          end
        end

        # The configuration of a GKE node pool used by a [Dataproc-on-GKE
        # cluster](https://cloud.google.com/dataproc/docs/concepts/jobs/dataproc-gke#create-a-dataproc-on-gke-cluster).
        # @!attribute [rw] config
        #   @return [::Google::Cloud::Dataproc::V1::GkeNodePoolConfig::GkeNodeConfig]
        #     Optional. The node pool configuration.
        # @!attribute [rw] locations
        #   @return [::Array<::String>]
        #     Optional. The list of Compute Engine
        #     [zones](https://cloud.google.com/compute/docs/zones#available) where
        #     node pool nodes associated with a Dataproc on GKE virtual cluster
        #     will be located.
        #
        #     **Note:** All node pools associated with a virtual cluster
        #     must be located in the same region as the virtual cluster, and they must
        #     be located in the same zone within that region.
        #
        #     If a location is not specified during node pool creation, Dataproc on GKE
        #     will choose the zone.
        # @!attribute [rw] autoscaling
        #   @return [::Google::Cloud::Dataproc::V1::GkeNodePoolConfig::GkeNodePoolAutoscalingConfig]
        #     Optional. The autoscaler configuration for this node pool. The autoscaler
        #     is enabled only when a valid configuration is present.
        class GkeNodePoolConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Parameters that describe cluster nodes.
          # @!attribute [rw] machine_type
          #   @return [::String]
          #     Optional. The name of a Compute Engine [machine
          #     type](https://cloud.google.com/compute/docs/machine-types).
          # @!attribute [rw] local_ssd_count
          #   @return [::Integer]
          #     Optional. The number of local SSD disks to attach to the node, which is
          #     limited by the maximum number of disks allowable per zone (see [Adding
          #     Local SSDs](https://cloud.google.com/compute/docs/disks/local-ssd)).
          # @!attribute [rw] preemptible
          #   @return [::Boolean]
          #     Optional. Whether the nodes are created as legacy [preemptible VM
          #     instances] (https://cloud.google.com/compute/docs/instances/preemptible).
          #     Also see
          #     {::Google::Cloud::Dataproc::V1::GkeNodePoolConfig::GkeNodeConfig#spot Spot}
          #     VMs, preemptible VM instances without a maximum lifetime. Legacy and Spot
          #     preemptible nodes cannot be used in a node pool with the `CONTROLLER`
          #     [role]
          #     (/dataproc/docs/reference/rest/v1/projects.regions.clusters#role)
          #     or in the DEFAULT node pool if the CONTROLLER role is not assigned (the
          #     DEFAULT node pool will assume the CONTROLLER role).
          # @!attribute [rw] accelerators
          #   @return [::Array<::Google::Cloud::Dataproc::V1::GkeNodePoolConfig::GkeNodePoolAcceleratorConfig>]
          #     Optional. A list of [hardware
          #     accelerators](https://cloud.google.com/compute/docs/gpus) to attach to
          #     each node.
          # @!attribute [rw] min_cpu_platform
          #   @return [::String]
          #     Optional. [Minimum CPU
          #     platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
          #     to be used by this instance. The instance may be scheduled on the
          #     specified or a newer CPU platform. Specify the friendly names of CPU
          #     platforms, such as "Intel Haswell"` or Intel Sandy Bridge".
          # @!attribute [rw] boot_disk_kms_key
          #   @return [::String]
          #     Optional. The [Customer Managed Encryption Key (CMEK)]
          #     (https://cloud.google.com/kubernetes-engine/docs/how-to/using-cmek)
          #     used to encrypt the boot disk attached to each node in the node pool.
          #     Specify the key using the following format:
          #     <code>projects/<var>KEY_PROJECT_ID</var>/locations/<var>LOCATION</var>/keyRings/<var>RING_NAME</var>/cryptoKeys/<var>KEY_NAME</var></code>.
          # @!attribute [rw] spot
          #   @return [::Boolean]
          #     Optional. Whether the nodes are created as [Spot VM instances]
          #     (https://cloud.google.com/compute/docs/instances/spot).
          #     Spot VMs are the latest update to legacy
          #     [preemptible
          #     VMs][google.cloud.dataproc.v1.GkeNodePoolConfig.GkeNodeConfig.preemptible].
          #     Spot VMs do not have a maximum lifetime. Legacy and Spot preemptible
          #     nodes cannot be used in a node pool with the `CONTROLLER`
          #     [role](/dataproc/docs/reference/rest/v1/projects.regions.clusters#role)
          #     or in the DEFAULT node pool if the CONTROLLER role is not assigned (the
          #     DEFAULT node pool will assume the CONTROLLER role).
          class GkeNodeConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A GkeNodeConfigAcceleratorConfig represents a Hardware Accelerator request
          # for a node pool.
          # @!attribute [rw] accelerator_count
          #   @return [::Integer]
          #     The number of accelerator cards exposed to an instance.
          # @!attribute [rw] accelerator_type
          #   @return [::String]
          #     The accelerator type resource namename (see GPUs on Compute Engine).
          # @!attribute [rw] gpu_partition_size
          #   @return [::String]
          #     Size of partitions to create on the GPU. Valid values are described in
          #     the NVIDIA [mig user
          #     guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
          class GkeNodePoolAcceleratorConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # GkeNodePoolAutoscaling contains information the cluster autoscaler needs to
          # adjust the size of the node pool to the current cluster usage.
          # @!attribute [rw] min_node_count
          #   @return [::Integer]
          #     The minimum number of nodes in the node pool. Must be >= 0 and <=
          #     max_node_count.
          # @!attribute [rw] max_node_count
          #   @return [::Integer]
          #     The maximum number of nodes in the node pool. Must be >= min_node_count,
          #     and must be > 0.
          #     **Note:** Quota must be sufficient to scale up the cluster.
          class GkeNodePoolAutoscalingConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Configuration for dependency repositories
        # @!attribute [rw] pypi_repository_config
        #   @return [::Google::Cloud::Dataproc::V1::PyPiRepositoryConfig]
        #     Optional. Configuration for PyPi repository.
        class RepositoryConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for PyPi repository
        # @!attribute [rw] pypi_repository
        #   @return [::String]
        #     Optional. PyPi repository address
        class PyPiRepositoryConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Cluster components that can be activated.
        module Component
          # Unspecified component. Specifying this will cause Cluster creation to fail.
          COMPONENT_UNSPECIFIED = 0

          # The Anaconda python distribution. The Anaconda component is not supported
          # in the Dataproc [2.0 image]
          # (/https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-release-2.0).
          # The 2.0 image is pre-installed with Miniconda.
          ANACONDA = 5

          # Docker
          DOCKER = 13

          # The Druid query engine. (alpha)
          DRUID = 9

          # Flink
          FLINK = 14

          # HBase. (beta)
          HBASE = 11

          # The Hive Web HCatalog (the REST service for accessing HCatalog).
          HIVE_WEBHCAT = 3

          # Hudi.
          HUDI = 18

          # The Jupyter Notebook.
          JUPYTER = 1

          # The Presto query engine.
          PRESTO = 6

          # The Trino query engine.
          TRINO = 17

          # The Ranger service.
          RANGER = 12

          # The Solr service.
          SOLR = 10

          # The Zeppelin notebook.
          ZEPPELIN = 4

          # The Zookeeper service.
          ZOOKEEPER = 8
        end

        # Actions in response to failure of a resource associated with a cluster.
        module FailureAction
          # When FailureAction is unspecified, failure action defaults to NO_ACTION.
          FAILURE_ACTION_UNSPECIFIED = 0

          # Take no action on failure to create a cluster resource. NO_ACTION is the
          # default.
          NO_ACTION = 1

          # Delete the failed cluster resource.
          DELETE = 2
        end
      end
    end
  end
end
