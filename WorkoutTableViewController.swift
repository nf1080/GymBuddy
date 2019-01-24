//
//  WorkoutTableViewController.swift
//  GymBuddy
//
//  Created by Neal Fesefeldt 
//  Copyright © 2019 Neal Fesefeldt. All rights reserved.
//

import Foundation
import UIKit

class WorkoutTableViewController: UITableViewController {
    
    var workouts = [Workout]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = editButtonItem
        
        if let savedWorkouts = Workout.loadWorkouts() {
            workouts = savedWorkouts
        }
        else {
            workouts = Workout.loadDummyData()
            print("made it here")
        }
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workouts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "workoutCell")
            else{
                fatalError("Can't dequene a cell")
        }
        let workout = workouts[indexPath.row]
        cell.textLabel?.text = workout.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle,
                            forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            workouts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            Workout.saveWorkouts(workouts)
        }
    }
    
    @IBAction func unwindToWorkoutoList(segue: UIStoryboardSegue){
        
        guard segue.identifier == "saveUnwind" else {return}
        let sourceViewController = segue.source as! NewWorkoutViewController
        if let workout = sourceViewController.workout {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                workouts[selectedIndexPath.row] = workout
                tableView.reloadRows(at: [selectedIndexPath], with: .none)
            }
            else {
                let newIndexPath = IndexPath(row: workouts.count, section: 0)
                workouts.append(workout)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
            }
        }
        Workout.saveWorkouts(workouts)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let newWorkoutViewController = segue.destination as! NewWorkoutViewController
            let indexPath = tableView.indexPathForSelectedRow!
            let selectedWorkout = workouts[indexPath.row]
            newWorkoutViewController.workout = selectedWorkout
        }
    }
}
