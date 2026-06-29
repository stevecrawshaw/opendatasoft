# Tags Layer - AngularJS Directives

**Purpose:** Complete reference for ODS and AngularJS directives
**Categories:** tags, extracted directive patterns
**Last Updated:** 2025-11-17

## About This Layer

This layer provides comprehensive documentation for all AngularJS directives used in the ODS Code Library. Directives are the core building blocks for data visualization, interaction, and dynamic behavior.

**Directive Types:**
- **ODS Directives** (ods-*): OpenDataSoft-specific directives for data operations
- **AngularJS Directives** (ng-*): Standard AngularJS directives for UI and logic

**Navigation:**
- Use directive names as anchor links (e.g., `#ods-map`)
- Directives organized alphabetically within categories
- Check "Used In" sections to see examples
- Full documentation available via source links

**See also:**
- [index.md] - Quick reference and navigation
- [components.md] - Components that use these directives
- [generators.md] - Dashboards and visualizations using directives

---

## Table of Contents

### Conditional Display (4)

- [`ng-if`](#ng-if)
- [`ng-show`](#ng-show)
- [`ng-switch`](#ng-switch)
- [`ng-switch-when`](#ng-switch-when)

### Data Context (4)

- [`ods-adv-analysis-context`](#ods-adv-analysis-context)
- [`ods-aggregation-context`](#ods-aggregation-context)
- [`ods-dataset-context`](#ods-dataset-context)
- [`ods-results-context`](#ods-results-context)

### Data Query (8)

- [`ods-adv-analysis`](#ods-adv-analysis)
- [`ods-adv-analysis-select`](#ods-adv-analysis-select)
- [`ods-aggregation`](#ods-aggregation)
- [`ods-aggregation-expression`](#ods-aggregation-expression)
- [`ods-aggregation-function`](#ods-aggregation-function)
- [`ods-analysis`](#ods-analysis)
- [`ods-results`](#ods-results)
- [`ods-results-max`](#ods-results-max)

### Interaction (4)

- [`ng-change`](#ng-change)
- [`ng-click`](#ng-click)
- [`ng-model`](#ng-model)
- [`ods-select`](#ods-select)

### Iteration (1)

- [`ng-repeat`](#ng-repeat)

### Other (11)

- [`ng-arrow-right`](#ng-arrow-right)
- [`ng-bind`](#ng-bind)
- [`ng-bind-html`](#ng-bind-html)
- [`ng-href`](#ng-href)
- [`ng-init`](#ng-init)
- [`ng-model-options`](#ng-model-options)
- [`ng-repeat-end`](#ng-repeat-end)
- [`ng-repeat-start`](#ng-repeat-start)
- [`ng-selected`](#ng-selected)
- [`ng-src`](#ng-src)
- [`ng-switch-default`](#ng-switch-default)

### Styling (1)

- [`ng-class`](#ng-class)

### Visualization (7)

- [`ods-chart`](#ods-chart)
- [`ods-chart-query`](#ods-chart-query)
- [`ods-chart-serie`](#ods-chart-serie)
- [`ods-map`](#ods-map)
- [`ods-map-layer`](#ods-map-layer)
- [`ods-map-layer-group`](#ods-map-layer-group)
- [`ods-picto`](#ods-picto)

---

# Conditional Display

## ng-if

**Type:** AngularJS  
**Category:** Conditional Display  
**Usage Count:** 148 occurrences in documentation  

### Description

Conditionally includes an element in the DOM based on expression.

### Common Attributes

- `ng-if`: Expression (element included if truthy)

### Used In

This directive appears in 10 example(s):

- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- ... and 5 more

---

## ng-show

**Type:** AngularJS  
**Category:** Conditional Display  
**Usage Count:** 58 occurrences in documentation  

### Description

Shows an element if the expression is truthy.

### Used In

This directive appears in 10 example(s):

- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- ... and 5 more

---

## ng-switch

**Type:** AngularJS  
**Category:** Conditional Display  
**Usage Count:** 18 occurrences in documentation  

### Description

Conditionally swaps DOM structure based on expression.

### Used In

This directive appears in 10 example(s):

- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- ... and 5 more

---

## ng-switch-default

**Type:** AngularJS  
**Category:** Conditional Display  
**Usage Count:** 18 occurrences in documentation  

### Description

AngularJS directive: ng-switch-default

### Used In

This directive appears in 10 example(s):

- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- ... and 5 more

---

## ng-switch-when

**Type:** AngularJS  
**Category:** Conditional Display  
**Usage Count:** 18 occurrences in documentation  

### Description

Specifies a case within ng-switch.

### Used In

This directive appears in 10 example(s):

- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- ... and 5 more

---

# Data Context

## ods-adv-analysis-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 46 occurrences in documentation  

### Description

Advanced analysis context using ODSQL queries.

### Used In

This directive appears in 10 example(s):

- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Components - Search module](https://codelibrary.opendatasoft.com/components/search-module/)
- ... and 5 more

---

## ods-aggregation-agg2015-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-agg2015-context

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

---

## ods-aggregation-agg2016-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-agg2016-context

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

---

## ods-aggregation-avg-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-avg-context

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-aggregation-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 48 occurrences in documentation  

### Description

Creates a context for data aggregation operations.

### Used In

This directive appears in 10 example(s):

- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- ... and 5 more

---

## ods-aggregation-hospitals-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-hospitals-context

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

---

## ods-aggregation-hospitalshelipad-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-hospitalshelipad-context

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

---

## ods-aggregation-max-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-max-context

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-aggregation-min-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-min-context

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-aggregation-sum-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-sum-context

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)

---

## ods-aggregation-sumkazakhstan-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-sumkazakhstan-context

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)

---

## ods-aggregation-with-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-with-context

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

---

## ods-aggregation-without-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-without-context

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

---

## ods-analysis-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 50 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-context

### Used In

This directive appears in 10 example(s):

- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- ... and 5 more

---

## ods-catalog-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 28 occurrences in documentation  

### Description

AngularJS directive: ods-catalog-context

### Used In

This directive appears in 10 example(s):

- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- [Components - Search box](https://codelibrary.opendatasoft.com/components/search-box/)
- [Components - Search box](https://codelibrary.opendatasoft.com/components/search-box/)
- [Components - Search box](https://codelibrary.opendatasoft.com/components/search-box/)
- ... and 5 more

---

## ods-color-gradient-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 22 occurrences in documentation  

### Description

AngularJS directive: ods-color-gradient-context

### Used In

This directive appears in 10 example(s):

- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- ... and 5 more

---

## ods-dataset-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 305 occurrences in documentation  

### Description

Establishes a data context for accessing datasets. Core directive for data operations.

### Common Attributes

- `context`: Name of the context
- `dataset`: Dataset identifier
- `domain`: Portal domain
- `parameters`: Query parameters

### Used In

This directive appears in 10 example(s):

- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- ... and 5 more

---

## ods-facet-results-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 58 occurrences in documentation  

### Description

AngularJS directive: ods-facet-results-context

### Used In

This directive appears in 10 example(s):

- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-results-context

**Type:** ODS  
**Category:** Data Context  
**Usage Count:** 80 occurrences in documentation  

### Description

Creates a context for displaying query results.

### Used In

This directive appears in 10 example(s):

- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- ... and 5 more

---

# Data Query

## ods-adv-analysis

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 58 occurrences in documentation  

### Description

Advanced data analysis using ODSQL language.

### Used In

This directive appears in 10 example(s):

- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- ... and 5 more

---

## ods-adv-analysis-group-by

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 26 occurrences in documentation  

### Description

AngularJS directive: ods-adv-analysis-group-by

### Used In

This directive appears in 10 example(s):

- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Components - Search module](https://codelibrary.opendatasoft.com/components/search-module/)
- [Components - Search module](https://codelibrary.opendatasoft.com/components/search-module/)
- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- ... and 5 more

---

## ods-adv-analysis-limit

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 12 occurrences in documentation  

### Description

AngularJS directive: ods-adv-analysis-limit

### Used In

This directive appears in 10 example(s):

- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Page Templates - Dashboard with filters](https://codelibrary.opendatasoft.com/page-templates/dashboard-filter/)
- ... and 5 more

---

## ods-adv-analysis-order-by

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 16 occurrences in documentation  

### Description

AngularJS directive: ods-adv-analysis-order-by

### Used In

This directive appears in 10 example(s):

- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Page Templates - Dashboard with filters](https://codelibrary.opendatasoft.com/page-templates/dashboard-filter/)
- ... and 5 more

---

## ods-adv-analysis-select

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 46 occurrences in documentation  

### Description

Specifies SELECT clause for advanced analysis.

### Used In

This directive appears in 10 example(s):

- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Components - Search module](https://codelibrary.opendatasoft.com/components/search-module/)
- ... and 5 more

---

## ods-adv-analysis-where

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-adv-analysis-where

### Used In

This directive appears in 4 example(s):

- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Widget Tricks - ods-adv-analysis](https://codelibrary.opendatasoft.com/widget-tricks/ods-adv-analysis/)
- [Widget Tricks - ods-adv-analysis](https://codelibrary.opendatasoft.com/widget-tricks/ods-adv-analysis/)

---

## ods-aggregation

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 68 occurrences in documentation  

### Description

Performs data aggregation (sum, avg, count, etc.).

### Used In

This directive appears in 10 example(s):

- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- ... and 5 more

---

## ods-aggregation-agg2015-function

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-agg2015-function

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

---

## ods-aggregation-agg2016-function

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-agg2016-function

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

---

## ods-aggregation-avg-expression

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-avg-expression

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-aggregation-avg-function

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-avg-function

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-aggregation-expression

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 34 occurrences in documentation  

### Description

Defines the expression for aggregation.

### Used In

This directive appears in 10 example(s):

- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- ... and 5 more

---

## ods-aggregation-function

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 48 occurrences in documentation  

### Description

Specifies the aggregation function to apply.

### Used In

This directive appears in 10 example(s):

- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- [Components - KPIs](https://codelibrary.opendatasoft.com/components/kpis/)
- ... and 5 more

---

## ods-aggregation-hospitals-function

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-hospitals-function

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

---

## ods-aggregation-hospitalshelipad-function

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-hospitalshelipad-function

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

---

## ods-aggregation-max-expression

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-max-expression

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-aggregation-max-function

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-max-function

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-aggregation-min-expression

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-min-expression

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-aggregation-min-function

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-min-function

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-aggregation-sum-expression

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-sum-expression

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)

---

## ods-aggregation-sum-function

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-sum-function

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)

---

## ods-aggregation-sumkazakhstan-expression

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-sumkazakhstan-expression

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)

---

## ods-aggregation-sumkazakhstan-function

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-sumkazakhstan-function

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)

---

## ods-aggregation-with-function

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-with-function

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

---

## ods-aggregation-without-function

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-aggregation-without-function

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)
- [Widget Tricks - ods-aggregation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

---

## ods-analysis

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 51 occurrences in documentation  

### Description

Performs data analysis operations on a dataset.

### Used In

This directive appears in 10 example(s):

- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- ... and 5 more

---

## ods-analysis-max

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 18 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-max

### Used In

This directive appears in 10 example(s):

- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Page Templates - Map & Refine](https://codelibrary.opendatasoft.com/page-templates/map-refine/)
- [Page Templates - Map & Refine](https://codelibrary.opendatasoft.com/page-templates/map-refine/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- ... and 5 more

---

## ods-analysis-serie-agg

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-agg

### Used In

This directive appears in 2 example(s):

- [Page Templates - Map & Refine](https://codelibrary.opendatasoft.com/page-templates/map-refine/)
- [Page Templates - Map & Refine](https://codelibrary.opendatasoft.com/page-templates/map-refine/)

---

## ods-analysis-serie-altas

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-altas

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## ods-analysis-serie-bestalumniscore

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-bestalumniscore

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)

---

## ods-analysis-serie-bestawardscore

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-bestawardscore

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)

---

## ods-analysis-serie-bestpubscore

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-bestpubscore

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)

---

## ods-analysis-serie-c

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 20 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-c

### Used In

This directive appears in 10 example(s):

- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- ... and 5 more

---

## ods-analysis-serie-cnt

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-cnt

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Filters as an HTML Select](https://codelibrary.opendatasoft.com/widget-tricks/filter-as-list/)
- [Widget Tricks - Filters as an HTML Select](https://codelibrary.opendatasoft.com/widget-tricks/filter-as-list/)

---

## ods-analysis-serie-codigos

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-codigos

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## ods-analysis-serie-confirmados

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-confirmados

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## ods-analysis-serie-count

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 10 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-count

### Used In

This directive appears in 10 example(s):

- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- ... and 5 more

---

## ods-analysis-serie-fallecimientos

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-fallecimientos

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## ods-analysis-serie-nuevos

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-nuevos

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## ods-analysis-serie-popularity

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-popularity

### Used In

This directive appears in 2 example(s):

- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)

---

## ods-analysis-serie-population

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-population

### Used In

This directive appears in 6 example(s):

- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- ... and 1 more

---

## ods-analysis-serie-pubrank

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-pubrank

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)

---

## ods-analysis-serie-total

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-serie-total

### Used In

This directive appears in 2 example(s):

- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)

---

## ods-analysis-sort

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 38 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-sort

### Used In

This directive appears in 10 example(s):

- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- ... and 5 more

---

## ods-analysis-x

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 32 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-x

### Used In

This directive appears in 10 example(s):

- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- ... and 5 more

---

## ods-analysis-x-day

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 16 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-x-day

### Used In

This directive appears in 10 example(s):

- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- ... and 5 more

---

## ods-analysis-x-month

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 20 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-x-month

### Used In

This directive appears in 10 example(s):

- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- ... and 5 more

---

## ods-analysis-x-provincia

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-x-provincia

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## ods-analysis-x-year

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 18 occurrences in documentation  

### Description

AngularJS directive: ods-analysis-x-year

### Used In

This directive appears in 10 example(s):

- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- ... and 5 more

---

## ods-facet

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 10 occurrences in documentation  

### Description

AngularJS directive: ods-facet

### Used In

This directive appears in 10 example(s):

- [Components - Filters](https://codelibrary.opendatasoft.com/components/filters/)
- [Components - Filters](https://codelibrary.opendatasoft.com/components/filters/)
- [Custom Views - GTFS Custom View](https://codelibrary.opendatasoft.com/custom-views/gtfs-custom/)
- [Custom Views - GTFS Custom View](https://codelibrary.opendatasoft.com/custom-views/gtfs-custom/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- ... and 5 more

---

## ods-facet--

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-facet--

### Used In

This directive appears in 2 example(s):

- [Custom Views - GTFS Custom View](https://codelibrary.opendatasoft.com/custom-views/gtfs-custom/)
- [Custom Views - GTFS Custom View](https://codelibrary.opendatasoft.com/custom-views/gtfs-custom/)

---

## ods-facet-results

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 60 occurrences in documentation  

### Description

Displays available facet values with counts.

### Used In

This directive appears in 10 example(s):

- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-facet-results-facet-name

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 58 occurrences in documentation  

### Description

AngularJS directive: ods-facet-results-facet-name

### Used In

This directive appears in 10 example(s):

- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-facet-results-sort

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 50 occurrences in documentation  

### Description

AngularJS directive: ods-facet-results-sort

### Used In

This directive appears in 10 example(s):

- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-facets

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 15 occurrences in documentation  

### Description

Creates faceted search filters based on dataset fields.

### Used In

This directive appears in 10 example(s):

- [Components - Filters](https://codelibrary.opendatasoft.com/components/filters/)
- [Components - Filters](https://codelibrary.opendatasoft.com/components/filters/)
- [Components - Filters](https://codelibrary.opendatasoft.com/components/filters/)
- [Components - Filters](https://codelibrary.opendatasoft.com/components/filters/)
- [Custom Views - GTFS Custom View](https://codelibrary.opendatasoft.com/custom-views/gtfs-custom/)
- ... and 5 more

---

## ods-infinite-scroll-results

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 10 occurrences in documentation  

### Description

AngularJS directive: ods-infinite-scroll-results

### Used In

This directive appears in 10 example(s):

- [Page Templates - Timeline](https://codelibrary.opendatasoft.com/page-templates/timeline/)
- [Page Templates - Timeline](https://codelibrary.opendatasoft.com/page-templates/timeline/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- ... and 5 more

---

## ods-results

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 88 occurrences in documentation  

### Description

Iterates over query results to display records.

### Used In

This directive appears in 10 example(s):

- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- ... and 5 more

---

## ods-results-max

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 77 occurrences in documentation  

### Description

AngularJS directive: ods-results-max

### Used In

This directive appears in 10 example(s):

- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- ... and 5 more

---

## ods-results-sort

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-results-sort

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## ods-subaggregation

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 14 occurrences in documentation  

### Description

AngularJS directive: ods-subaggregation

### Used In

This directive appears in 10 example(s):

- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Widget Tricks - Age Pyramid with custom HTML/CSS](https://codelibrary.opendatasoft.com/widget-tricks/age-pyramid-custom/)
- ... and 5 more

---

## ods-subaggregation-serie-bestrank

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-subaggregation-serie-bestrank

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)

---

## ods-subaggregation-serie-dayavg

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-subaggregation-serie-dayavg

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-adv-analysis](https://codelibrary.opendatasoft.com/widget-tricks/ods-adv-analysis/)
- [Widget Tricks - ods-adv-analysis](https://codelibrary.opendatasoft.com/widget-tricks/ods-adv-analysis/)

---

## ods-subaggregation-serie-max

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-subaggregation-serie-max

### Used In

This directive appears in 4 example(s):

- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)

---

## ods-subaggregation-serie-maxcount

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-subaggregation-serie-maxcount

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Age Pyramid with custom HTML/CSS](https://codelibrary.opendatasoft.com/widget-tricks/age-pyramid-custom/)
- [Widget Tricks - Age Pyramid with custom HTML/CSS](https://codelibrary.opendatasoft.com/widget-tricks/age-pyramid-custom/)

---

## ods-subaggregation-serie-maxval

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-subaggregation-serie-maxval

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## ods-subaggregation-serie-minval

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-subaggregation-serie-minval

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## ods-subaggregation-serie-worstrank

**Type:** ODS  
**Category:** Data Query  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-subaggregation-serie-worstrank

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)

---

# Interaction

## ng-change

**Type:** AngularJS  
**Category:** Interaction  
**Usage Count:** 12 occurrences in documentation  

### Description

Executes expression when input value changes.

### Used In

This directive appears in 10 example(s):

- [Components - Search module](https://codelibrary.opendatasoft.com/components/search-module/)
- [Components - Search module](https://codelibrary.opendatasoft.com/components/search-module/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- ... and 5 more

---

## ng-click

**Type:** AngularJS  
**Category:** Interaction  
**Usage Count:** 132 occurrences in documentation  

### Description

Executes expression on click event.

### Common Attributes

- `ng-click`: Expression to evaluate on click

### Used In

This directive appears in 10 example(s):

- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- ... and 5 more

---

## ng-model

**Type:** AngularJS  
**Category:** Interaction  
**Usage Count:** 64 occurrences in documentation  

### Description

Binds input value to scope variable (two-way binding).

### Common Attributes

- `ng-model`: Scope variable to bind to

### Used In

This directive appears in 10 example(s):

- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- ... and 5 more

---

## ng-model-options

**Type:** AngularJS  
**Category:** Interaction  
**Usage Count:** 38 occurrences in documentation  

### Description

AngularJS directive: ng-model-options

### Used In

This directive appears in 10 example(s):

- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Components - Search module](https://codelibrary.opendatasoft.com/components/search-module/)
- [Components - Search module](https://codelibrary.opendatasoft.com/components/search-module/)
- [Components - Search module](https://codelibrary.opendatasoft.com/components/search-module/)
- ... and 5 more

---

## ng-selected

**Type:** AngularJS  
**Category:** Interaction  
**Usage Count:** 10 occurrences in documentation  

### Description

Sets option selected state based on expression.

### Used In

This directive appears in 10 example(s):

- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Widget Tricks - Filters as an HTML Select](https://codelibrary.opendatasoft.com/widget-tricks/filter-as-list/)
- [Widget Tricks - Filters as an HTML Select](https://codelibrary.opendatasoft.com/widget-tricks/filter-as-list/)
- [Widget Tricks - Filters as an HTML Select](https://codelibrary.opendatasoft.com/widget-tricks/filter-as-list/)
- ... and 5 more

---

## ods-button

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 10 occurrences in documentation  

### Description

AngularJS directive: ods-button

### Used In

This directive appears in 10 example(s):

- [Page Templates - Map & Refine](https://codelibrary.opendatasoft.com/page-templates/map-refine/)
- [Page Templates - Map & Refine](https://codelibrary.opendatasoft.com/page-templates/map-refine/)
- [Widget Tricks - ods-pop-in variants](https://codelibrary.opendatasoft.com/widget-tricks/ods-pop-in/)
- [Widget Tricks - ods-pop-in variants](https://codelibrary.opendatasoft.com/widget-tricks/ods-pop-in/)
- [Widget Tricks - ods-pop-in variants](https://codelibrary.opendatasoft.com/widget-tricks/ods-pop-in/)
- ... and 5 more

---

## ods-dataset-visualization__social-button

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-dataset-visualization__social-button

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)
- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)

---

## ods-dataset-visualization__social-button--facebook

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-dataset-visualization__social-button--facebook

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)
- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)

---

## ods-dataset-visualization__social-button--google-plus

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-dataset-visualization__social-button--google-plus

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)
- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)

---

## ods-dataset-visualization__social-button--linkedin

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-dataset-visualization__social-button--linkedin

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)
- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)

---

## ods-dataset-visualization__social-button--mail

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-dataset-visualization__social-button--mail

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)
- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)

---

## ods-dataset-visualization__social-button--twitter

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-dataset-visualization__social-button--twitter

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)
- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)

---

## ods-dataset-visualization__social-button-icon

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-dataset-visualization__social-button-icon

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)
- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)

---

## ods-main-click

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-main-click

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)

---

## ods-searchbox

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 12 occurrences in documentation  

### Description

Provides a search input for filtering dataset results.

### Used In

This directive appears in 10 example(s):

- [Components - Search box](https://codelibrary.opendatasoft.com/components/search-box/)
- [Components - Search box](https://codelibrary.opendatasoft.com/components/search-box/)
- [Components - Search box](https://codelibrary.opendatasoft.com/components/search-box/)
- [Components - Search box](https://codelibrary.opendatasoft.com/components/search-box/)
- [Page Templates - Home page 2](https://codelibrary.opendatasoft.com/page-templates/home-2/)
- ... and 5 more

---

## ods-select

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 71 occurrences in documentation  

### Description

Creates a selection dropdown widget bound to dataset values.

### Used In

This directive appears in 10 example(s):

- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-selects

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 12 occurrences in documentation  

### Description

AngularJS directive: ods-selects

### Used In

This directive appears in 10 example(s):

- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Page Templates - Dashboard with filters](https://codelibrary.opendatasoft.com/page-templates/dashboard-filter/)
- [Page Templates - Dashboard with filters](https://codelibrary.opendatasoft.com/page-templates/dashboard-filter/)
- [Page Templates - Dashboard with filters](https://codelibrary.opendatasoft.com/page-templates/dashboard-filter/)
- ... and 5 more

---

## ods-text-search

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-text-search

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)
- [Widget Tricks - Share and print](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)

---

## ods-toggle-model

**Type:** ODS  
**Category:** Interaction  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-toggle-model

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

# Iteration

## ng-repeat

**Type:** AngularJS  
**Category:** Iteration  
**Usage Count:** 121 occurrences in documentation  

### Description

Repeats an element for each item in a collection.

### Common Attributes

- `ng-repeat`: Syntax: item in collection

### Used In

This directive appears in 10 example(s):

- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- ... and 5 more

---

# Other

## ng-arrow-down

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ng-arrow-down

### Used In

This directive appears in 2 example(s):

- [Components - Buttons](https://codelibrary.opendatasoft.com/components/buttons/)
- [Components - Buttons](https://codelibrary.opendatasoft.com/components/buttons/)

---

## ng-arrow-left

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ng-arrow-left

### Used In

This directive appears in 4 example(s):

- [Components - Buttons](https://codelibrary.opendatasoft.com/components/buttons/)
- [Components - Buttons](https://codelibrary.opendatasoft.com/components/buttons/)
- [Widget Tricks - ods-map: Refine & Zoom](https://codelibrary.opendatasoft.com/widget-tricks/ods-map-tricks/)
- [Widget Tricks - ods-map: Refine & Zoom](https://codelibrary.opendatasoft.com/widget-tricks/ods-map-tricks/)

---

## ng-arrow-right

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 42 occurrences in documentation  

### Description

AngularJS directive: ng-arrow-right

### Used In

This directive appears in 10 example(s):

- [Components - Access cards](https://codelibrary.opendatasoft.com/components/access-card/)
- [Components - Access cards](https://codelibrary.opendatasoft.com/components/access-card/)
- [Components - Access cards](https://codelibrary.opendatasoft.com/components/access-card/)
- [Components - Access cards](https://codelibrary.opendatasoft.com/components/access-card/)
- [Components - Access cards](https://codelibrary.opendatasoft.com/components/access-card/)
- ... and 5 more

---

## ng-arrow-up

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ng-arrow-up

### Used In

This directive appears in 2 example(s):

- [Components - Buttons](https://codelibrary.opendatasoft.com/components/buttons/)
- [Components - Buttons](https://codelibrary.opendatasoft.com/components/buttons/)

---

## ng-bind

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 10 occurrences in documentation  

### Description

AngularJS directive: ng-bind

### Used In

This directive appears in 10 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- ... and 5 more

---

## ng-bind-html

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 14 occurrences in documentation  

### Description

AngularJS directive: ng-bind-html

### Used In

This directive appears in 10 example(s):

- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- ... and 5 more

---

## ng-binding

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ng-binding

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ng-checked

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 4 occurrences in documentation  

### Description

Sets checkbox checked state based on expression.

### Used In

This directive appears in 4 example(s):

- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Widget Tricks - Age Pyramid with custom HTML/CSS](https://codelibrary.opendatasoft.com/widget-tricks/age-pyramid-custom/)
- [Widget Tricks - Age Pyramid with custom HTML/CSS](https://codelibrary.opendatasoft.com/widget-tricks/age-pyramid-custom/)

---

## ng-copy

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 11 occurrences in documentation  

### Description

AngularJS directive: ng-copy

### Used In

This directive appears in 10 example(s):

- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ng-dataset

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ng-dataset

### Used In

This directive appears in 6 example(s):

- [Components - Sticky header](https://codelibrary.opendatasoft.com/components/sticky-header/)
- [Components - Sticky header](https://codelibrary.opendatasoft.com/components/sticky-header/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- ... and 1 more

---

## ng-disabled

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 8 occurrences in documentation  

### Description

Disables element if expression is truthy.

### Used In

This directive appears in 8 example(s):

- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- ... and 3 more

---

## ng-domain

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ng-domain

### Used In

This directive appears in 6 example(s):

- [Components - Sticky header](https://codelibrary.opendatasoft.com/components/sticky-header/)
- [Components - Sticky header](https://codelibrary.opendatasoft.com/components/sticky-header/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- ... and 1 more

---

## ng-false-value

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ng-false-value

### Used In

This directive appears in 4 example(s):

- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Widget Tricks - Age Pyramid with custom HTML/CSS](https://codelibrary.opendatasoft.com/widget-tricks/age-pyramid-custom/)
- [Widget Tricks - Age Pyramid with custom HTML/CSS](https://codelibrary.opendatasoft.com/widget-tricks/age-pyramid-custom/)

---

## ng-href

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 30 occurrences in documentation  

### Description

AngularJS directive: ng-href

### Used In

This directive appears in 10 example(s):

- [Page Templates - Timeline](https://codelibrary.opendatasoft.com/page-templates/timeline/)
- [Page Templates - Timeline](https://codelibrary.opendatasoft.com/page-templates/timeline/)
- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Components - Search module](https://codelibrary.opendatasoft.com/components/search-module/)
- ... and 5 more

---

## ng-init

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 142 occurrences in documentation  

### Description

Initializes scope variables when element is rendered.

### Used In

This directive appears in 10 example(s):

- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- ... and 5 more

---

## ng-left

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ng-left

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Custom Tooltips](https://codelibrary.opendatasoft.com/widget-tricks/custom-tooltips/)
- [Widget Tricks - Custom Tooltips](https://codelibrary.opendatasoft.com/widget-tricks/custom-tooltips/)

---

## ng-options

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ng-options

### Used In

This directive appears in 4 example(s):

- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Widget Tricks - Filters as an HTML Select](https://codelibrary.opendatasoft.com/widget-tricks/filter-as-list/)
- [Widget Tricks - Filters as an HTML Select](https://codelibrary.opendatasoft.com/widget-tricks/filter-as-list/)

---

## ng-parameters

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ng-parameters

### Used In

This directive appears in 6 example(s):

- [Components - Sticky header](https://codelibrary.opendatasoft.com/components/sticky-header/)
- [Components - Sticky header](https://codelibrary.opendatasoft.com/components/sticky-header/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- [Widget Tricks - ods-analysis, quick intro](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)
- ... and 1 more

---

## ng-repeat-end

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 22 occurrences in documentation  

### Description

AngularJS directive: ng-repeat-end

### Used In

This directive appears in 10 example(s):

- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- ... and 5 more

---

## ng-repeat-start

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 22 occurrences in documentation  

### Description

AngularJS directive: ng-repeat-start

### Used In

This directive appears in 10 example(s):

- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- ... and 5 more

---

## ng-scope

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ng-scope

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-map: CSS Hacks](https://codelibrary.opendatasoft.com/widget-tricks/ods-map-css/)
- [Widget Tricks - ods-map: CSS Hacks](https://codelibrary.opendatasoft.com/widget-tricks/ods-map-css/)

---

## ng-src

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 12 occurrences in documentation  

### Description

AngularJS directive: ng-src

### Used In

This directive appears in 10 example(s):

- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- ... and 5 more

---

## ng-true-value

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ng-true-value

### Used In

This directive appears in 4 example(s):

- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Widget Tricks - Age Pyramid with custom HTML/CSS](https://codelibrary.opendatasoft.com/widget-tricks/age-pyramid-custom/)
- [Widget Tricks - Age Pyramid with custom HTML/CSS](https://codelibrary.opendatasoft.com/widget-tricks/age-pyramid-custom/)

---

## ng-value

**Type:** AngularJS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ng-value

### Used In

This directive appears in 2 example(s):

- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)

---

## ods-api-monitoring

**Type:** ODS  
**Category:** Other  
**Usage Count:** 24 occurrences in documentation  

### Description

AngularJS directive: ods-api-monitoring

### Used In

This directive appears in 10 example(s):

- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-bicycle

**Type:** ODS  
**Category:** Other  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ods-bicycle

### Used In

This directive appears in 6 example(s):

- [Widget Tricks - ods-simple-tabs](https://codelibrary.opendatasoft.com/widget-tricks/ods-simple-tabs/)
- [Widget Tricks - ods-simple-tabs](https://codelibrary.opendatasoft.com/widget-tricks/ods-simple-tabs/)
- [Widget Tricks - ods-simple-tabs](https://codelibrary.opendatasoft.com/widget-tricks/ods-simple-tabs/)
- [Widget Tricks - ods-simple-tabs](https://codelibrary.opendatasoft.com/widget-tricks/ods-simple-tabs/)
- [Widget Tricks - ods-simple-tabs](https://codelibrary.opendatasoft.com/widget-tricks/ods-simple-tabs/)
- ... and 1 more

---

## ods-box

**Type:** ODS  
**Category:** Other  
**Usage Count:** 34 occurrences in documentation  

### Description

AngularJS directive: ods-box

### Used In

This directive appears in 10 example(s):

- [Page Templates - Timeline](https://codelibrary.opendatasoft.com/page-templates/timeline/)
- [Page Templates - Timeline](https://codelibrary.opendatasoft.com/page-templates/timeline/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Page Templates - Map & Refine](https://codelibrary.opendatasoft.com/page-templates/map-refine/)
- ... and 5 more

---

## ods-bus

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-bus

### Used In

This directive appears in 2 example(s):

- [Custom Views - GTFS Custom View](https://codelibrary.opendatasoft.com/custom-views/gtfs-custom/)
- [Custom Views - GTFS Custom View](https://codelibrary.opendatasoft.com/custom-views/gtfs-custom/)

---

## ods-catalog-card

**Type:** ODS  
**Category:** Other  
**Usage Count:** 10 occurrences in documentation  

### Description

AngularJS directive: ods-catalog-card

### Used In

This directive appears in 10 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- ... and 5 more

---

## ods-catalog-card-body

**Type:** ODS  
**Category:** Other  
**Usage Count:** 8 occurrences in documentation  

### Description

AngularJS directive: ods-catalog-card-body

### Used In

This directive appears in 8 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- ... and 3 more

---

## ods-catalog-card-description

**Type:** ODS  
**Category:** Other  
**Usage Count:** 8 occurrences in documentation  

### Description

AngularJS directive: ods-catalog-card-description

### Used In

This directive appears in 8 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- ... and 3 more

---

## ods-catalog-card-highlighted

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-catalog-card-highlighted

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)

---

## ods-catalog-card-keywords

**Type:** ODS  
**Category:** Other  
**Usage Count:** 10 occurrences in documentation  

### Description

AngularJS directive: ods-catalog-card-keywords

### Used In

This directive appears in 10 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- ... and 5 more

---

## ods-catalog-card-metadata-item

**Type:** ODS  
**Category:** Other  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ods-catalog-card-metadata-item

### Used In

This directive appears in 6 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- ... and 1 more

---

## ods-catalog-card-theme-icon

**Type:** ODS  
**Category:** Other  
**Usage Count:** 8 occurrences in documentation  

### Description

AngularJS directive: ods-catalog-card-theme-icon

### Used In

This directive appears in 8 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- ... and 3 more

---

## ods-catalog-card-title

**Type:** ODS  
**Category:** Other  
**Usage Count:** 8 occurrences in documentation  

### Description

AngularJS directive: ods-catalog-card-title

### Used In

This directive appears in 8 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- ... and 3 more

---

## ods-catalog-card-visualizations

**Type:** ODS  
**Category:** Other  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ods-catalog-card-visualizations

### Used In

This directive appears in 6 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- ... and 1 more

---

## ods-catalog-card__metadata

**Type:** ODS  
**Category:** Other  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ods-catalog-card__metadata

### Used In

This directive appears in 6 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- ... and 1 more

---

## ods-catalog-card__visualizations

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-catalog-card__visualizations

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)

---

## ods-circle

**Type:** ODS  
**Category:** Other  
**Usage Count:** 28 occurrences in documentation  

### Description

AngularJS directive: ods-circle

### Used In

This directive appears in 10 example(s):

- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-color-gradient

**Type:** ODS  
**Category:** Other  
**Usage Count:** 24 occurrences in documentation  

### Description

AngularJS directive: ods-color-gradient

### Used In

This directive appears in 10 example(s):

- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- ... and 5 more

---

## ods-color-gradient-high

**Type:** ODS  
**Category:** Other  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-color-gradient-high

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)

---

## ods-color-gradient-logarithmic-scale-factor

**Type:** ODS  
**Category:** Other  
**Usage Count:** 10 occurrences in documentation  

### Description

AngularJS directive: ods-color-gradient-logarithmic-scale-factor

### Used In

This directive appears in 10 example(s):

- [Widget Tricks - Static maps, a quick introduction](https://codelibrary.opendatasoft.com/widget-tricks/svg-maps/)
- [Widget Tricks - Static maps, a quick introduction](https://codelibrary.opendatasoft.com/widget-tricks/svg-maps/)
- [Widget Tricks - Static maps, a quick introduction](https://codelibrary.opendatasoft.com/widget-tricks/svg-maps/)
- [Widget Tricks - Static maps, a quick introduction](https://codelibrary.opendatasoft.com/widget-tricks/svg-maps/)
- [Widget Tricks - Static maps, a quick introduction](https://codelibrary.opendatasoft.com/widget-tricks/svg-maps/)
- ... and 5 more

---

## ods-color-gradient-low

**Type:** ODS  
**Category:** Other  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-color-gradient-low

### Used In

This directive appears in 4 example(s):

- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)

---

## ods-color-gradient-nb-classes

**Type:** ODS  
**Category:** Other  
**Usage Count:** 8 occurrences in documentation  

### Description

AngularJS directive: ods-color-gradient-nb-classes

### Used In

This directive appears in 8 example(s):

- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- ... and 3 more

---

## ods-color-gradient-pow-exponent

**Type:** ODS  
**Category:** Other  
**Usage Count:** 5 occurrences in documentation  

### Description

AngularJS directive: ods-color-gradient-pow-exponent

### Used In

This directive appears in 5 example(s):

- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)

---

## ods-color-gradient-serie

**Type:** ODS  
**Category:** Other  
**Usage Count:** 22 occurrences in documentation  

### Description

AngularJS directive: ods-color-gradient-serie

### Used In

This directive appears in 10 example(s):

- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- ... and 5 more

---

## ods-color-gradient-x

**Type:** ODS  
**Category:** Other  
**Usage Count:** 22 occurrences in documentation  

### Description

AngularJS directive: ods-color-gradient-x

### Used In

This directive appears in 10 example(s):

- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- ... and 5 more

---

## ods-connected_temp

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-connected_temp

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-date-range-slider

**Type:** ODS  
**Category:** Other  
**Usage Count:** 36 occurrences in documentation  

### Description

AngularJS directive: ods-date-range-slider

### Used In

This directive appears in 10 example(s):

- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- ... and 5 more

---

## ods-datetime

**Type:** ODS  
**Category:** Other  
**Usage Count:** 28 occurrences in documentation  

### Description

AngularJS directive: ods-datetime

### Used In

This directive appears in 10 example(s):

- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-explore-v2

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-explore-v2

### Used In

This directive appears in 2 example(s):

- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)

---

## ods-filter-summary

**Type:** ODS  
**Category:** Other  
**Usage Count:** 12 occurrences in documentation  

### Description

AngularJS directive: ods-filter-summary

### Used In

This directive appears in 10 example(s):

- [Components - Filters](https://codelibrary.opendatasoft.com/components/filters/)
- [Components - Filters](https://codelibrary.opendatasoft.com/components/filters/)
- [Components - Filters](https://codelibrary.opendatasoft.com/components/filters/)
- [Components - Filters](https://codelibrary.opendatasoft.com/components/filters/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- ... and 5 more

---

## ods-filters-placeholder

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-filters-placeholder

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-filters__count

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-filters__count

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-filters__count-number

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-filters__count-number

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-filters__count-units

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-filters__count-units

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-filters__filters

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-filters__filters

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-front-footer

**Type:** ODS  
**Category:** Other  
**Usage Count:** 16 occurrences in documentation  

### Description

AngularJS directive: ods-front-footer

### Used In

This directive appears in 10 example(s):

- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- ... and 5 more

---

## ods-front-header

**Type:** ODS  
**Category:** Other  
**Usage Count:** 16 occurrences in documentation  

### Description

AngularJS directive: ods-front-header

### Used In

This directive appears in 10 example(s):

- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- ... and 5 more

---

## ods-front-header__menu

**Type:** ODS  
**Category:** Other  
**Usage Count:** 8 occurrences in documentation  

### Description

AngularJS directive: ods-front-header__menu

### Used In

This directive appears in 8 example(s):

- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- ... and 3 more

---

## ods-front-header__menu-item

**Type:** ODS  
**Category:** Other  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ods-front-header__menu-item

### Used In

This directive appears in 6 example(s):

- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- ... and 1 more

---

## ods-front-header__menu-item-link

**Type:** ODS  
**Category:** Other  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ods-front-header__menu-item-link

### Used In

This directive appears in 6 example(s):

- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- ... and 1 more

---

## ods-front-header__menu-item-link--active

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-front-header__menu-item-link--active

### Used In

This directive appears in 2 example(s):

- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)
- [Portal Themes - Dropdown menu for portal headers](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)

---

## ods-gauge

**Type:** ODS  
**Category:** Other  
**Usage Count:** 10 occurrences in documentation  

### Description

AngularJS directive: ods-gauge

### Used In

This directive appears in 10 example(s):

- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- ... and 5 more

---

## ods-geotooltip

**Type:** ODS  
**Category:** Other  
**Usage Count:** 8 occurrences in documentation  

### Description

AngularJS directive: ods-geotooltip

### Used In

This directive appears in 8 example(s):

- [Page Templates - Timeline](https://codelibrary.opendatasoft.com/page-templates/timeline/)
- [Page Templates - Timeline](https://codelibrary.opendatasoft.com/page-templates/timeline/)
- [Widget Tricks - ods-results](https://codelibrary.opendatasoft.com/widget-tricks/ods-results/)
- [Widget Tricks - ods-results](https://codelibrary.opendatasoft.com/widget-tricks/ods-results/)
- [Widget Tricks - ods-results](https://codelibrary.opendatasoft.com/widget-tricks/ods-results/)
- ... and 3 more

---

## ods-last-datasets-feed

**Type:** ODS  
**Category:** Other  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ods-last-datasets-feed

### Used In

This directive appears in 6 example(s):

- [Page Templates - Home page 1](https://codelibrary.opendatasoft.com/page-templates/home-1/)
- [Page Templates - Home page 1](https://codelibrary.opendatasoft.com/page-templates/home-1/)
- [Page Templates - Home page 4 with access cards](https://codelibrary.opendatasoft.com/page-templates/home-4-access-cards/)
- [Page Templates - Home page 4 with access cards](https://codelibrary.opendatasoft.com/page-templates/home-4-access-cards/)
- [Page Templates - Home page 3](https://codelibrary.opendatasoft.com/page-templates/home-3/)
- ... and 1 more

---

## ods-legend

**Type:** ODS  
**Category:** Other  
**Usage Count:** 8 occurrences in documentation  

### Description

AngularJS directive: ods-legend

### Used In

This directive appears in 8 example(s):

- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- [Widget Tricks - ods-color-gradient + ods-map : a choropleth alternative](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)
- ... and 3 more

---

## ods-logo

**Type:** ODS  
**Category:** Other  
**Usage Count:** 16 occurrences in documentation  

### Description

AngularJS directive: ods-logo

### Used In

This directive appears in 10 example(s):

- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- ... and 5 more

---

## ods-most-popular-datasets

**Type:** ODS  
**Category:** Other  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ods-most-popular-datasets

### Used In

This directive appears in 6 example(s):

- [Page Templates - Home page 1](https://codelibrary.opendatasoft.com/page-templates/home-1/)
- [Page Templates - Home page 1](https://codelibrary.opendatasoft.com/page-templates/home-1/)
- [Page Templates - Home page 4 with access cards](https://codelibrary.opendatasoft.com/page-templates/home-4-access-cards/)
- [Page Templates - Home page 4 with access cards](https://codelibrary.opendatasoft.com/page-templates/home-4-access-cards/)
- [Page Templates - Home page 3](https://codelibrary.opendatasoft.com/page-templates/home-3/)
- ... and 1 more

---

## ods-pagination-block

**Type:** ODS  
**Category:** Other  
**Usage Count:** 12 occurrences in documentation  

### Description

AngularJS directive: ods-pagination-block

### Used In

This directive appears in 10 example(s):

- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- [Generators - Listing Generator](https://codelibrary.opendatasoft.com/generators/listing-generator/)
- ... and 5 more

---

## ods-photo

**Type:** ODS  
**Category:** Other  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ods-photo

### Used In

This directive appears in 6 example(s):

- [Generators - Map Listing Generator](https://codelibrary.opendatasoft.com/generators/map-listing/)
- [Generators - Map Listing Generator](https://codelibrary.opendatasoft.com/generators/map-listing/)
- [Generators - Map Listing Generator](https://codelibrary.opendatasoft.com/generators/map-listing/)
- [Generators - Map Listing Generator](https://codelibrary.opendatasoft.com/generators/map-listing/)
- [Page Templates - Listing page](https://codelibrary.opendatasoft.com/page-templates/listing-page/)
- ... and 1 more

---

## ods-pop-in

**Type:** ODS  
**Category:** Other  
**Usage Count:** 16 occurrences in documentation  

### Description

AngularJS directive: ods-pop-in

### Used In

This directive appears in 10 example(s):

- [Components - Contact Cards](https://codelibrary.opendatasoft.com/components/contact-card/)
- [Components - Contact Cards](https://codelibrary.opendatasoft.com/components/contact-card/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- ... and 5 more

---

## ods-pop-in__backdrop

**Type:** ODS  
**Category:** Other  
**Usage Count:** 14 occurrences in documentation  

### Description

AngularJS directive: ods-pop-in__backdrop

### Used In

This directive appears in 10 example(s):

- [Components - Contact Cards](https://codelibrary.opendatasoft.com/components/contact-card/)
- [Components - Contact Cards](https://codelibrary.opendatasoft.com/components/contact-card/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- ... and 5 more

---

## ods-pop-in__container

**Type:** ODS  
**Category:** Other  
**Usage Count:** 12 occurrences in documentation  

### Description

AngularJS directive: ods-pop-in__container

### Used In

This directive appears in 10 example(s):

- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- ... and 5 more

---

## ods-record-image

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-record-image

### Used In

This directive appears in 2 example(s):

- [Widget Tricks - ods-results](https://codelibrary.opendatasoft.com/widget-tricks/ods-results/)
- [Widget Tricks - ods-results](https://codelibrary.opendatasoft.com/widget-tricks/ods-results/)

---

## ods-resluts

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-resluts

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## ods-responsive-menu

**Type:** ODS  
**Category:** Other  
**Usage Count:** 16 occurrences in documentation  

### Description

AngularJS directive: ods-responsive-menu

### Used In

This directive appears in 10 example(s):

- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- ... and 5 more

---

## ods-responsive-menu-collapsible

**Type:** ODS  
**Category:** Other  
**Usage Count:** 16 occurrences in documentation  

### Description

AngularJS directive: ods-responsive-menu-collapsible

### Used In

This directive appears in 10 example(s):

- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- ... and 5 more

---

## ods-responsive-menu-placeholder

**Type:** ODS  
**Category:** Other  
**Usage Count:** 16 occurrences in documentation  

### Description

AngularJS directive: ods-responsive-menu-placeholder

### Used In

This directive appears in 10 example(s):

- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- [Portal Themes - Colored theme](https://codelibrary.opendatasoft.com/portal-themes/color/)
- ... and 5 more

---

## ods-result-enumerator

**Type:** ODS  
**Category:** Other  
**Usage Count:** 10 occurrences in documentation  

### Description

AngularJS directive: ods-result-enumerator

### Used In

This directive appears in 10 example(s):

- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- ... and 5 more

---

## ods-simple-tab

**Type:** ODS  
**Category:** Other  
**Usage Count:** 20 occurrences in documentation  

### Description

AngularJS directive: ods-simple-tab

### Used In

This directive appears in 10 example(s):

- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- ... and 5 more

---

## ods-simple-tabs

**Type:** ODS  
**Category:** Other  
**Usage Count:** 21 occurrences in documentation  

### Description

AngularJS directive: ods-simple-tabs

### Used In

This directive appears in 10 example(s):

- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- [Generators - KPI Generator](https://codelibrary.opendatasoft.com/generators/kpi-generator/)
- ... and 5 more

---

## ods-spinner

**Type:** ODS  
**Category:** Other  
**Usage Count:** 4 occurrences in documentation  

### Description

AngularJS directive: ods-spinner

### Used In

This directive appears in 4 example(s):

- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Widget Tricks - Custom Tooltips](https://codelibrary.opendatasoft.com/widget-tricks/custom-tooltips/)
- [Widget Tricks - Custom Tooltips](https://codelibrary.opendatasoft.com/widget-tricks/custom-tooltips/)

---

## ods-sticky-scrollable

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-sticky-scrollable

### Used In

This directive appears in 2 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## ods-tag-cloud

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-tag-cloud

### Used In

This directive appears in 2 example(s):

- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)

---

## ods-theme-boxes

**Type:** ODS  
**Category:** Other  
**Usage Count:** 1 occurrences in documentation  

### Description

AngularJS directive: ods-theme-boxes

### Used In

This directive appears in 1 example(s):

- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)

---

## ods-timer

**Type:** ODS  
**Category:** Other  
**Usage Count:** 9 occurrences in documentation  

### Description

AngularJS directive: ods-timer

### Used In

This directive appears in 9 example(s):

- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- [Widget Tricks - Animations](https://codelibrary.opendatasoft.com/widget-tricks/animation/)
- ... and 4 more

---

## ods-timerange

**Type:** ODS  
**Category:** Other  
**Usage Count:** 16 occurrences in documentation  

### Description

AngularJS directive: ods-timerange

### Used In

This directive appears in 10 example(s):

- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-toggle-key

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-toggle-key

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## ods-toggle-value

**Type:** ODS  
**Category:** Other  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-toggle-value

### Used In

This directive appears in 2 example(s):

- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)
- [Page Templates - Regional COVID-19 Dashboard](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## ods-tooltip

**Type:** ODS  
**Category:** Other  
**Usage Count:** 9 occurrences in documentation  

### Description

AngularJS directive: ods-tooltip

### Used In

This directive appears in 9 example(s):

- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Custom Views - Domain Datasets](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Widget Tricks - Heatmaps with CSS Grid](https://codelibrary.opendatasoft.com/widget-tricks/heatmaps-custom/)
- ... and 4 more

---

## ods-widgets

**Type:** ODS  
**Category:** Other  
**Usage Count:** 18 occurrences in documentation  

### Description

AngularJS directive: ods-widgets

### Used In

This directive appears in 10 example(s):

- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Custom Views - Custom view Generator](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)
- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Generators - Comparison Generator](https://codelibrary.opendatasoft.com/generators/comparison-generator/)
- [Generators - Custom view Generator](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)
- ... and 5 more

---

# Styling

## ng-class

**Type:** AngularJS  
**Category:** Styling  
**Usage Count:** 118 occurrences in documentation  

### Description

Dynamically adds CSS classes based on expression.

### Used In

This directive appears in 10 example(s):

- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- [Components - Table module](https://codelibrary.opendatasoft.com/components/table-module/)
- ... and 5 more

---

# Visualization

## ods-chart

**Type:** ODS  
**Category:** Visualization  
**Usage Count:** 110 occurrences in documentation  

### Description

Renders various chart types (line, bar, pie, etc.) for data visualization.

### Common Attributes

- `align-month`: Align data by month
- `single-y-axis`: Use single Y axis
- `label-x`: X-axis label
- `label-y`: Y-axis label

### Used In

This directive appears in 10 example(s):

- [Components - Sticky header](https://codelibrary.opendatasoft.com/components/sticky-header/)
- [Components - Sticky header](https://codelibrary.opendatasoft.com/components/sticky-header/)
- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-chart-query

**Type:** ODS  
**Category:** Visualization  
**Usage Count:** 109 occurrences in documentation  

### Description

Specifies the data query for a chart series.

### Used In

This directive appears in 10 example(s):

- [Components - Sticky header](https://codelibrary.opendatasoft.com/components/sticky-header/)
- [Components - Sticky header](https://codelibrary.opendatasoft.com/components/sticky-header/)
- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-chart-serie

**Type:** ODS  
**Category:** Visualization  
**Usage Count:** 109 occurrences in documentation  

### Description

Defines a data series within an ods-chart.

### Used In

This directive appears in 10 example(s):

- [Components - Sticky header](https://codelibrary.opendatasoft.com/components/sticky-header/)
- [Components - Sticky header](https://codelibrary.opendatasoft.com/components/sticky-header/)
- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-map

**Type:** ODS  
**Category:** Visualization  
**Usage Count:** 104 occurrences in documentation  

### Description

Renders an interactive map widget for geographic data visualization.

### Common Attributes

- `location`: Map center location
- `basemap`: Base map style
- `scroll-wheel-zoom`: Enable scroll zoom
- `toolbar-geolocation`: Show geolocation button
- `toolbar-fullscreen`: Show fullscreen button

### Used In

This directive appears in 10 example(s):

- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- ... and 5 more

---

## ods-map-layer

**Type:** ODS  
**Category:** Visualization  
**Usage Count:** 86 occurrences in documentation  

### Description

Defines a layer on an ods-map with specific data and styling.

### Used In

This directive appears in 10 example(s):

- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-map-layer-group

**Type:** ODS  
**Category:** Visualization  
**Usage Count:** 48 occurrences in documentation  

### Description

Groups multiple map layers for organization and control.

### Used In

This directive appears in 10 example(s):

- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Content cards](https://codelibrary.opendatasoft.com/components/content-card/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- [Components - Material themed cards](https://codelibrary.opendatasoft.com/components/material-themed-cards/)
- ... and 5 more

---

## ods-picto

**Type:** ODS  
**Category:** Visualization  
**Usage Count:** 12 occurrences in documentation  

### Description

Displays pictograms or icons based on data values.

### Used In

This directive appears in 10 example(s):

- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Page Templates - Fullscreen map with filters](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)
- [Widget Tricks - Static maps, a quick introduction](https://codelibrary.opendatasoft.com/widget-tricks/svg-maps/)
- [Widget Tricks - Static maps, a quick introduction](https://codelibrary.opendatasoft.com/widget-tricks/svg-maps/)
- [Widget Tricks - Static maps, a quick introduction](https://codelibrary.opendatasoft.com/widget-tricks/svg-maps/)
- ... and 5 more

---

## ods-table

**Type:** ODS  
**Category:** Visualization  
**Usage Count:** 32 occurrences in documentation  

### Description

Displays data in tabular format with sorting and pagination.

### Used In

This directive appears in 10 example(s):

- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Switch Module](https://codelibrary.opendatasoft.com/components/switch-toggle/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Dropdown module](https://codelibrary.opendatasoft.com/components/dropdown-module/)
- [Components - Filters](https://codelibrary.opendatasoft.com/components/filters/)
- ... and 5 more

---

## ods-theme-picto

**Type:** ODS  
**Category:** Visualization  
**Usage Count:** 6 occurrences in documentation  

### Description

AngularJS directive: ods-theme-picto

### Used In

This directive appears in 6 example(s):

- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- [Components - Custom theme boxes](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)
- [Page Templates - Home page 3](https://codelibrary.opendatasoft.com/page-templates/home-3/)
- [Page Templates - Home page 3](https://codelibrary.opendatasoft.com/page-templates/home-3/)
- [Widget Tricks - Custom catalog card](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)
- ... and 1 more

---

## ods-vega-lite-chart

**Type:** ODS  
**Category:** Visualization  
**Usage Count:** 2 occurrences in documentation  

### Description

AngularJS directive: ods-vega-lite-chart

### Used In

This directive appears in 2 example(s):

- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)
- [Custom Views - Eco-Counter / Eco-Compteur](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)

---

---

## Summary

**Total Directives:** 215
**ODS Directives:** 179
**AngularJS Directives:** 36
**Generated:** 2025-11-17 07:59:31
**Source:** ODS Code Library Documentation

For detailed documentation and examples, click source links above.
