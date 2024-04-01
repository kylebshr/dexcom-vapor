import Vapor

func routes(_ app: Application) throws {
    guard let username = Environment.process.DEXCOM_USERNAME, let password = Environment.process.DEXCOM_PASSWORD else {
        throw NSError()
    }
    
    let outsideUS = Environment.process.OUTSIDE_US != nil

    let dexcom = DexcomController(username: username, password: password, outsideUS: outsideUS)
    try app.register(collection: dexcom)
}
