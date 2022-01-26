//
//  File.swift
//  Navigation
//
//  Created by user190722 on 1/4/22.
//

import Foundation


struct Person {
    var name: String
    var age = 18
    
    static func createPerson () -> Person {
        let person = Person(name: "John")
        return person
    }
}
