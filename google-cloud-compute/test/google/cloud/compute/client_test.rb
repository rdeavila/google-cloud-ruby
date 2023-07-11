# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "helper"
require "google/cloud/compute"
require "gapic/common"
require "gapic/rest"

class Google::Cloud::Compute::ClientConstructionMinitest < Minitest::Test
  def test_accelerator_types_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.accelerator_types do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::AcceleratorTypes::Rest::Client, client
    end
  end

  def test_addresses_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.addresses do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Addresses::Rest::Client, client
    end
  end

  def test_autoscalers_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.autoscalers do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Autoscalers::Rest::Client, client
    end
  end

  def test_backend_buckets_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.backend_buckets do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::BackendBuckets::Rest::Client, client
    end
  end

  def test_backend_services_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.backend_services do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::BackendServices::Rest::Client, client
    end
  end

  def test_disk_types_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.disk_types do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::DiskTypes::Rest::Client, client
    end
  end

  def test_disks_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.disks do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Disks::Rest::Client, client
    end
  end

  def test_external_vpn_gateways_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.external_vpn_gateways do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::ExternalVpnGateways::Rest::Client, client
    end
  end

  def test_firewall_policies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.firewall_policies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::FirewallPolicies::Rest::Client, client
    end
  end

  def test_firewalls_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.firewalls do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Firewalls::Rest::Client, client
    end
  end

  def test_forwarding_rules_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.forwarding_rules do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::ForwardingRules::Rest::Client, client
    end
  end

  def test_global_addresses_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.global_addresses do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::GlobalAddresses::Rest::Client, client
    end
  end

  def test_global_forwarding_rules_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.global_forwarding_rules do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::GlobalForwardingRules::Rest::Client, client
    end
  end

  def test_global_network_endpoint_groups_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.global_network_endpoint_groups do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::GlobalNetworkEndpointGroups::Rest::Client, client
    end
  end

  def test_global_operations_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.global_operations do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::GlobalOperations::Rest::Client, client
    end
  end

  def test_global_organization_operations_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.global_organization_operations do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::GlobalOrganizationOperations::Rest::Client, client
    end
  end

  def test_global_public_delegated_prefixes_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.global_public_delegated_prefixes do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::GlobalPublicDelegatedPrefixes::Rest::Client, client
    end
  end

  def test_health_checks_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.health_checks do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::HealthChecks::Rest::Client, client
    end
  end

  def test_image_family_views_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.image_family_views do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::ImageFamilyViews::Rest::Client, client
    end
  end

  def test_images_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.images do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Images::Rest::Client, client
    end
  end

  def test_instance_group_managers_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.instance_group_managers do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::InstanceGroupManagers::Rest::Client, client
    end
  end

  def test_instance_groups_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.instance_groups do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::InstanceGroups::Rest::Client, client
    end
  end

  def test_instance_templates_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.instance_templates do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::InstanceTemplates::Rest::Client, client
    end
  end

  def test_instances_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.instances do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Instances::Rest::Client, client
    end
  end

  def test_interconnect_attachments_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.interconnect_attachments do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::InterconnectAttachments::Rest::Client, client
    end
  end

  def test_interconnect_locations_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.interconnect_locations do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::InterconnectLocations::Rest::Client, client
    end
  end

  def test_interconnect_remote_locations_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.interconnect_remote_locations do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::InterconnectRemoteLocations::Rest::Client, client
    end
  end

  def test_interconnects_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.interconnects do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Interconnects::Rest::Client, client
    end
  end

  def test_license_codes_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.license_codes do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::LicenseCodes::Rest::Client, client
    end
  end

  def test_licenses_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.licenses do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Licenses::Rest::Client, client
    end
  end

  def test_machine_images_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.machine_images do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::MachineImages::Rest::Client, client
    end
  end

  def test_machine_types_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.machine_types do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::MachineTypes::Rest::Client, client
    end
  end

  def test_network_attachments_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.network_attachments do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::NetworkAttachments::Rest::Client, client
    end
  end

  def test_network_edge_security_services_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.network_edge_security_services do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::NetworkEdgeSecurityServices::Rest::Client, client
    end
  end

  def test_network_endpoint_groups_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.network_endpoint_groups do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::NetworkEndpointGroups::Rest::Client, client
    end
  end

  def test_network_firewall_policies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.network_firewall_policies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::NetworkFirewallPolicies::Rest::Client, client
    end
  end

  def test_networks_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.networks do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Networks::Rest::Client, client
    end
  end

  def test_node_groups_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.node_groups do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::NodeGroups::Rest::Client, client
    end
  end

  def test_node_templates_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.node_templates do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::NodeTemplates::Rest::Client, client
    end
  end

  def test_node_types_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.node_types do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::NodeTypes::Rest::Client, client
    end
  end

  def test_packet_mirrorings_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.packet_mirrorings do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::PacketMirrorings::Rest::Client, client
    end
  end

  def test_projects_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.projects do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Projects::Rest::Client, client
    end
  end

  def test_public_advertised_prefixes_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.public_advertised_prefixes do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::PublicAdvertisedPrefixes::Rest::Client, client
    end
  end

  def test_public_delegated_prefixes_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.public_delegated_prefixes do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::PublicDelegatedPrefixes::Rest::Client, client
    end
  end

  def test_region_autoscalers_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_autoscalers do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionAutoscalers::Rest::Client, client
    end
  end

  def test_region_backend_services_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_backend_services do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionBackendServices::Rest::Client, client
    end
  end

  def test_region_commitments_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_commitments do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionCommitments::Rest::Client, client
    end
  end

  def test_region_disk_types_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_disk_types do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionDiskTypes::Rest::Client, client
    end
  end

  def test_region_disks_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_disks do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionDisks::Rest::Client, client
    end
  end

  def test_region_health_check_services_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_health_check_services do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionHealthCheckServices::Rest::Client, client
    end
  end

  def test_region_health_checks_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_health_checks do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionHealthChecks::Rest::Client, client
    end
  end

  def test_region_instance_group_managers_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_instance_group_managers do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionInstanceGroupManagers::Rest::Client, client
    end
  end

  def test_region_instance_groups_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_instance_groups do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionInstanceGroups::Rest::Client, client
    end
  end

  def test_region_instance_templates_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_instance_templates do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionInstanceTemplates::Rest::Client, client
    end
  end

  def test_region_instances_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_instances do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionInstances::Rest::Client, client
    end
  end

  def test_region_network_endpoint_groups_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_network_endpoint_groups do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionNetworkEndpointGroups::Rest::Client, client
    end
  end

  def test_region_network_firewall_policies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_network_firewall_policies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionNetworkFirewallPolicies::Rest::Client, client
    end
  end

  def test_region_notification_endpoints_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_notification_endpoints do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionNotificationEndpoints::Rest::Client, client
    end
  end

  def test_region_operations_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_operations do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionOperations::Rest::Client, client
    end
  end

  def test_region_security_policies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_security_policies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionSecurityPolicies::Rest::Client, client
    end
  end

  def test_region_ssl_certificates_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_ssl_certificates do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionSslCertificates::Rest::Client, client
    end
  end

  def test_region_ssl_policies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_ssl_policies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionSslPolicies::Rest::Client, client
    end
  end

  def test_region_target_http_proxies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_target_http_proxies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionTargetHttpProxies::Rest::Client, client
    end
  end

  def test_region_target_https_proxies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_target_https_proxies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionTargetHttpsProxies::Rest::Client, client
    end
  end

  def test_region_target_tcp_proxies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_target_tcp_proxies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionTargetTcpProxies::Rest::Client, client
    end
  end

  def test_region_url_maps_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.region_url_maps do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::RegionUrlMaps::Rest::Client, client
    end
  end

  def test_regions_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.regions do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Regions::Rest::Client, client
    end
  end

  def test_reservations_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.reservations do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Reservations::Rest::Client, client
    end
  end

  def test_resource_policies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.resource_policies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::ResourcePolicies::Rest::Client, client
    end
  end

  def test_routers_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.routers do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Routers::Rest::Client, client
    end
  end

  def test_routes_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.routes do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Routes::Rest::Client, client
    end
  end

  def test_security_policies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.security_policies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client, client
    end
  end

  def test_service_attachments_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.service_attachments do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::ServiceAttachments::Rest::Client, client
    end
  end

  def test_snapshots_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.snapshots do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Snapshots::Rest::Client, client
    end
  end

  def test_ssl_certificates_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.ssl_certificates do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::SslCertificates::Rest::Client, client
    end
  end

  def test_ssl_policies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.ssl_policies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::SslPolicies::Rest::Client, client
    end
  end

  def test_subnetworks_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.subnetworks do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Subnetworks::Rest::Client, client
    end
  end

  def test_target_grpc_proxies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.target_grpc_proxies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::TargetGrpcProxies::Rest::Client, client
    end
  end

  def test_target_http_proxies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.target_http_proxies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::TargetHttpProxies::Rest::Client, client
    end
  end

  def test_target_https_proxies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.target_https_proxies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::TargetHttpsProxies::Rest::Client, client
    end
  end

  def test_target_instances_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.target_instances do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::TargetInstances::Rest::Client, client
    end
  end

  def test_target_pools_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.target_pools do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::TargetPools::Rest::Client, client
    end
  end

  def test_target_ssl_proxies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.target_ssl_proxies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::TargetSslProxies::Rest::Client, client
    end
  end

  def test_target_tcp_proxies_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.target_tcp_proxies do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::TargetTcpProxies::Rest::Client, client
    end
  end

  def test_target_vpn_gateways_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.target_vpn_gateways do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::TargetVpnGateways::Rest::Client, client
    end
  end

  def test_url_maps_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.url_maps do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::UrlMaps::Rest::Client, client
    end
  end

  def test_vpn_gateways_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.vpn_gateways do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::VpnGateways::Rest::Client, client
    end
  end

  def test_vpn_tunnels_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.vpn_tunnels do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::VpnTunnels::Rest::Client, client
    end
  end

  def test_zone_operations_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.zone_operations do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::ZoneOperations::Rest::Client, client
    end
  end

  def test_zones_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Compute.zones do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Compute::V1::Zones::Rest::Client, client
    end
  end
end
