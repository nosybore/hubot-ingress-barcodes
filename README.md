# hubot-ingress-barcodes

Decode names of players who exploit sans-serif to obfuscate their identities.

See [`src/ingress-barcodes.coffee`](src/ingress-barcodes.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-ingress-barcodes --save`

Then add **hubot-ingress-barcodes** to your `external-scripts.json`:

```json
[
  "hubot-ingress-barcodes"
]
```

## Sample Interaction

```
user1>> hubot bc IlIlIlIlIlIlllI
hubot>> BorgKween
```
