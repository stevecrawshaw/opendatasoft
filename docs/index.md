# ODS Code Library - Quick Reference Index

**Purpose:** Fast semantic navigation for agentic coding systems
**Last Updated:** 2025-11-17
**Coverage:** 98 pages, 8 categories
**Version:** 1.0

## About This Index

This index provides semantic navigation to the ODS Code Library documentation. It is organized by component types, directives, and common patterns to enable efficient context-aware loading.

**Loading Strategy:**
- **Always load this file first** - Core navigation and taxonomy
- **Load specialized layers on demand** - Based on user query keywords
- **Follow cross-references** - Related patterns link to each other

**Layer Files:**
- `components.md` - UI patterns (switches, buttons, cards, etc.)
- `generators.md` - Dashboards, maps, visualizations
- `tags.md` - AngularJS directives (ods-*, ng-*)
- `api-patterns.md` - External API integrations

---

## Component Taxonomy

Components organized by type for quick discovery.

### Data Visualization (31 components)

- **chart-samples**: Chart samples → [components.md#chart-samples]
- **comparison-generator**: Comparison Generator → [generators.md#comparison-generator]
- **custom-tooltips**: Custom Tooltips - These are resources to create custom tooltips for your maps. You can use them di → [components.md#custom-tooltips]
- **custom-view-generator**: Custom view Generator → [generators.md#custom-view-generator]
- **dates**: Dates → [components.md#dates]
- **drill-down-refine-in-charts**: Drill-down refine in charts → [components.md#drill-down-refine-in-charts]
- **dropdown-module**: Dropdown module → [components.md#dropdown-module]
- **filters**: Filters → [components.md#filters]
- **filters-as-an-html-select**: Filters as an HTML Select - !! WARNING !!This ressource is deprecated ! Please useods-selectinstead.Document → [components.md#filters-as-an-html-select]
- **full-screen-map-generator**: Full screen Map Generator - Edit only a few settings to generate a modern looking visualization that uses OD → [generators.md#full-screen-map-generator]
- **heatmaps-with-css-grid**: Heatmaps with CSS Grid - We consider the usage ofods-adv-analysisas a prerequisite of this resource.Docum → [components.md#heatmaps-with-css-grid]
- **icons**: Icons → [components.md#icons]
- **kpi-generator**: KPI Generator - EXPERIMENTAL → [generators.md#kpi-generator]
- **listing-generator**: Listing Generator - The code of these resources is not meant to be modified. It requires good develo → [generators.md#listing-generator]
- **map-listing-generator**: Map Listing Generator - Note: The listing generator V3 can now handle maps, pagination and other new fea → [generators.md#map-listing-generator]
- **material-themed-cards**: Material themed cards - These cards are meant to be themed using only the following variables: → [components.md#material-themed-cards]
- **ods-adv-analysis**: ods-adv-analysis - Theods-adv-analysiswidget exposes the results of an aggregation function over a  → [components.md#ods-adv-analysis]
- **ods-analysis-quick-intro**: ods-analysis, quick intro - The technical documentation says : → [components.md#ods-analysis-quick-intro]
- **ods-chart-css-hacks**: ods-chart: CSS Hacks → [components.md#ods-chart-css-hacks]
- **ods-chart-custom-css-library**: ods-chart: Custom CSS Library → [components.md#ods-chart-custom-css-library]
- **ods-color-gradient-ods-map-a-choropleth-alternative**: ods-color-gradient + ods-map : a choropleth alternative - Thismap rendering techniqueallows to display on a map colored shaped based on th → [components.md#ods-color-gradient-ods-map-a-choropleth-alternative]
- **ods-date-range-slider**: ods-date-range-slider → [components.md#ods-date-range-slider]
- **ods-map-css-hacks**: ods-map: CSS Hacks → [components.md#ods-map-css-hacks]
- **ods-map-refine-zoom**: ods-map: Refine & Zoom → [components.md#ods-map-refine-zoom]
- **ods-results**: ods-results - ods-resultsis a rather simple widget to list records from a dataset. They can be → [components.md#ods-results]
- **ods-select**: ods-select - ods-select allows the selection of one or more items from a list of options. Thi → [components.md#ods-select]
- **search-module**: Search module → [components.md#search-module]
- **share-and-print**: Share and print → [components.md#share-and-print]
- **static-maps-a-quick-introduction**: Static maps, a quick introduction - When your goal is to share a precise analysis of a theme, such as employment or  → [components.md#static-maps-a-quick-introduction]
- **sticky-header**: Sticky header - Sticky content is one that will stay positioned once the user scrolls past it (i → [components.md#sticky-header]
- **table-module**: Table module → [components.md#table-module]

### Interactive Controls (6 components)

- **buttons**: Buttons → [components.md#buttons]
- **content-cards**: Content cards - Generic card to display your content. Some classes are available to easily style → [components.md#content-cards]
- **ods-pop-in-variants**: ods-pop-in variants - Display content in a pop-in window. It can either open automatically or you can  → [components.md#ods-pop-in-variants]
- **ods-simple-tabs**: ods-simple-tabs - Theods-simple-tabswidget can be used to have a tabbed interface that allows you  → [components.md#ods-simple-tabs]
- **search-box**: Search box - Show the ods-searchbox widget alongside a “search” button and a title. Below the → [components.md#search-box]
- **switch-module**: Switch Module - A switch is a visual toggle between two mutually exclusive states — on and off. → [components.md#switch-module]

### Layout (5 components)

- **access-cards**: Access cards - Card to highlight a redirection to another page. Different styles are available. → [components.md#access-cards]
- **contact-cards**: Contact Cards → [components.md#contact-cards]
- **custom-catalog-card**: Custom catalog card - The catalog card represents the published datasets of that portal. (seeExploring → [components.md#custom-catalog-card]
- **custom-theme-boxes**: Custom theme boxes - Replicate theods-theme-boxeswidget funtionality to create custom theme boxes whi → [components.md#custom-theme-boxes]
- **image-cards**: Image cards → [components.md#image-cards]

### Other (3 components)

- **age-pyramid-with-custom-htmlcss**: Age Pyramid with custom HTML/CSS - Create an age pyramid to present the repartition of the population in your area, → [components.md#age-pyramid-with-custom-htmlcss]
- **animations**: Animations → [components.md#animations]
- **kpis**: KPIs → [components.md#kpis]

### Data Interaction (1 components)

- **ods-aggregation**: ods-aggregation - The technical documentation says : → [components.md#ods-aggregation]

## AngularJS Directives Quick Reference

**Total Unique Directives:** 215

Directives organized by purpose. All directives are documented in detail in `tags.md`.

### Other

- `ng-init` (248 uses) - Initialize scope variables → [tags.md#ng-init]
- `ng-arrow-right` (190 uses) - ODS/AngularJS directive → [tags.md#ng-arrow-right]
- `ng-href` (68 uses) - ODS/AngularJS directive → [tags.md#ng-href]
- `ng-switch-default` (56 uses) - ODS/AngularJS directive → [tags.md#ng-switch-default]
- `ng-model-options` (38 uses) - ODS/AngularJS directive → [tags.md#ng-model-options]
- `ng-src` (32 uses) - ODS/AngularJS directive → [tags.md#ng-src]
- `ng-repeat-start` (30 uses) - ODS/AngularJS directive → [tags.md#ng-repeat-start]
- `ng-repeat-end` (30 uses) - ODS/AngularJS directive → [tags.md#ng-repeat-end]
- `ng-bind` (24 uses) - ODS/AngularJS directive → [tags.md#ng-bind]
- `ng-bind-html` (14 uses) - ODS/AngularJS directive → [tags.md#ng-bind-html]
- ... and 1 more in [tags.md]

### Data Query

- `ods-aggregation` (144 uses) - Aggregates data → [tags.md#ods-aggregation]
- `ods-aggregation-function` (130 uses) - Defines aggregation function → [tags.md#ods-aggregation-function]
- `ods-aggregation-expression` (104 uses) - Aggregation expression → [tags.md#ods-aggregation-expression]
- `ods-results` (102 uses) - Displays query results → [tags.md#ods-results]
- `ods-results-max` (92 uses) - ODS/AngularJS directive → [tags.md#ods-results-max]
- `ods-adv-analysis` (92 uses) - Advanced data analysis → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-select` (88 uses) - ODS/AngularJS directive → [tags.md#ods-adv-analysis-select]
- `ods-analysis` (86 uses) - Data analysis widget → [tags.md#ods-analysis]

### Visualization

- `ods-chart-serie` (588 uses) - Defines chart data series → [tags.md#ods-chart-serie]
- `ods-chart-query` (512 uses) - Queries data for charts → [tags.md#ods-chart-query]
- `ods-chart` (504 uses) - Renders interactive charts → [tags.md#ods-chart]
- `ods-map-layer` (256 uses) - Defines map layer configuration → [tags.md#ods-map-layer]
- `ods-map` (228 uses) - Displays interactive maps → [tags.md#ods-map]
- `ods-map-layer-group` (120 uses) - Groups map layers → [tags.md#ods-map-layer-group]
- `ods-picto` (112 uses) - Display pictograms/icons → [tags.md#ods-picto]

### Data Context

- `ods-dataset-context` (832 uses) - Establishes data context scope → [tags.md#ods-dataset-context]
- `ods-aggregation-context` (130 uses) - Aggregation query context → [tags.md#ods-aggregation-context]
- `ods-results-context` (96 uses) - Results query context → [tags.md#ods-results-context]
- `ods-adv-analysis-context` (88 uses) - Advanced analysis context → [tags.md#ods-adv-analysis-context]

### Interaction

- `ng-click` (342 uses) - Click event handler → [tags.md#ng-click]
- `ods-select` (218 uses) - Selection dropdown widget → [tags.md#ods-select]
- `ng-model` (68 uses) - Two-way data binding → [tags.md#ng-model]
- `ng-change` (12 uses) - Change event handler → [tags.md#ng-change]

### Conditional Display

- `ng-if` (1318 uses) - Conditional display → [tags.md#ng-if]
- `ng-switch-when` (212 uses) - Switch case branch → [tags.md#ng-switch-when]
- `ng-show` (104 uses) - Show element conditionally → [tags.md#ng-show]
- `ng-switch` (56 uses) - Switch case display → [tags.md#ng-switch]

### Iteration

- `ng-repeat` (348 uses) - Loop over collections → [tags.md#ng-repeat]

### Styling

- `ng-class` (260 uses) - Dynamic CSS classes → [tags.md#ng-class]

## Common Patterns

Frequently used patterns and their implementations.

**Toggle Visibility:** Show/hide content conditionally  
Directives: `ng-if, ng-show, ng-hide`  
→ [tags.md#conditional-display]

**Data Binding:** Two-way data binding with forms  
Directives: `ng-model, ods-dataset-context`  
→ [tags.md#data-binding]

**User Interaction:** Handle user clicks and events  
Directives: `ng-click, ng-change, button states`  
→ [components.md#interactions]

**Data Visualization:** Display data on maps and charts  
Directives: `ods-map, ods-chart, ods-map-layer`  
→ [generators.md#visualizations]

**Data Queries:** Query and aggregate data  
Directives: `ods-chart-query, ods-aggregation, ods-results`  
→ [tags.md#data-queries]

**Loop & Repeat:** Display lists and collections  
Directives: `ng-repeat, ods-results`  
→ [tags.md#iteration]

**Filtering & Search:** Filter and search datasets  
Directives: `ods-facets, ods-searchbox, ods-select`  
→ [components.md#filtering]

**Styling & Theming:** Dynamic styling and CSS classes  
Directives: `ng-class, ng-style`  
→ [components.md#styling]

## Query Decision Tree

Based on your task, load the appropriate layer files.

**Q: Need to display data on a map?**  
→ Load: [generators.md#map-display], [tags.md#ods-map]
→ Canonical example: Widget Tricks - Heatmaps with CSS Grid

**Q: Creating interactive controls (switches, buttons)?**  
→ Load: [components.md#interactive-controls]

**Q: Building a dashboard or KPI display?**  
→ Load: [generators.md#dashboard], [tags.md#ods-chart]
→ Canonical example: Page Templates - Dashboard layouts

**Q: Need data visualization (charts, graphs)?**  
→ Load: [generators.md#visualizations], [tags.md#ods-chart]
→ Canonical example: Widget Tricks - ods-chart: Custom CSS Library

**Q: Creating cards or content containers?**  
→ Load: [components.md#layout]
→ Canonical example: Widget Tricks - Custom catalog card

**Q: Adding filters or search functionality?**  
→ Load: [components.md#filtering], [tags.md#ods-facets]
→ Canonical example: Widget Tricks - Filters as an HTML Select

**Q: Integrating external API (Waze, etc.)?**  
→ Load: [api-patterns.md]

**Q: Working with AngularJS directives?**  
→ Load: [tags.md]

**Q: Need to query or aggregate data?**  
→ Load: [tags.md#data-queries], [tags.md#ods-aggregation]

**Q: Creating page layouts or templates?**  
→ Load: [generators.md#page-templates]

## Categories Overview

Original documentation categories and their distribution.

| Category | Entries | Primary Layer |
|----------|---------|---------------|
| widget-tricks | 24 | [components.md] - Widget variations |
| page-templates | 18 | [generators.md] - Page layouts |
| components | 16 | [components.md] - UI components |
| tags | 16 | [tags.md] - AngularJS directives |
| apps | 10 | [api-patterns.md] - External integrations |
| generators | 6 | [generators.md] - Page generators |
| custom-views | 4 | [components.md] - Custom views |
| portal-themes | 4 | [components.md] - Theming |

## Usage Tips for Agentic Systems

### Efficient Loading Strategy

1. **Always load `index.md` first** - Provides navigation map
2. **Identify keywords** - Extract from user query (map, chart, button, etc.)
3. **Load relevant layers** - Based on keyword mapping:
   - Keywords: switch, toggle, button, card → `components.md`
   - Keywords: map, chart, dashboard, visualization → `generators.md`
   - Keywords: ods-, ng-, directive → `tags.md`
   - Keywords: api, waze, integration, external → `api-patterns.md`
4. **Follow cross-references** - Load related patterns as needed
5. **Use canonical examples** - Reference these for duplicate patterns

### Search Strategy

1. Check this index for component/directive names
2. Use decision tree to identify relevant layers
3. Load specific sections using anchor links (#section-name)
4. Follow "Related Patterns" links for alternatives
5. Reference canonical examples for best practices

### Token Optimization

- Load only necessary layers (don't load all files)
- Use anchor links to jump to specific sections
- Follow cross-references instead of duplicating content
- Prefer canonical examples over variants (noted in each layer)

---

## Documentation Statistics

- **Total Pages:** 98
- **Component Types:** 5
- **Unique Directives:** 215
- **Code Patterns:** 1857
- **Canonical Examples:** 5
- **Deduplication Ratio:** 83.3% reduction potential

---

**Generated:** 2025-11-17 07:55:20
**Source:** ODS Code Library Documentation
**Version:** 1.0 (Minified for Agentic Systems)
