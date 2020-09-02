//
//  CoAPClient.swift
//  
//
//  Created by Fineas Gavre on 02.09.2020.
//

import Foundation
import Network

class CoAPClient {
    
    // MARK: - Private Properties
    
    private let connection: NWConnection
    
    // MARK: - Initialisers
    
    init(host: NWEndpoint.Host, port: NWEndpoint.Port) {
        let dtlsOptions = NWProtocolTLS.Options()
        let udpOptions = NWProtocolUDP.Options()
        
        sec_protocol_options_set_tls_max_version(dtlsOptions.securityProtocolOptions, .sslProtocol2)
        sec_protocol_options_set_tls_ocsp_enabled(dtlsOptions.securityProtocolOptions, false)
        sec_protocol_options_set_tls_sct_enabled(dtlsOptions.securityProtocolOptions, false)
                
        connection = NWConnection(host: host, port: port, using: NWParameters(dtls: nil, udp: udpOptions))
        connection.start(queue: DispatchQueue.main)
        connection.receiveMessage { (data, context, bool , error) in
            print(data)
            print(context)
            print(bool)
            print(error)
        }
        connection.send(content: Data(base64Encoded: "gBhVVQ=="), completion: NWConnection.SendCompletion.contentProcessed({ (error) in
            print(error, "here")
        }))
        
    }

}


