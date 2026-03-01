# Generators Layer - Dashboards & Visualizations

**Purpose:** Page generators, dashboards, maps, charts, and templates
**Categories:** generators, page-templates
**Last Updated:** 2025-11-17

## About This Layer

This layer contains page generators, dashboard layouts, data visualizations, and page templates from the ODS Code Library. These are typically more complex, composed patterns that combine multiple components and directives.

**Common Use Cases:**
- Dashboard layouts with KPIs and charts
- Map-based data visualizations
- Data comparison and analysis tools
- Catalog and listing generators
- Landing page templates

**Navigation:**
- Use generator names as anchor links (e.g., `#dashboard-layouts`)
- Canonical examples marked with ★ are recommended references
- Check directive links for detailed directive documentation
- Full code available in source links

**See also:**
- [index.md] - Quick reference and navigation
- [components.md] - UI components used in generators
- [tags.md] - AngularJS directives reference

---

## Table of Contents

### Comparison Tool (1)

- [Comparison Generator](#comparison-generator)

### Dashboard (5)

- [Dashboard](#dashboard)
- [Dashboard layouts](#dashboard-layouts)
- [Dashboard with filters](#dashboard-with-filters)
- [Monitoring Dashboard](#monitoring-dashboard)
- [Regional COVID-19 Dashboard](#regional-covid-19-dashboard)

### Data Listing (2)

- [Listing Generator](#listing-generator)
- [Listing page](#listing-page)

### KPI Display (1)

- [KPI Generator](#kpi-generator)

### Landing Page (4)

- [Home page 1](#home-page-1)
- [Home page 2](#home-page-2)
- [Home page 3](#home-page-3)
- [Home page 4 with access cards](#home-page-4-with-access-cards)

### Map Visualization (5)

- [Full screen Map Generator](#full-screen-map-generator)
- [Map Listing Generator](#map-listing-generator)
- [Dataviz gallery page](#dataviz-gallery-page)
- [Fullscreen map with filters](#fullscreen-map-with-filters)
- [Map & Refine](#map-refine)

### Page Template (6)

- [Custom view Generator](#custom-view-generator)
- [CSS Grid Framework](#css-grid-framework)
- [Data Story](#data-story)
- [ODS Layout over-ride](#ods-layout-over-ride)
- [Observatory](#observatory)
- [Timeline](#timeline)

---

## comparison-generator

**Type:** Comparison Tool  
**Category:** generators  
**Source:** [https://codelibrary.opendatasoft.com/generators/comparison-generator/](https://codelibrary.opendatasoft.com/generators/comparison-generator/)  

### Overview

Comparison Tool from ODS Code Library.

### AngularJS Directives

**Data Context:**  
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-results-context` → [tags.md#ods-results-context]

**Visualization:**  
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]

**Data Queries:**  
- `ods-adv-analysis` → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-adv-analysis-group-by` → [tags.md#ods-adv-analysis-group-by]
- `ods-adv-analysis-limit` → [tags.md#ods-adv-analysis-limit]
- `ods-adv-analysis-order-by` → [tags.md#ods-adv-analysis-order-by]
- `ods-adv-analysis-select` → [tags.md#ods-adv-analysis-select]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-facet-results` → [tags.md#ods-facet-results]

### Data Binding Patterns

- `{{ $last ? '' : ' + ' }}`
- `{{ $parent }}`
- `{{ 'context' + i }}`
- `{{ 'contextcompare' + i }}`
- `{{ (((kpi2 }}`
- `{{ ((kpi2 }}`
- `{{ (kpi1 }}`
- `{{ (kpi2 }}`

### Code Examples

**Available:** 5 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/generators/comparison-generator/)

---

## dashboard

**Type:** Dashboard  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/dashboard/](https://codelibrary.opendatasoft.com/page-templates/dashboard/)  
**See also:** [#dashboard-layouts] for canonical example  

### Overview

There is two version of the dashboard, the first one built with the standard ODS Layout,it suits to most users.

### AngularJS Directives

**Data Context:**  
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]

**Visualization:**  
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]

**Data Queries:**  
- `ods-aggregation` → [tags.md#ods-aggregation]
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-aggregation-expression` → [tags.md#ods-aggregation-expression]
- `ods-aggregation-function` → [tags.md#ods-aggregation-function]
- `ods-chart-query` → [tags.md#ods-chart-query]

**Other:**  
- `ng-arrow-right`
- `ng-init`

### Data Binding Patterns

- `{{ 'https://' + stats }}`
- `{{ agg | number : 0 }}`
- `{{ agg | number }}`
- `{{ stats }}`

### Code Examples

**Available:** 10 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/dashboard/)

---

## dashboard-layouts

**Type:** Dashboard  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/dashboard-layouts/](https://codelibrary.opendatasoft.com/page-templates/dashboard-layouts/)  
**★ Canonical Example** (6 variants)  

### Overview

These resources are split into 2 main parts

### AngularJS Directives

**Other:**  
- `ng-arrow-right`

### Code Examples

**Available:** 38 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/dashboard-layouts/)

---

## dashboard-with-filters

**Type:** Dashboard  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/dashboard-filter/](https://codelibrary.opendatasoft.com/page-templates/dashboard-filter/)  
**See also:** [#filters-as-an-html-select] for canonical example  

### Overview

This dashboard displays KPIs, charts, map, and includes filters to customize your analysis.

### AngularJS Directives

**Data Context:**  
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]

**Visualization:**  
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-map` → [tags.md#ods-map]
- `ods-map-layer` → [tags.md#ods-map-layer]
- `ods-map-layer-group` → [tags.md#ods-map-layer-group]

**Data Queries:**  
- `ods-adv-analysis` → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-adv-analysis-group-by` → [tags.md#ods-adv-analysis-group-by]
- `ods-adv-analysis-limit` → [tags.md#ods-adv-analysis-limit]
- `ods-adv-analysis-order-by` → [tags.md#ods-adv-analysis-order-by]
- `ods-adv-analysis-select` → [tags.md#ods-adv-analysis-select]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-facet-results` → [tags.md#ods-facet-results]

### Data Binding Patterns

- `{{ analysis }}`
- `{{ medecins }}`
- `{{ values }}`

### Code Examples

**Available:** 11 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/dashboard-filter/)

---

## monitoring-dashboard

**Type:** Dashboard  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/monitoring-dashboard/](https://codelibrary.opendatasoft.com/page-templates/monitoring-dashboard/)  
**See also:** [#dashboard-layouts] for canonical example  

### Overview

This dashboard presents the main figures from the monitoring dataset. See the full documentation about themonitoring dataset.
See themed versions of this dashboardhere.

### AngularJS Directives

**Data Context:**  
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]

**Visualization:**  
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-map` → [tags.md#ods-map]
- `ods-map-layer` → [tags.md#ods-map-layer]
- `ods-map-layer-group` → [tags.md#ods-map-layer-group]

**Data Queries:**  
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-facet-results` → [tags.md#ods-facet-results]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-facet-results-facet-name` → [tags.md#ods-facet-results-facet-name]
- `ods-facet-results-sort` → [tags.md#ods-facet-results-sort]

### Key CSS Classes

- `.card`
- `.col-md-12`
- `.col-md-6`
- `.container`
- `.data-table`
- `.filter`
- `.link_color`
- `.menu`
- `.row`
- `.row-sticky`
- `.subtitle`
- `.title`

### Data Binding Patterns

- `{{ (now|momentadd:'months':-3)|moment:'YYYY-MM-DD' }}`
- `{{ download }}`
- `{{ emptyquery }}`
- `{{ endDate|date:longDate }}`
- `{{ i+1 }}`
- `{{ noresults }}`
- `{{ now|moment:'YYYY-MM-DD' }}`
- `{{ queries }}`

### Code Examples

**Available:** 5 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/monitoring-dashboard/)

---

## regional-covid-19-dashboard

**Type:** Dashboard  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/regional-covid/](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)  
**See also:** [#dashboard-layouts] for canonical example  

### Overview

Dashboard from ODS Code Library.

### AngularJS Directives

**Data Context:**  
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-results-context` → [tags.md#ods-results-context]

**Visualization:**  
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-map` → [tags.md#ods-map]
- `ods-map-layer` → [tags.md#ods-map-layer]

**Data Queries:**  
- `ods-analysis` → [tags.md#ods-analysis]
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-analysis-max` → [tags.md#ods-analysis-max]
- `ods-analysis-serie-altas` → [tags.md#ods-analysis-serie-altas]
- `ods-analysis-serie-codigos` → [tags.md#ods-analysis-serie-codigos]
- `ods-analysis-serie-confirmados` → [tags.md#ods-analysis-serie-confirmados]
- `ods-analysis-serie-fallecimientos` → [tags.md#ods-analysis-serie-fallecimientos]
- `ods-analysis-serie-nuevos` → [tags.md#ods-analysis-serie-nuevos]

### Data Binding Patterns

- `{{ byDate }}`
- `{{ cases }}`
- `{{ colors }}`
- `{{ items }}`
- `{{ lastDate = list }}`
- `{{ nbRecords = byDate }}`
- `{{ reg_code = res }}`
- `{{ region }}`

### Code Examples

**Available:** 6 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/regional-covid/)

---

## listing-generator

**Type:** Data Listing  
**Category:** generators  
**Source:** [https://codelibrary.opendatasoft.com/generators/listing-generator/](https://codelibrary.opendatasoft.com/generators/listing-generator/)  

### Overview

The code of these resources is not meant to be modified. It requires good development skills and strong knowledge of widgets. Huwise will encourage to develop your own page if it doesn’t suit your needs (and therefor won’t provide support if you still try to modified it)

### AngularJS Directives

**Data Context:**  
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-results-context` → [tags.md#ods-results-context]

**Visualization:**  
- `ods-map` → [tags.md#ods-map]
- `ods-map-layer` → [tags.md#ods-map-layer]
- `ods-map-layer-group` → [tags.md#ods-map-layer-group]

**Data Queries:**  
- `ods-adv-analysis` → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-adv-analysis-select` → [tags.md#ods-adv-analysis-select]
- `ods-analysis` → [tags.md#ods-analysis]
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-analysis-serie-c` → [tags.md#ods-analysis-serie-c]
- `ods-analysis-sort` → [tags.md#ods-analysis-sort]
- `ods-analysis-x-day` → [tags.md#ods-analysis-x-day]

### Data Binding Patterns

- `ng-model: localctx.parameters[`
- `{{ $parent }}`
- `{{ 'background-image: url(https://' + $parent }}`
- `{{ 'col-md-' + (12/(mapView?1:itemsPerRow)) }}`
- `{{ 'col-md-' + (12/itemsPerRow) }}`
- `{{ 'col-md-' + (mapView?5:12) }}`
- `{{ (agg }}`
- `{{ (fieldconfig|keys) }}`

### JavaScript Components


### Code Examples

**Available:** 129 examples (css, text, javascript, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/generators/listing-generator/)

---

## listing-page

**Type:** Data Listing  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/listing-page/](https://codelibrary.opendatasoft.com/page-templates/listing-page/)  

### Overview

Data Listing from ODS Code Library.

### AngularJS Directives

**Data Context:**  
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-results-context` → [tags.md#ods-results-context]

**Visualization:**  
- `ods-map` → [tags.md#ods-map]
- `ods-map-layer` → [tags.md#ods-map-layer]
- `ods-map-layer-group` → [tags.md#ods-map-layer-group]

**Data Queries:**  
- `ods-aggregation` → [tags.md#ods-aggregation]
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-aggregation-function` → [tags.md#ods-aggregation-function]
- `ods-analysis` → [tags.md#ods-analysis]
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-analysis-serie-c` → [tags.md#ods-analysis-serie-c]
- `ods-analysis-sort` → [tags.md#ods-analysis-sort]
- `ods-analysis-x-day` → [tags.md#ods-analysis-x-day]

### Data Binding Patterns

- `ng-model: ctx.parameters[`
- `{{ 'background-image: url(https://opendata }}`
- `{{ 'background-image: url(https://userclub }}`
- `{{ 'https://opendata }}`
- `{{ (total || 0) | number : 0 }}`
- `{{ agg | number :  0 }}`
- `{{ bounds }}`
- `{{ item }}`

### Code Examples

**Available:** 18 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/listing-page/)

---

## kpi-generator

**Type:** KPI Display  
**Category:** generators  
**Source:** [https://codelibrary.opendatasoft.com/generators/kpi-generator/](https://codelibrary.opendatasoft.com/generators/kpi-generator/)  

### Overview

EXPERIMENTAL

### AngularJS Directives

**Data Context:**  
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-results-context` → [tags.md#ods-results-context]

**Data Queries:**  
- `ods-aggregation` → [tags.md#ods-aggregation]
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-aggregation-expression` → [tags.md#ods-aggregation-expression]
- `ods-aggregation-function` → [tags.md#ods-aggregation-function]
- `ods-analysis` → [tags.md#ods-analysis]
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-analysis-serie-count` → [tags.md#ods-analysis-serie-count]
- `ods-analysis-x` → [tags.md#ods-analysis-x]

### Data Binding Patterns

- `{{ 'col-md-' + (12/itemsPerRowDesktop) }}`
- `{{ 'col-sm-' + (12/itemsPerRowTablet) }}`
- `{{ (item }}`
- `{{ category }}`
- `{{ dateFormat }}`
- `{{ item }}`
- `{{ kpictx }}`
- `{{ kpidatectxn }}`

### JavaScript Components


### Code Examples

**Available:** 82 examples (json, text, javascript, html, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/generators/kpi-generator/)

---

## home-page-1

**Type:** Landing Page  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/home-1/](https://codelibrary.opendatasoft.com/page-templates/home-1/)  

### Overview

Landing Page from ODS Code Library.

### AngularJS Directives

**Data Context:**  
- `ods-catalog-context` → [tags.md#ods-catalog-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-last-datasets-feed` → [tags.md#ods-last-datasets-feed]
- `ods-most-popular-datasets` → [tags.md#ods-most-popular-datasets]

**Visualization:**  
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-map` → [tags.md#ods-map]

**Data Queries:**  
- `ods-chart-query` → [tags.md#ods-chart-query]

**Other:**  
- `ng-arrow-right`
- `ods-searchbox`
- `ods-widgets`

### Code Examples

**Available:** 4 examples (css, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/home-1/)

---

## home-page-2

**Type:** Landing Page  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/home-2/](https://codelibrary.opendatasoft.com/page-templates/home-2/)  

### Overview

Landing Page from ODS Code Library.

### AngularJS Directives

**Data Context:**  
- `ods-catalog-context` → [tags.md#ods-catalog-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]

**Visualization:**  
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-map` → [tags.md#ods-map]

**Data Queries:**  
- `ods-chart-query` → [tags.md#ods-chart-query]

**Other:**  
- `ods-searchbox`
- `ods-widgets`

### Code Examples

**Available:** 4 examples (css, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/home-2/)

---

## home-page-3

**Type:** Landing Page  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/home-3/](https://codelibrary.opendatasoft.com/page-templates/home-3/)  

### Overview

Landing Page from ODS Code Library.

### AngularJS Directives

**Data Context:**  
- `ods-catalog-context` → [tags.md#ods-catalog-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-last-datasets-feed` → [tags.md#ods-last-datasets-feed]
- `ods-most-popular-datasets` → [tags.md#ods-most-popular-datasets]

**Visualization:**  
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-map` → [tags.md#ods-map]

**Data Queries:**  
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-facet-results` → [tags.md#ods-facet-results]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-facet-results-facet-name` → [tags.md#ods-facet-results-facet-name]
- `ods-facet-results-sort` → [tags.md#ods-facet-results-sort]

**Other:**  
- `ng-repeat`
- `ods-searchbox`
- `ods-theme-picto`
- `ods-widgets`

### Data Binding Patterns

- `{{ theme }}`

### Code Examples

**Available:** 4 examples (css, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/home-3/)

---

## home-page-4-with-access-cards

**Type:** Landing Page  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/home-4-access-cards/](https://codelibrary.opendatasoft.com/page-templates/home-4-access-cards/)  
**See also:** [#custom-catalog-card] for canonical example  

### Overview

This home page integrates the first version of thecomponent Access cardsto highlight redirections to other pages.
The access cards are inserted in a grid container, so that all the cards have the same height.

### AngularJS Directives

**Data Context:**  
- `ods-catalog-context` → [tags.md#ods-catalog-context]
- `ods-last-datasets-feed` → [tags.md#ods-last-datasets-feed]
- `ods-most-popular-datasets` → [tags.md#ods-most-popular-datasets]

**Other:**  
- `ng-arrow-right`
- `ods-searchbox`
- `ods-widgets`

### Code Examples

**Available:** 8 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/home-4-access-cards/)

---

## full-screen-map-generator

**Type:** Map Visualization  
**Category:** generators  
**Source:** [https://codelibrary.opendatasoft.com/generators/fullscreen-map/](https://codelibrary.opendatasoft.com/generators/fullscreen-map/)  
**See also:** [#heatmaps-with-css-grid] for canonical example  

### Overview

Edit only a few settings to generate a modern looking visualization that uses ODS components and widgets.

### AngularJS Directives

**Data Context:**  
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-results-context` → [tags.md#ods-results-context]

**Visualization:**  
- `ods-map` → [tags.md#ods-map]
- `ods-map-layer` → [tags.md#ods-map-layer]
- `ods-map-layer-group` → [tags.md#ods-map-layer-group]

**Data Queries:**  
- `ods-facet-results` → [tags.md#ods-facet-results]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-facet-results-facet-name` → [tags.md#ods-facet-results-facet-name]
- `ods-facet-results-sort` → [tags.md#ods-facet-results-sort]
- `ods-results` → [tags.md#ods-results]
- `ods-results-context` → [tags.md#ods-results-context]
- `ods-results-max` → [tags.md#ods-results-max]

### Data Binding Patterns

- `ng-model: ctx.parameters[`
- `{{ backToResultsButtonText }}`
- `{{ ctx }}`
- `{{ ctxfields }}`
- `{{ datasetid }}`
- `{{ domain }}`
- `{{ fieldLinkLabel }}`
- `{{ filter }}`

### Code Examples

**Available:** 5 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/generators/fullscreen-map/)

---

## map-listing-generator

**Type:** Map Visualization  
**Category:** generators  
**Source:** [https://codelibrary.opendatasoft.com/generators/map-listing/](https://codelibrary.opendatasoft.com/generators/map-listing/)  
**See also:** [#heatmaps-with-css-grid] for canonical example  

### Overview

Note: The listing generator V3 can now handle maps, pagination and other new features. We then recommend to use thelisting generatorinstead of this resource.

### AngularJS Directives

**Data Context:**  
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-results-context` → [tags.md#ods-results-context]

**Visualization:**  
- `ods-map` → [tags.md#ods-map]
- `ods-map-layer` → [tags.md#ods-map-layer]
- `ods-map-layer-group` → [tags.md#ods-map-layer-group]

**Data Queries:**  
- `ods-aggregation` → [tags.md#ods-aggregation]
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-aggregation-expression` → [tags.md#ods-aggregation-expression]
- `ods-aggregation-function` → [tags.md#ods-aggregation-function]
- `ods-facet-results` → [tags.md#ods-facet-results]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-facet-results-facet-name` → [tags.md#ods-facet-results-facet-name]
- `ods-facet-results-sort` → [tags.md#ods-facet-results-sort]

### Data Binding Patterns

- `ng-model: ctx.parameters[`
- `{{ 'background-image: url(https://' + domain + '/explore/dataset/' + datasetid + '/files/' + item }}`
- `{{ 'col-md-' + (12/itemsPerRow) }}`
- `{{ 'https://' + domain + '/explore/dataset/' + datasetid + '/files/' + item }}`
- `{{ (agg || 0) | number : (kpi }}`
- `{{ ctx }}`
- `{{ ctxfields }}`
- `{{ datasetid }}`

### Code Examples

**Available:** 10 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/generators/map-listing/)

---

## dataviz-gallery-page

**Type:** Map Visualization  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/dataviz-gallery/](https://codelibrary.opendatasoft.com/page-templates/dataviz-gallery/)  

### Overview

This template is a mixture of theListing page templateand theAccess Cards component. It was created to offer a simple way of showcasing your data visualizations, custom views, maps and Studio pages on your portal.

### AngularJS Directives

**Data Context:**  
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-catalog-context` → [tags.md#ods-catalog-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-results-context` → [tags.md#ods-results-context]

**Data Queries:**  
- `ods-adv-analysis` → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-adv-analysis-select` → [tags.md#ods-adv-analysis-select]
- `ods-facet-results` → [tags.md#ods-facet-results]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-facet-results-facet-name` → [tags.md#ods-facet-results-facet-name]
- `ods-facet-results-sort` → [tags.md#ods-facet-results-sort]
- `ods-results` → [tags.md#ods-results]

### Data Binding Patterns

- `ng-model: ctx.parameters[`
- `{{ (agg }}`
- `{{ bounds }}`
- `{{ dataset }}`
- `{{ item }}`
- `{{ kpi }}`
- `{{ listedataset }}`

### Code Examples

**Available:** 14 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/dataviz-gallery/)

---

## fullscreen-map-with-filters

**Type:** Map Visualization  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)  
**See also:** [#heatmaps-with-css-grid] for canonical example  

### Overview

Map Visualization from ODS Code Library.

### AngularJS Directives

**Data Context:**  
- `ods-aggregation-avg-context` → [tags.md#ods-aggregation-avg-context]
- `ods-aggregation-max-context` → [tags.md#ods-aggregation-max-context]
- `ods-aggregation-min-context` → [tags.md#ods-aggregation-min-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]

**Visualization:**  
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-map` → [tags.md#ods-map]
- `ods-map-layer` → [tags.md#ods-map-layer]

**Data Queries:**  
- `ods-aggregation` → [tags.md#ods-aggregation]
- `ods-aggregation-avg-context` → [tags.md#ods-aggregation-avg-context]
- `ods-aggregation-avg-expression` → [tags.md#ods-aggregation-avg-expression]
- `ods-aggregation-avg-function` → [tags.md#ods-aggregation-avg-function]
- `ods-aggregation-max-context` → [tags.md#ods-aggregation-max-context]
- `ods-aggregation-max-expression` → [tags.md#ods-aggregation-max-expression]
- `ods-aggregation-max-function` → [tags.md#ods-aggregation-max-function]
- `ods-aggregation-min-context` → [tags.md#ods-aggregation-min-context]

### Data Binding Patterns

- `ng-model: search[`
- `{{ activemaplayer }}`
- `{{ avg | number : 1 }}`
- `{{ ctx }}`
- `{{ max | number : 1 }}`
- `{{ min | number : 1 }}`
- `{{ nb_active_filters =
    (ctx }}`
- `{{ nb_active_filters }}`

### Code Examples

**Available:** 5 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/fullscreen-map/)

---

## map-refine

**Type:** Map Visualization  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/map-refine/](https://codelibrary.opendatasoft.com/page-templates/map-refine/)  
**See also:** [#heatmaps-with-css-grid] for canonical example  

### Overview

Map Visualization from ODS Code Library.

### AngularJS Directives

**Data Context:**  
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]

**Visualization:**  
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-map` → [tags.md#ods-map]
- `ods-map-layer` → [tags.md#ods-map-layer]

**Data Queries:**  
- `ods-analysis` → [tags.md#ods-analysis]
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-analysis-max` → [tags.md#ods-analysis-max]
- `ods-analysis-serie-agg` → [tags.md#ods-analysis-serie-agg]
- `ods-analysis-sort` → [tags.md#ods-analysis-sort]
- `ods-analysis-x` → [tags.md#ods-analysis-x]
- `ods-chart-query` → [tags.md#ods-chart-query]

### Data Binding Patterns

- `{{ shanghai }}`
- `{{ shanghaihistoric }}`
- `{{ univ }}`

### Code Examples

**Available:** 9 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/map-refine/)

---

## custom-view-generator

**Type:** Page Template  
**Category:** generators  
**Source:** [https://codelibrary.opendatasoft.com/generators/custom-view-generator/](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)  

### Overview

Page Template from ODS Code Library.

### AngularJS Directives

**Data Context:**  
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-results-context` → [tags.md#ods-results-context]

**Data Queries:**  
- `ods-aggregation` → [tags.md#ods-aggregation]
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-aggregation-expression` → [tags.md#ods-aggregation-expression]
- `ods-aggregation-function` → [tags.md#ods-aggregation-function]
- `ods-analysis` → [tags.md#ods-analysis]
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-analysis-serie-c` → [tags.md#ods-analysis-serie-c]
- `ods-analysis-sort` → [tags.md#ods-analysis-sort]

### Data Binding Patterns

- `ng-model: ctx.parameters[`
- `{{ 'background-image: url(/explore/dataset/' + ctx }}`
- `{{ 'col-md-' + (12/itemsPerRow) }}`
- `{{ (agg || 0) | number : (kpi }}`
- `{{ 8 * itemsPerRow }}`
- `{{ ctx }}`
- `{{ ctxfields }}`
- `{{ datasetid }}`

### Code Examples

**Available:** 5 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/generators/custom-view-generator/)

---

## css-grid-framework

**Type:** Page Template  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/css-grid-framework/](https://codelibrary.opendatasoft.com/page-templates/css-grid-framework/)  

### Overview

This resource introduces aCSS Grid frameworkbased on CSS Grid layout system.

### Code Examples

**Available:** 66 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/css-grid-framework/)

---

## data-story

**Type:** Page Template  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/datastory/](https://codelibrary.opendatasoft.com/page-templates/datastory/)  

### Overview

Tell a story based on your data. Through chapters and sections, narrate a story and use data visualisations to emphasize your story.

### AngularJS Directives

**Data Context:**  
- `ods-dataset-context` → [tags.md#ods-dataset-context]

**Visualization:**  
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-map` → [tags.md#ods-map]

**Data Queries:**  
- `ods-chart-query` → [tags.md#ods-chart-query]

### Code Examples

**Available:** 32 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/datastory/)

---

## ods-layout-over-ride

**Type:** Page Template  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/ods-layout-over-ride/](https://codelibrary.opendatasoft.com/page-templates/ods-layout-over-ride/)  

### Overview

This resource is an over-ride of ODS default layout system by transforming arowand it’s children into a Flexbox layout.

### Key CSS Classes

- `.box`
- `.col-md-12`
- `.col-md-3`
- `.col-md-5`
- `.col-md-9`
- `.col-sm-6`
- `.container`
- `.dark`
- `.full-height`
- `.no-mb`
- `.row`

### Code Examples

**Available:** 5 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/ods-layout-over-ride/)

---

## observatory

**Type:** Page Template  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/observatory/](https://codelibrary.opendatasoft.com/page-templates/observatory/)  

### Overview

Page Template from ODS Code Library.

### AngularJS Directives

**Data Context:**  
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-dataset-context` → [tags.md#ods-dataset-context]

**Visualization:**  
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]

**Data Queries:**  
- `ods-aggregation` → [tags.md#ods-aggregation]
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-aggregation-function` → [tags.md#ods-aggregation-function]
- `ods-chart-query` → [tags.md#ods-chart-query]

### Data Binding Patterns

- `{{ 'https://' + ctx1 }}`
- `{{ (values }}`
- `{{ ctx1 }}`
- `{{ ctx2 }}`
- `{{ refinements }}`
- `{{ values }}`

### Code Examples

**Available:** 10 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/observatory/)

---

## timeline

**Type:** Page Template  
**Category:** page-templates  
**Source:** [https://codelibrary.opendatasoft.com/page-templates/timeline/](https://codelibrary.opendatasoft.com/page-templates/timeline/)  

### Overview

Page Template from ODS Code Library.

### AngularJS Directives

**Data Context:**  
- `ods-dataset-context` → [tags.md#ods-dataset-context]

**Data Queries:**  
- `ods-infinite-scroll-results` → [tags.md#ods-infinite-scroll-results]

**Other:**  
- `ng-class`
- `ng-href`
- `ng-if`
- `ods-box`
- `ods-geotooltip`

### Key CSS Classes

- `.bnt-more`
- `.date`
- `.fa`
- `.fa-external-link`
- `.fa-map-marker`
- `.ods-box`
- `.timeline-bottom`
- `.timeline-card`
- `.timeline-content`
- `.timeline-frame`
- `.timeline-geo`
- `.timeline-img`

### Data Binding Patterns

- `{{ 'background: linear-gradient(rgba(0,0,0,0), rgba(0,0,0,  }}`
- `{{ item }}`
- `{{ url = 'https://issy-les-moulineaux }}`

### Code Examples

**Available:** 5 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/page-templates/timeline/)

---

---

## Summary

**Total Generators:** 24
**Types:** 7
**Generated:** 2025-11-17 07:57:58
**Source:** ODS Code Library Documentation

For full code examples, click source links above.
