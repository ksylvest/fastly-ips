# Fastly IPs

[![LICENSE](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/ksylvest/fastly-ips/blob/main/LICENSE)
[![RubyGems](https://img.shields.io/gem/v/fastly-ips)](https://rubygems.org/gems/fastly-ips)
[![GitHub](https://img.shields.io/badge/github-repo-blue.svg)](https://github.com/ksylvest/fastly-ips)
[![Yard](https://img.shields.io/badge/docs-site-blue.svg)](https://fastly-ips.ksylvest.com)
[![CircleCI](https://img.shields.io/circleci/build/github/ksylvest/fastly-ips)](https://circleci.com/gh/ksylvest/fastly-ips)

FastlyIPs assigns the proxy [IPv4](https://www.fastly.com/ips-v4/) and [IPv6](https://www.fastly.com/ips-v6/) fastly IPs allowing `request.remote_ip` to return back the actual IP instead of a fastly datacenter IP.

## Installation

Configure the fastly IPs gem for any environment needed:

```ruby
gem "fastly-ips"
```

```bash
$ bundle
```

## Usage

Use `request.remote_ip` instead of `request.ip` to properly retrieve IPs:

```ruby
request.remote_ip
```
