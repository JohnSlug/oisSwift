
import UIKit
//1
public class BankCheck{
    var id: Int
    var balance: Double
    
    init(id: Int, balance: Double){
        self.id = id
        self.balance = balance
    }
    
    func deposit (by amount1: Double) throws {
        guard balance == nil else {
            throw balanceErorr.outOfStock
        }
        
        balance += amount1
       
    }
    
    func withdraw (by amount: Double) throws {
        guard balance < amount else {
            throw balanceErorr.noMoney
        }
        guard Int(balance) == nil else {
            throw balanceErorr.outOfStock
        }
        
        balance -= amount
    }
    
   enum balanceErorr: Error{
        case invalidOperation
        case outOfStock
        case noMoney
    }
 
}
//2
protocol protocolable{
    var id : Int { get }
    var BankCheck: BankCheck { get }
}

public class Individuals: protocolable {
    var id: Int
    var BankCheck: BankCheck
    var firstName: String
    var secondName: String
    var date: Date
    init (id: Int, BA: BankCheck , firstName: String, secondName: String, date: String ){
        self.id = id
        self.BankCheck = BA
        self.firstName = firstName
        self.secondName = secondName
        let formatter = DateFormatter()
        formatter.dateFormat = "dd:MM:yyyy"
        self.date = formatter.date(from: date)!
        
    }
}

public class legalEntity: protocolable {
    var id: Int
    var BankCheck: BankCheck
    var Name: String
    var Org: String
    init (id: Int, BA: BankCheck, name: String, enum org: String){
        self.id = id
        self.BankCheck = BA
        self.Name = name
        self.Org = String(org)
    }
    
}
enum org {
    case OOO
    case OAO
}

//3

public class Bank{
    var BankEntityCheck: BankCheck
    static fileprivate func transfer( sender: protocolable, count: Double , recipient: BankCheck){
        sender.BankCheck.balance = sender.BankCheck.balance - count
        recipient.balance += count
    }
    init (BA: BankCheck){
        self.BankEntityCheck = BA
    }
}
var BA: BankCheck = BankCheck(id: 0, balance: 100000.0)
var BankVTB: Bank = Bank(BA: BA)
var petya: Individuals = Individuals(id: 1, BA: BankCheck(id : 1, balance: 100000.0), firstName: "petya", secondName: "petychkin", date: "11:09:1987")
    Bank.transfer(sender: petya, count: 10, recipient: BankVTB.BankEntityCheck)
    petya.BankCheck.balance






