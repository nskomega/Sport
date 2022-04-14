//
//  Tennis.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import Foundation

// MARK: - Tennis
class TourRankingsResponse: Codable {
    let meta: Meta
    let results: Results

    init(meta: Meta, results: Results) {
        self.meta = meta
        self.results = results
    }
}

// MARK: - Meta
class Meta: Codable {
    let title, metaDescription: String
    let fields: Fields

    enum CodingKeys: String, CodingKey {
        case title
        case metaDescription = "description"
        case fields
    }

    init(title: String, metaDescription: String, fields: Fields) {
        self.title = title
        self.metaDescription = metaDescription
        self.fields = fields
    }
}

// MARK: - Fields
class Fields: Codable {
    let rankingsArray: RankingsArray

    enum CodingKeys: String, CodingKey {
        case rankingsArray = "rankings_array"
    }

    init(rankingsArray: RankingsArray) {
        self.rankingsArray = rankingsArray
    }
}

// MARK: - RankingsArray
class RankingsArray: Codable {
    let id, firstName, lastName, fullName: String
    let country, ranking, movement, rankingPoints: String

    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case fullName = "full_name"
        case country, ranking, movement
        case rankingPoints = "ranking_points"
    }

    init(id: String, firstName: String, lastName: String, fullName: String, country: String, ranking: String, movement: String, rankingPoints: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = fullName
        self.country = country
        self.ranking = ranking
        self.movement = movement
        self.rankingPoints = rankingPoints
    }
}

// MARK: - Results
class Results: Codable {
    let rankings: [Ranking]

    init(rankings: [Ranking]) {
        self.rankings = rankings
    }
}

// MARK: - Ranking
class Ranking: Codable {
    let id: Int
    let firstName, lastName, fullName, country: String
    let ranking: Int
    let movement: String
    let rankingPoints: Int

    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case fullName = "full_name"
        case country, ranking, movement
        case rankingPoints = "ranking_points"
    }

    init(id: Int, firstName: String, lastName: String, fullName: String, country: String, ranking: Int, movement: String, rankingPoints: Int) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = fullName
        self.country = country
        self.ranking = ranking
        self.movement = movement
        self.rankingPoints = rankingPoints
    }
}

extension Ranking: Identifiable {
}
