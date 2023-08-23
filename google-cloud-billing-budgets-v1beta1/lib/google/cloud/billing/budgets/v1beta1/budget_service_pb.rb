# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/billing/budgets/v1beta1/budget_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/billing/budgets/v1beta1/budget_model_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n9google/cloud/billing/budgets/v1beta1/budget_service.proto\x12$google.cloud.billing.budgets.v1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x37google/cloud/billing/budgets/v1beta1/budget_model.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\x96\x01\n\x13\x43reateBudgetRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$billingbudgets.googleapis.com/Budget\x12\x41\n\x06\x62udget\x18\x02 \x01(\x0b\x32,.google.cloud.billing.budgets.v1beta1.BudgetB\x03\xe0\x41\x02\"\x8e\x01\n\x13UpdateBudgetRequest\x12\x41\n\x06\x62udget\x18\x01 \x01(\x0b\x32,.google.cloud.billing.budgets.v1beta1.BudgetB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\"N\n\x10GetBudgetRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$billingbudgets.googleapis.com/Budget\"\x97\x01\n\x12ListBudgetsRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$billingbudgets.googleapis.com/Budget\x12\x12\n\x05scope\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"m\n\x13ListBudgetsResponse\x12=\n\x07\x62udgets\x18\x01 \x03(\x0b\x32,.google.cloud.billing.budgets.v1beta1.Budget\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"Q\n\x13\x44\x65leteBudgetRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$billingbudgets.googleapis.com/Budget2\xf7\x07\n\rBudgetService\x12\xaf\x01\n\x0c\x43reateBudget\x12\x39.google.cloud.billing.budgets.v1beta1.CreateBudgetRequest\x1a,.google.cloud.billing.budgets.v1beta1.Budget\"6\x82\xd3\xe4\x93\x02\x30\"+/v1beta1/{parent=billingAccounts/*}/budgets:\x01*\x12\xb6\x01\n\x0cUpdateBudget\x12\x39.google.cloud.billing.budgets.v1beta1.UpdateBudgetRequest\x1a,.google.cloud.billing.budgets.v1beta1.Budget\"=\x82\xd3\xe4\x93\x02\x37\x32\x32/v1beta1/{budget.name=billingAccounts/*/budgets/*}:\x01*\x12\xa6\x01\n\tGetBudget\x12\x36.google.cloud.billing.budgets.v1beta1.GetBudgetRequest\x1a,.google.cloud.billing.budgets.v1beta1.Budget\"3\x82\xd3\xe4\x93\x02-\x12+/v1beta1/{name=billingAccounts/*/budgets/*}\x12\xb7\x01\n\x0bListBudgets\x12\x38.google.cloud.billing.budgets.v1beta1.ListBudgetsRequest\x1a\x39.google.cloud.billing.budgets.v1beta1.ListBudgetsResponse\"3\x82\xd3\xe4\x93\x02-\x12+/v1beta1/{parent=billingAccounts/*}/budgets\x12\x96\x01\n\x0c\x44\x65leteBudget\x12\x39.google.cloud.billing.budgets.v1beta1.DeleteBudgetRequest\x1a\x16.google.protobuf.Empty\"3\x82\xd3\xe4\x93\x02-*+/v1beta1/{name=billingAccounts/*/budgets/*}\x1a\x7f\xca\x41\x1d\x62illingbudgets.googleapis.com\xd2\x41\\https://www.googleapis.com/auth/cloud-billing,https://www.googleapis.com/auth/cloud-platformBp\n(com.google.cloud.billing.budgets.v1beta1P\x01ZBcloud.google.com/go/billing/budgets/apiv1beta1/budgetspb;budgetspbb\x06proto3"

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
    ["google.cloud.billing.budgets.v1beta1.Budget", "google/cloud/billing/budgets/v1beta1/budget_model.proto"],
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
    module Billing
      module Budgets
        module V1beta1
          CreateBudgetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.CreateBudgetRequest").msgclass
          UpdateBudgetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.UpdateBudgetRequest").msgclass
          GetBudgetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.GetBudgetRequest").msgclass
          ListBudgetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.ListBudgetsRequest").msgclass
          ListBudgetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.ListBudgetsResponse").msgclass
          DeleteBudgetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.DeleteBudgetRequest").msgclass
        end
      end
    end
  end
end
