# Usage Guide for Agentic Systems

**Purpose:** Instructions for AI agents on how to effectively use the ODS Code Library minified documentation.
**Last Updated:** 2025-11-17
**Version:** 1.0

---

## Overview

This documentation has been optimized for agentic systems through:
- **93.4% token reduction** from original 4.6 MB
- **Layered architecture** for context-aware loading
- **Semantic patterns** instead of verbose code
- **Cross-referenced navigation** between related patterns

---

## Loading Strategy

### 1. Always Load First

**`index.md` (15 KB, ~3,700 tokens)**
- Core navigation and taxonomy
- Component and directive quick reference
- Query decision tree
- Usage tips

**Why:** Provides semantic map of all available content. Essential for determining which layers to load.

### 2. Context-Aware Layer Loading

Load additional layers based on query keywords:

| Keywords in Query | Load Layer | Size | Tokens | Content |
|-------------------|------------|------|--------|---------|
| switch, toggle, button, card, search, tabs | `components.md` | 85 KB | ~21,500 | 40 UI components |
| map, chart, dashboard, visualization, kpi | `generators.md` | 36 KB | ~8,900 | 24 generators/templates |
| ods-, ng-, directive, angularjs | `tags.md` | 144 KB | ~36,700 | 215 directives |
| api, waze, integration, external, connector | `api-patterns.md` | 33 KB | ~8,200 | 18 integrations |

### 3. Example Loading Decisions

**Query:** "How do I create a switch toggle?"
```
Load: index.md + components.md
Total: ~25,200 tokens (97.9% reduction vs original)
```

**Query:** "Create a dashboard with a map"
```
Load: index.md + generators.md + tags.md
Total: ~49,200 tokens (95.9% reduction)
```

**Query:** "What does ods-dataset-context do?"
```
Load: index.md + tags.md
Total: ~40,400 tokens (96.6% reduction)
```

**Query:** "Integrate Waze traffic API"
```
Load: index.md + api-patterns.md
Total: ~11,800 tokens (99.0% reduction)
```

**Query:** "Build complex dashboard with map, filters, and external data"
```
Load: All layers (comprehensive)
Total: ~78,900 tokens (93.4% reduction)
```

---

## Search Strategy

### Step 1: Start with Index

Always begin by loading `index.md` to:
1. Understand the taxonomy
2. Identify relevant component types
3. Check directive categories
4. Use the query decision tree

### Step 2: Identify Components

From the query, determine:
- **What UI elements are needed?** → components.md
- **What visualizations?** → generators.md
- **What directives?** → tags.md
- **What integrations?** → api-patterns.md

### Step 3: Load Specific Sections

Use anchor links to jump directly to relevant sections:
- Pattern: `#pattern-name` (e.g., `#switch-module`)
- Directive: `#directive-name` (e.g., `#ods-map`)
- Generator: `#generator-name` (e.g., `#dashboard-layouts`)

### Step 4: Follow Cross-References

When a pattern references another:
- **Within same layer:** Use in-page anchor link
- **Across layers:** Load the referenced layer if not already loaded
- **Related patterns:** Check "Related Patterns" sections for alternatives

### Step 5: Check Canonical Examples

Patterns marked with **★ Canonical Example** are:
- Most complete implementations
- Best documented
- Recommended starting points
- Include variant counts (e.g., "7 variants")

Alternative examples reference canonicals with links.

---

## Pattern Matching

### Using Component Names

Component names in index taxonomy match section anchors:
```
Index: "switch-toggle: Boolean state toggle → [components.md#switch-toggle]"
Direct: Load components.md and jump to #switch-toggle
```

### Using Directive Names

All directives have dedicated sections in tags.md:
```
Index: "ods-map: Interactive map widget → [tags.md#ods-map]"
Direct: Load tags.md and jump to #ods-map
```

### Pattern Structure

Each pattern entry includes:
- **Metadata:** Category, use cases, complexity, source link
- **Overview:** Semantic description of the pattern
- **Structure:** HTML hierarchy (if applicable)
- **Directives:** AngularJS directives used
- **Styling:** CSS selectors and key properties
- **Behavior:** JavaScript components (if applicable)
- **Code Examples:** Summary with source link
- **Related Patterns:** Cross-references

---

## Token Optimization Tips

### 1. Load Minimally

