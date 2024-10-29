//
//  ChooseFastionViewCtroler.swift
//  PixelWorld
//
//  Created by THUTRA on 08/09/2024.
//

import UIKit

class ChooseFastionViewCtroler: UIViewController {

    @IBOutlet weak var StarGameBtn: CustomButton!
    @IBOutlet weak var magicionLable: UILabel!
    @IBOutlet weak var ArmorLable: UILabel!
    
    var character : Character!
    override func viewDidLoad() {
        super.viewDidLoad()
        magicionLable.isUserInteractionEnabled = true
        magicionLable.addGestureRecognizer(UITapGestureRecognizer(target:
        self, action: #selector(magicianTapped)))
        
        ArmorLable.isUserInteractionEnabled = true
        ArmorLable.addGestureRecognizer(UITapGestureRecognizer(target:
        self, action: #selector(armorTapped)))
        
        character = Character()
    }
    @objc func magicianTapped(){
       selectFactionName(name: "Magicion")
    }
    
    @objc func armorTapped(){
        selectFactionName(name: "Armor")
    }
    
    func selectFactionName(name: String ){
        character.factionName = name
        StarGameBtn.isEnabled = true
    }
    @IBAction func onStarGamePressed(_ sender: Any) {
        performSegue(withIdentifier: "InGamePressed", sender: self)
    }
}
