# github-action-aerospike
[![YAML Lint](https://github.com/reugn/github-action-aerospike/actions/workflows/yaml-lint.yml/badge.svg)](https://github.com/reugn/github-action-aerospike/actions/workflows/yaml-lint.yml)

This GitHub Action sets up an [Aerospike](https://www.aerospike.com/) database.

## Inputs
| Name             | Required | Description                    | Default |
| ---------------- | -------- | ------------------------------ | ------- |
| port             | false    | Aerospike 'service' port, which handles client requests and responses. | 3000 |
| server-version   | false    | Aerospike server version.      | latest  |
| config-file      | false    | Aerospike [configuration](https://www.aerospike.com/docs/operations/configure/index.html) file.  | |
| feature-key-file <sup>[1](#key)</sup> | false    | Aerospike EE [feature key](https://www.aerospike.com/docs/operations/configure/feature-key/index.html) file. | |

<sup name="key">1</sup> Specify to start Aerospike Server Enterprise Edition (should be in the same directory with `config-file`).
Anyone can [sign up](https://www.aerospike.com/lp/try-now/) to get an evaluation feature key file for a full-featured, single-node Aerospike Enterprise Edition.

## Usage examples

### Aerospike Community Edition
Set up Aerospike Community Edition Server with the default configuration
```yaml
- name: Set up Aerospike Database
  uses: reugn/github-action-aerospike@v1
```

### Aerospike Enterprise Edition
Set up Aerospike Enterprise Edition Server by specifying the port, the server configuration and the feature key files
```yaml
- name: Set up Aerospike Database
  uses: reugn/github-action-aerospike@v1
  with:
    port: 3300
    config-file: '.github/aerospike/aerospike.conf'
    feature-key-file: '.github/aerospike/features.conf'
```
