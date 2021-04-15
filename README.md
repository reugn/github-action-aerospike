# github-action-aerospike
[![YAML Lint](https://github.com/reugn/github-action-aerospike/actions/workflows/yaml-lint.yml/badge.svg)](https://github.com/reugn/github-action-aerospike/actions/workflows/yaml-lint.yml)

This GitHub Action sets up an [Aerospike](https://www.aerospike.com/) database.

## Inputs
| Name             | Required | Description                    | Default |
| ---------------- | -------- | ------------------------------ | ------- |
| port             | false    | Aerospike port.                | 3000    |
| server-version   | false    | Aerospike server version.      | latest  |
| config-file      | false    | Aerospike [configuration](https://www.aerospike.com/docs/reference/configuration/) file.  | |
| feature-key-file <sup>[1](#key)</sup> | false    | Aerospike EE [feature key](https://www.aerospike.com/lp/try-now/) file. | |

<sup name="key">1</sup> Specify to start an Aerospike server Enterprise Edition (should be in the same directory with `config-file`).

## Usage example
```yaml
- name: Set up Aerospike Database
  uses: reugn/github-action-aerospike@v1
  with:
    port: 3300
    config-file: '.github/aerospike/aerospike.conf'
    feature-key-file: '.github/aerospike/features.conf'
```
