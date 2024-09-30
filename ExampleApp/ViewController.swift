//
//  ViewController.swift
//  ExampleApp
//
//  Created by brubru on 08.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let textLabel = UILabel()
    private let imageView = UIImageView()
    private let imageContainerView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        updateNumbers()
        setupViewImg()
        setupView()
        setupLabel()
        setupImageView()
        
        
        view.addSubview(textLabel)
        view.addSubview(imageView)
        view.addSubview(imageContainerView)
    }
    
    private func updateNumbers() {
        helper.addNumber(Int.random(in: 1...10))
    }
    
    private func setupLabel() {
        let firstNumber = helper.getNumbers().first
        textLabel.text = "\(firstNumber ?? 0)"
        textLabel.font = .systemFont(ofSize: 30, weight: .bold)
        textLabel.textColor = .red
        textLabel.frame = CGRect(x: 30, y: 30, width: 100, height: 50)
    }
    
    private func setupViewImg() {
        imageContainerView.frame = CGRect(x: 200, y: 130, width: 100, height: 200)
        imageContainerView.backgroundColor = .white
        imageContainerView.layer.cornerRadius = 20

        imageContainerView.layer.shadowColor = UIColor.black.cgColor
        imageContainerView.layer.shadowOpacity = 0.2
        imageContainerView.layer.shadowRadius = 16
        imageContainerView.layer.shadowOffset = CGSize(width: 5, height: 5)
    }
    
    
    private func setupImageView() {
        imageView.image = UIImage(named: "raccoon")
        imageView.frame = CGRect(x: 30, y: 130, width: 100, height: 200)
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOffset = CGSize(width: 15, height: 15)
        imageView.layer.shadowOpacity = 1
        imageView.layer.shadowRadius = 10
    }
    
    private func setupView() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.green.cgColor, UIColor.blue.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        
        //        //Добавляем подслой к супервью
        //        view.layer.insertSublayer(gradient, at: 0)  // Градиент на фоне супервью
    }
}

