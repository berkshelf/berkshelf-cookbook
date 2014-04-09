# berkshelf-cookbook

Installs/Configures berkshelf and the berkshelf-api server

## Supported Platforms

  * Ubuntu
  * CentOS

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['<%= name %>']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### berkshelf::default

Delegates to `berkshelf::client`

### berkshelf::client

Installs the Berkshelf client on your node

### berkshelf::api_server

Installs and configures a Berkshelf API server on your node

### berkshelf::api_proxy

Installs and configures an HTTP proxy for the Berkshelf API server on your node

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Jamie Winsor (<jamie@vialstudios.com>)
