# horntell-supervisors-cookbook

Deploys the Horntell Supervisor workers on production.

## Supported Platforms

Ubuntu.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['horntell-supervisors']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### horntell-supervisors::default

Include `horntell-supervisors` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[horntell-supervisors::default]"
  ]
}
```

## License and Authors

Author:: Mohit Mamoria (mohit.mamoria@gmail.com)
