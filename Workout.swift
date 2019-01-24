//
//  Workout.swift
//  GymBuddy
//
//
//  Copyright © 2019 Neal Fesefeldt. All rights reserved.
//

import Foundation

struct Workout: Codable {
    var name: String
    var date: Date
    var exercises: [Exercise]?
    
    /*
    init(name: String, date: Date, exercises: [Exercise]?) {
        self.name = name
        self.date = date
        self.exercises = exercises
    }
 */
    static var DocumentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("workouts")
        .appendingPathExtension("pList")
    
    
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
    
    static func loadWorkouts() -> [Workout]? {
        guard let codedWorkouts = try? Data(contentsOf: ArchiveURL)
            else{return nil}
        let propertyListDecoder = PropertyListDecoder()
        return try? propertyListDecoder.decode(Array<Workout>.self, from: codedWorkouts)
    }
    
    static func saveWorkouts(_ workouts: [Workout]){
        let propertyListEncoder = PropertyListEncoder()
        let codedWorkouts = try? propertyListEncoder.encode(workouts)
        try? codedWorkouts?.write(to: ArchiveURL, options: .noFileProtection)
    }
    
    static func loadDummyData() -> [Workout] {
        
        let workout1 = Workout(name: "Chest/Triceps", date: Date(), exercises: [])
        let workout2 = Workout(name: "Back/Biceps", date: Date(), exercises: [])
        let workout3 = Workout(name: "Shoulders/Abs", date: Date(), exercises: [])
        let workout4 = Workout(name: "Legs", date: Date(), exercises: [])
        
        return [workout1, workout2, workout3, workout4]
    }
}

struct Exercise: Codable {
    var name: String?
    var weight: String?
    var sets: String?
    var reps: String?
    
    /*
    init(name: String, weight: Int, sets: Int, reps: Int) {
        self.name = name
        self.weight = weight
        self.sets = sets
        self.reps = reps
    }
 */
}
