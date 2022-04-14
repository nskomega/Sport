//
//  Tours.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import Foundation

// MARK: - ToursResponse
class ToursResponse: Codable {
    let meta: MetaTours
    let results: [FieldsTour]

    init(meta: MetaTours, results: [FieldsTour]) {
        self.meta = meta
        self.results = results
    }
}

// MARK: - Meta
class MetaTours: Codable {
    let title, metaDescription: String
    let fields: FieldsTour

    enum CodingKeys: String, CodingKey {
        case title
        case metaDescription = "description"
        case fields
    }

    init(title: String, metaDescription: String, fields: FieldsTour) {
        self.title = title
        self.metaDescription = metaDescription
        self.fields = fields
    }
}

// MARK: - Fields
class FieldsTour: Codable {
    let tourCode, tourSeasonID, tourName, tourDesc: String

    enum CodingKeys: String, CodingKey {
        case tourCode = "tour_code"
        case tourSeasonID = "tour_season_id"
        case tourName = "tour_name"
        case tourDesc = "tour_desc"
    }

    init(tourCode: String, tourSeasonID: String, tourName: String, tourDesc: String) {
        self.tourCode = tourCode
        self.tourSeasonID = tourSeasonID
        self.tourName = tourName
        self.tourDesc = tourDesc
    }
}

extension FieldsTour: Identifiable {
}
