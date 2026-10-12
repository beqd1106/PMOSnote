import SwiftUI

/// PMOスペシャリスト(★)認定資格（NPMO認定 PMO-S） の出題分野（configs.py から生成。手で編集しない）。
/// ※配点比率は公式の出題範囲の分量からの近似値。最新は公式サイトで確認すること。
enum ExamDomain: String, CaseIterable, Codable, Identifiable {
    case pmo
    case pm
    case plan
    case risk
    case ops

    var id: String { rawValue }

    /// 出題比率の近似値（模試の出題配分・合格可能性スコアに使用）。合計1.0。
    var weight: Double {
        switch self {
        case .pmo: return 0.2
        case .pm: return 0.15
        case .plan: return 0.2
        case .risk: return 0.2
        case .ops: return 0.25
        }
    }

    var title: String {
        switch self {
        case .pmo: return "PMOの基礎"
        case .pm: return "プロジェクトマネジメントの基礎"
        case .plan: return "計画と統合（ISO 21500対象群①）"
        case .risk: return "リスク・調達・関係者（対象群②）"
        case .ops: return "PMO業務の実践"
        }
    }

    var shortTitle: String {
        switch self {
        case .pmo: return "PMO基礎"
        case .pm: return "PM基礎"
        case .plan: return "計画系"
        case .risk: return "運営系"
        case .ops: return "PMO実務"
        }
    }

    /// 章番号（並び順）
    var chapterNumber: Int {
        switch self {
        case .pmo: return 1
        case .pm: return 2
        case .plan: return 3
        case .risk: return 4
        case .ops: return 5
        }
    }

    /// 配点を百分率の整数で（UI表示用）
    var weightPercent: Int { Int((weight * 100).rounded()) }

    var color: Color {
        switch self {
        case .pmo: return Theme.navy
        case .pm: return Theme.blue
        case .plan: return Theme.teal
        case .risk: return Theme.rose
        case .ops: return Theme.orange
        }
    }

    var systemIcon: String {
        switch self {
        case .pmo: return "building.2.fill"
        case .pm: return "flag.checkered"
        case .plan: return "calendar.badge.clock"
        case .risk: return "exclamationmark.shield.fill"
        case .ops: return "gearshape.2.fill"
        }
    }

}
