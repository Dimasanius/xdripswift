import Foundation

struct DexcomTransmitterTimeRxMessage {
    
    /// age as received from
    private let age: TimeInterval
    
    /// transmitter start time
    public let transmitterStartDate: Date
    
    init?(data: Data) {
        
        guard data.count >= 3 else { return nil }
        
        guard data.starts(with: .transmitterTimeRx) else {return nil}
        
        age = TimeInterval(data.subdata(in: 2..<6).to(Int32.self))
        
        transmitterStartDate = Date() - age
        
    }
    
}
