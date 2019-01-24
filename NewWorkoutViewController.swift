//
//  NewWorkoutViewController.swift
//  GymBuddy
//
//  Created by Neal Fesefeldt 
//  Copyright © 2019 Neal Fesefeldt. All rights reserved.
//

import Foundation
import UIKit

class NewWorkoutViewController: UITableViewController {
    
    var workout: Workout?
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBOutlet weak var workoutNameField: UITextField!
    
    @IBOutlet weak var exerciseNameField1: UITextField!
    @IBOutlet weak var setsTextField1: UITextField!
    @IBOutlet weak var repsTextField1: UITextField!
    @IBOutlet weak var weightTextField1: UITextField!
    
    @IBOutlet weak var exerciseNameField2: UITextField!
    @IBOutlet weak var setsTextField2: UITextField!
    @IBOutlet weak var repsTextField2: UITextField!
    @IBOutlet weak var weightTextField2: UITextField!
    
    @IBOutlet weak var exerciseNameField3: UITextField!
    @IBOutlet weak var setsTextField3: UITextField!
    @IBOutlet weak var repsTextField3: UITextField!
    @IBOutlet weak var weightTextField3: UITextField!
    
    @IBOutlet weak var exerciseNameField4: UITextField!
    @IBOutlet weak var setsTextField4: UITextField!
    @IBOutlet weak var repsTextField4: UITextField!
    @IBOutlet weak var weightTextField4: UITextField!
    
    @IBOutlet weak var exerciseNameField5: UITextField!
    @IBOutlet weak var setsTextField5: UITextField!
    @IBOutlet weak var repsTextField5: UITextField!
    @IBOutlet weak var weightTextField5: UITextField!
    
    @IBOutlet weak var exerciseNameField6: UITextField!
    @IBOutlet weak var setsTextField6: UITextField!
    @IBOutlet weak var repsTextField6: UITextField!
    @IBOutlet weak var weightTextField6: UITextField!
    
    @IBOutlet weak var exerciseNameField7: UITextField!
    @IBOutlet weak var setsTextField7: UITextField!
    @IBOutlet weak var repsTextField7: UITextField!
    @IBOutlet weak var weightTextField7: UITextField!
    
