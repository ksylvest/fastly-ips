# frozen_string_literal: true

module Fastly
  module IPs
    # Configure trusted_proxies with Fastly IPv4 and IPv6 addresses.
    class Railtie < ::Rails::Railtie
      initializer 'fastly-ips.configure_rails_initialization' do |app|
        app.config.action_dispatch.trusted_proxies = ActionDispatch::RemoteIp::TRUSTED_PROXIES + ::Fastly::IPs::IPS
      end
    end
  end
end
