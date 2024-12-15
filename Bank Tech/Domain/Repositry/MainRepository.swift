//
//  MainRepo.swift
//  Bank Tech
//
//  Created by ahmed maher on 15/12/2024.
//

import Foundation
protocol MainRepo {
    func getCarouselImages() -> [String]
    func getListItems() -> [ListDTO]
}
