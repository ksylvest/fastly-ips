# frozen_string_literal: true

require 'bundler/setup'

require 'bundler/gem_tasks'

namespace :fastly do
  desc 'Dump current Fastly IP ranges (v4 and v6)'
  task :ips do
    require 'fastly'

    api = Fastly::PublicIpListApi.new
    result = api.list_fastly_ips

    puts '=== IPv4 ==='
    result.addresses.each do |address|
      puts address
    end

    puts

    puts '=== IPv6 ==='
    result.ipv6_addresses.each do |address|
      puts address
    end
  end
end
