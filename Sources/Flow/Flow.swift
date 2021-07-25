import GRPC
import NIO

class Flow {
    static let shared = Flow()

    let defaultUserAgent = "Flow SWIFT SDK"

    var defaultChainId = FlowChainId.mainnet

    var defaultAddressRegistry = AddressRegistry()

    func configureDefaults(chainId: FlowChainId, addressRegistry: AddressRegistry) {
        defaultChainId = chainId
        defaultAddressRegistry = addressRegistry
    }

    func newAccessApi(host: String, port _: Int = 9000, secure: Bool = false) -> FlowAccessAPI {
        let config = channelConfig(host: host, port: 9000, secure: secure, userAgent: defaultUserAgent)
        return FlowAccessAPI(config: config)
    }

    func newAccessApi(host: String, port _: Int = 9000, secure: Bool = false, userAgent: String) -> FlowAccessAPI {
        let config = channelConfig(host: host, port: 9000, secure: secure, userAgent: userAgent)
        return FlowAccessAPI(config: config)
    }

    func channelConfig(host: String, port: Int, secure _: Bool, userAgent _: String) -> ClientConnection.Configuration {
        // TODO: add secure and userAgent
        let eventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: System.coreCount)
        return ClientConnection.Configuration.default(target: ConnectionTarget.hostAndPort(host, port),
                                                      eventLoopGroup: eventLoopGroup)
    }
}
