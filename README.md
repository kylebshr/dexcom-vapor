# dexcom-vapor

Deploy [dexcom-swift](https://github.com/kylebshr/dexcom-swift) to the cloud ☁️

## Getting started

dexcom-vapor allows you to host a lightweight API wrapper around the Dexcom share API. You can use this to build apps, or use existing ones like [DexcomMenu](https://github.com/kylebshr/dexcommenu).

One option for hosting is https://fly.io. Getting started is fairly easy:

### 1. Enable Sharing

For the Dexcom API to work, you must have sharing enabled with at least one person signed up to view your readings. You can invite yourself if you don’t want to actually share.

### 2. Clone this repo

`git clone git@github.com:kylebshr/dexcom-vapor.git`

### 3. Install flyctl

Follow [these instructions](https://fly.io/docs/hands-on/install-flyctl/) to install `fly`, then run `fly auth signup` to create a fly.io account, or `fly auth login` to login if you already have one.

### 4. Launch

Run `fly-launch` from the root of the repo to create a new fly app and deploy it. Fly will build and deploy the app, and when it’s done, it will tell you the URL for your service.

### 5. Set your username and password

Set the username and password environment variables using your _normal_ dexcom account details - _not_ the accout you’re sharing with. If your user ID is your phone number, sadly the API does not work. You can create a new Dexcom account with your email to use the API.

`fly secrets set DEXCOM_USERNAME=dexcom@email.com DEXCOM_PASSWORD=reallystrongpassword`

Fly will restart the service, and it should start working.

That’s it!
