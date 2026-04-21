# AGENTS.md - Swift Learning Project Guide

## Project Overview

**SwiftLearn** is an educational Swift project designed to demonstrate and teach fundamental Swift programming concepts. This is a learning repository, not a production application.

**Version:** 0.5  
**Language:** Swift  
**Platform:** macOS (Xcode project)  
**Purpose:** Educational demonstrations of Swift language features

## Project Structure

```
SwiftLearn/
├── SwiftLearn/              # Main source directory
│   ├── main.swift          # Entry point - orchestrates all demos
│   ├── Variables.swift     # Variables, constants, and types
│   ├── Collections.swift   # Arrays and dictionaries
│   ├── Classes.swift       # OOP with classes (Person example)
│   ├── Structures.swift    # Value types (Resolution example)
│   ├── Closures.swift      # Higher-order functions and closures
│   ├── Inheritance.swift   # Class inheritance (Shape hierarchy)
│   ├── ControlFlow.swift   # Loops and conditionals
│   ├── Enum.swift          # Enumerations
│   └── XFiles.swift        # Additional examples
└── SwiftLearnTests/         # Test suite
    ├── AllTests.swift
    └── Info.plist
```

## Key Concepts Demonstrated

### 1. **Variables and Types** (`Variables.swift`)
- Variable (`var`) vs constant (`let`) declarations
- Type annotations and type inference
- String interpolation
- Basic types: `String`, `Double`, `Int`, `Bool`

### 2. **Collections** (`Collections.swift`)
- **Arrays**: Creation, initialization, manipulation, iteration
- **Dictionaries**: Key-value pairs, optional handling
- Collection operations: append, insert, slicing, merging

### 3. **Classes** (`Classes.swift`)
- Object-oriented programming with reference types
- Multiple initializers (constructors)
- Properties with getters and setters
- Methods with named parameters
- Protocol conformance (`CustomStringConvertible`)
- Example: `Person` class with name, surname, age

### 4. **Structures** (`Structures.swift`)
- Value types vs reference types
- Struct initialization
- Member-wise initializers
- Example: `Resolution` struct with width/height

### 5. **Closures** (`Closures.swift`)
- Higher-order functions (functions as parameters)
- Function types: `(Int) -> Bool`
- Passing functions as arguments
- Example: `sumNumbers` with condition closures

### 6. **Inheritance** (`Inheritance.swift`)
- Class hierarchies and polymorphism
- Abstract base classes (Shape)
- Method overriding
- Factory pattern (`ShapeFactory`)
- Subclasses: `Triangle`, `Square`, `Pentagon`

### 7. **Control Flow** (`ControlFlow.swift`)
- Loops: `for-in`, ranges
- Conditionals: `if`, `switch`
- Pattern matching

### 8. **Enumerations** (`Enum.swift`)
- Enum declarations and cases
- Associated values
- Pattern matching with enums

## Code Patterns and Conventions

### Naming Conventions
- **Functions**: camelCase (e.g., `variablesAndValues()`, `testClosures()`)
- **Classes**: PascalCase (e.g., `Person`, `Shape`, `ShapeFactory`)
- **Variables**: camelCase (e.g., `completeName`, `numberOfSides`)
- **Constants**: camelCase for local, UPPER_CASE for global (e.g., `VERSION`)

### Access Control
- `open`: Classes and methods intended for inheritance/override
- `public`: Public API for initializers
- `fileprivate`: Internal implementation details
- Default (internal): Most declarations

### Documentation
- Header comments include copyright and creation date
- Inline comments explain non-obvious logic
- Function documentation uses `/** */` for complex functions

### Swift-Specific Patterns
1. **Optional Handling**: Uses `if let` for safe unwrapping
2. **String Interpolation**: `\(variable)` for embedding values
3. **Type Inference**: Minimal explicit type annotations
4. **Protocol Conformance**: `CustomStringConvertible` for string representation
5. **Computed Properties**: Getters/setters without backing storage

## Development Guidelines

### When Adding New Examples

1. **Create a dedicated Swift file** for each major concept
2. **Follow the existing pattern**:
   ```swift
   // Header with copyright
   import Foundation
   
   func demonstrateFeature() {
       // Implementation
   }
   ```
3. **Add function call to `main.swift`** to execute the demo
4. **Keep examples simple and focused** on one concept
5. **Use print statements** to show output and explain behavior

### Code Style
- **Indentation**: 4 spaces (Xcode default)
- **Braces**: Opening brace on same line
- **Spacing**: Space after keywords, around operators
- **Line Length**: Keep reasonable (no strict limit)
- **Comments**: Explain "why" not "what" when code is clear

### Testing
- Tests are located in `SwiftLearnTests/`
- Use XCTest framework
- Test file: `AllTests.swift`
- Run tests through Xcode Test Navigator

## Common Tasks

### Adding a New Concept Demo

1. Create new Swift file in `SwiftLearn/` directory
2. Add appropriate header comments
3. Import Foundation if needed
4. Create demonstration function(s)
5. Add function call to `main.swift`
6. Test by running the project

### Modifying Existing Examples

1. Locate the relevant Swift file
2. Maintain existing code style and patterns
3. Ensure changes don't break other examples
4. Update comments if behavior changes
5. Test the entire project to ensure nothing breaks

### Running the Project

```bash
# From command line (if Swift is installed)
swift run

# Or use Xcode
# Open SwiftLearn.xcodeproj
# Press Cmd+R to build and run
```

## Important Notes for AI Agents

1. **This is a learning project**: Code prioritizes clarity over optimization
2. **Examples are self-contained**: Each file demonstrates specific concepts independently
3. **No external dependencies**: Uses only Swift standard library and Foundation
4. **Sequential execution**: `main.swift` calls demo functions in order
5. **Educational comments**: Preserve and enhance explanatory comments
6. **Swift version**: Code uses modern Swift syntax (Swift 5+)
7. **Platform-specific**: Some APIs (like `arc4random_uniform`) are macOS/iOS specific

## Architecture Decisions

### Why Separate Files?
Each concept gets its own file for:
- Clear organization
- Easy navigation
- Focused learning
- Independent modification

### Why Global Functions?
Most demos use global functions rather than classes because:
- Simpler for beginners
- Focuses on the concept being taught
- Reduces boilerplate
- Easy to call from `main.swift`

### Why No Error Handling?
Educational code omits extensive error handling to:
- Keep examples simple
- Focus on the primary concept
- Avoid overwhelming beginners
- Maintain readability

## Version History

- **0.5**: Current version with core Swift concepts
- Created: June 2015
- Last Updated: 2026
- Copyright: Alessio Saltarin (2015-2026)

## Resources for Understanding This Project

- **Swift Documentation**: https://docs.swift.org/swift-book/
- **Swift Language Guide**: Focus on basics, collections, classes, closures
- **Xcode**: Required for building and running the project

## Contact and Contribution

This is a personal learning project by Alessio Saltarin. When working with this codebase:
- Maintain the educational focus
- Keep examples simple and clear
- Preserve the existing structure
- Add comments for complex concepts
- Test all changes thoroughly
