//
//  MainRepo.swift
//  Bank Tech
//
//  Created by ahmed maher on 15/12/2024.
//

import Foundation
protocol MainRepository {
    func getCarouselImages() -> [String]
    func getListItems() -> [ListDTO]
}
