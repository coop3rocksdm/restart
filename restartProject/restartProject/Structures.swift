
import Foundation

struct Lion: Creature {
    var name: String
    var weight: Int
    var lucky: Int
    var speed: Int
    var result: Int
    var isFast: Bool
    var distance: Int
    var stamina: Int
    func createStamina(dist:Int) -> Int {
        switch dist{
        case 50...100:
            return Int.random(in: 20...35)
        case 30...49:
            return Int.random(in: 10...20)
        case 5...29:
            return Int.random(in: 0...10)
        default:
            return 0
        }
    }
    init(name: String, distance: Int) {
            self.name = name
            self.distance = distance
            self.stamina = 0 // Placeholder, will be set later
            self.speed = 10 // Placeholder, will be set later
            self.isFast = false // Placeholder, will be set later
            self.result = 0 // Placeholder, will be set later
            self.weight = -2
            self.lucky = 1
            self.stamina = createStamina(dist: distance)
            self.speed = createIndicators()
            self.isFast = stamina < speed
            self.result = winnerIndicators(fast: isFast, speed: speed, stamina: stamina)
        }
    
   
    mutating func createIndicators() -> Int {
       let result = speed + weight + lucky
       speed += Int.random(in: 20...25)
       weight += Int.random(in: 1...10)
       lucky += Int.random(in: 1...10)
       return result
    }
    
}

struct Turtle: Creature {
    var name: String
    var weight: Int
    var lucky: Int
    var speed: Int
    var isFast: Bool
    var result: Int
    var distance: Int
    var stamina: Int
    
    func createStamina(dist:Int) -> Int {
        switch dist{
        case 50...100:
            return Int.random(in: 35...45)
        case 30...49:
            return Int.random(in: 20...34)
        case 5...29:
            return Int.random(in: 0...10)
        default:
            return 0
        }
    }
    init(name: String, distance: Int) {
            self.name = name
            self.distance = distance
            self.stamina = 0 // Placeholder, will be set later
            self.speed = -10 // Placeholder, will be set later
            self.isFast = false // Placeholder, will be set later
            self.result = 0 // Placeholder, will be set later
            self.weight = 6
            self.lucky = 1
            self.stamina = createStamina(dist: distance)
            self.speed = createIndicators()
            self.isFast = stamina < speed
            self.result = winnerIndicators(fast: isFast, speed: speed, stamina: stamina)
        }
       mutating func createIndicators() -> Int {
       let result = speed + weight + lucky
       speed += Int.random(in: 1...5)
       weight += Int.random(in: 1...10)
       lucky += Int.random(in: 1...10)
       return result
    }
    
}

struct Giraffe:Creature {
    var name: String
    var weight: Int
    var lucky: Int
    var speed: Int
    var isFast: Bool
    var result: Int
    var distance: Int
    var stamina: Int
    
    func createStamina(dist:Int) -> Int {
        switch dist{
        case 50...100:
            return Int.random(in: 15...30)
        case 30...49:
            return Int.random(in: 10...14)
        case 5...29:
            return Int.random(in: 0...9)
        default:
            return 0
        }
    }
    init(name: String, distance: Int) {
            self.name = name
            self.distance = distance
            self.stamina = 0 // Placeholder, will be set later
            self.speed = 5 // Placeholder, will be set later
            self.isFast = false // Placeholder, will be set later
            self.result = 0 // Placeholder, will be set later
            self.weight = -3
            self.lucky = 1
            self.stamina = createStamina(dist: distance)
            self.speed = createIndicators()
            self.isFast = stamina < speed
            self.result = winnerIndicators(fast: isFast, speed: speed, stamina: stamina)
        }
   mutating func createIndicators() -> Int {
       let result = speed + weight + lucky
       speed += Int.random(in: 15...25)
       weight += Int.random(in: 1...10)
       lucky += Int.random(in: 1...10)
       return result
    }
}

struct Hippo: Creature {
    var distance: Int
    var name: String
    var weight: Int
    var lucky: Int
    var speed: Int
    var isFast: Bool
    var result: Int
    var stamina: Int
    
    func createStamina(dist:Int) -> Int {
        switch dist{
        case 50...100:
            return Int.random(in: 10...25)
        case 30...49:
            return Int.random(in: 10...20)
        case 5...29:
            return Int.random(in: 5...15)
        default:
            return 0
        }
    }
    init(name: String, distance: Int) {
            self.name = name
            self.distance = distance
            self.stamina = 0
            self.speed = 10
            self.isFast = false
            self.result = 0
            self.weight = -15
            self.lucky = 1
            self.stamina = createStamina(dist: distance)
            self.speed = createIndicators()
            self.isFast = stamina < speed
            self.result = winnerIndicators(fast: isFast, speed: speed, stamina: stamina)
        }
    
   mutating func createIndicators() -> Int {
       let result = speed + weight + lucky
       speed += Int.random(in: 20...30)
       weight += Int.random(in: 1...3)
       lucky += Int.random(in: 1...10)
       return result
    }
    
}
