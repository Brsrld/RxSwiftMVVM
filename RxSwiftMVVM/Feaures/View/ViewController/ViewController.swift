//
//  ViewController.swift
//  RxSwiftMVVM
//
//  Created by Baris Saraldi on 13.07.2021.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    
    private var viewModel: ViewModel?
    
    let tableView: UITableView = {
        let cv = UITableView()
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = .white
        cv.showsHorizontalScrollIndicator = false
        cv.showsVerticalScrollIndicator = false
        cv.tag = 0
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        setupUI()
        tableView.tableFooterView = UIView()
        
        navigationItem.title = viewModel?.title
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.contentInsetAdjustmentBehavior = .never
        
        viewModel.fetchViewModel().bind(to: tableView.rx.items(cellIdentifier: "Cell")) {
            index, model, cell in
            cell.textLabel?.text = model.displayText
        }.disposed(by: disposeBag)
    }
    
    private func setupUI() {
        
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
    }
}

