//
//  ViewController.swift
//  HamiltonTevin_CE01
//
//  Created by Tevin Hamilton on 10/1/19.
//  Copyright © 2019 Tevin Hamilton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    //MARK:IBOutlet
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var elementNameLabel: UILabel!
    @IBOutlet weak var atomicNumberLabel: UILabel!
    @IBOutlet weak var atomicWeightLabel: UILabel!
    @IBOutlet weak var meltingPointLabel: UILabel!
    @IBOutlet weak var boilingPointLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var notesTextView: UITextView!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK:Array
    let elementArray:[(symbol: String, name: String, atomicNum: Int, atomicWeight:Double, meltPoint:Double?, boilPoint:Double?, notes:String, discYear:Int )] = [
        ("Pu", "Plutonium", 94, 244, 1182.9, 5842, "Prepared by bombardment of uranium with deuterons.", 1941),
        ("U", "Uranium", 92, 238.02891, 2070, 4404, "Mistakenly identified a uranium oxide obtained from pitchblende as the element itself and named it after the recently discovered planet Uranus.", 1789),
        ("Pm", "Promethium", 61, 145, 1908, 5432, "It was probably first prepared in 1942 by bombarding neodymium and praseodymium with neutrons, but separation of the element could not be carried out. Isolation was performed under the Manhattan Project in 1945.", 1942),
        ("Rn", "Radon", 86, 222, nil, nil, "E. Dorn discovered a radioactive gas resulting from the radioactive decay of radium, isolated later by W. Ramsay and R.W. Gray.", 1898),
        ("Th", "Thorium", 90, 232.0377, 3182, 8650, "J. Berzelius obtained the oxide of a new earth in thorite.", 1829),
        ("Ra", "Radium", 88, 226, 1760, 3159, "The Curies reported on December 26, 1898, a new element different from polonium, which Marie later isolated from uraninite.", 1898),
        ("Ds", "Darmstadtium", 110, 281, nil, nil, "Prepared by bombardment of lead with nickel.", 1994),
        ("Po", "Polonium", 84, 209, 489, 1764, "In an experiment done on July 13, 1898, the Curies noted an increased radioactivity in the uranium obtained from pitchblende, which they ascribed to an unknown element.", 1898),
        ("Fr", "Francium", 87, 223, 80 , 1250, "Perey discovered it as a decay product of Ac. Francium is the last element to be discovered in nature, rather than synthesized in the lab, although some of the synthetic elements that were discovered later (plutonium, neptunium, astatine) were eventually found in trace amounts in nature as well.", 1939),
        ("Ac", "Actinum", 89, 227, 2240, 5800, "A.L. Debierne obtained from pitchblende a substance that had properties similar to those of thorium.", 1899),
        ("Cm", "Curium", 96, 247, 2444, 5630, "Prepared by bombarding plutonium with alpha particles during the Manhattan Project", 1944),
        ("Es", "Einsteinium", 99, 252, 1580, 1825, "Formed in the first thermonuclear explosion in November 1952, by irradiation of uranium with neutrons; kept secret for several years.", 1952)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int { return 1; }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elementArray.count}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "elementCell", for: indexPath) as! ElementTableViewCell
        
        cell.setupCell(elementArray[indexPath.row].symbol, name: elementArray[indexPath.row].name)
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        symbolLabel.text = elementArray[indexPath.row].symbol
        elementNameLabel.text = elementArray[indexPath.row].name
        atomicNumberLabel.text = String(elementArray[indexPath.row].atomicNum)
        atomicWeightLabel.text = String(elementArray[indexPath.row].atomicWeight)
        yearLabel.text = String(elementArray[indexPath.row].discYear)
        notesTextView.text = elementArray[indexPath.row].notes
        if elementArray[indexPath.row].meltPoint != nil
        {
            meltingPointLabel.text = String(elementArray[indexPath.row].meltPoint!)
        }
        else
        {
             meltingPointLabel.text = "N/A"
        }
        if elementArray[indexPath.row].boilPoint != nil
        {
            boilingPointLabel.text = String(elementArray[indexPath.row].boilPoint!)
        }
        else
        {
           boilingPointLabel.text = "N/A"
        }
  
    }
   

}

