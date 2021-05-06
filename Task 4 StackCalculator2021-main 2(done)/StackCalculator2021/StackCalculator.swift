//
//  Stack.swift
//  StackCalculator2021
//
//  Created by Petri/Metropolia on 25.3.2021.
//

import Foundation

class StackCalculator {
    private(set) var stack = [Int]()
    
    func reset() {
        stack.removeAll()
    }
    
    func pop() -> Int? {
        if (stack.count > 0) {
            return stack.popLast()
        } else {
            return nil
        }
    }
    
    func push(_ value:Int) {
        if (value != 0) {
            stack.append(value)
        }
    }
    
    func doCalc(with calcOperator:Operator) {
        guard let operand2 = pop() else { return }
        guard let operand1 = pop() else { return }
        
        switch calcOperator {
            case .plus:
                push(operand1 + operand2)
            case .minus:
                push(operand1 - operand2)
            case .multiply:
                push(operand1*operand2)
            case .divide:
                if (operand2 != 0) { push(operand1/operand2) }
            default:
                print("illegal operator")
        }
    }
}

enum Operator:String {
    case plus = "+"
    case minus = "-"
    case multiply = "*"
    case divide = "/"
    case noOp = ""
}

