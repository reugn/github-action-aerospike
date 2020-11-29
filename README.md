# github-action-aerospike
This GitHub Action sets up an Aerospike database.

## Inputs
| Name        | Required | Description                   | Default |
| ----------- | -------- | ----------------------------- | ------- |
| port        | false    | Aerospike port.               | 3000    |
| config-file | false    | Aerospike configuration file. |         |

## Example usage
```yaml
steps:
- uses: reugn/github-action-aerospike@v1
  with:
    port: 3300
    config-file: '.github/aerospike.conf'
```
