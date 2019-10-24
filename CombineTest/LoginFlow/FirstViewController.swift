//
//  ViewController.swift
//  CombineTest
//
//  Created by Oleg on 8/31/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit
import Combine

class FirstViewController: UIViewController {
    
    var bag: [AnyCancellable] = []
    
    let viewModel: FirstViewModel
    
    init(viewModel: FirstViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        self.navigationItem.title = "LOGIN"
        
        let button = UIButton(frame: CGRect(x: 200, y: 100, width: 100, height: 50))
        button.backgroundColor = .systemRed
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        self.view.addSubview(button)
        
        playWithCombine()
    }
    
    private func playWithCombine() {
        viewModel.subject.send(5)
        viewModel.subject.send(4)
        
        viewModel.subject
            .sink(receiveCompletion: { (subscribers) in
                print("Complite for \(subscribers)")
            }) { (value) in
                print(value)
            }
            .store(in: &bag)

        viewModel.subject.send(3)
        viewModel.subject.send(2)
        viewModel.subject.send(1)
        viewModel.subject.send(completion: .finished)
    }
    
    @objc func login() {
        viewModel.navigationDelegate?.isFinished()
    }
    
}

