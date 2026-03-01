# Components Layer - UI Patterns

**Purpose:** UI components and widget variations
**Categories:** components, widget-tricks
**Last Updated:** 2025-11-17

## About This Layer

This layer contains UI components and widget patterns from the ODS Code Library. Components include switches, buttons, cards, search boxes, tabs, and other interactive elements.

**Navigation:**
- Use component names as anchor links (e.g., `#switch-module`)
- Check "Related Patterns" sections for alternatives
- Canonical examples marked with ★ are recommended references
- Full code available in source links

**See also:**
- [index.md] - Quick reference and navigation
- [generators.md] - Dashboards and page layouts
- [tags.md] - AngularJS directives used in components

---

## access-cards

**Category:** Layout  
**Use Cases:** Content containers, dataset displays, navigation cards, information panels  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/access-card/](https://codelibrary.opendatasoft.com/components/access-card/)  
**See also:** [#custom-catalog-card] for canonical example  

### Pattern Overview

Card to highlight a redirection to another page. Different styles are available.

### Structure

```
div > [a, h3, h2, h4, p] > i
```

**Key Elements:**
- `<div class="row">`
- `<div class="col-md-4">`
- `<a class="access-card-bg" href="...">`
- `<div class="access-card">`
- `<div class="access-card-content">`

### AngularJS Integration

**Directives Used:**
- `ng-arrow-right` → [tags.md#ng-arrow-right]

### Styling

**Main Selectors:**
- `.access-card`
- `.access-card-bg`
- `.access-card-button`
- `.access-card-description`
- `.access-card-pretitle`
- `.access-card-subtitle`
- `.access-card-title`
- `.h4`

**Key Properties:**
- Layout: display: flex, height: 100%, width: 100%
- Spacing: margin-bottom: 20px, margin: 5px 0px 0px 0px, 0px, padding: 10px, 26px 0px 0px 26px
- Visual: secondary-color: #142e7b, border-radius: 10px, 6px, box-shadow: 0px 6px 13px rgba(0, 0, 0, 0.13)
- Typography: text-decoration: none, text-transform: uppercase, font-weight: 400, 700
- Animation: transition: all 0.3s

**States:**
- `:hover` - box-shadow, text-decoration

**Animations:**
- Transitions: all 0.3s
- Transforms: uppercase, translateX(5px)

### Code Examples

**Available:** 24 examples (html, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/access-card/)

### Related Patterns

- [dashboard](#dashboard)
- [dashboard-layouts](#dashboard-layouts)
- [home-page-1](#home-page-1)
- [home-page-4-with-access-cards](#home-page-4-with-access-cards)
- [observatory](#observatory)

---

## buttons

**Category:** Interactive Controls  
**Use Cases:** User actions, form submissions, navigation, state changes  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/buttons/](https://codelibrary.opendatasoft.com/components/buttons/)  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
button > a
```

**Key Elements:**
- `<button class="basic-button" [angularjs-directives]>`
- `<a class="basic-button" href="...">`

### AngularJS Integration

**Directives Used:**
- `ng-arrow-down` → [tags.md#ng-arrow-down]
- `ng-arrow-left` → [tags.md#ng-arrow-left]
- `ng-arrow-up` → [tags.md#ng-arrow-up]
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ng-show` → [tags.md#ng-show]

### Styling

**Main Selectors:**
- `.basic-button`

**Key Properties:**
- Layout: display: inline-block
- Spacing: padding: .5rem 1rem
- Visual: border-radius: 4px, color: #FFFFFF, background-color: #df4516, #EC643C
- Typography: font-size: 1rem, font-weight: normal, line-height: 1.5

**States:**
- `:hover` - outline, text-decoration, background-color

### Code Examples

**Available:** 16 examples (html, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/buttons/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [comparison-generator](#comparison-generator)
- [contact-cards](#contact-cards)
- [custom-catalog-card](#custom-catalog-card)

---

## contact-cards

**Category:** Layout  
**Use Cases:** Content containers, dataset displays, navigation cards, information panels  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/contact-card/](https://codelibrary.opendatasoft.com/components/contact-card/)  
**See also:** [#custom-catalog-card] for canonical example  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > [img, h2, h3, h4] > br
```

**Key Elements:**
- `<div class="container row">`
- `<div class="col-md-3">`
- `<div class="contact-card">`
- `<div class="contact-card-header">`
- `<img class="contact-card-photo">`

### AngularJS Integration

**Directives Used:**
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ods-pop-in` → [tags.md#ods-pop-in]
- `ods-pop-in__backdrop` → [tags.md#ods-pop-in__backdrop]

### Styling

**Main Selectors:**
- `.contact-card`
- `.contact-card-description`
- `.contact-card-header`
- `.contact-card-photo`
- `.contact-card-post`
- `.contact-card-tag`
- `.contact-card-title`

**Key Properties:**
- Layout: height: 140px, 100%, display: flex, flex-direction: column
- Spacing: padding: 4px, 26px, margin: auto, margin-top: 0, 26px
- Visual: background-color: var(--boxes-background), #d2e6cc, color: var(--text), #6f6f6f, border: 1px solid var(--boxes-border)
- Typography: text-align: center, text-decoration: none, font-size: 1em, 1rem
- Animation: transition: all .2s

**States:**
- `:hover` - border-color

**Animations:**
- Transitions: all .2s
- Transforms: uppercase

### Code Examples

**Available:** 8 examples (html, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/contact-card/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [comparison-generator](#comparison-generator)
- [custom-catalog-card](#custom-catalog-card)

---

## content-cards

**Category:** Interactive Controls  
**Use Cases:** Content containers, dataset displays, navigation cards, information panels  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/content-card/](https://codelibrary.opendatasoft.com/components/content-card/)  
**See also:** [#custom-catalog-card] for canonical example  

### Pattern Overview

Generic card to display your content. Some classes are available to easily style your titles, text and buttons.

### Structure

```
div > [i, h2, p] > a
```

**Key Elements:**
- `<div class="row">`
- `<div class="col-md-4">`
- `<div class="content-card centered-card">`
- `<div class="text-center">`
- `<i class="fa fa-envira">`

### AngularJS Integration

**Directives Used:**
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-circle` → [tags.md#ods-circle]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-map` → [tags.md#ods-map]
- `ods-map-layer` → [tags.md#ods-map-layer]
- `ods-map-layer-group` → [tags.md#ods-map-layer-group]

### Styling

**Main Selectors:**
- `.centered-card`
- `.content-card`
- `.content-card-button`
- `.content-card-description`
- `.content-card-icon`
- `.content-card-link`
- `.content-card-title`

**Key Properties:**
- Layout: display: flex, inline-block, flex-direction: column, height: 100%
- Spacing: padding: .5rem 1.15rem, 26px, margin-bottom: 20px, 13px, margin-top: 0
- Visual: background-color: var(--boxes-background), border-radius: 4px, color: var(--text), var(--highlight)
- Typography: font-size: .867rem, 1.2rem, line-height: 1.5, font-weight: bold, normal
- Animation: transition: all .2s

**States:**
- `:hover` - opacity, text-decoration

**Animations:**
- Transitions: all .2s

### Code Examples

**Available:** 13 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/content-card/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)
- [custom-tooltips](#custom-tooltips)

---

## custom-theme-boxes

**Category:** Layout  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** Medium  
**Source:** [https://codelibrary.opendatasoft.com/components/custom-theme-boxes/](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)  

### Pattern Overview

Replicate theods-theme-boxeswidget funtionality to create custom theme boxes which are easier to style and layout.

### Structure

```
section > [div, a] > h3
```

**Key Elements:**
- `<ods>`
- `<section class="container-fluid">`
- `<div class="row row-equal-height" [angularjs-directives]>`
- `<div class="col-md-3 margin-bottom-20" [angularjs-directives]>`
- `<a class="color-card" href="...">`

### AngularJS Integration

**Directives Used:**
- `ng-repeat` → [tags.md#ng-repeat]
- `ods-catalog-context` → [tags.md#ods-catalog-context]
- `ods-facet-results` → [tags.md#ods-facet-results]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-facet-results-facet-name` → [tags.md#ods-facet-results-facet-name]
- `ods-facet-results-sort` → [tags.md#ods-facet-results-sort]
- `ods-theme-boxes` → [tags.md#ods-theme-boxes]
- `ods-theme-picto` → [tags.md#ods-theme-picto]

**Data Binding Examples:**
- `{{ theme }}`

### Styling

**Main Selectors:**
- `.color-card`
- `.color-card-description`
- `.color-card-icon`
- `.color-card-link`
- `.color-card-picto`
- `.color-card-title`
- `.margin-bottom-20`
- `.row-equal-height`

**Key Properties:**
- Layout: flex-wrap: wrap, display: flex, flex-direction: column
- Spacing: margin-bottom: 0, 20px, padding: 39px, margin-top: auto, 0
- Visual: background-color: var(--boxes-background), color: var(--text), inherit, border-radius: 4px
- Typography: text-align: center, text-decoration: none, font-size: 1.2rem, 2rem
- Animation: transition: all .2s, transform: scale(1.02)

**States:**
- `:focus` - text-decoration, transform, box-shadow

**Animations:**
- Transitions: all .2s
- Transforms: scale(1.02)

### Code Examples

**Available:** 6 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/custom-theme-boxes/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [comparison-generator](#comparison-generator)
- [custom-catalog-card](#custom-catalog-card)
- [custom-view-generator](#custom-view-generator)
- [dashboard-with-filters](#dashboard-with-filters)

---

## dropdown-module

**Category:** Data Visualization  
**Use Cases:** Option selection, form inputs, navigation menus  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/dropdown-module/](https://codelibrary.opendatasoft.com/components/dropdown-module/)  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > button > a
```

**Key Elements:**
- `<div class="cl-dropdown" [angularjs-directives]>`
- `<button id="dropdown-button" class="{" [angularjs-directives]>`
- `<div class="cl-dropdown-menu" [angularjs-directives]>`
- `<div class="cl-dropdown-title">`
- `<div class="cl-dropdown-items">`

### AngularJS Integration

**Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-init` → [tags.md#ng-init]
- `ng-model` → [tags.md#ng-model]
- `ng-repeat` → [tags.md#ng-repeat]
- `ng-show` → [tags.md#ng-show]
- `ng-value` → [tags.md#ng-value]
- `ods-box` → [tags.md#ods-box]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet-results` → [tags.md#ods-facet-results]

**Data Binding Examples:**
- `{{ dropdown }}`
- `{{ universities }}`
- `ng-model: universities.parameters[`
- `{{ (!universities }}`
- `{{ country }}`

### Styling

**Main Selectors:**
- `.cl-dropdown`
- `.cl-dropdown-backdrop`
- `.cl-dropdown-button`
- `.cl-dropdown-button-active`
- `.cl-dropdown-button-open`
- `.cl-dropdown-input`
- `.cl-dropdown-item`
- `.cl-dropdown-items`

**Key Properties:**
- Layout: display: flex, inline-block, position: absolute, relative, top: 0, 38px
- Spacing: margin: 0, 13px 0 26px 0, padding: 26px 0, 0 26px, margin-right: 4px, 6px
- Visual: color: var(--text), var(--links), border: 1px solid #dee5ef, 1px solid #cbd2db, border-radius: 2rem, 4px
- Typography: font-size: 1rem, 1.3rem, font-weight: normal, text-overflow: ellipsis
- Animation: transition: all .2s, visibility 0s, opacity 0.1s ease, top 0.1s ease

**States:**
- `:hover` - text-decoration
- `:focus` - color, border-color

**Animations:**
- Transitions: all .2s, visibility 0s, opacity 0.1s ease, top 0.1s ease

### Code Examples

**Available:** 9 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/dropdown-module/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## filters

**Category:** Data Visualization  
**Use Cases:** Data filtering, search refinement, category selection  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/filters/](https://codelibrary.opendatasoft.com/components/filters/)  
**See also:** [#filters-as-an-html-select] for canonical example  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > [a, i, h2] > button
```

**Key Elements:**
- `<ods>`
- `<div class="fullpage-app" [angularjs-directives]>`
- `<div class="rightmodal">`
- `<div class="backdrop" [angularjs-directives]>`
- `<div class="cl-modal" [angularjs-directives]>`

### AngularJS Integration

**Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-init` → [tags.md#ng-init]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet` → [tags.md#ods-facet]
- `ods-facets` → [tags.md#ods-facets]
- `ods-filter-summary` → [tags.md#ods-filter-summary]
- `ods-table` → [tags.md#ods-table]

**Data Binding Examples:**
- `{{ refinements }}`

### Styling

**Main Selectors:**
- `.backdrop`
- `.backdrop-active`
- `.cl-modal`
- `.cl-modal-active`
- `.cl-modal__content`
- `.cl-modal__footer`
- `.cl-modal__header`
- `.cl-modal__rightside`

**Key Properties:**
- Layout: position: absolute, relative, width: 0, 100%, display: flex
- Spacing: modal-margin: calc(var(--header-size) + var(--footer-size)), margin: 0, 15px 0, padding: 0 10px, 2px 4px 2px 2px
- Visual: border-radius: 3px, background-color: #f3f3f3, #000, border-left: solid 1px lightgrey, none
- Typography: font-weight: 600, line-height: 1.8em
- Animation: transition: opacity 0s, ease-in 0.3s, transition-delay: 0.3s

**Animations:**
- Transitions: opacity 0s, ease-in 0.3s

### Code Examples

**Available:** 9 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/filters/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## icons

**Category:** Data Visualization  
**Use Cases:** Visual indicators, status display, navigation aids  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/icons/](https://codelibrary.opendatasoft.com/components/icons/)  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
a > i
```

**Key Elements:**
- `<a href="...">`
- `<br>`
- `<i class="icofont-alarm">`

### Styling

**Main Selectors:**
- `.icons-list`

**Key Properties:**
- Layout: display: flex

### JavaScript Behavior

### Code Examples

**Available:** 46 examples (html, text, css, javascript)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/icons/)

---

## image-cards

**Category:** Layout  
**Use Cases:** Content containers, dataset displays, navigation cards, information panels  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/image-card/](https://codelibrary.opendatasoft.com/components/image-card/)  
**See also:** [#custom-catalog-card] for canonical example  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > [a, h3] > p
```

**Key Elements:**
- `<div class="row">`
- `<div class="col-md-4">`
- `<a class="image-card image-card-mobility" href="...">`
- `<div class="image-content">`
- `<h3 class="image-title">`

### Styling

**Main Selectors:**
- `.image-card`
- `.image-card-culture`
- `.image-card-education`
- `.image-card-garden`
- `.image-card-gastronomy`
- `.image-card-mobility`
- `.image-card-sport`
- `.image-description`

**Key Properties:**
- Layout: height: 100%, display: flex, -ms-flexbox, flex-direction: column
- Spacing: padding: 39px, margin-bottom: 20px, 13px, margin-top: 0
- Visual: background-color: var(--highlight), rgba(0,0,0,.1), color: inherit, #FFFFFF, border-radius: 4px
- Typography: text-align: center, text-decoration: none, font-size: 1.733rem, 1rem
- Animation: transition: all .2s, transform: scale(1.02)

**States:**
- `:focus` - text-decoration, webkit-transform, ms-transform

**Animations:**
- Transitions: all .2s
- Transforms: scale(1.02)

### Code Examples

**Available:** 4 examples (html, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/image-card/)

---

## kpis

**Category:** Other  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/kpis/](https://codelibrary.opendatasoft.com/components/kpis/)  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > [h2, i] > p
```

**Key Elements:**
- `<div class="row">`
- `<h2>`
- `<div class="col-md-4">`
- `<div class="kpi-card">`
- `<i class="kpi-icon fa">`

### AngularJS Integration

**Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-init` → [tags.md#ng-init]
- `ods-adv-analysis` → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-adv-analysis-select` → [tags.md#ods-adv-analysis-select]
- `ods-adv-analysis-where` → [tags.md#ods-adv-analysis-where]
- `ods-aggregation` → [tags.md#ods-aggregation]
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-aggregation-expression` → [tags.md#ods-aggregation-expression]

**Data Binding Examples:**
- `{{ analysis }}`
- `{{ avghumidity | number : 1 }}`
- `{{ count | number }}`
- `{{ ushospitals }}`

### Styling

**Main Selectors:**
- `.kpi-card`
- `.kpi-description`
- `.kpi-icon`
- `.kpi-title`
- `.row-equal-height`

**Key Properties:**
- Layout: display: flex, -ms-flexbox, flex-wrap: wrap, flex-grow: 1
- Spacing: margin-bottom: 0, 20px, padding: 39px, margin-top: 0
- Visual: secondary-color: #142E7B, background-color: var(--boxes-background), border-radius: 4px
- Typography: text-align: center, font-size: 3.2rem, 4rem, font-weight: normal

### Code Examples

**Available:** 30 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/kpis/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## material-themed-cards

**Category:** Data Visualization  
**Use Cases:** Content containers, dataset displays, navigation cards, information panels  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/material-themed-cards/](https://codelibrary.opendatasoft.com/components/material-themed-cards/)  
**See also:** [#custom-catalog-card] for canonical example  

### Pattern Overview

These cards are meant to be themed using only the following variables:

### Structure

### AngularJS Integration

**Directives Used:**
- `ng-copy` → [tags.md#ng-copy]
- `ng-repeat` → [tags.md#ng-repeat]
- `ng-show` → [tags.md#ng-show]
- `ods-api-monitoring` → [tags.md#ods-api-monitoring]
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-circle` → [tags.md#ods-circle]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-datetime` → [tags.md#ods-datetime]

**Data Binding Examples:**
- `{{ i+1 }}`
- `{{ startDate|date:'longDate' }}`
- `{{ (now|momentadd:'months':-1)|moment:'YYYY-MM-DD' }}`
- `{{ (now|momentadd:'months':-2)|moment:'YYYY-MM-DD' }}`
- `{{ queries }}`

### Styling

**Main Selectors:**
- `.-child`
- `.card`
- `.card-head`
- `.highcharts-area`
- `.highcharts-color-0.highcharts-data-label-connector`
- `.highcharts-color-1.highcharts-data-label-connector`
- `.highcharts-color-2.highcharts-data-label-connector`
- `.highcharts-color-3.highcharts-data-label-connector`

**Key Properties:**
- Layout: display: flex, none !important, width: 100%, highcharts-grid-line: not(:first-child):not(:last-child),
.mini-card .highcharts-yaxis-labels text:not(:first-child):not(:last-child) {
  display: none
- Spacing: margin-left: 0, margin-right: 0, margin-bottom: 1em, 16px
- Visual: background: var(--background), var(--surface), background-color: var(--background), var(--surface), color: var(--card-text), var(--body-text)
- Typography: card-text: #424242, body-text: #424242, font-size: 13px !important, 1.25rem

**States:**
- `:hover` - background-color

### Code Examples

**Available:** 41 examples (css, html, text)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/material-themed-cards/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## search-box

**Category:** Interactive Controls  
**Use Cases:** Dataset search, filtering, user input, query interface  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/search-box/](https://codelibrary.opendatasoft.com/components/search-box/)  

### Pattern Overview

Show the ods-searchbox widget alongside a “search” button and a title. Below there’s a stand-alone version and a version inside a card.

### Structure

```
h2 > div > button
```

**Key Elements:**
- `<h2 class="search-card-title">`
- `<ods>`
- `<div class="search-card-container">`
- `<ods id="search-form" class="search-card-searchbox">`
- `<button class="search-card-submit-button" type="submit">`

### AngularJS Integration

**Directives Used:**
- `ods-catalog-context` → [tags.md#ods-catalog-context]
- `ods-searchbox` → [tags.md#ods-searchbox]

### Styling

**Main Selectors:**
- `.odswidget-searchbox__box`
- `.search-card-container`
- `.search-card-searchbox`
- `.search-card-submit-button`
- `.search-card-title`

**Key Properties:**
- Layout: display: flex, block, width: 100%, flex: 1 1 auto
- Spacing: margin: 0 auto, margin-bottom: 0, padding: 8px 12px, 8px 13px
- Visual: color: #FFFFFF, var(--titles), border-radius: 4px 0 0 4px, 0 4px 4px 0, border-top: 1px solid #cbd2db
- Typography: font-size: 1.2rem, 1rem, line-height: 1.5, font-weight: bold, normal
- Animation: transition: opacity .2s

**States:**
- `:hover` - text-decoration, opacity

**Animations:**
- Transitions: opacity .2s

### Code Examples

**Available:** 8 examples (html, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/search-box/)

### Related Patterns

- [custom-catalog-card](#custom-catalog-card)
- [custom-theme-boxes](#custom-theme-boxes)
- [dataviz-gallery-page](#dataviz-gallery-page)
- [home-page-1](#home-page-1)
- [home-page-2](#home-page-2)

---

## search-module

**Category:** Data Visualization  
**Use Cases:** Dataset search, filtering, user input, query interface  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/search-module/](https://codelibrary.opendatasoft.com/components/search-module/)  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > [i, input] > button
```

**Key Elements:**
- `<ods>`
- `<div class="search-module">`
- `<i class="fa fa-search">`
- `<input class="search-module-input" type="text" [angularjs-directives]>`
- `<button class="search-module-clear" [angularjs-directives]>`

### AngularJS Integration

**Directives Used:**
- `ng-change` → [tags.md#ng-change]
- `ng-click` → [tags.md#ng-click]
- `ng-href` → [tags.md#ng-href]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ng-model` → [tags.md#ng-model]
- `ng-model-options` → [tags.md#ng-model-options]
- `ng-repeat` → [tags.md#ng-repeat]
- `ods-adv-analysis` → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]

**Data Binding Examples:**
- `{{ ctx }}`
- `{{ variables }}`
- `ng-model: variables.recherche`
- `{{ item }}`
- `{{ 'https://www }}`

### Styling

**Main Selectors:**
- `.search-module`
- `.search-module-clear`
- `.search-module-icon`
- `.search-module-input`
- `.search-module-within`

**Key Properties:**
- Layout: display: flex, width: 100%
- Spacing: margin-bottom: 20px, margin-right: 8px, padding: 12px 0, 0 0 0 12px
- Visual: border-bottom: 1px solid #dee5ef, color: var(--text), #898d92, background-color: transparent
- Typography: font-size: 1rem
- Animation: transition: all .2s

**States:**
- `:hover` - opacity

**Animations:**
- Transitions: all .2s

### JavaScript Behavior

### Code Examples

**Available:** 25 examples (html, text, css, javascript)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/search-module/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## sticky-header

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/sticky-header/](https://codelibrary.opendatasoft.com/components/sticky-header/)  

### Pattern Overview

Sticky content is one that will stay positioned once the user scrolls past it (i.e: stuck in position). Unlikeposition: fixed;, sticky content is limited by its container and will stop scrolling once the end of the parent element is reached.

### Structure

```
div > [section, h2, h3, hr] > br
```

**Key Elements:**
- `<div class="placeholder-content">`
- `<section class="sticky-content">`
- `<h2 class="sticky-content-title">`
- `<h3 class="placeholder-title">`
- `<hr class="placeholder-separator">`

### AngularJS Integration

**Directives Used:**
- `ng-dataset` → [tags.md#ng-dataset]
- `ng-domain` → [tags.md#ng-domain]
- `ng-parameters` → [tags.md#ng-parameters]
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-dataset-context` → [tags.md#ods-dataset-context]

**Data Binding Examples:**
- `{{ shanghairanking }}`

### Styling

**Main Selectors:**
- `.placeholder-content`
- `.placeholder-separator`
- `.placeholder-title`
- `.sticky-content`
- `.sticky-content-title`

**Key Properties:**
- Layout: position: sticky, top: 0, z-index: 10
- Spacing: padding: 3rem 20px, margin: 0, margin-top: 3rem, 1.5rem
- Visual: background-color: #ffe4c4, yellow, color: #FFFFFF, background: linear-gradient(180deg, rgba(255,255,0,1) 0%, rgba(255,140,0,1) 100%)

### Code Examples

**Available:** 12 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/sticky-header/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)
- [content-cards](#content-cards)

---

## switch-module

**Category:** Interactive Controls  
**Use Cases:** Boolean state, settings toggles, view switchers, on/off controls  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/switch-toggle/](https://codelibrary.opendatasoft.com/components/switch-toggle/)  

### Pattern Overview

A switch is a visual toggle between two mutually exclusive states — on and off.

### Structure

```
label > input > span
```

**Key Elements:**
- `<label class="switch">`
- `<input class="switch-input" type="checkbox">`
- `<span class="switch-button">`

### AngularJS Integration

**Directives Used:**
- `ng-checked` → [tags.md#ng-checked]
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-false-value` → [tags.md#ng-false-value]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ng-model` → [tags.md#ng-model]
- `ng-true-value` → [tags.md#ng-true-value]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-map` → [tags.md#ods-map]

**Data Binding Examples:**
- `{{ pressbutton }}`
- `{{ shadowbutton }}`
- `{{ flatbutton }}`
- `ng-model: view`

### Styling

**Main Selectors:**
- `.+ .switch-button`
- `.switch`
- `.switch-button`
- `.switch-input`
- `.switch-input + .switch-button`

**Key Properties:**
- Layout: display: none, inline-block, width: 43px, height: 25px, 21px
- Spacing: margin-bottom: .5rem
- Visual: background: var(--highlight), #FFFFFF, border: 2px solid #E6E6E6, border-radius: 100px, 50%
- Animation: transition: all .4s ease, tranform .4s cubic-bezier(0.175, 0.885, 0.320, 1.275), 
                padding .3s ease, margin .3s ease, transform: translateX(0), translateX(18px)

**States:**
- `:checked` - border-color, background
- `:disabled` - opacity, cursor, webkit-box-shadow
- `:after` - width, height, border-radius

**Animations:**
- Transitions: all .4s ease, tranform .4s cubic-bezier(0.175, 0.885, 0.320, 1.275), 
                padding .3s ease, margin .3s ease
- Transforms: translateX(0), translateX(18px)

### Code Examples

**Available:** 32 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/switch-toggle/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## table-module

**Category:** Data Visualization  
**Use Cases:** Multi-view interfaces, content organization, navigation  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/components/table-module/](https://codelibrary.opendatasoft.com/components/table-module/)  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > [table, thead, tr, th, tbody] > td
```

**Key Elements:**
- `<ods>`
- `<div class="table-module">`
- `<table class="table-basic" [angularjs-directives]>`
- `<thead>`
- `<tr>`

### AngularJS Integration

**Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ng-repeat` → [tags.md#ng-repeat]
- `ng-repeat-end` → [tags.md#ng-repeat-end]
- `ng-repeat-start` → [tags.md#ng-repeat-start]
- `ng-show` → [tags.md#ng-show]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-results` → [tags.md#ods-results]

**Data Binding Examples:**
- `{{ region }}`

### Styling

**Main Selectors:**
- `.table-basic`
- `.table-module`
- `.td`
- `.th`

**Key Properties:**
- Layout: height: 400px, display: table, width: 100%
- Spacing: padding: 13px 3px
- Visual: border-collapse: collapse, background-color: #FFFFFF, #f6f8fb, color: var(--titles)
- Typography: font-weight: normal, 500

### Code Examples

**Available:** 28 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/components/table-module/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## age-pyramid-with-custom-htmlcss

**Category:** Other  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/age-pyramid-custom/](https://codelibrary.opendatasoft.com/widget-tricks/age-pyramid-custom/)  

### Pattern Overview

Create an age pyramid to present the repartition of the population in your area, with custom HTML and CSS.

### Structure

```
div > [h3, span, p, label] > input
```

**Key Elements:**
- `<ods>`
- `<div [angularjs-directives]>`
- `<div class="row">`
- `<h3>`
- `<div class="pyramid-line">`

### AngularJS Integration

**Directives Used:**
- `ng-checked` → [tags.md#ng-checked]
- `ng-false-value` → [tags.md#ng-false-value]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ng-model` → [tags.md#ng-model]
- `ng-repeat` → [tags.md#ng-repeat]
- `ng-true-value` → [tags.md#ng-true-value]
- `ods-adv-analysis` → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-adv-analysis-group-by` → [tags.md#ods-adv-analysis-group-by]

**Data Binding Examples:**
- `{{ totalbygender }}`
- `{{ genderfield }}`
- `{{ i }}`
- `{{ variables }}`
- `{{ valuefield }}`

### Styling

**Main Selectors:**
- `.+ .switch-button`
- `.left`
- `.pyramid-line`
- `.pyramid-middle`
- `.pyramid-side`
- `.pyramid-side-left`
- `.pyramid-side-right`
- `.pyramid-side-value`

**Key Properties:**
- Layout: display: flex, inline-block, width: 50%, 100%, flex: 1, 3
- Spacing: margin: auto, 0px 10px, padding: 0px 5px, 0.2rem .7rem, margin-top: 13px
- Visual: left-color: #142E7B, right-color: #ffcc00, color: #FFFFFF, var(--right-color)
- Typography: font-weight: 500, text-align: end, center, font-size: 12px, 1rem
- Animation: transition: left .3s cubic-bezier(0.175, 0.885, 0.320, 1), 
                padding .2s ease, margin .2s ease, color .2s

**States:**
- `:checked` - color
- `:disabled` - opacity, cursor
- `:before` - content, position, background-color

**Animations:**
- Transitions: left .3s cubic-bezier(0.175, 0.885, 0.320, 1), 
                padding .2s ease, margin .2s ease, color .2s

### Code Examples

**Available:** 11 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/age-pyramid-custom/)

### Related Patterns

- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)
- [contact-cards](#contact-cards)

---

## animations

**Category:** Other  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/animation/](https://codelibrary.opendatasoft.com/widget-tricks/animation/)  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > i > p
```

**Key Elements:**
- `<ods>`
- `<div [angularjs-directives]>`
- `<div class="row">`
- `<div class="col-sm-offset-4 col-sm-4">`
- `<div class="kpi-card" [angularjs-directives]>`

### AngularJS Integration

**Directives Used:**
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ods-aggregation` → [tags.md#ods-aggregation]
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-aggregation-expression` → [tags.md#ods-aggregation-expression]
- `ods-aggregation-function` → [tags.md#ods-aggregation-function]
- `ods-aggregation-sum-context` → [tags.md#ods-aggregation-sum-context]
- `ods-aggregation-sum-expression` → [tags.md#ods-aggregation-sum-expression]
- `ods-aggregation-sum-function` → [tags.md#ods-aggregation-sum-function]
- `ods-aggregation-sumkazakhstan-context` → [tags.md#ods-aggregation-sumkazakhstan-context]

**Data Binding Examples:**
- `{{ value = ((sumkazakhstan || 0) / nbticks) * (tick >= nbticks ? nbticks : tick) ; "" }}`
- `{{ ((aggregation || 0) / nbticks) * tick | number:0 }}`
- `{{ sum | number }}`
- `{{ ((aggregation || 0) / nbticks) * (tick >= nbticks ? nbticks : tick) | number:0 }}`
- `{{ value | number:0 }}`

### Styling

**Main Selectors:**
- `.kpi-card`
- `.kpi-description`
- `.kpi-icon`
- `.kpi-title`
- `.ods-button.ods-widget-timer-controller`

**Key Properties:**
- Layout: height: 100%, display: flex, none, flex-direction: column
- Spacing: padding: 39px, margin-bottom: 0, 20px, margin-top: 0
- Visual: background-color: var(--boxes-background), border-radius: 4px, color: var(--secondary-color), var(--highlight)
- Typography: text-align: center, font-size: 3.2rem, 4rem, font-weight: normal

### Code Examples

**Available:** 39 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/animation/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)
- [contact-cards](#contact-cards)

---

## chart-samples

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/charts/](https://codelibrary.opendatasoft.com/widget-tricks/charts/)  
**See also:** [#ods-chart-custom-css-library] for canonical example  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > [h1, h3, b] > h5
```

**Key Elements:**
- `<div class="container">`
- `<div class="ods-box" [angularjs-directives]>`
- `<h1>`
- `<ods>`
- `<div class="row">`

### AngularJS Integration

**Directives Used:**
- `ods-box` → [tags.md#ods-box]
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-gauge` → [tags.md#ods-gauge]
- `ods-simple-tab` → [tags.md#ods-simple-tab]
- `ods-simple-tabs` → [tags.md#ods-simple-tabs]

### Styling

**Main Selectors:**
- `.#circle-gauge`
- `.hint`
- `.item`
- `.items`
- `.items-row`
- `.ods-button`
- `.ods-button--danger`
- `.ods-button--primary`

**Key Properties:**
- Layout: display: inline-flex, none, width: 90%
- Spacing: margin: auto, 0 20px, margin-bottom: 20px, margin-left: auto
- Visual: border: solid 1px #1E0C33, solid 1px #a94442, background-color: #a94442, #1E0C33, color: green, red
- Typography: text-align: center, font-weight: 300, 500, font-style: italic

### Code Examples

**Available:** 8 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/charts/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [comparison-generator](#comparison-generator)
- [content-cards](#content-cards)
- [custom-tooltips](#custom-tooltips)

---

## custom-tooltips

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/custom-tooltips/](https://codelibrary.opendatasoft.com/widget-tricks/custom-tooltips/)  

### Pattern Overview

These are resources to create custom tooltips for your maps. You can use them directlyin the map editor(in which case you will omit the context) or in your pages.

### Structure

**Key Elements:**
- `<ods>`

### AngularJS Integration

**Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-href` → [tags.md#ng-href]
- `ng-if` → [tags.md#ng-if]
- `ng-left` → [tags.md#ng-left]
- `ods-aggregation` → [tags.md#ods-aggregation]
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-aggregation-expression` → [tags.md#ods-aggregation-expression]
- `ods-aggregation-function` → [tags.md#ods-aggregation-function]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-map` → [tags.md#ods-map]

**Data Binding Examples:**
- `{{ record }}`
- `{{ aggstate | number : 1 }}`
- `{{ aggtype | number : 1 }}`

### Styling

**Main Selectors:**
- `.caption`
- `.green`
- `.leaflet-popup-content`
- `.red`

**Key Properties:**
- Layout: width: 350px !important, position: absolute, right: 0px
- Visual: color: #3EA538, #E23F32
- Typography: font-family: FontAwesome

### Code Examples

**Available:** 11 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/custom-tooltips/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## custom-catalog-card

**Category:** Layout  
**Use Cases:** Content containers, dataset displays, navigation cards, information panels  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)  
**★ Canonical Example** (7 variants)  

### Pattern Overview

The catalog card represents the published datasets of that portal. (seeExploring a dataset from the catalog).

### Structure

```
div
```

**Key Elements:**
- `<ods class="catalog-grid">`
- `<ods>`
- `<div class="ods-catalog-card__metadata" [angularjs-directives]>`

### AngularJS Integration

**Directives Used:**
- `ng-bind` → [tags.md#ng-bind]
- `ng-bind-html` → [tags.md#ng-bind-html]
- `ng-class` → [tags.md#ng-class]
- `ng-href` → [tags.md#ng-href]
- `ng-if` → [tags.md#ng-if]
- `ng-repeat` → [tags.md#ng-repeat]
- `ods-catalog-card` → [tags.md#ods-catalog-card]
- `ods-catalog-card-body` → [tags.md#ods-catalog-card-body]
- `ods-catalog-card-description` → [tags.md#ods-catalog-card-description]
- `ods-catalog-card-highlighted` → [tags.md#ods-catalog-card-highlighted]

**Data Binding Examples:**
- `{{ '/explore/dataset/' + dataset }}`
- `{{ dataset = item ; "" }}`
- `{{ dataset }}`

### Styling

**Main Selectors:**
- `.ods-catalog-card`
- `.ods-catalog-card__keyword`
- `.ods-catalog-card__metadata-item`
- `.ods-catalog-card__theme-icon`
- `.ods-catalog-card__title`
- `.ods-catalog-card__visualization`

**Key Properties:**
- Layout: position: absolute, top: 26px, left: 26px
- Spacing: padding: 0 0 4px 0, 26px, margin-bottom: 4px
- Visual: border-radius: 7px, 4px, box-shadow: 0 0 10px 0 #e3e9f1, color: var(--text), var(--highlight)
- Typography: font-weight: 400, font-size: .833rem, 0.833rem, line-height: 1.2, 1.4
- Animation: transition: all .2s

**States:**
- `:hover` - webkit-box-shadow, box-shadow

**Animations:**
- Transitions: all .2s

### Code Examples

**Available:** 18 examples (html, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/catalog-cards/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [comparison-generator](#comparison-generator)
- [contact-cards](#contact-cards)

---

## dates

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/dates/](https://codelibrary.opendatasoft.com/widget-tricks/dates/)  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div
```

**Key Elements:**
- `<ods>`
- `<div [angularjs-directives]>`
- `<br>`

### AngularJS Integration

**Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ng-model` → [tags.md#ng-model]
- `ng-model-options` → [tags.md#ng-model-options]
- `ng-repeat` → [tags.md#ng-repeat]
- `ods-box` → [tags.md#ods-box]
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]

**Data Binding Examples:**
- `{{ dates }}`
- `{{ now }}`
- `{{ menuscantines }}`
- `ng-model: dayrange`
- `{{ now | momentadd : 'days' : -2 }}`

### Styling

**Main Selectors:**
- `.app`
- `.external-links`
- `.header`
- `.items`
- `.logo`
- `.logos`
- `.menus`
- `.ods-box.header`

**Key Properties:**
- Layout: position: absolute, relative, right: 15px, 0, width: 201px, 110px
- Spacing: margin: 0px 5px, 5px, margin-top: 3px, margin-bottom: 15px
- Visual: border: 1px solid #1f0d3340, none, border-color: #1f0d33, background-color: white
- Typography: text-align: left, center, font-size: 1.2em, 1.1em, font-weight: 400, 500

**States:**
- `:hover` - border-bottom

### Code Examples

**Available:** 19 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/dates/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## drill-down-refine-in-charts

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/drill-down/](https://codelibrary.opendatasoft.com/widget-tricks/drill-down/)  
**See also:** [#ods-chart-custom-css-library] for canonical example  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > [h3, p] > a
```

**Key Elements:**
- `<ods>`
- `<div class="row">`
- `<div class="col-md-9">`
- `<div class="chart-box">`
- `<div [angularjs-directives]>`

### AngularJS Integration

**Directives Used:**
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-repeat` → [tags.md#ng-repeat]
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-dataset-context` → [tags.md#ods-dataset-context]

**Data Binding Examples:**
- `{{ (ctx2 }}`
- `{{ filter }}`

### Styling

**Main Selectors:**
- `.appliedfilter`
- `.chart-box`
- `.filters`
- `.resetfilter`

**Key Properties:**
- Layout: display: flex, flex-direction: column, height: 450px
- Spacing: padding: 5px 10px
- Visual: border: 1px solid, color: #006f96, white, background-color: #006f96, white
- Typography: text-align: center, font-weight: 500, font-size: 1.2em

**States:**
- `:hover` - text-decoration, color, background-color

### Code Examples

**Available:** 10 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/drill-down/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## filters-as-an-html-select

**Category:** Data Visualization  
**Use Cases:** Data filtering, search refinement, category selection  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/filter-as-list/](https://codelibrary.opendatasoft.com/widget-tricks/filter-as-list/)  
**★ Canonical Example** (4 variants)  

### Pattern Overview

!! WARNING !!This ressource is deprecated ! Please useods-selectinstead.Documentation available here

### Structure

```
div > [h3, h5, select] > option
```

**Key Elements:**
- `<ods>`
- `<div class="row">`
- `<div class="col-sm-4" [angularjs-directives]>`
- `<h3>`
- `<h5>`

### AngularJS Integration

**Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ng-model` → [tags.md#ng-model]
- `ng-options` → [tags.md#ng-options]
- `ng-repeat` → [tags.md#ng-repeat]
- `ng-selected` → [tags.md#ng-selected]
- `ods-analysis` → [tags.md#ods-analysis]
- `ods-analysis-context` → [tags.md#ods-analysis-context]

**Data Binding Examples:**
- `{{ years }}`
- `{{ (month }}`
- `{{ range }}`
- `{{ default }}`
- `ng-model: selection`

### Styling

**Main Selectors:**
- `.controler-button`
- `.controler-button.controler-selection`
- `.controler-button.disabled`
- `.controler-selection`
- `.input-range-with-button`
- `.select`

**Key Properties:**
- Layout: display: flex, height: 42px, 100%, width: auto, 100%
- Spacing: padding-left: 10px, padding-right: 25px
- Visual: border: 1px solid, none, background-color: #e5e5e5, border-color: #ccc
- Typography: font-weight: 500

**States:**
- `:hover` - background-color
- `:after` - position, right, content

### Code Examples

**Available:** 13 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/filter-as-list/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## heatmaps-with-css-grid

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/heatmaps-custom/](https://codelibrary.opendatasoft.com/widget-tricks/heatmaps-custom/)  
**★ Canonical Example** (9 variants)  

### Pattern Overview

We consider the usage ofods-adv-analysisas a prerequisite of this resource.Documentation available here

### Structure

```
div > [h3, strong, p, label, input] > span
```

**Key Elements:**
- `<div class="container">`
- `<ods>`
- `<div [angularjs-directives]>`
- `<h3>`
- `<div class="heatmap" [angularjs-directives]>`

### AngularJS Integration

**Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ng-model` → [tags.md#ng-model]
- `ng-repeat` → [tags.md#ng-repeat]
- `ods-adv-analysis` → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-adv-analysis-group-by` → [tags.md#ods-adv-analysis-group-by]
- `ods-adv-analysis-limit` → [tags.md#ods-adv-analysis-limit]
- `ods-adv-analysis-order-by` → [tags.md#ods-adv-analysis-order-by]

**Data Binding Examples:**
- `{{ yLegendWidth }}`
- `{{ xaxis }}`
- `{{ ((e }}`
- `{{ variables }}`
- `{{ yaxis }}`

### Styling

**Main Selectors:**
- `.+ .switch-button`
- `.cell`
- `.cell.square`
- `.darkgreen`
- `.heatmap`
- `.heatmap-legend`
- `.heatmap-legend__gradient`
- `.heatmap-sub`

**Key Properties:**
- Layout: display: flex, inline-block, grid-auto-columns: 1fr, grid-auto-flow: column
- Spacing: padding-bottom: 100%, padding: 35% 0, 0.2rem 0.7rem, margin-top: 13px
- Visual: background-color: #9ab932, #6ca474, values-color: white, color: var(--values-color), #FFFFFF
- Typography: font-size: 0.6rem, 0, text-align: center
- Animation: transform: rotate(-60deg), scale(1.5), transition: color 0.2s, left 0.3s cubic-bezier(0.175, 0.885, 0.32, 1), padding 0.2s ease, margin 0.2s ease

**States:**
- `:hover` - border, transform, font-size
- `:checked` - color
- `:disabled` - opacity, cursor
- `:before` - content, position, background-color

**Animations:**
- Transitions: color 0.2s, left 0.3s cubic-bezier(0.175, 0.885, 0.32, 1), padding 0.2s ease, margin 0.2s ease
- Transforms: rotate(-60deg), scale(1.5)

### JavaScript Behavior

### Code Examples

**Available:** 36 examples (html, text, css, javascript)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/heatmaps-custom/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## share-and-print

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/share-print/](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > [h3, h4, a, i, p, span] > b
```

**Key Elements:**
- `<div class="container">`
- `<ods>`
- `<div class="row ods-box" [angularjs-directives]>`
- `<h3>`
- `<h3 class="red-box">`

### AngularJS Integration

**Directives Used:**
- `ng-repeat` → [tags.md#ng-repeat]
- `ods-box` → [tags.md#ods-box]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-dataset-visualization__social-button` → [tags.md#ods-dataset-visualization__social-button]
- `ods-dataset-visualization__social-button--facebook` → [tags.md#ods-dataset-visualization__social-button--facebook]
- `ods-dataset-visualization__social-button--google-plus` → [tags.md#ods-dataset-visualization__social-button--google-plus]
- `ods-dataset-visualization__social-button--linkedin` → [tags.md#ods-dataset-visualization__social-button--linkedin]
- `ods-dataset-visualization__social-button--mail` → [tags.md#ods-dataset-visualization__social-button--mail]
- `ods-dataset-visualization__social-button--twitter` → [tags.md#ods-dataset-visualization__social-button--twitter]
- `ods-dataset-visualization__social-button-icon` → [tags.md#ods-dataset-visualization__social-button-icon]

**Data Binding Examples:**
- `{{ ctx }}`
- `{{ record }}`
- `{{ field }}`
- `{{ item }}`

### Styling

**Main Selectors:**
- `.boutons`
- `.red-box`

**Key Properties:**
- Layout: float: right
- Spacing: margin-left: 30px, padding: 20px
- Visual: border: 2px solid darkred, color: darkred, background-color: #ffe8e8

### Code Examples

**Available:** 10 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/share-print/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)
- [content-cards](#content-cards)

---

## static-maps-a-quick-introduction

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/svg-maps/](https://codelibrary.opendatasoft.com/widget-tricks/svg-maps/)  
**See also:** [#heatmaps-with-css-grid] for canonical example  

### Pattern Overview

When your goal is to share a precise analysis of a theme, such as employment or demography, for given administrative territories, you may want to disable all interactions with the map. You will even probably want to have overseas territories right next to the other territories in order to visualize immediately how the measurement varies across these administrative areas.

### Structure

```
div > [span, select] > option
```

**Key Elements:**
- `<ods>`
- `<div [angularjs-directives]>`
- `<div class="ods-box" [angularjs-directives]>`
- `<span>`
- `<select [angularjs-directives]>`

### AngularJS Integration

**Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-init` → [tags.md#ng-init]
- `ng-model` → [tags.md#ng-model]
- `ods-box` → [tags.md#ods-box]
- `ods-color-gradient` → [tags.md#ods-color-gradient]
- `ods-color-gradient-context` → [tags.md#ods-color-gradient-context]
- `ods-color-gradient-logarithmic-scale-factor` → [tags.md#ods-color-gradient-logarithmic-scale-factor]
- `ods-color-gradient-serie` → [tags.md#ods-color-gradient-serie]
- `ods-color-gradient-x` → [tags.md#ods-color-gradient-x]
- `ods-dataset-context` → [tags.md#ods-dataset-context]

**Data Binding Examples:**
- `ng-model: idf`
- `ng-model: drom`

### Styling

**Main Selectors:**
- `.ods-svginliner__svg-container`
- `.odswidget.odswidget-picto`
- `.svgmap-drom-bottom ~ .svgmap-francemetro`
- `.svgmap-drom-left ~ .svgmap-francemetro`
- `.svgmap-drom-left ~ .svgmap-francemetro ~ .svgmap-idf.svgmap-idf-top-left`
- `.svgmap-drom-left ~ .svgmap-idf-top-right`
- `.svgmap-drom-left ~ .svgmap-idf.svgmap-idf-top-left`
- `.svgmap-drom-left ~ .svgmap-idf.svgmap-idf-top-left ~ .svgmap-francemetro`

**Key Properties:**
- Layout: width: 12.1%, 17%, position: absolute, relative, display: flex, none
- Spacing: margin: auto, 2%, padding: 0, padding-left: 17%, 20%
- Visual: background-color: white

### Code Examples

**Available:** 27 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/svg-maps/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## ods-adv-analysis

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-adv-analysis/](https://codelibrary.opendatasoft.com/widget-tricks/ods-adv-analysis/)  

### Pattern Overview

Theods-adv-analysiswidget exposes the results of an aggregation function over a context.
It uses theODS Explore API V2and itsODSQL language.

### Structure

```
div > [h2, h3, p, pre, code] > i
```

**Key Elements:**
- `<div class="container">`
- `<h2>`
- `<ods [angularjs-directives]>`
- `<div [angularjs-directives]>`
- `<h3>`

### AngularJS Integration

**Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ng-repeat` → [tags.md#ng-repeat]
- `ods-adv-analysis` → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-adv-analysis-group-by` → [tags.md#ods-adv-analysis-group-by]
- `ods-adv-analysis-select` → [tags.md#ods-adv-analysis-select]
- `ods-adv-analysis-where` → [tags.md#ods-adv-analysis-where]

**Data Binding Examples:**
- `{{ domainid }}`
- `{{ results }}`
- `{{ dateanalysis }}`
- `{{ item }}`
- `{{ bounds }}`

### Styling

**Main Selectors:**
- `.odswidget-date-range-slider`
- `.range-slider-ctn`
- `.range-slider-reset-button`
- `.range-slider-reset-button-disabled`

**Key Properties:**
- Layout: display: flex, flex-direction: column, width: 100%
- Spacing: margin: 13px 26px 32px 26px, margin-left: 50px, 0, margin-top: 0, 13px
- Visual: background-color: #e1e4e9, border-radius: 4px, opacity: 0.5
- Typography: font-size: 12px, line-height: 0, text-decoration: none

**States:**
- `:hover` - opacity

### Code Examples

**Available:** 20 examples (html, text, css, json)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-adv-analysis/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## ods-aggregation

**Category:** Data Interaction  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)  

### Pattern Overview

The technical documentation says :

### Structure

```
div > i > p
```

**Key Elements:**
- `<div class="row">`
- `<div class="col-sm-offset-4 col-sm-4">`
- `<ods>`
- `<div class="kpi-card">`
- `<i class="kpi-icon fa">`

### AngularJS Integration

**Directives Used:**
- `ods-aggregation` → [tags.md#ods-aggregation]
- `ods-aggregation-agg2015-context` → [tags.md#ods-aggregation-agg2015-context]
- `ods-aggregation-agg2015-function` → [tags.md#ods-aggregation-agg2015-function]
- `ods-aggregation-agg2016-context` → [tags.md#ods-aggregation-agg2016-context]
- `ods-aggregation-agg2016-function` → [tags.md#ods-aggregation-agg2016-function]
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]
- `ods-aggregation-expression` → [tags.md#ods-aggregation-expression]
- `ods-aggregation-function` → [tags.md#ods-aggregation-function]
- `ods-aggregation-hospitals-context` → [tags.md#ods-aggregation-hospitals-context]
- `ods-aggregation-hospitals-function` → [tags.md#ods-aggregation-hospitals-function]

**Data Binding Examples:**
- `{{ rate = without / with * 100 ; '' }}`
- `{{ rate | number : 1 }}`
- `{{ avghumidity | number : 1 }}`
- `{{ hospitalshelipad / hospitals * 100 | number : 0 }}`
- `{{ without | number }}`

### Styling

**Main Selectors:**
- `.kpi-card`
- `.kpi-description`
- `.kpi-description-detail`
- `.kpi-icon`
- `.kpi-title`
- `.row-equal-height`

**Key Properties:**
- Layout: display: flex, -ms-flexbox, flex-wrap: wrap, height: 100%
- Spacing: margin-bottom: 0, 20px, padding: 39px, margin-top: 0.8em, 0
- Visual: secondary-color: #142E7B, background-color: var(--boxes-background), border-radius: 4px
- Typography: text-align: center, font-size: 3.2rem, 0.9em, font-weight: normal

### Code Examples

**Available:** 30 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-aggregation/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)
- [content-cards](#content-cards)

---

## ods-analysis-quick-intro

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)  

### Pattern Overview

The technical documentation says :

### Structure

```
div > pre
```

**Key Elements:**
- `<ods [angularjs-directives]>`
- `<div class="row">`
- `<div class="col-md-7">`
- `<ods>`
- `<ods type="column">`

### AngularJS Integration

**Directives Used:**
- `ng-bind` → [tags.md#ng-bind]
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-dataset` → [tags.md#ng-dataset]
- `ng-domain` → [tags.md#ng-domain]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ng-parameters` → [tags.md#ng-parameters]
- `ng-repeat` → [tags.md#ng-repeat]
- `ods-aggregation` → [tags.md#ods-aggregation]

**Data Binding Examples:**
- `{{ mynewstructure = (analysisshanghai }}`
- `{{ position + 1 }}`
- `{{ analysisminmax }}`
- `{{ results }}`
- `{{ populationtotal | number }}`

### Styling

**Main Selectors:**
- `.table`
- `.td`
- `.th`

**Key Properties:**
- Layout: width: 100%
- Spacing: padding: 5px
- Visual: color: white
- Typography: text-align: center, font-size: 1.2em, 1.4em

### Code Examples

**Available:** 25 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-analysis/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## ods-chart-css-hacks

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-chart-css-hacks/](https://codelibrary.opendatasoft.com/widget-tricks/ods-chart-css-hacks/)  
**See also:** [#ods-chart-custom-css-library] for canonical example  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > h2
```

**Key Elements:**
- `<ods>`
- `<div class="row">`
- `<div class="col-sm-6">`
- `<div class="ods-box" [angularjs-directives]>`
- `<h2>`

### AngularJS Integration

**Directives Used:**
- `ods-box` → [tags.md#ods-box]
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-dataset-context` → [tags.md#ods-dataset-context]

### Styling

**Main Selectors:**
- `.highcharts-data-label`
- `.highcharts-data-label-child`
- `.ods-box`
- `.rect.highcharts-background`

**Key Properties:**
- Layout: display: none
- Visual: background-color: var(--boxes-background), visibility: inherit, opacity: 1

### Code Examples

**Available:** 11 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-chart-css-hacks/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)
- [content-cards](#content-cards)

---

## ods-chart-custom-css-library

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-chart-css-library/](https://codelibrary.opendatasoft.com/widget-tricks/ods-chart-css-library/)  
**★ Canonical Example** (4 variants)  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > h2
```

**Key Elements:**
- `<ods>`
- `<div class="row">`
- `<div class="col-sm-8">`
- `<div class="ods-box" [angularjs-directives]>`
- `<h2>`

### AngularJS Integration

**Directives Used:**
- `ods-box` → [tags.md#ods-box]
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-dataset-context` → [tags.md#ods-dataset-context]

### Styling

**Main Selectors:**
- `.ods-box`
- `.body`

**Key Properties:**
- Visual: background-color: var(--boxes-background), white

### Code Examples

**Available:** 69 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-chart-css-library/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)
- [content-cards](#content-cards)

---

## ods-color-gradient-ods-map-a-choropleth-alternative

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)  
**See also:** [#heatmaps-with-css-grid] for canonical example  

### Pattern Overview

Thismap rendering techniqueallows to display on a map colored shaped based on the aggregation ofa different dataset.

### Structure

```
div > h2
```

**Key Elements:**
- `<ods>`
- `<div [angularjs-directives]>`
- `<h2>`
- `<div class="map-container">`

### AngularJS Integration

**Directives Used:**
- `ods-color-gradient` → [tags.md#ods-color-gradient]
- `ods-color-gradient-context` → [tags.md#ods-color-gradient-context]
- `ods-color-gradient-high` → [tags.md#ods-color-gradient-high]
- `ods-color-gradient-low` → [tags.md#ods-color-gradient-low]
- `ods-color-gradient-nb-classes` → [tags.md#ods-color-gradient-nb-classes]
- `ods-color-gradient-pow-exponent` → [tags.md#ods-color-gradient-pow-exponent]
- `ods-color-gradient-serie` → [tags.md#ods-color-gradient-serie]
- `ods-color-gradient-x` → [tags.md#ods-color-gradient-x]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-legend` → [tags.md#ods-legend]

### Styling

**Main Selectors:**
- `.map-container`
- `.odswidget.odswidget-legend`

**Key Properties:**
- Layout: position: absolute, relative, top: 20px, left: 57px

### Code Examples

**Available:** 36 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-color-gradient/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)
- [content-cards](#content-cards)

---

## ods-date-range-slider

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-date-range-slider/](https://codelibrary.opendatasoft.com/widget-tricks/ods-date-range-slider/)  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
h3 > div
```

**Key Elements:**
- `<ods>`
- `<h3>`
- `<div class="row">`
- `<div class="col-md-12">`

### AngularJS Integration

**Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ods-analysis` → [tags.md#ods-analysis]
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-analysis-serie-c` → [tags.md#ods-analysis-serie-c]
- `ods-analysis-sort` → [tags.md#ods-analysis-sort]
- `ods-analysis-x` → [tags.md#ods-analysis-x]
- `ods-analysis-x-day` → [tags.md#ods-analysis-x-day]

**Data Binding Examples:**
- `{{ bounds }}`

### Styling

**Main Selectors:**
- `.odswidget-date-range-slider`

**Key Properties:**
- Spacing: margin: 5px 20px 15px

### Code Examples

**Available:** 33 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-date-range-slider/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## ods-map-css-hacks

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-map-css/](https://codelibrary.opendatasoft.com/widget-tricks/ods-map-css/)  
**See also:** [#heatmaps-with-css-grid] for canonical example  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

**Key Elements:**
- `<ods>`
- `<ods [angularjs-directives]>`

### AngularJS Integration

**Directives Used:**
- `ng-arrow-right` → [tags.md#ng-arrow-right]
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-init` → [tags.md#ng-init]
- `ng-scope` → [tags.md#ng-scope]
- `ng-show` → [tags.md#ng-show]
- `ods-circle` → [tags.md#ods-circle]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-map` → [tags.md#ods-map]
- `ods-map-layer` → [tags.md#ods-map-layer]

### Styling

**Main Selectors:**
- `.leaflet-control`
- `.leaflet-top.leaflet-right`
- `.odswidget.odswidget-map-display-control`
- `.li.ng-scope.odswidget-map-display-control__group`
- `.li.ng-scope.odswidget-map-display-control__group.odswidget-map-display-control__group--disabled`
- `.ul.odswidget-map-display-control__groups`

**Key Properties:**
- Layout: width: fit-content, right: inherit, left: 10px
- Visual: background-color: transparent, white, box-shadow: 2px 2px 10px #868585, none, opacity: 0.7

### Code Examples

**Available:** 25 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-map-css/)

### Related Patterns

- [access-cards](#access-cards)
- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)

---

## ods-map-refine-zoom

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-map-tricks/](https://codelibrary.opendatasoft.com/widget-tricks/ods-map-tricks/)  
**See also:** [#heatmaps-with-css-grid] for canonical example  

### Pattern Overview

UI pattern from ODS Code Library.

### Structure

```
div > [h3, span, h2] > h4
```

**Key Elements:**
- `<div class="row ods-box" [angularjs-directives]>`
- `<ods>`
- `<div class="col-md-8">`
- `<div class="col-md-4">`
- `<div [angularjs-directives]>`

### AngularJS Integration

**Directives Used:**
- `ng-arrow-left` → [tags.md#ng-arrow-left]
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-repeat` → [tags.md#ng-repeat]
- `ods-adv-analysis` → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-adv-analysis-select` → [tags.md#ods-adv-analysis-select]
- `ods-box` → [tags.md#ods-box]
- `ods-button` → [tags.md#ods-button]
- `ods-color-gradient` → [tags.md#ods-color-gradient]

**Data Binding Examples:**
- `{{ colorgradient }}`
- `{{ results }}`
- `{{ item }}`
- `{{ refinectx }}`
- `{{ depts }}`

### Styling

**Main Selectors:**
- `.backdrop`
- `.map`
- `.ods-pop-in__backdrop`
- `.pop-in-card`
- `.pop-in-clear-button`
- `.pop-in-header`
- `.pop-in-list`
- `.pop-in-photo`

**Key Properties:**
- Layout: position: absolute, relative, z-index: 1, 102, top: 15px, 0
- Spacing: padding: 26px, margin: 0 10px, 0, margin-bottom: 0, 10px
- Visual: background-color: transparent, rgba(0, 0, 0, 0.7), color: var(--text), #6f6f6f, border: none
- Typography: font-size: 1.5rem, 1rem, text-decoration: none, font-weight: normal
- Animation: transition: all .2s

**States:**
- `:hover` - opacity

**Animations:**
- Transitions: all .2s
- Transforms: uppercase

### Code Examples

**Available:** 37 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-map-tricks/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## ods-pop-in-variants

**Category:** Interactive Controls  
**Use Cases:** Alerts, confirmations, additional information, focused content  
**Complexity:** Medium  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-pop-in/](https://codelibrary.opendatasoft.com/widget-tricks/ods-pop-in/)  

### Pattern Overview

Display content in a pop-in window. It can either open automatically or you can make a custom pop in that opens manually by clicking a button.

### Structure

```
h2 > [em, i, p] > button
```

**Key Elements:**
- `<h2>`
- `<em>`
- `<ods>`
- `<i class="fa fa-bell-o">`
- `<p>`

### AngularJS Integration

**Directives Used:**
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ods-button` → [tags.md#ods-button]
- `ods-pop-in` → [tags.md#ods-pop-in]
- `ods-pop-in__backdrop` → [tags.md#ods-pop-in__backdrop]
- `ods-pop-in__container` → [tags.md#ods-pop-in__container]

### Styling

**Main Selectors:**
- `.iframe-container`
- `.ods-pop-in__backdrop`
- `.ods-pop-in__container`
- `.iframe`

**Key Properties:**
- Layout: z-index: 102, 101, position: absolute, top: 0
- Spacing: padding: 10px, margin-left: 120px, margin-right: 120px
- Visual: background-color: transparent, border: none

### Code Examples

**Available:** 6 examples (html, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-pop-in/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [comparison-generator](#comparison-generator)
- [contact-cards](#contact-cards)

---

## ods-results

**Category:** Data Visualization  
**Use Cases:** UI component, user interaction, content display  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-results/](https://codelibrary.opendatasoft.com/widget-tricks/ods-results/)  

### Pattern Overview

ods-resultsis a rather simple widget to list records from a dataset. They can be displayed as a list or cards.

### Structure

```
div > [h3, h4, code, ul, li, strong] > sup
```

**Key Elements:**
- `<div class="container">`
- `<ods>`
- `<h3>`
- `<h4>`
- `<code>`

### AngularJS Integration

**Directives Used:**
- `ng-if` → [tags.md#ng-if]
- `ng-repeat` → [tags.md#ng-repeat]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-geotooltip` → [tags.md#ods-geotooltip]
- `ods-pagination-block` → [tags.md#ods-pagination-block]
- `ods-record-image` → [tags.md#ods-record-image]
- `ods-results` → [tags.md#ods-results]
- `ods-results-context` → [tags.md#ods-results-context]
- `ods-results-max` → [tags.md#ods-results-max]

**Data Binding Examples:**
- `{{ record }}`

### Styling

**Main Selectors:**
- `.box`
- `.box.flat`
- `.box.white`
- `.col-lg-9`
- `.col-md-9`
- `.col-sm-9`
- `.no-mb`
- `.no-mx`

**Key Properties:**
- Layout: flex-wrap: wrap}.row>*{margin-bottom:20px}.order-0{order:0}@media screen and (min-width:750px){.order-sm-0{order:0}}@media screen and (min-width:970px){.order-md-0{order:0}}@media screen and (min-width:1170px){.order-lg-0{order:0}.order-lg-1{order:1}}.order-1{order:1}@media screen and (min-width:750px){.order-sm-1{order:1}}@media screen and (min-width:970px){.order-md-1{order:1}.order-md-2{order:2}}.order-2{order:2}@media screen and (min-width:750px){.order-sm-2{order:2}}@media screen and (min-width:1170px){.order-lg-2{order:2}.order-lg-3{order:3}}.order-3{order:3}@media screen and (min-width:750px){.order-sm-3{order:3}}@media screen and (min-width:970px){.order-md-3{order:3}.order-md-4{order:4}}.order-4{order:4}@media screen and (min-width:750px){.order-sm-4{order:4}}@media screen and (min-width:1170px){.order-lg-4{order:4}.order-lg-5{order:5}}.order-5{order:5}@media screen and (min-width:750px){.order-sm-5{order:5}}@media screen and (min-width:970px){.order-md-5{order:5}.order-md-6{order:6}}.order-6{order:6}@media screen and (min-width:750px){.order-sm-6{order:6}}@media screen and (min-width:1170px){.order-lg-6{order:6}.order-lg-7{order:7}}.order-7{order:7}@media screen and (min-width:750px){.order-sm-7{order:7}}@media screen and (min-width:970px){.order-md-7{order:7}.order-md-8{order:8}}.order-8{order:8}@media screen and (min-width:750px){.order-sm-8{order:8}}@media screen and (min-width:1170px){.order-lg-8{order:8}.order-lg-9{order:9}}.order-9{order:9}@media screen and (min-width:750px){.order-sm-9{order:9}}@media screen and (min-width:970px){.order-md-9{order:9}.order-md-10{order:10}}.order-10{order:10}@media screen and (min-width:750px){.order-sm-10{order:10}}@media screen and (min-width:1170px){.order-lg-10{order:10}.order-lg-11{order:11}}.order-11{order:11}@media screen and (min-width:750px){.order-sm-11{order:11}}@media screen and (min-width:970px){.order-md-11{order:11}.order-md-12{order:12}}.order-12{order:12}@media screen and (min-width:750px){.order-sm-12{order:12}}@media screen and (min-width:1170px){.order-lg-12{order:12}}@media screen and (max-width:1169px){:not([class*=col-md]):not([class*=col-sm]):not([class*=col-xs]).col-lg-1,:not([class*=col-md]):not([class*=col-sm]):not([class*=col-xs]).col-lg-10,:not([class*=col-md]):not([class*=col-sm]):not([class*=col-xs]).col-lg-11,:not([class*=col-md]):not([class*=col-sm]):not([class*=col-xs]).col-lg-12,:not([class*=col-md]):not([class*=col-sm]):not([class*=col-xs]).col-lg-2,:not([class*=col-md]):not([class*=col-sm]):not([class*=col-xs]).col-lg-3,:not([class*=col-md]):not([class*=col-sm]):not([class*=col-xs]).col-lg-4,:not([class*=col-md]):not([class*=col-sm]):not([class*=col-xs]).col-lg-5,:not([class*=col-md]):not([class*=col-sm]):not([class*=col-xs]).col-lg-6,:not([class*=col-md]):not([class*=col-sm]):not([class*=col-xs]).col-lg-7,:not([class*=col-md]):not([class*=col-sm]):not([class*=col-xs]).col-lg-8,:not([class*=col-md]):not([class*=col-sm]):not([class*=col-xs]).col-lg-9{width:100%}}@media screen and (max-width:969px){:not([class*=col-sm]):not([class*=col-xs]).col-md-1,:not([class*=col-sm]):not([class*=col-xs]).col-md-10,:not([class*=col-sm]):not([class*=col-xs]).col-md-11,:not([class*=col-sm]):not([class*=col-xs]).col-md-12,:not([class*=col-sm]):not([class*=col-xs]).col-md-2,:not([class*=col-sm]):not([class*=col-xs]).col-md-3,:not([class*=col-sm]):not([class*=col-xs]).col-md-4,:not([class*=col-sm]):not([class*=col-xs]).col-md-5,:not([class*=col-sm]):not([class*=col-xs]).col-md-6,:not([class*=col-sm]):not([class*=col-xs]).col-md-7,:not([class*=col-sm]):not([class*=col-xs]).col-md-8,:not([class*=col-sm]):not([class*=col-xs]).col-md-9{width:100%}}@media screen and (max-width:749px){.row{flex-direction:column}:not([class*=col-xs]).col-sm-1,:not([class*=col-xs]).col-sm-10,:not([class*=col-xs]).col-sm-11,:not([class*=col-xs]).col-sm-12,:not([class*=col-xs]).col-sm-2,:not([class*=col-xs]).col-sm-3,:not([class*=col-xs]).col-sm-4,:not([class*=col-xs]).col-sm-5,:not([class*=col-xs]).col-sm-6,:not([class*=col-xs]).col-sm-7,:not([class*=col-xs]).col-sm-8,:not([class*=col-xs]).col-sm-9{width:100%}}.no-margin-bottom,.no-mb{margin-bottom:0!important}.no-margin-x,.no-mx{margin-left:0!important
- Spacing: margin-right: 0!important}

/* Box style */
.box {
    position: relative, padding: 13px
- Visual: background-color: white, box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.16), border-radius: var(--boxes-radius)

### Code Examples

**Available:** 22 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-results/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## ods-select

**Category:** Data Visualization  
**Use Cases:** Option selection, form inputs, navigation menus  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-select/](https://codelibrary.opendatasoft.com/widget-tricks/ods-select/)  

### Pattern Overview

ods-select allows the selection of one or more items from a list of options. This resource present different combination with ods-facet-results or ods-analysis to feed the selection list.

### Structure

```
div > [h3, h4] > pre
```

**Key Elements:**
- `<div class="row">`
- `<div class="col-md-4 col-md-offset-2" [angularjs-directives]>`
- `<h3>`
- `<ods>`
- `<h4>`

### AngularJS Integration

**Directives Used:**
- `ng-bind` → [tags.md#ng-bind]
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ods-adv-analysis` → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-adv-analysis-group-by` → [tags.md#ods-adv-analysis-group-by]
- `ods-adv-analysis-limit` → [tags.md#ods-adv-analysis-limit]
- `ods-adv-analysis-order-by` → [tags.md#ods-adv-analysis-order-by]
- `ods-adv-analysis-select` → [tags.md#ods-adv-analysis-select]

**Data Binding Examples:**
- `{{ ctx }}`
- `{{ ctxrefine }}`
- `{{ values }}`
- `{{ selection = (selection }}`
- `{{ ctxcommunes }}`

### Styling

**Main Selectors:**
- `.mb`
- `.odswidget-select`
- `.h3`

**Key Properties:**
- Layout: height: 60px
- Spacing: margin-bottom: 25px, 30px

### Code Examples

**Available:** 58 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-select/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [buttons](#buttons)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)

---

## ods-simple-tabs

**Category:** Interactive Controls  
**Use Cases:** Multi-view interfaces, content organization, navigation  
**Complexity:** High  
**Source:** [https://codelibrary.opendatasoft.com/widget-tricks/ods-simple-tabs/](https://codelibrary.opendatasoft.com/widget-tricks/ods-simple-tabs/)  

### Pattern Overview

Theods-simple-tabswidget can be used to have a tabbed interface that allows you to switch between different views. It has a simplified CSS making it easy to modify the style or layout.
Below are a few different styles that can be applied to the widget in order to fit different use cases.

### Structure

```
p
```

**Key Elements:**
- `<ods>`
- `<ods class="bicycle">`
- `<p>`
- `<ods [angularjs-directives]>`
- `<ods class="line-chart">`

### AngularJS Integration

**Directives Used:**
- `ods-bicycle` → [tags.md#ods-bicycle]
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]
- `ods-chart-serie` → [tags.md#ods-chart-serie]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-map` → [tags.md#ods-map]
- `ods-map-layer` → [tags.md#ods-map-layer]
- `ods-map-layer-group` → [tags.md#ods-map-layer-group]
- `ods-simple-tab` → [tags.md#ods-simple-tab]
- `ods-simple-tabs` → [tags.md#ods-simple-tabs]

### Styling

**Main Selectors:**
- `.ods-simple-tabs-nav-link`
- `.ods-simple-tabs-nav-link-active`

**Key Properties:**
- Spacing: padding: 0.5rem 1.5rem
- Visual: border-bottom: 0, border-radius: 30px, background-color: transparent, var(--links)

**States:**
- `:hover` - color

### Code Examples

**Available:** 18 examples (html, text, css)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/widget-tricks/ods-simple-tabs/)

### Related Patterns

- [age-pyramid-with-custom-htmlcss](#age-pyramid-with-custom-htmlcss)
- [animations](#animations)
- [chart-samples](#chart-samples)
- [comparison-generator](#comparison-generator)
- [content-cards](#content-cards)

---

---

## Summary

**Total Components:** 40
**Generated:** 2025-11-17 07:56:43
**Source:** ODS Code Library Documentation

For full code examples, click source links above.
