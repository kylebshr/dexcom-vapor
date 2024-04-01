import Vapor
import Dexcom

struct DexcomController: RouteCollection {
    let client: DexcomClient

    init(username: String, password: String, outsideUS: Bool) {
        self.client = DexcomClient(
            username: username,
            password: password,
            outsideUS: outsideUS
        )
    }

    func boot(routes: any RoutesBuilder) throws {
        routes.get("current") { _ in
            guard let reading = try await client.getCurrentGlucoseReading() else {
                throw Abort(.noContent)
            }

            return reading
        }

        routes.get("latest") { _ in
            guard let reading = try await client.getLatestGlucoseReading() else {
                throw Abort(.noContent)
            }

            return reading
        }
    }
}
