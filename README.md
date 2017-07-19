# Problem statement
creates an azure sql server firewall rule (if it doesn't already exist)

# Example usage

> note: in examples, VERSION represents a version of the azure.sql.server.firewallrule.create pkg

## install

```shell
opctl pkg install github.com/opspec-pkgs/azure.sql.server.firewallrule.create#VERSION
```

## run

```
opctl run github.com/opspec-pkgs/azure.sql.server.firewallrule.create#VERSION
```

## compose

```yaml
op:
  pkg: { ref: github.com/opspec-pkgs/azure.sql.server.firewallrule.create#VERSION }
  inputs: 
    subscriptionId:
    loginId:
    loginSecret:
    name:
    server:
    resourceGroup:
    # begin optional args
    startIPAddress:
    endIPAddress:
    loginTenantId:
    loginType:
    # end optional args
```

# Support

join us on [![Slack](https://opspec-slackin.herokuapp.com/badge.svg)](https://opspec-slackin.herokuapp.com/)
or [open an issue](https://github.com/opspec-pkgs/azure.sql.server.firewallrule.create/issues)
