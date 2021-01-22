//
//  ViewController.swift
//  test_fp
//
//  Created by coper on 2021/01/22.
//

import UIKit
import FloatingPanel

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fpc = FloatingPanelController()
        let vc = NextViewController()
        
        fpc.delegate = self
        fpc.set(contentViewController: vc)
        
        fpc.track(scrollView: vc.collectionView)
        fpc.addPanel(toParent: self)

    }


}

extension ViewController: FloatingPanelControllerDelegate {
    func floatingPanel(_ vc: FloatingPanelController, layoutFor newCollection: UITraitCollection) -> FloatingPanelLayout {
        return CustomFloatingPanelLayout()
    }

    class CustomFloatingPanelLayout: FloatingPanelLayout {
        var position: FloatingPanelPosition = .bottom

        var initialState: FloatingPanelState = .tip

        var anchors: [FloatingPanelState: FloatingPanelLayoutAnchoring] = [
            .full: FloatingPanelLayoutAnchor(absoluteInset: 480, edge: .bottom, referenceGuide: .safeArea),
            .half: FloatingPanelLayoutAnchor(absoluteInset: 262.0, edge: .bottom, referenceGuide: .safeArea),
            .tip: FloatingPanelLayoutAnchor(absoluteInset: 80.0, edge: .bottom, referenceGuide: .safeArea)
        ]

    }
}
