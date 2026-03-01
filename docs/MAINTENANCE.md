# Maintenance Guide

**Purpose:** Instructions for updating and maintaining the minified ODS Code Library documentation.
**Last Updated:** 2025-11-17
**Version:** 1.0

---

## Overview

This minified documentation is generated from source using an automated pipeline. When the source documentation changes, run the regeneration pipeline to update the minified layers.

**Key Principle:** Never manually edit generated files in `llms-reference/`. Always regenerate from source.

---

## Quick Start

### Full Regeneration

When `data/documentation.md` changes:

```bash
bash regenerate_all.sh
```

This runs all phases automatically:
1. Analysis & Inventory
2. Pattern Extraction
3. Layer Generation
4. Validation & Measurement

Takes ~2-5 minutes depending on system.

### Verify Results

After regeneration:

```bash
# Check validation results
cat data/validation_report.txt

# Check token efficiency
cat data/token_efficiency_report.txt

# Verify file sizes
ls -lh llms-reference/*.md
```

---

## File Structure

### Source Files

```
data/
└── documentation.md          (4.6 MB) - Source documentation (DO NOT EDIT HERE)
```

**Update source by:**
1. Fetching latest from ODS Code Library
2. Replacing `data/documentation.md`
3. Running regeneration pipeline

### Generated Files (DO NOT EDIT)

```
llms-reference/
├── index.md              (15 KB)  - Core navigation
├── components.md         (85 KB)  - UI components
├── generators.md         (36 KB)  - Dashboards/visualizations
├── tags.md              (144 KB)  - AngularJS directives
├── api-patterns.md       (33 KB)  - External integrations
├── USAGE.md              (Manual) - Usage guide
└── MAINTENANCE.md        (Manual) - This file
```

**Regenerate by:** Running `bash regenerate_all.sh`

### Intermediate Data Files

```
data/
├── parsed_entries.json           (4.8 MB) - Parsed structure
├── analysis_report.json          (52 KB)  - Phase 1 analysis
├── taxonomy.json                 (64 KB)  - Component taxonomy
├── extracted_patterns.json       (1.8 MB) - Phase 2 patterns
├── deduplication_report.json     (13 KB)  - Canonical examples
├── validation_report.txt         (Text)   - Validation results
├── token_efficiency_metrics.json (JSON)   - Efficiency data
└── token_efficiency_report.txt   (Text)   - Efficiency report
```

**Regenerate by:** Running individual phase scripts or full pipeline

### Scripts (Version Controlled)

```
analyze_documentation.py      - Phase 1.1: Parse documentation
build_taxonomy.py            - Phase 1.2: Build taxonomy
pattern_extractor.py         - Phase 2.1: Extract patterns
deduplicate_examples.py      - Phase 2.2: Find canonical examples
generate_index.py            - Phase 3.1: Generate index
generate_components.py       - Phase 3.2: Generate components layer
generate_generators.py       - Phase 3.3: Generate generators layer
generate_tags.py             - Phase 3.4: Generate tags layer
generate_api_patterns.py     - Phase 3.5: Generate API patterns layer
validate_coverage.py         - Phase 5.1: Validate completeness
measure_token_efficiency.py  - Phase 5.2: Measure efficiency
regenerate_all.sh            - Complete pipeline
```

---

## Common Maintenance Tasks

### 1. Update Source Documentation

**When:** ODS Code Library releases new content

**Steps:**
1. Fetch latest `documentation.md` from source
2. Replace `data/documentation.md`
3. Run full regeneration:
   ```bash
   bash regenerate_all.sh
   ```
4. Review validation report
5. Verify token efficiency maintained (>85% reduction)
6. Commit changes to version control

**Expected Changes:**
- New entries added to appropriate layers
- Taxonomy updated with new components/directives
- Token counts may increase slightly
- Reduction percentage should remain ~93%

### 2. Fix Validation Issues

**When:** `validate_coverage.py` reports failures

**Steps:**
1. Read `data/validation_report.txt`
2. Identify failing test
3. Common issues:
   - **Missing pages:** Check category mapping in generators
   - **Broken references:** Update anchor link format
   - **Directive coverage:** Verify tags.md generation
4. Fix relevant generator script
5. Re-run affected phase:
   ```bash
   uv run python generate_tags.py  # Example for directive issues
   ```
6. Re-validate:
   ```bash
   uv run python validate_coverage.py
   ```

### 3. Update Patterns

**When:** Pattern extraction needs improvement

**Steps:**
1. Edit `pattern_extractor.py`
2. Update extraction functions:
   - `extract_html_pattern()` for HTML
   - `extract_css_pattern()` for CSS
   - `extract_js_pattern()` for JavaScript
3. Re-run from Phase 2:
   ```bash
   uv run python pattern_extractor.py
   uv run python deduplicate_examples.py
   bash regenerate_all.sh  # Or run Phase 3 scripts individually
   ```
4. Verify improvements in generated layers

### 4. Adjust Layer Organization

**When:** Content better suited for different layer