Don't load all layers unless the query requires comprehensive knowledge:
- Simple queries: index + 1 layer (~15-50K tokens)
- Moderate queries: index + 2 layers (~40-60K tokens)
- Complex queries: index + 3+ layers (~60-80K tokens)

### 2. Use Anchor Links

Jump directly to sections instead of searching:
```
Better: Load components.md#switch-toggle (specific section)
Avoid: Load all of components.md and search for switches
```

### 3. Follow Cross-References

Instead of loading all layers speculatively:
```
Better: Load referenced patterns as mentioned
Avoid: Pre-loading all possible related content
```

### 4. Prefer Canonical Examples

When multiple variants exist:
```
Better: Use canonical example (marked with ★)
Avoid: Loading all variants for comparison
```

### 5. Check Source Links

For full code examples beyond patterns:
```
Pattern gives semantic overview (in minified docs)
Source link provides complete code (external)
Only fetch source if pattern description insufficient
```

---

## Layer-Specific Guidance

### index.md (Always Load)

**Contains:**
- Component taxonomy (by type)
- Directive quick reference (top directives)
- Query decision tree
- Common patterns overview
- Category distribution
- Usage tips

**Use for:**
- Initial query analysis
- Determining which layers to load
- Quick directive lookup
- Understanding taxonomy

### components.md (85 KB)

**Contains:**
- 40 UI components and widget tricks
- Interactive controls (switches, buttons, search)
- Layout patterns (cards, containers)
- Styling and behavior details

**Load when query mentions:**
- UI elements: button, switch, toggle, card
- Interactions: click, select, input, search
- Layout: grid, container, responsive
- Components: tabs, modals, icons

**Navigation:**
- Table of contents not included (use index)
- Entries sorted alphabetically
- Cross-references to related components
- Links to directives in tags.md

### generators.md (36 KB)

**Contains:**
- 24 page generators and templates
- Dashboard layouts
- Map visualizations
- Chart/graph patterns
- KPI displays
- Data listings

**Load when query mentions:**
- dashboard, homepage, landing page
- map, geographic, location
- chart, graph, visualization
- kpi, metric, indicator
- comparison, listing, catalog

**Navigation:**
- Table of contents organized by type
- Entries grouped by generator type
- Heavy directive usage (links to tags.md)
- Complex patterns combining multiple components

### tags.md (144 KB)

**Contains:**
- All 215 unique directives
- ODS directives (ods-*): ~40 documented
- AngularJS directives (ng-*): ~15 core
- Usage-based: ~160 additional from code

**Load when query mentions:**
- Any directive name (ods-*, ng-*)
- Data operations: context, query, results
- Visualizations: map, chart, table
- Interactions: click, model, bind
- Conditionals: if, show, hide, switch

**Navigation:**
- Table of contents by category
- Entries organized by directive purpose
- "Used In" sections with usage examples
- Common attributes documented

### api-patterns.md (33 KB)

**Contains:**
- 18 external integration patterns
- Waze traffic API integration
- Custom connectors
- Portal theming
- Custom views

**Load when query mentions:**
- api, external, integration
- waze, traffic, real-time
- connector, webhook, streaming
- custom view, theme, portal
- authentication, authorization

**Navigation:**
- Table of contents by integration type
- Implementation details included
- Requirements and setup notes
- Links to components/tags for UI

---

## Common Patterns Quick Reference

### Data Display

**Map visualization:**
```
Load: generators.md#map-* + tags.md#ods-map
Key directives: ods-map, ods-map-layer, ods-dataset-context
```

**Chart/Graph:**
```
Load: generators.md#*-chart + tags.md#ods-chart
Key directives: ods-chart, ods-chart-serie, ods-chart-query
```

**Data table:**
```
Load: tags.md#ods-table
Key directives: ods-table, ods-dataset-context
```

### User Interaction

**Toggle switch:**
```
Load: components.md#switch-module
Patterns: Light, skewed, flip, button-group variants
```

**Buttons:**
```
Load: components.md#buttons
Patterns: Flat, press, states
```

**Search/Filter:**
```
Load: components.md#search-* + tags.md#ods-facets
Key directives: ods-searchbox, ods-facets, ng-model
```

### Data Operations

**Dataset context:**
```
Load: tags.md#ods-dataset-context
Essential for: All data operations
```

**Data aggregation:**
```
Load: tags.md#ods-aggregation
Related: ods-aggregation-context, ods-aggregation-function
```

**Query results:**
```
Load: tags.md#ods-results
Related: ods-results-context, ng-repeat
```

