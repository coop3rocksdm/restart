
import Foundation

protocol Run{
    var distance: Int {get}
    var name: String {get}
    var isFast: Bool {get}
    var result: Int {get}
}
protocol Creature: Run {
    var speed: Int {get set}
    var stamina: Int {get set}
    var weight: Int {get set}
    var lucky: Int {get set}
    mutating func createIndicators() -> Int
    func createStamina(dist:Int) -> Int
}
extension Run{
    func congratulate(fast: Bool) -> String?{
        fast ? "\(name) is winner - it is very fast!" : "\(name) is winner - it is very hardy!"
    }
    func winnerIndicators(fast: Bool, speed: Int, stamina: Int) -> Int{
        if fast {
            return speed
        } else {
            return stamina
        }
    }
}
