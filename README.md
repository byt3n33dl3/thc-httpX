# httpX / `Attacks`

<p align="center">
<a href="https://opensource.org/licenses/AGPL"><img src="https://img.shields.io/badge/license-AGPL-_red.svg"></a>
<a href="https://github.com/projectdiscovery/httpx/releases"><img src="https://img.shields.io/github/release/projectdiscovery/httpx"></a>
</p>

# Sharp Karambit 
A CLI software for web `Domain` and `Account` Takeover.

 - Simple and modular code base making it easy to contribute.
 - Fast And fully configurable flags to probe multiple elements.
 - Supports multiple `HTTP` based probings.
 - Smart auto fallback from https to http as default. 
 - Supports hosts, URLs and CIDR as input.
 - Account Takeover
 - Handles edge cases doing retries, backoffs etc for handling WAFs.

# Features

<h1 align="center">
  <img src="https://github.com/user-attachments/assets/fd87d149-3045-4831-a545-0aa3835ac5f3" alt="httpx" width="700px">
  <br>
</h1>

# Probes

| Probes          | Default check | Probes         | Default check |
|-----------------|---------------|----------------|---------------|
| URL             | true          | IP             | true          |
| Title           | true          | CNAME          | true          |
| Status Code     | true          | Raw HTTP       | false         |
| Content Length  | true          | HTTP2          | false         |
| TLS Certificate | true          | HTTP Pipeline  | false         |
| CSP Header      | true          | Virtual host   | false         |
| Line Count      | true          | Word Count     | true          |
| Location Header | true          | CDN            | false         |
| Web Server      | true          | Paths          | false         |
| Web Socket      | true          | Ports          | false         |
| Response Time   | true          | Request Method | true          |
| Favicon Hash    | false         | Probe  Status  | false         |
| Body Hash       | true          | Header  Hash   | true          |
| Redirect chain  | false         | URL Scheme     | true          |
| JARM Hash       | false         | ASN            | false         |


```go
    __    __  __       _  __
   / /_  / /_/ /_____ | |/ /
  / __ \/ __/ __/ __ \|   / 
 / / / / /_/ /_/ /_/ /   |  
/_/ /_/\__/\__/ .___/_/|_|  
             /_/
```

# Notes

- As default, `httpx` probe with **HTTPS** scheme and fall-back to **HTTP** only if **HTTPS** is not reachable.
- The `-no-fallback` flag can be used to probe and display both **HTTP** and **HTTPS** result.
- Custom scheme for ports can be defined, for example `-ports http:443,http:80,https:8443`
- Custom resolver supports multiple protocol (**doh|tcp|udp**) in form of `protocol:resolver:port` (e.g. `udp:127.0.0.1:53`)
- The following flags should be used for specific use cases instead of running them as default with other probes:
   - `-ports`
   - `-path`
   - `-vhost`
   - `-screenshot`
   - `-csp-probe`
   - `-tls-probe`
   - `-favicon`
   - `-http2`
   - `-pipeline`
   - `-tls-impersonate`
 
# Credits / `Master`

<p align="left">
<a href="https://github.com/byt3n33dl3"><img src="https://avatars.githubusercontent.com/u/151133481?v=4" width="50" height="50" alt="" style="max-width: 100%;"></a>
<a href="https://github.com/projectdiscovery"><img src="https://avatars.githubusercontent.com/u/50994705?s=200&v=4" width="50" height="50" alt="" style="max-width: 100%;"></a>
<a href="https://github.com/apps/dependabot"><img src="https://avatars.githubusercontent.com/in/29110?v=4" width="50" height="50" alt="" style="max-width: 100%;"></a>
<a href="https://github.com/ehsandeep"><img src="https://avatars.githubusercontent.com/u/8293321?v=4" width="50" height="50" alt="" style="max-width: 100%;"></a>
</p>

>- Projectdiscovery