### Conditional Display

**Show/Hide:**
```
Load: tags.md#ng-if (or ng-show, ng-hide)
Use cases: Toggle visibility, conditional rendering
```

**Switch cases:**
```
Load: tags.md#ng-switch
Use cases: Multiple states, tab switching
```

### Layout

**Cards:**
```
Load: components.md#*-card
Patterns: Access cards, image cards, content cards, etc.
Canonical: components.md#custom-catalog-card (★ 7 variants)
```

**Dashboards:**
```
Load: generators.md#dashboard-layouts
Canonical: generators.md#dashboard-layouts (★ 6 variants)
```

---

## Error Handling

### Pattern Not Found

If a pattern seems missing:
1. Check index.md taxonomy for correct name
2. Pattern may be in different layer than expected
3. Check "Related Patterns" for alternatives
4. Use source links to verify existence in original docs

### Directive Not Found

All 215 directives are in tags.md:
1. Search by exact name (case-sensitive)
2. Check directive categorization (data-context, visualization, etc.)
3. Some directives lack dedicated docs but are documented based on usage

### Cross-Reference Broken

If a cross-reference doesn't resolve:
1. May reference pattern in different layer (load that layer)
2. Anchor format: lowercase, hyphens for spaces, no special chars
3. Check index.md for correct layer mapping

---

## Advanced Usage

### Multi-Stage Queries

For complex queries requiring multiple patterns:

1. **Load index first** - Get overview
2. **Identify primary pattern** - Load that layer
3. **Check dependencies** - Load referenced directives/components
4. **Follow related patterns** - Load alternatives if needed

### Caching Strategy

Recommended caching for repeat queries:
- **Always cache:** index.md (frequently needed)
- **Cache for session:** Layer used in current query
- **Expire:** After query completion or session end

### Batch Operations

For generating multiple components:
- Load components.md once
- Reference multiple patterns within
- Cross-reference to tags.md for directives
- More efficient than per-pattern loading

---

## Performance Metrics

### Token Efficiency Achieved

| Metric | Value |
|--------|-------|
| Overall reduction | 93.4% |
| Per-query average | 96.4% |
| Compression ratio | 15.0:1 |
| Index size | 3,700 tokens |
| Smallest query | 11,800 tokens (99.0% reduction) |
| Largest query | 78,900 tokens (93.4% reduction) |

### Query Response Times

With efficient loading:
- Simple queries: index + 1 layer (~25K tokens)
- Moderate queries: index + 2 layers (~50K tokens)
- Complex queries: index + 3+ layers (~80K tokens)

Compare to: Loading full original (1.2M tokens) for every query

---

## Best Practices

### DO:
✓ Always load index.md first
✓ Use keyword mapping to identify layers
✓ Follow cross-references progressively
✓ Prefer canonical examples (★ marked)
✓ Use anchor links for direct navigation
✓ Check source links for complete code examples
✓ Load layers on-demand based on query needs

### DON'T:
✗ Load all layers speculatively
✗ Ignore the index taxonomy
✗ Skip anchor links and search entire layers
✗ Load variants when canonical exists
✗ Re-load already loaded layers
✗ Assume all cross-references are in-layer

---

## Troubleshooting

**Q: Which layer has component X?**
A: Check index.md taxonomy section for mapping

**Q: How do I find a specific directive?**
A: All directives in tags.md, organized by purpose category

**Q: Pattern seems incomplete?**
A: Pattern provides semantic overview; full code in source link

**Q: Multiple similar patterns found?**
A: Look for ★ canonical marking; others are variants

**Q: Cross-reference points to different file?**
A: Load that layer if not already loaded (normal behavior)

**Q: Need more detail than pattern provides?**
A: Follow source link to original full documentation

---

## Version Information

**Current Version:** 1.0
**Generated From:** ODS Code Library documentation.md (4.6 MB)
**Total Minified Size:** 310 KB (313,406 bytes)
**Token Count:** ~78,900 tokens
**Reduction:** 93.4% from original
**Coverage:** All 98 pages, 215 directives

---

## Support

For issues with minified documentation:
1. Check MAINTENANCE.md for update procedures
2. Validate with validate_coverage.py
3. Regenerate with regenerate_all.sh if needed
4. Report issues to documentation maintainers

For ODS platform support:
- Visit original documentation: https://codelibrary.opendatasoft.com/
- Contact OpenDataSoft for platform-specific help

---

**End of Usage Guide**
