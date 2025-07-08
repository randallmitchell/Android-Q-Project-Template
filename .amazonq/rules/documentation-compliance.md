# Documentation Compliance Rules

## Primary Directive
Amazon Q MUST follow all patterns, examples, and guidelines found in the /docs directory when providing code suggestions or architectural guidance.

## Documentation Hierarchy
1. **Architecture**: /docs/architecture/ - Clean Architecture implementation patterns
2. **Design Patterns**: /docs/patterns/ - MVVM, Repository, and other design patterns with code examples
3. **Module Structure**: /docs/gradle/ - Gradle module requirements and dependencies
4. **Integration Guide**: /docs/amazon-q-integration.md - AI-assisted development workflows

## Code Generation Requirements
- Use exact patterns from documentation examples
- Follow naming conventions shown in /docs
- Implement error handling as demonstrated in /docs/patterns/
- Structure modules according to /docs/gradle/ specifications
- Apply testing strategies from /docs and .amazonq/rules/testing-standards.md

## Context Loading Priority
When generating code or providing guidance:
1. First reference relevant /docs files
2. Apply patterns from documentation examples
3. Ensure compliance with established architecture
4. Maintain consistency with existing template structure