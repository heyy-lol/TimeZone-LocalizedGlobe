import Foundation

extension TimeZone {
    private enum Region {
        case americas
        case europeAfricaAsia
        case asiaAustralia
        
        init(_ timeZone: TimeZone) {
            switch timeZone.secondsFromGMT() {
            case -32400 ... -7200:
                self = .americas
            case -3600 ... 10800:
                self = .europeAfricaAsia
            case 14400 ... 32400:
                self = .asiaAustralia
            default:
                self = .europeAfricaAsia
            }
        }
    }
    
    private var region: Region { Region(self) }
    
    var localizedGlobe: String {
        switch region {
        case .americas:
            return "🌎"
        case .europeAfricaAsia:
            return "🌍"
        case .asiaAustralia:
            return "🌏"
        }
    }
}
