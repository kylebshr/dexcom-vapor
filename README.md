# dexcom-vapor

Deploy [dexcom-swift](https://github.com/kylebshr/dexcom-swift) to the cloud ☁️

## Getting started

dexcom-vapor allows you to host a lightweight API wrapper around the Dexcom share API. You can use this to build apps, or use existing ones like [DexcomMenu](https://github.com/kylebshr/dexcommenu).

One option for hosting is https://fly.io. Getting started is fairly easy:

### 1. Install flyctl

Follow [these instructions](https://fly.io/docs/hands-on/install-flyctl/) to install `fly`, then run `fly auth signup` to create a fly.io account, or `fly auth login` to login if you already have one.

### 2. Launch

Run `fly-launch` to create a new fly app and deploy it. Fly will build and deploy the app, and when it’s done, it will tell you the URL for your service.

That’s it!