    @IBOutlet weak var exerciseNameField8: UITextField!
    @IBOutlet weak var setsTextField8: UITextField!
    @IBOutlet weak var repsTextField8: UITextField!
    @IBOutlet weak var weightTextField8: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let workout = workout {
            navigationItem.title = "Workout"
            workoutNameField.text = workout.name
            
            //
            // CHANGE TO A LOOP ONCE SHIT WORKS GOOD
            //
            
            if workout.exercises?[0] != nil{
            exerciseNameField1.text = workout.exercises?[0].name
            repsTextField1.text = workout.exercises?[0].reps
            setsTextField1.text = workout.exercises?[0].sets
            weightTextField1.text = workout.exercises?[0].weight
            }
            
            if workout.exercises?[1] != nil{
                exerciseNameField2.text = workout.exercises?[1].name
                repsTextField2.text = workout.exercises?[1].reps
                setsTextField2.text = workout.exercises?[1].sets
                weightTextField2.text = workout.exercises?[1].weight
            }
            
            if workout.exercises?[2] != nil{
                exerciseNameField3.text = workout.exercises?[2].name
                repsTextField3.text = workout.exercises?[2].reps
                setsTextField3.text = workout.exercises?[2].sets
                weightTextField3.text = workout.exercises?[2].weight
            }
            
            if workout.exercises?[3] != nil{
                exerciseNameField4.text = workout.exercises?[3].name
                repsTextField4.text = workout.exercises?[3].reps
                setsTextField4.text = workout.exercises?[3].sets
                weightTextField4.text = workout.exercises?[3].weight
            }
            
            if workout.exercises?[4] != nil{
                exerciseNameField5.text = workout.exercises?[4].name
                repsTextField5.text = workout.exercises?[4].reps
                setsTextField5.text = workout.exercises?[4].sets
                weightTextField5.text = workout.exercises?[4].weight
            }
            
            if workout.exercises?[5] != nil{
                exerciseNameField6.text = workout.exercises?[5].name
                repsTextField6.text = workout.exercises?[5].reps
                setsTextField6.text = workout.exercises?[5].sets
                weightTextField6.text = workout.exercises?[5].weight
            }
            
            if workout.exercises?[6] != nil{
                exerciseNameField7.text = workout.exercises?[6].name
                repsTextField7.text = workout.exercises?[6].reps
                setsTextField7.text = workout.exercises?[6].sets
                weightTextField7.text = workout.exercises?[6].weight
            }
            
            if workout.exercises?[7] != nil{
                exerciseNameField8.text = workout.exercises?[7].name
                repsTextField8.text = workout.exercises?[7].reps
                setsTextField8.text = workout.exercises?[7].sets
                weightTextField8.text = workout.exercises?[7].weight
            }
        }
        
    }
    
    func updateSaveButtonState() {
        let text = exerciseNameField1.text ?? ""
        saveButton.isEnabled = !text.isEmpty
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard segue.identifier == "saveUnwind" else {return}
        
        let workoutName = workoutNameField.text!
        
        //
        // CHANGE STUFF BELOW TO A LOOP
        // ONCE SHIT WORKS GOOD
        //
        
        // Exercise 1
        var name1 = ""
        if exerciseNameField1.text != nil{
            name1 = exerciseNameField1.text!
        }
        var weight1 = ""
        if weightTextField1 != nil {
            weight1 = weightTextField1.text!
        }
        var sets1 = ""
        if setsTextField1.text != nil {
            sets1 = setsTextField1.text!
        }
        var reps1 = ""
        if repsTextField1 != nil {
            reps1 = repsTextField1.text!
        }
        let newExercise1 = Exercise(name: name1, weight: weight1, sets: sets1, reps: reps1)
        
        // Exercise 2
        var name2 = ""
        if exerciseNameField2.text != nil{
            name2 = exerciseNameField2.text!
        }
        var weight2 = ""
        if weightTextField2 != nil {
            weight2 = weightTextField2.text!
        }
        var sets2 = ""
        if setsTextField2.text != nil {
            sets2 = setsTextField2.text!
        }
        var reps2 = ""
        if repsTextField2 != nil {
            reps2 = repsTextField2.text!
        }
        let newExercise2 = Exercise(name: name2, weight: weight2, sets: sets2, reps: reps2)
        
        // Exercise 3
        var name3 = ""
        if exerciseNameField3.text != nil{
            name3 = exerciseNameField3.text!
        }
        var weight3 = ""
        if weightTextField3 != nil {
            weight3 = weightTextField3.text!
        }
        var sets3 = ""
        if setsTextField3.text != nil {
            sets3 = setsTextField3.text!
        }
        var reps3 = ""
        if repsTextField3 != nil {
            reps3 = repsTextField3.text!
        }
        let newExercise3 = Exercise(name: name3, weight: weight3, sets: sets3, reps: reps3)
        
        // Exercise 4
        var name4 = ""
        if exerciseNameField4.text != nil{
            name4 = exerciseNameField4.text!
        }
        var weight4 = ""
        if weightTextField4 != nil {
            weight4 = weightTextField4.text!
        }
        var sets4 = ""
        if setsTextField4.text != nil {
            sets4 = setsTextField4.text!
        }
        var reps4 = ""
        if repsTextField4 != nil {
            reps4 = repsTextField4.text!
        }
        let newExercise4 = Exercise(name: name4, weight: weight4, sets: sets4, reps: reps4)
        
        // Exercise 5
        var name5 = ""
        if exerciseNameField5.text != nil{
            name5 = exerciseNameField5.text!
        }
        var weight5 = ""
        if weightTextField5 != nil {
            weight5 = weightTextField5.text!
        }
        var sets5 = ""
        if setsTextField5.text != nil {
            sets5 = setsTextField5.text!
        }
        var reps5 = ""
        if repsTextField5 != nil {
            reps5 = repsTextField5.text!
        }
        let newExercise5 = Exercise(name: name5, weight: weight5, sets: sets5, reps: reps5)
        
        // Exercise 6
        var name6 = ""
        if exerciseNameField6.text != nil{
            name6 = exerciseNameField6.text!
        }
        var weight6 = ""
        if weightTextField6 != nil {
            weight6 = weightTextField6.text!
        }
        var sets6 = ""
        if setsTextField6.text != nil {
            sets6 = setsTextField6.text!
        }
        var reps6 = ""
        if repsTextField6 != nil {
            reps6 = repsTextField6.text!
        }
        let newExercise6 = Exercise(name: name6, weight: weight6, sets: sets6, reps: reps6)
        
        // Exercise 7
        var name7 = ""
        if exerciseNameField7.text != nil{
            name7 = exerciseNameField7.text!
        }
        var weight7 = ""
        if weightTextField7 != nil {
            weight7 = weightTextField7.text!
        }
        var sets7 = ""
        if setsTextField7.text != nil {
            sets7 = setsTextField7.text!
        }
        var reps7 = ""
        if repsTextField7 != nil {
            reps7 = repsTextField7.text!
        }
        let newExercise7 = Exercise(name: name7, weight: weight7, sets: sets7, reps: reps7)
        
        // Exercise 8
        var name8 = ""
        if exerciseNameField8.text != nil{
            name8 = exerciseNameField8.text!
        }
        var weight8 = ""
        if weightTextField8 != nil {
            weight8 = weightTextField8.text!
        }
        var sets8 = ""
        if setsTextField8.text != nil {
            sets8 = setsTextField8.text!
        }
        var reps8 = ""
        if repsTextField8 != nil {
            reps8 = repsTextField8.text!
        }
        let newExercise8 = Exercise(name: name8, weight: weight8, sets: sets8, reps: reps8)
        
        workout = Workout(name: workoutName, date: Date(), exercises: [newExercise1, newExercise2, newExercise3, newExercise4, newExercise5, newExercise6, newExercise7, newExercise8])
        
    }
    
}
