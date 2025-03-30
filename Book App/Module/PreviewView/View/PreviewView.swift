//
//  PreviewView.swift
//  Book App
//
//  Created by Александр Семёнов on 29.03.2025.
//

import UIKit
import Lottie

final class PreviewView: UIViewController {
    
    lazy var lottieView: LottieAnimationView = {
        $0.frame.size = CGSize(
            width: view.frame.width - 80,
            height: view.frame.height - 80)
        $0.center = view.center
        $0.loopMode = .loop
        
        return $0
    }(LottieAnimationView(name: "bookAnimation"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .bgMain
        
        view.addSubview(lottieView)
        lottieView.play()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            //
        }
    }
    
}
