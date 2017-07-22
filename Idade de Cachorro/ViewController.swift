//
//  ViewController.swift
//  Idade de Cachorro
//
//  Created by Neuclair J. Angele Junior
//  Copyright © 2017 Neuclair J. Angele Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.limparLegendaResultado()
        
        self.adicionarBotaoDescobrirNoTeclado()
    }

    @IBOutlet weak var campoIdadeCachorro: UITextField!
    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBAction func descobrirIdade(_ sender: Any) {
        self.descobrirIdade()
    }
    
    func limparLegendaResultado() {
        self.legendaResultado.text = ""
    }
    
    func adicionarBotaoDescobrirNoTeclado() {
        let barraFerramenta: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 50))
        barraFerramenta.barStyle = UIBarStyle.default
        
        let espacamento = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        
        let botaoDescobrir: UIBarButtonItem = UIBarButtonItem(title: "Descobrir", style: UIBarButtonItemStyle.done, target: self, action: #selector(self.acaoBotaoDescobrir))
        
        var itens = [UIBarButtonItem]()
        itens.append(espacamento)
        itens.append(botaoDescobrir)
        
        barraFerramenta.items = itens
        barraFerramenta.sizeToFit()
        
        self.campoIdadeCachorro.inputAccessoryView = barraFerramenta
    }
    
    func descobrirIdade() {
        self.limparLegendaResultado()
        
        if let campoIdadeCachorroText = self.campoIdadeCachorro.text, let campoIdadeCachorroInt = Int(campoIdadeCachorroText) {
            self.legendaResultado.text = "A idade do cachorro é \(campoIdadeCachorroInt * 7)"
        } else {
            self.legendaResultado.text = "Informe a idade"
        }
    }
    
    func acaoBotaoDescobrir() {
        self.descobrirIdade()
        
        self.campoIdadeCachorro.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

