//
//  ViewController.swift
//  Calculator
//
//  Created by t2024-m0165 on 6/27/24.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        let button = UIButton(type: .system)
        
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button.setTitle("7", for: .normal)
        button.frame.size.height = 80
        button.frame.size.width = 80
        button.layer.cornerRadius = 40
        
        
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 80),
            button.widthAnchor.constraint(equalToConstant: 80)])
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        label.text = "12345"
        label.textColor = .white
        // 글씨체를 바꾸고 싶을 때 label.font = UIFont.바꾸고 싶은 폰트
        label.font = UIFont.boldSystemFont(ofSize: 60)
        label.translatesAutoresizingMaskIntoConstraints = false
        // 라벨의 텍스트를 정렬하고 싶을 때 label.textAlignment = 정렬하고 싶은 위치
        label.textAlignment = .right
        
        
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            label.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    let horizontalStackView = UIStackView()
    private func StackView() {
        horizontalStackView.axis = .horizontal
        horizontalStackView.spacing = 10
        horizontalStackView.distribution = .fillEqually
        horizontalStackView.backgroundColor = .black
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(horizontalStackView)
        
        NSLayoutConstraint.activate([
            horizontalStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            horizontalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            horizontalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            horizontalStackView.heightAnchor.constraint(equalToConstant: 80)
        ])
        
            
        }
    }


