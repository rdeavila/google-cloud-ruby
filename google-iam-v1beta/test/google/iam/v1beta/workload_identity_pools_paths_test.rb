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

require "helper"

require "gapic/grpc/service_stub"

require "google/iam/v1beta/workload_identity_pools"

class ::Google::Iam::V1beta::WorkloadIdentityPools::ClientPathsTest < Minitest::Test
  def test_workload_identity_pool_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.workload_identity_pool_path project: "value0", location: "value1", workload_identity_pool: "value2"
      assert_equal "projects/value0/locations/value1/workloadIdentityPools/value2", path
    end
  end

  def test_workload_identity_pool_provider_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Iam::V1beta::WorkloadIdentityPools::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.workload_identity_pool_provider_path project: "value0", location: "value1", workload_identity_pool: "value2", workload_identity_pool_provider: "value3"
      assert_equal "projects/value0/locations/value1/workloadIdentityPools/value2/providers/value3", path
    end
  end
end
