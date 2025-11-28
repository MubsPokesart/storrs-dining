# Using Gemini CLI for Large Codebase Analysis

When analyzing large codebases or multiple files that might exceed context limits, use the Gemini CLI with its massive context window. Use `gemini -p` to leverage Google Gemini's large context capacity.

## File and Directory Inclusion Syntax

Use the `@` syntax to include files and directories in your Gemini prompts. The paths should be relative to WHERE you run the gemini command:

### Examples:

**Single file analysis:**
gemini -p "@src/main.py Explain this file's purpose and structure"

Multiple files:
gemini -p "@package.json @src/index.js Analyze the dependencies used in the code"

Entire directory:
gemini -p "@src/ Summarize the architecture of this codebase"

Multiple directories:
gemini -p "@src/ @tests/ Analyze test coverage for the source code"

Current directory and subdirectories:
gemini -p "@./ Give me an overview of this entire project"

# Or use --all_files flag:
gemini --all_files -p "Analyze the project structure and dependencies"

Implementation Verification Examples

Check if a feature is implemented:
gemini -p "@src/ @lib/ Has dark mode been implemented in this codebase? Show me the relevant files and functions"

Verify authentication implementation:
gemini -p "@src/ @middleware/ Is JWT authentication implemented? List all auth-related endpoints and middleware"

Check for specific patterns:
gemini -p "@src/ Are there any React hooks that handle WebSocket connections? List them with file paths"

Verify error handling:
gemini -p "@src/ @api/ Is proper error handling implemented for all API endpoints? Show examples of try-catch blocks"

Check for rate limiting:
gemini -p "@backend/ @middleware/ Is rate limiting implemented for the API? Show the implementation details"

Verify caching strategy:
gemini -p "@src/ @lib/ @services/ Is Redis caching implemented? List all cache-related functions and their usage"

Check for specific security measures:
gemini -p "@src/ @api/ Are SQL injection protections implemented? Show how user inputs are sanitized"

Verify test coverage for features:
gemini -p "@src/payment/ @tests/ Is the payment processing module fully tested? List all test cases"

When to Use Gemini CLI

Use gemini -p when:
- Analyzing entire codebases or large directories
- Comparing multiple large files
- Need to understand project-wide patterns or architecture
- Current context window is insufficient for the task
- Working with files totaling more than 100KB
- Verifying if specific features, patterns, or security measures are implemented
- Checking for the presence of certain coding patterns across the entire codebase

Important Notes

- Paths in @ syntax are relative to your current working directory when invoking gemini
- The CLI will include file contents directly in the context
- No need for --yolo flag for read-only analysis
- Gemini's context window can handle entire codebases that would overflow Claude's context
- When checking implementations, be specific about what you're looking for to get accurate results

# Context7 MCP Integration

**BEFORE running large Gemini queries, consider using Context7 MCP for library-specific questions:**

Context7 is faster and more focused for documentation lookups. Use it when:
- You need API references for specific libraries (React Router, Tailwind, Drizzle, etc.)
- You're checking how to use a particular feature or pattern
- You need code examples from official documentation
- You want to verify correct usage of library APIs

**Use Gemini CLI when:**
- Analyzing YOUR codebase implementation
- Checking if patterns are applied consistently across YOUR code
- Verifying if features are implemented in YOUR project
- Comparing YOUR code against architectural rules
- Scanning for security issues in YOUR codebase

**Example workflow:**
```bash
# 1. First, check library docs with Context7 MCP
mcp__context7__resolve-library-id({ libraryName: "react-router" })
mcp__context7__get-library-docs({
  context7CompatibleLibraryID: "/remix-run/react-router",
  topic: "loader functions"
})

# 2. Then, verify YOUR implementation with Gemini
gemini -p "@app/routes/ Are all loaders following the React Router v7 patterns from the docs?"
```

**Context7 MCP Example Queries:**
```typescript
// Get React Router v7 documentation
mcp__context7__resolve-library-id({ libraryName: "react-router" })
mcp__context7__get-library-docs({ context7CompatibleLibraryID: "/remix-run/react-router" })

// Get Tailwind CSS v4 documentation
mcp__context7__resolve-library-id({ libraryName: "tailwindcss" })
mcp__context7__get-library-docs({ context7CompatibleLibraryID: "/tailwindlabs/tailwindcss" })

// Get Drizzle ORM documentation
mcp__context7__resolve-library-id({ libraryName: "drizzle-orm" })
mcp__context7__get-library-docs({ context7CompatibleLibraryID: "/drizzle-team/drizzle-orm" })

// Get Cloudflare Workers documentation
mcp__context7__resolve-library-id({ libraryName: "cloudflare workers" })
mcp__context7__get-library-docs({ context7CompatibleLibraryID: "/cloudflare/workers-sdk" })
```

**Decision Matrix:**

| Task | Use Context7 MCP | Use Gemini CLI |
|------|------------------|----------------|
| "How do I use React Router loaders?" | ✅ YES | ❌ NO |
| "Are all my loaders properly typed?" | ❌ NO | ✅ YES |
| "What's the Drizzle syntax for joins?" | ✅ YES | ❌ NO |
| "Do all my queries use Drizzle correctly?" | ❌ NO | ✅ YES |
| "How do Tailwind CSS variables work in v4?" | ✅ YES | ❌ NO |
| "Am I using design tokens consistently?" | ❌ NO | ✅ YES |
