### Everdev can run functions by passing arrays of structures as parameters.

Sample contract see [Contract.sol](./Contract.sol)

```
$ everdev --version
1.1.1

# Start Ever OS SE
$ everdev se start

# Set SE as a default network
$ everdev n d se

# Set default giver
$ everdev s add segiver 172af540e43a524763dd53b26a066d472a97c4de37d5498170564510608250c3

$ everdev sol compile Contract.sol

# Deploy contract with balance = 1 Ever
$ everdev  c d Contract.abi.json -v 1000000000
  Contract is deployed at address: 0:a6f20deb51eb7f3448a750926ae888ac28943bfa8ebbf3ae1d357575b1fe98e2

$ everdev c run  Contract  --address  0:a6f20deb51eb7f3448a750926ae888ac28943bfa8ebbf3ae1d357575b1fe98e2 \
    setAtOnce  --input '{ "points": [{ "color": "yellow", "center": { "x": 4, "y": 5 }}, {"color": "green", "center": { "x": 6, "y": 7 }}] }'


$ everdev c run  Contract  --address  0:a6f20deb51eb7f3448a750926ae888ac28943bfa8ebbf3ae1d357575b1fe98e2 get

    "output": {
        "value0": [
            {
                "color": "yellow",
                "center": {
                    "x": "4",
                    "y": "5"
                }
            },
            {
                "color": "green",
                "center": {
                    "x": "6",
                    "y": "7"
                }
            }
        ]
    },
```
