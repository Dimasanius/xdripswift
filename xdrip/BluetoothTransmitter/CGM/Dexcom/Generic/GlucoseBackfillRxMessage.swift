import Foundation

struct GlucoseBackfillRxMessage {
    
    let valid: Bool
    
    init?(data: Data) {
        
        guard data.count >= 2 else { return nil }
        
        guard data.starts(with: .glucoseBackfillRx) else {return nil}
        
        valid = data[1] == 1
        
    }
}