**Steps:**
1. Edit appropriate generator script:
   - `generate_components.py` for UI patterns
   - `generate_generators.py` for dashboards/visualizations
   - `generate_tags.py` for directives
   - `generate_api_patterns.py` for integrations
2. Update category filtering logic
3. Re-run Phase 3:
   ```bash
   uv run python generate_components.py  # Example
   ```
4. Update index if layer distribution changes:
   ```bash
   uv run python generate_index.py
   ```
5. Validate:
   ```bash
   uv run python validate_coverage.py
   ```

### 5. Update Taxonomy

**When:** Component classification needs adjustment

**Steps:**
1. Edit `build_taxonomy.py`
2. Update classification functions:
   - `classify_component_type()` for component types
   - `get_directive_category()` for directive purposes
3. Re-run from Phase 1.2:
   ```bash
   uv run python build_taxonomy.py
   bash regenerate_all.sh  # Full regeneration recommended
   ```
4. Verify taxonomy in `index.md`

### 6. Add New Layer

**When:** New content category requires separate layer

**Steps:**
1. Create new generator script (e.g., `generate_newlayer.py`)
2. Model after existing generators (components, generators, etc.)
3. Add to regeneration pipeline (`regenerate_all.sh`)
4. Update `index.md` to reference new layer
5. Update `USAGE.md` with new layer guidance
6. Test full pipeline:
   ```bash
   bash regenerate_all.sh
   ```

---

## Phase-by-Phase Regeneration

### Run Individual Phases

For targeted updates without full regeneration:

**Phase 1: Analysis**
```bash
uv run python analyze_documentation.py
uv run python build_taxonomy.py
```

**Phase 2: Pattern Extraction**
```bash
uv run python pattern_extractor.py
uv run python deduplicate_examples.py
```

**Phase 3: Layer Generation**
```bash
uv run python generate_index.py
uv run python generate_components.py
uv run python generate_generators.py
uv run python generate_tags.py
uv run python generate_api_patterns.py
```

**Phase 5: Validation**
```bash
uv run python validate_coverage.py
uv run python measure_token_efficiency.py
```

### Dependencies

Phases must run in order:
- Phase 2 requires Phase 1 outputs
- Phase 3 requires Phases 1 & 2 outputs
- Phase 5 requires Phases 1, 2, & 3 outputs

**Shortcut:** Running Phase 3 script automatically uses existing Phase 1-2 outputs. Only re-run Phase 1-2 if source changed or taxonomy needs update.

---

## Troubleshooting

### Problem: Validation fails after regeneration

**Solution:**
1. Check validation report: `cat data/validation_report.txt`
2. Identify specific failure
3. Common causes:
   - Cross-references point to wrong layer (design choice, not error)
   - Missing entries (check category filtering)
   - Directive not found (verify tags.md generation)
4. Fix relevant generator script
5. Re-run affected phase

### Problem: Token efficiency below target

**Solution:**
1. Check metrics: `cat data/token_efficiency_report.txt`
2. Expected: >85% overall reduction
3. If below 85%:
   - Verify pattern extraction working correctly
   - Check for verbose descriptions being included
   - Ensure CSS vendor prefixes stripped
   - Review generated files for unnecessary content
4. Adjust extraction/generation scripts
5. Re-run from Phase 2

### Problem: Generated files too large

**Solution:**
1. Check actual sizes: `ls -lh llms-reference/*.md`
2. Compare to targets:
   - index.md: ~50 KB
   - components.md: ~400 KB
   - generators.md: ~300 KB
   - tags.md: ~800 KB
   - api-patterns.md: ~200 KB
3. Current sizes well under targets (good!)
4. If exceeding targets:
   - Review pattern extraction for verbosity
   - Check for duplicate content
   - Verify deduplication working correctly
5. Adjust scripts and regenerate

### Problem: Script errors during regeneration

**Solution:**
1. Check which script failed (shown in error message)
2. Run script individually for detailed error:
   ```bash
   uv run python [script_name].py
   ```
3. Common causes:
   - Missing input file (run previous phase)
   - JSON parsing error (check data file integrity)
   - Python dependency issue (verify uv and dependencies)
4. Fix error and continue from that phase

### Problem: Content missing from layers

**Solution:**
1. Verify entry in source: Check `data/documentation.md`
2. Check category: Verify entry has correct category tag
3. Check filtering: Review generator script for category filter
4. Check parsing: Verify in `data/parsed_entries.json`
5. If parsed correctly but not generated:
   - Update generator script category filter
   - Re-run Phase 3
6. If not parsed:
   - Check documentation format
   - Update `analyze_documentation.py` parser
   - Re-run from Phase 1

---

## Version Control

### Files to Commit

