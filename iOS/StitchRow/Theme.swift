import SwiftUI

/// Unique palette for Stitch Row - Cross Stitch Log — dusty plum fabric backdrop with soft sky-blue floss accent.
enum Theme {
    static let background = Color(hex: "#241A22")
    static let surface = Color(hex: "#241A22").opacity(0.001) == Color.clear ? Color(hex: "#241A22") : Color(hex: "#241A22")
    static let card = Color.white.opacity(0.06)
    static let accent = Color(hex: "#D6668F")
    static let accentSecondary = Color(hex: "#8FB4D6")
    static let text = Color(hex: "#F7ECF0")
    static let textMuted = Color(hex: "#F7ECF0").opacity(0.6)

    static let titleFont: Font = .system(.title2, design: .rounded).weight(.bold)
    static let headlineFont: Font = .system(.headline, design: .rounded)
    static let bodyFont: Font = .system(.body, design: .rounded)
    static let captionFont: Font = .system(.caption, design: .rounded)

    static let cornerRadius: CGFloat = 16
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b: UInt64
        (r, g, b) = (int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        self.init(.sRGB, red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255, opacity: 1)
    }
}
