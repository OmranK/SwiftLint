public extension Configuration {
    /// The style for empty lines used in a Swift project.
    enum EmptyLineAlignmentStyle: Hashable {
        /// Adds or removes whitespace to align with scope.
        case matchingScope
        /// Trims all whitespace empty lines.
        case trimmingWhitespace

        /// The default indentation style if none is explicitly provided.
        public static let `default` = matchingScope
        
        public var shouldTrimWhitespaces: Bool {
            switch self {
            case .matchingScope:
                return false
            case .trimmingWhitespace:
                return true
            }
        }
    }
}