**Always commit:**
- All Python scripts (*.py)
- regenerate_all.sh
- USAGE.md
- MAINTENANCE.md
- llms-reference/*.md (generated layers)
- README.md (if exists)
- .gitignore
- pyproject.toml

**Optionally commit:**
- data/documentation.md (source, may be large)
- data/*.json (intermediate files, can regenerate)
- data/*.txt (reports, can regenerate)

**Never commit:**
- .venv/ (Python virtual environment)
- __pycache__/ (Python cache)
- *.pyc (Python compiled)
- .DS_Store (Mac OS)
- *.swp (editor temp files)

### Git Workflow

**When updating documentation:**
```bash
# 1. Update source
# (Place new documentation.md in data/)

# 2. Regenerate
bash regenerate_all.sh

# 3. Review changes
git status
git diff llms-reference/*.md

# 4. Commit
git add -A
git commit -m "Update minified documentation from latest source"

# 5. Tag version (optional)
git tag v1.1
git push --tags
```

### Semantic Versioning

Suggested versioning for generated documentation:

- **Major (v2.0.0):** Architecture changes (new layers, reorganization)
- **Minor (v1.1.0):** Content updates from source (new entries, major additions)
- **Patch (v1.0.1):** Bug fixes (parsing errors, broken links, typos)

---

## Performance Optimization

### Regeneration Time

Current performance: ~2-5 minutes for full pipeline

**Optimization opportunities:**
1. **Parallel generation:** Run layer generators in parallel (Phase 3)
2. **Incremental updates:** Only regenerate changed categories
3. **Caching:** Cache unchanged intermediate files
4. **Selective validation:** Skip validation if no changes

### File Size Optimization

Current sizes well under targets (82% better).

**If sizes grow:**
1. Review pattern extraction for verbosity
2. Increase deduplication aggressiveness
3. Trim descriptions to essential info
4. Remove redundant cross-references

### Token Efficiency Maintenance

Target: >85% reduction (currently 93.4%)

**Monitor:**
- Run `measure_token_efficiency.py` after regeneration
- Compare to baseline metrics
- Investigate if reduction drops below 90%

**Maintain efficiency:**
- Keep patterns semantic, not verbose
- Avoid duplicating information
- Use cross-references instead of repetition
- Preserve canonical example system

---

## Testing

### Automated Tests

Run after regeneration:

```bash
# Completeness validation
uv run python validate_coverage.py

# Token efficiency measurement
uv run python measure_token_efficiency.py
```

### Manual Tests

Periodically verify:

1. **Navigation:** Links in index.md resolve correctly
2. **Cross-references:** Links between layers work
3. **Canonical marking:** ★ markers present and accurate
4. **Source links:** External links to original docs valid
5. **Formatting:** Markdown renders correctly
6. **Anchor links:** Section anchors match headers

### Regression Testing

Before committing major changes:

1. Backup current `llms-reference/`
2. Make changes and regenerate
3. Compare file sizes (should be similar)
4. Compare token counts (should be similar)
5. Spot-check several entries for quality
6. Verify validation passes
7. If acceptable, commit changes

---

## Continuous Integration

### Automated Pipeline (Future)

Suggested CI/CD workflow:

```yaml
# .github/workflows/regenerate.yml (example)
on:
  push:
    paths:
      - 'data/documentation.md'
  workflow_dispatch:

jobs:
  regenerate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Install uv
        run: curl -LsSf https://astral.sh/uv/install.sh | sh
      - name: Regenerate documentation
        run: bash regenerate_all.sh
      - name: Commit changes
        run: |
          git config user.name "Bot"
          git config user.email "bot@example.com"
          git add llms-reference data
          git commit -m "Auto-regenerate documentation" || exit 0
          git push
```

### Scheduled Updates

If source updates regularly:
- Set up scheduled fetch of `documentation.md`
- Run regeneration pipeline automatically
- Create pull request with changes
- Review and merge

---

## Best Practices

### DO:
✓ Always regenerate from source (never edit generated files)
✓ Run full validation after regeneration
✓ Check token efficiency maintained (>85%)
✓ Commit scripts and generated files together
✓ Document changes in commit messages
✓ Test changes before committing
✓ Keep USAGE.md and MAINTENANCE.md updated

### DON'T:
✗ Manually edit files in `llms-reference/`
✗ Skip validation after regeneration
✗ Commit without testing
✗ Modify intermediate files in `data/` manually
✗ Change scripts without regenerating
✗ Ignore validation warnings
✗ Let token efficiency drop below 85%

---

## Support & Resources

### Documentation

- **USAGE.md:** How agentic systems should use the documentation
- **Implementation Plan:** MINIFICATION_IMPLEMENTATION_PLAN.md
- **Phase Summaries:** PHASE_1_SUMMARY.md, PHASE_2_SUMMARY.md, PHASE_3_SUMMARY.md

### Scripts

All Python scripts include:
- Docstrings explaining purpose
- Usage instructions in header
- Main execution with error handling

Run with `-h` or `--help` for usage (if implemented).

### Community

For issues or questions:
1. Check this maintenance guide
2. Review implementation plan
3. Examine script source code
4. Test with validate/measure scripts
5. Report issues to maintainers

---

## Change Log

### Version 1.0 (2025-11-17)
- Initial minified documentation release
- 93.4% token reduction achieved
- All 98 pages covered across 5 layers
- 215 directives documented
- Validation and measurement tools included
- Complete regeneration pipeline

---

**End of Maintenance Guide**
