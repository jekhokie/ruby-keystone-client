require "spec_helper"
require "keystone/v2_0/manager/tenant"

describe "Keystone V2.0 tenant manager" do
  let(:auth_url)      { "http://some.host:35357/v2.0/" }
  let(:tenant_client) { Keystone::V2_0::Manager::Tenant.new(auth_url) }

  it "returns an instance when initialized with a URL" do
    expect(tenant_client).to be_instance_of(Keystone::V2_0::Manager::Tenant)
  end

  it "sets the url_endpoint on create" do
    expect(tenant_client.url_endpoint).to be_truthy
  end
end
