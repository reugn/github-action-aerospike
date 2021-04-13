# github-action-aerospike
This GitHub Action sets up an Aerospike database.

## Inputs
| Name             | Required | Description                    | Default |
| ---------------- | -------- | ------------------------------ | ------- |
| port             | false    | Aerospike port.                | 3000    |
| server-version   | false    | Aerospike server version.      | latest  |
| config-file      | false    | Aerospike [configuration](https://www.aerospike.com/docs/reference/configuration/) file.  | |
| feature-key-file <sup>[1](#key)</sup> | false    | Aerospike EE [feature key](https://www.aerospike.com/lp/try-now/) file. | |

<sup name="key">1</sup> Specify to start an Aerospike Enterprise Edition server (should be in the same directory with `config-file`).

## Example usage
```yaml
steps:
- uses: reugn/github-action-aerospike@v1
  with:
    port: 3300
    config-file: '.github/aerospike/aerospike.conf'
    feature-key-file: '.github/aerospike/features.conf'
```
