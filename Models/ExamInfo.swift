import Foundation

/// 資格ごとに変わる値をここに集約する（configs.py から生成。手で編集しない）。
enum ExamInfo {
    static let appName = "PMOSnote"
    /// ホームのワードマークで強調する頭文字（例："FE"note）
    static let brandPrefix = "PMOS"
    static let examShortName = "PMOスペシャリスト"
    static let examFullName = "PMOスペシャリスト(★)認定資格（NPMO認定 PMO-S）"
    static let officialSite = "日本PMO協会公式サイト（npmo.org）"
    static let organizerNotice = "「PMOスペシャリスト」「PMO-S」は日本PMO協会（NPMO）の認定資格です。本アプリは非公式の学習支援アプリで、公式教材の内容は含みません。問題は国際規格 ISO 21500 とPMO・プロジェクトマネジメントの一般的な知識をもとにしたオリジナルです。"
    /// 本番模試の問題数と制限時間
    static let mockCount = 50
    static let mockMinutes = 90
    /// 合格ライン（1000点満点＝正答率×1000）
    static let passScore = 800
    static let mockNote = "本番はオンライン・50問・90分・択一式で、正答率80%で合格です。受験には指定のNPMO認定教材（映像型eラーニング）の修了と、PJM-A等のプロジェクトマネジメント関連資格が必要です。最新は日本PMO協会公式サイトでご確認ください。"
    static let servicesTitle = "頻出キーワード一覧"
    static let servicesSubtitle = "PMO・PMの用語や手法をカテゴリ別に確認"
    static let servicesSearchPlaceholder = "キーワードを検索"

    struct NextCert { let title: String; let subtitle: String }
    static let nextCerts: [NextCert] = [
        .init(title: "PMOスペシャリスト(★★)", subtitle: "PMOマネジャークラスの知識と技術"),
        .init(title: "PMP（PMI）", subtitle: "プロジェクトマネジメントの国際資格"),
        .init(title: "プロジェクトマネージャ試験（IPA）", subtitle: "大規模プロジェクトの管理力を証明"),
    ]

    /// 直前チェックリスト
    static let finalChecklist: [String] = [
        "PMOの定義と、PM（プロジェクトマネージャー）との役割の違いを説明できる",
        "PMOの種類（支援型・管理型・指揮型）と設置単位（プロジェクト・プログラム・全社）を区別できる",
        "プロジェクト・プログラム・ポートフォリオの違いを言える",
        "ISO 21500 の5つのプロセス群と10の対象群を言える",
        "WBS・クリティカルパス・EVM（PV・EV・AC・SPI・CPI）を説明できる",
        "リスク対応（回避・転嫁・軽減・受容）と、リスクと課題の違いを区別できる",
        "ステークホルダーの特定と、権力/関心度グリッドでの関与方法を言える",
        "変更管理（変更要求→評価→承認→反映）の流れを説明できる",
        "標準化・テンプレート・ナレッジ管理がPMOの価値になる理由を言える",
        "進捗報告・課題管理表・エスカレーションの運用ルールを説明できる",
        "オンライン受験の環境（通信・PC）と受験要件（教材修了・PM資格）を確認した",
    ]

    /// 直前に見直す重要用語カードのID（terms.json の t-key1〜6）
    static let keyTermIds = ["t-key1", "t-key2", "t-key3", "t-key4", "t-key5", "t-key6"]

    /// 完全初心者向け 8週間の標準ロードマップ
    static let roadmap: [WeekGoal] = [
        .init(week: 1, title: "PMOとは", detail: "PMOの定義と目的／PMとPMOの役割の違い／PMOの主な機能", domains: [.pmo]),
        .init(week: 2, title: "PMOの種類と導入", detail: "支援型・管理型・指揮型／プロジェクト・プログラム・全社PMO／導入ステップと定着", domains: [.pmo]),
        .init(week: 3, title: "PMの基礎とISO 21500", detail: "プロジェクトの定義／5つのプロセス群と10の対象群／組織構造とガバナンス", domains: [.pm]),
        .init(week: 4, title: "計画と統合", detail: "プロジェクト憲章／変更管理／WBS／スケジュールとコスト・EVM", domains: [.plan]),
        .init(week: 5, title: "品質・資源・リスク", detail: "品質保証と品質管理／RACI／リスクの評価と対応／リスクと課題の違い", domains: [.plan, .risk]),
        .init(week: 6, title: "関係者と調達", detail: "ステークホルダー分析／コミュニケーション計画／契約形態と調達", domains: [.risk]),
        .init(week: 7, title: "PMO業務の実践", detail: "標準化とテンプレート／進捗・課題のモニタリング／会議体とPM支援", domains: [.ops]),
        .init(week: 8, title: "模擬試験と直前対策", detail: "全分野横断の模試（合格は正答率80%）→間違えた問題の集中復習→用語の総仕上げ", domains: ExamDomain.allCases),
    ]
}
