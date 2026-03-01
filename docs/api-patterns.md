# API Patterns Layer - External Integrations

**Purpose:** External API integrations, connectors, and custom views
**Categories:** apps, custom-views, portal-themes
**Last Updated:** 2025-11-17

## About This Layer

This layer contains patterns for integrating external APIs, creating custom views, and implementing data connectors. These patterns typically involve more complex server-side integrations and custom JavaScript code.

**Common Use Cases:**
- External API integration (Waze, weather, traffic, etc.)
- Custom data connectors
- Portal theming and customization
- Advanced custom views
- Real-time data streaming

**Navigation:**
- Use pattern names as anchor links (e.g., `#traffic-diagnostic-with-waze`)
- Check implementation details for required technologies
- See setup sections for prerequisites
- Full code available in source links

**See also:**
- [index.md] - Quick reference and navigation
- [components.md] - UI components for displaying API data
- [tags.md] - AngularJS directives for data binding

---

## Table of Contents

### Custom View (4)

- [Domain Datasets](#domain-datasets)
- [Eco-Counter / Eco-Compteur](#eco-counter-eco-compteur)
- [Custom view Generator](#custom-view-generator)
- [GTFS Custom View](#gtfs-custom-view)

### Portal Theming (4)

- [Colored theme](#colored-theme)
- [Dropdown menu for portal headers](#dropdown-menu-for-portal-headers)
- [Dark theme](#dark-theme)
- [Light theme](#light-theme)

### Traffic Data API (10)

- [Traffic Diagnostic with Waze](#traffic-diagnostic-with-waze)
- [Alerts on the State of your Data With Zapier](#alerts-on-the-state-of-your-data-with-zapier)
- [COVID-19 for US Counties](#covid-19-for-us-counties)
- [Election Results Visualization](#election-results-visualization)
- [Google Form Survey Results Visualization](#google-form-survey-results-visualization)
- [KPI Dashboard](#kpi-dashboard)
- [Make your IoT data speak](#make-your-iot-data-speak)
- [Notify your users on your data updates](#notify-your-users-on-your-data-updates)
- [Sanitation Inspection Transparency](#sanitation-inspection-transparency)
- [School Canteen Menu Displays](#school-canteen-menu-displays)

---

## custom-view-generator

**Type:** Custom View  
**Category:** custom-views  
**Source:** [https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)  

### Overview

Custom View from ODS Code Library.

### Implementation Details

**AngularJS Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ng-model` → [tags.md#ng-model]
- `ng-model-options` → [tags.md#ng-model-options]
- `ng-repeat` → [tags.md#ng-repeat]
- `ng-repeat-end` → [tags.md#ng-repeat-end]
- `ng-repeat-start` → [tags.md#ng-repeat-start]
- `ng-show` → [tags.md#ng-show]
- `ods-aggregation` → [tags.md#ods-aggregation]
- `ods-aggregation-context` → [tags.md#ods-aggregation-context]

**Data Binding Patterns:**
- `ng-model: ctx.parameters[`
- `{{ 'background-image: url(/explore/dataset/' + ctx }}`
- `{{ 'col-md-' + (12/itemsPerRow) }}`
- `{{ (agg || 0) | number : (kpi }}`
- `{{ 8 * itemsPerRow }}`
- `{{ ctx }}`
- `{{ ctxfields }}`
- `{{ datasetid }}`

### Code Examples

**Available:** 5 examples (css, html, text)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/custom-views/custom-view-generator/)

---

## domain-datasets

**Type:** Custom View  
**Category:** custom-views  
**Source:** [https://codelibrary.opendatasoft.com/custom-views/domain-dataset/](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)  

### Overview

This resource is intended to be used as custom view inside your catalog, where the dataset context is always namedctxand doesn’t require anyods-dataset-contextwidget. Read theuser’s guide sectionabout custom views for details.

### Implementation Details

**AngularJS Directives Used:**
- `ng-href` → [tags.md#ng-href]
- `ng-repeat` → [tags.md#ng-repeat]
- `ods-analysis` → [tags.md#ods-analysis]
- `ods-analysis-context` → [tags.md#ods-analysis-context]
- `ods-analysis-max` → [tags.md#ods-analysis-max]
- `ods-analysis-serie-popularity` → [tags.md#ods-analysis-serie-popularity]
- `ods-analysis-serie-total` → [tags.md#ods-analysis-serie-total]
- `ods-analysis-sort` → [tags.md#ods-analysis-sort]
- `ods-analysis-x` → [tags.md#ods-analysis-x]
- `ods-api-monitoring` → [tags.md#ods-api-monitoring]
- `ods-chart` → [tags.md#ods-chart]
- `ods-chart-query` → [tags.md#ods-chart-query]

**Data Binding Patterns:**
- `{{ '/explore/dataset/' + analyse }}`
- `{{ '/explore/dataset/' + item }}`
- `{{ '/explore/dataset/ods-api-monitoring/analyze/?source=monitoring&amp;q=' + analyse }}`
- `{{ analyse }}`
- `{{ ctx }}`
- `{{ datasetcount = (datasets }}`
- `{{ datasetcount }}`
- `{{ item }}`

### Code Examples

**Available:** 8 examples (css, html, text)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/custom-views/domain-dataset/)

### Requirements

anyods-dataset-contextwidget. Read theuser’s guide sectionabout custom views for details.

---

## eco-counter-eco-compteur

**Type:** Custom View  
**Category:** custom-views  
**Source:** [https://codelibrary.opendatasoft.com/custom-views/eco-compteur/](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)  

### Overview

See it live here !

### Implementation Details

**AngularJS Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ng-model` → [tags.md#ng-model]
- `ng-options` → [tags.md#ng-options]
- `ng-repeat` → [tags.md#ng-repeat]
- `ng-selected` → [tags.md#ng-selected]
- `ng-src` → [tags.md#ng-src]
- `ods-adv-analysis` → [tags.md#ods-adv-analysis]
- `ods-adv-analysis-context` → [tags.md#ods-adv-analysis-context]
- `ods-adv-analysis-group-by` → [tags.md#ods-adv-analysis-group-by]

**Data Binding Patterns:**
- `ng-model: ctx.parameters[`
- `{{ byday }}`
- `{{ ctx }}`
- `{{ e | capitalize }}`
- `{{ evol = (byday }}`
- `{{ evol | number: 1 }}`
- `{{ global }}`
- `{{ histoscale }}`

### Code Examples

**Available:** 20 examples (css, html, text)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/custom-views/eco-compteur/)

---

## gtfs-custom-view

**Type:** Custom View  
**Category:** custom-views  
**Source:** [https://codelibrary.opendatasoft.com/custom-views/gtfs-custom/](https://codelibrary.opendatasoft.com/custom-views/gtfs-custom/)  

### Overview

This custom view will let you display routes and stops from a General Transit Feed Specification (GTFS) file. It can be used either as acustom viewinside your catalog or on a custom page.

### Implementation Details

**AngularJS Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ods-bus` → [tags.md#ods-bus]
- `ods-circle` → [tags.md#ods-circle]
- `ods-dataset-context` → [tags.md#ods-dataset-context]
- `ods-facet` → [tags.md#ods-facet]
- `ods-facet--` → [tags.md#ods-facet--]
- `ods-facet-results` → [tags.md#ods-facet-results]
- `ods-facet-results-context` → [tags.md#ods-facet-results-context]
- `ods-facet-results-facet-name` → [tags.md#ods-facet-results-facet-name]
- `ods-facet-results-sort` → [tags.md#ods-facet-results-sort]
- `ods-facets` → [tags.md#ods-facets]

**Data Binding Patterns:**
- `{{ stops }}`

### Code Examples

**Available:** 7 examples (css, html, text)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/custom-views/gtfs-custom/)

---

## colored-theme

**Type:** Portal Theming  
**Category:** portal-themes  
**Source:** [https://codelibrary.opendatasoft.com/portal-themes/color/](https://codelibrary.opendatasoft.com/portal-themes/color/)  

### Overview

Portal Theming from ODS Code Library.

### Implementation Details

**AngularJS Directives Used:**
- `ods-front-footer` → [tags.md#ods-front-footer]
- `ods-front-header` → [tags.md#ods-front-header]
- `ods-logo` → [tags.md#ods-logo]
- `ods-responsive-menu` → [tags.md#ods-responsive-menu]
- `ods-responsive-menu-collapsible` → [tags.md#ods-responsive-menu-collapsible]
- `ods-responsive-menu-placeholder` → [tags.md#ods-responsive-menu-placeholder]

**Key CSS Selectors:**
- `.ods-catalog-card`
- `.ods-catalog-card__keyword`
- `.ods-catalog-card__metadata-item`
- `.ods-catalog-card__theme-icon`
- `.ods-catalog-card__title`
- `.ods-catalog-card__visualization`
- `.ods-catalog-sort-labels`
- `.ods-catalog-sort__selector`

### Code Examples

**Available:** 96 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/portal-themes/color/)

---

## dark-theme

**Type:** Portal Theming  
**Category:** portal-themes  
**Source:** [https://codelibrary.opendatasoft.com/portal-themes/dark/](https://codelibrary.opendatasoft.com/portal-themes/dark/)  

### Overview

Portal Theming from ODS Code Library.

### Implementation Details

**AngularJS Directives Used:**
- `ods-front-footer` → [tags.md#ods-front-footer]
- `ods-front-header` → [tags.md#ods-front-header]
- `ods-logo` → [tags.md#ods-logo]
- `ods-responsive-menu` → [tags.md#ods-responsive-menu]
- `ods-responsive-menu-collapsible` → [tags.md#ods-responsive-menu-collapsible]
- `ods-responsive-menu-placeholder` → [tags.md#ods-responsive-menu-placeholder]

**Key CSS Selectors:**
- `.ods-catalog-card`
- `.ods-catalog-card__keyword`
- `.ods-catalog-card__metadata-item`
- `.ods-catalog-card__theme-icon`
- `.ods-catalog-card__title`
- `.ods-catalog-card__visualization`
- `.ods-catalog-sort-labels`
- `.ods-catalog-sort__selector`

### Code Examples

**Available:** 96 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/portal-themes/dark/)

---

## dropdown-menu-for-portal-headers

**Type:** Portal Theming  
**Category:** portal-themes  
**Source:** [https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)  

### Overview

Important note

### Implementation Details

**AngularJS Directives Used:**
- `ng-class` → [tags.md#ng-class]
- `ng-click` → [tags.md#ng-click]
- `ng-if` → [tags.md#ng-if]
- `ng-init` → [tags.md#ng-init]
- `ods-front-header__menu` → [tags.md#ods-front-header__menu]
- `ods-front-header__menu-item` → [tags.md#ods-front-header__menu-item]
- `ods-front-header__menu-item-link` → [tags.md#ods-front-header__menu-item-link]
- `ods-front-header__menu-item-link--active` → [tags.md#ods-front-header__menu-item-link--active]

**Data Binding Patterns:**
- `{{ title }}`
- `{{ titre }}`

**Key CSS Selectors:**
- `.custom-menu-item-submenu`
- `.ods-front-header__logo`
- `.ods-front-header__management-menu`
- `.ods-front-header__menu-item`
- `.ods-front-header__menu-item-link--active`
- `.ods-front-header__portal-brand`
- `.ods-responsive-menu-collapsible__content`
- `.ods-responsive-menu-placeholder.ods-responsive-menu-placeholder--active`

### Code Examples

**Available:** 152 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/portal-themes/dropdown-menu/)

---

## light-theme

**Type:** Portal Theming  
**Category:** portal-themes  
**Source:** [https://codelibrary.opendatasoft.com/portal-themes/light/](https://codelibrary.opendatasoft.com/portal-themes/light/)  

### Overview

Portal Theming from ODS Code Library.

### Implementation Details

**AngularJS Directives Used:**
- `ods-front-footer` → [tags.md#ods-front-footer]
- `ods-front-header` → [tags.md#ods-front-header]
- `ods-logo` → [tags.md#ods-logo]
- `ods-responsive-menu` → [tags.md#ods-responsive-menu]
- `ods-responsive-menu-collapsible` → [tags.md#ods-responsive-menu-collapsible]
- `ods-responsive-menu-placeholder` → [tags.md#ods-responsive-menu-placeholder]

**Key CSS Selectors:**
- `.ods-catalog-card`
- `.ods-catalog-card__keyword`
- `.ods-catalog-card__metadata-item`
- `.ods-catalog-card__theme-icon`
- `.ods-catalog-card__title`
- `.ods-catalog-card__visualization`
- `.ods-catalog-sort-labels`
- `.ods-catalog-sort__selector`

### Code Examples

**Available:** 64 examples (css, text, html)  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/portal-themes/light/)

---

## alerts-on-the-state-of-your-data-with-zapier

**Type:** Traffic Data API  
**Category:** apps  
**Source:** [https://codelibrary.opendatasoft.com/apps/zapier-data/](https://codelibrary.opendatasoft.com/apps/zapier-data/)  

### Overview

Create alerts on datasets and be notified in real time when an update or a new element is produced
The context
You are a reuser of a number of datasets or several data portals, whether your own or those of other organizations. You need to be informed when new data are published or modified, when a problem arises on any number of them, or when real-time data are not updated.
The service
To push alerts to data consumers, the Huwise platform integrated the tool Zapier, directly connected to our API. Zapier allows you to program notifications linked to the life cycle of the data you follow. You can choose to receive these alerts via different media: email, text message, Slack, etc.
The Use Case
Citilog, a world leader in road traffic monitoring and surveillance, manages the data collected from its cameras through the Huwise platform. To help with their regular operations and improve their maintenance, the company has set up Zapier alerts in the event of an anomaly, and when a camera is being repaired.
A Zapier accountAccess to an Huwise dataset catalog, or to the API of an Huwise dataset catalog
Get the code onGithub
See it livehere
Contact us to learn how we can accompany you in implementing this connection with the Waze API.

### Implementation Details

### Code Examples

**Available:** 0 examples ()  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/apps/zapier-data/)

---

## covid-19-for-us-counties

**Type:** Traffic Data API  
**Category:** apps  
**Source:** [https://codelibrary.opendatasoft.com/apps/covid-us-counties/](https://codelibrary.opendatasoft.com/apps/covid-us-counties/)  

### Overview

Create a live COVID-19 for your county, city etc. with local data.
The context
You have a regularly updated source of data about COVID-19 for your region (e.g. County or City) that that reflects information not available nationwide. You want to keep the population updated on the number of cases, the number of occupied hospital beds etc. in their surroundings. You want to make the data available for nation-wide aggregation.
The service
This page aggregates a number of indicators, with key figures, maps, tables etc. that allows to share detailed data with a simple visualization. All the aggregated data by day, by zipcode, by gender etc. are pre-configured.
A Huwise platformA dataset with records on COVID for every date and possibly split by gender, age etc.
Get the code onGithub
Contact us to learn how we can accompany you in implementing this connection with the Waze API.

### Implementation Details

### Code Examples

**Available:** 0 examples ()  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/apps/covid-us-counties/)

---

## election-results-visualization

**Type:** Traffic Data API  
**Category:** apps  
**Source:** [https://codelibrary.opendatasoft.com/apps/election/](https://codelibrary.opendatasoft.com/apps/election/)  

### Overview

Combine several datasets regarding election results and give your citizens a 360° representation of the share of votes across your territory.
The context
Elections are always a highlight for you and your constituents. To make your citizens want to follow the details of the live votes on your portal and facilitate the understanding of the results, you will need to offer them legible and engaging content.
The service
With Huwise, it is possible to compare different fields of the same dataset or several datasets together. The visual representation of these combined and filtered data allows you to offer your community a comparative view of the distribution of votes by district, municipality or constituency.
The Use Case
Like the metropolis of Rennes, build an electoral map of your territory so that your citizens can view this information by polling station. They can understand how voters vote in their neighborhood and observe disparities with other areas of the municipality.
Like the Hauts-de-Seine, guide your citizens in reading the voting results. The regional department has built an infographic containing data on the legislative and presidential elections since 1993. Filter buttons allow the user to choose the election that interests them, then to display the results (elected candidates, non-elected candidates, participation rate, number of invalid ballots, etc.) per constituency or municipality.
A Huwise platform
Get the code onGithub
See it livehere
Contact us to learn how we can accompany you in implementing this connection with the Waze API.

### Implementation Details

### Code Examples

**Available:** 0 examples ()  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/apps/election/)

---

## google-form-survey-results-visualization

**Type:** Traffic Data API  
**Category:** apps  
**Source:** [https://codelibrary.opendatasoft.com/apps/google-form/](https://codelibrary.opendatasoft.com/apps/google-form/)  

### Overview

Automate the result display from your collaborative surveys by connecting Google Form to your Huwise portal.
The context
You are preparing a survey and you need to visualize the results in a legible and structured way, as well as enrich them with other data. Google Form allows easy collection of these results, but not their advanced visualization or comparison with other data. Integrating Google Form with the Huwise platform can help you take advantage of both tools.
The service
When you create a survey with Google Form, the answers are collected in a spreadsheet that updates as people respond. This spreadsheet can be shared via a URL of its own. All you need to do is set this URL as the source for publishing a new dataset. This will be updated in real time as soon as a new person responds to the survey. You will then be able to take advantage of the data visualization and comparison features offered by the platform to display the results of your survey in the most comprehensive and understandable way possible.
A Google AccountA Huwise platform
Get the code onGithub
See it livehere
Contact us to learn how we can accompany you in implementing this connection with the Waze API.

### Implementation Details

### Code Examples

**Available:** 0 examples ()  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/apps/google-form/)

---

## kpi-dashboard

**Type:** Traffic Data API  
**Category:** apps  
**Source:** [https://codelibrary.opendatasoft.com/apps/kpi-dashboard/](https://codelibrary.opendatasoft.com/apps/kpi-dashboard/)  

### Overview

Create personalized dashboards to measure the performance of your actions and highlight your concrete achievements
The context
Whether you are a community or a company, your goal is to provide an ever higher quality of service to your citizens or customers. For that, you need to evaluate the accomplishment of the actions carried out by your organization. These performance indicators reflect your strategic plan objectives, or your municipality’s political program.
The service
Huwise allows you to build a dashboard ofperformance indicatorsrelated to datasets published on your portal. The use of such a tool offers you:
an understanding of essential metrics to track your achievements, all in one place.the guarantee that your indicators will always be up to date because synchronized with the datasets of your portal.the possibility of creating, for each indicator, pages aggregating editorial contents and data visualizations in order to contextualize, explain and enhance the concrete actions already implemented or being completed.
The + ODS: customization from A to Z.Organisation using indicators such as color, icons, progress bars, integration of visuals … your dashboard is fully customizable. It can then perfectly integrate into the range of digital and communication tools used by your organization to highlight your actions, both internally and externally.
The use case
The city of Paris has built a dashboard of performance indicators using its website’s visual identity. Open to the public, the dashboard is designed around three axes, each represented by a color to facilitate sorting and readability: living together better (pink), the city that benefits everyone (blue) and the construction of tomorrow’s world (green). The municipality has chosen to represent a percentage rate of completion of its service’s actions, accompanied with a progress bar. Each action is contextualized by a page mixing texts, and data visualizations. This page also gives access to the data set’s source used to build the performance indicators.https://indicateurs-parisdata.opendatasoft.com
A Huwise platformPreparatory work done on the nature of the indicators to be put forward
Get the code onGithub
See it livehere
Contact us to learn how we can accompany you in implementing this connection with the Waze API.

### Implementation Details

### Code Examples

**Available:** 0 examples ()  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/apps/kpi-dashboard/)

---

## make-your-iot-data-speak

**Type:** Traffic Data API  
**Category:** apps  
**Source:** [https://codelibrary.opendatasoft.com/apps/iot/](https://codelibrary.opendatasoft.com/apps/iot/)  

### Overview

Build dynamic and easy to read visualization on your sensors data and connected equipments
The context
Smart sorting bins and energy meters, traffic surveillance cameras, fleets of geolocated vehicles … the connected equipment is multiplying within the territories, producing a considerable amount of data in real time. Gross, voluminous and complex, this IoT data often remains indecipherable for the human eye.
The service
Huwise provides you with a visualization model fully designed to represent, understand and analyze all your IoT data, regardless of their source and format. This app allows you to:
map all of your sensors to monitor their operating status and supervise their activitysimply and visually restore the raw data collected by your sensors, offering several levels of detail: location, operating status, description of measurements, analytical curves, etc.draw up a history of the data produced by your connected objects, navigate easily through this history and analyze the evolution of values over time
The use case
In Paris, Trilib stations installed in several areas of the city generate data on waste. The app proposed by Huwise allows to locate these stations on a map. By clicking on a geolocated point, a lateral banner opens to the right of the map, allowing to visualize the filling rates of the buckets, to check if they are active or not, and to browse the history of the data they have produced so far.
A Huwise platform
Get the code onGithub
Contact us to learn how we can accompany you in implementing this connection with the Waze API.

### Implementation Details

### Code Examples

**Available:** 0 examples ()  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/apps/iot/)

### Setup

See source documentation for setup and installation instructions.

---

## notify-your-users-on-your-data-updates

**Type:** Traffic Data API  
**Category:** apps  
**Source:** [https://codelibrary.opendatasoft.com/apps/zapier-notify/](https://codelibrary.opendatasoft.com/apps/zapier-notify/)  

### Overview

Send alerts to your users when you perform operation on your data or when critic threshold are reached
The context
You are a reuser of a number of datasets or several data portals, whether your own or those of other organizations. You need to be informed when new data are published or modified, when a problem arises on any number of them, or when real-time data are not updated.
The service
To push alerts to data consumers, the Huwise platform integrated the tool Zapier, directly connected to our API. Zapier allows you to program notifications linked to the life cycle of the data you follow. You can choose to receive these alerts via different media: email, text message, Slack, etc.
The Use Case
Citilog, a world leader in road traffic monitoring and surveillance, manages the data collected from its cameras through the Huwise platform. To help with their regular operations and improve their maintenance, the company has set up Zapier alerts in the event of an anomaly, and when a camera is being repaired.
A Zapier accountAccess to an Huwise dataset catalog, or to the API of an Huwise dataset catalog
Get the code onGithub
See it livehere
Contact us to learn how we can accompany you in implementing this connection with the Waze API.

### Implementation Details

### Code Examples

**Available:** 0 examples ()  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/apps/zapier-notify/)

---

## sanitation-inspection-transparency

**Type:** Traffic Data API  
**Category:** apps  
**Source:** [https://codelibrary.opendatasoft.com/apps/sanitary-inspection/](https://codelibrary.opendatasoft.com/apps/sanitary-inspection/)  

### Overview

Created by the Ministry of Agriculture, the Alim’Confiance app facilitates the sharing of hygiene check results carried out in food establishments.
The Use Case
The General Directorate of Food (DGAL) carries out thousands of health inspections each year in restaurants, bakeries, chocolate makers, supermarkets and other numerous food shops in France. To increase transparency around inspection data and thus enable the population to make an informed choice of where to go to eat, the DGAL has created the Alim’Confiance app.
The service
Alim’Confiance is a mobile and desktop web app, connected to the Ministry of Agriculture’s data platform, operated by Huwise. It is from there that the app retrieves daily results of new inspections. The app offers a cartographic visualization of all the inspected establishments and makes it possible to filter them by types (glacier, cheesemonger, collective catering, etc.) and by their level of hygiene (from “very satisfactory” to “needs urgent changes”). As the results need to be as legible and explicit as possible, a gradual system of smileys has been chosen.
The ODS Advantage: a poster to print by the restaurant’s owner.Each inspected establishment is indicated by a pin on the inspection map. By clicking on the marker, a tooltip appears and gives access to a small card that the restaurant owner can print, in the manner of “homemade” banners used by some restaurants on their menu. The information contained in this printable form is generated automatically and informs the consumer about the level of hygiene, the date and the period of validity of its inspection.
A Huwise platform
See it live onalim-confiance.gouv.fr
Contact us to learn how we can accompany you in implementing this connection with the Waze API.

### Implementation Details

### Code Examples

**Available:** 0 examples ()  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/apps/sanitary-inspection/)

---

## school-canteen-menu-displays

**Type:** Traffic Data API  
**Category:** apps  
**Source:** [https://codelibrary.opendatasoft.com/apps/canteen/](https://codelibrary.opendatasoft.com/apps/canteen/)  

### Overview

Save school officials time: give them a printable menu model containing up-to-date information
The context
French schools display their canteen menus each week either so that it can be read by students and their parents. In the majority of cases, the municipality sets the composition of the meals then sends the information to school establishments who then have to reprocess the information into a spreadsheet or a word processor in order to then print and display it.
The service
To help agents avoid repeating this task, Huwise has created a model menu page that automatically generates the information from a dataset “school canteen menus”.
The ODS Advantage: the platform’s filters.They enable you to choose the elements to show on the menu. Data that is only useful to territorial agents do not need to be displayed on documents destined to the public.
The Use Case
Rennes Metropolis offers its schools a ready-to-print menu page for which the text is generated from a dataset updated by the General Canteen Service. Thanks to the platform’s filters, allergens and organic ingredients are highlighted with specific colors. The dataset includes the menus for the ongoing, past, and following weeks, allowing schools to anticipate the preparation of the menus displayed.
A Huwise platform
Get the code onGithub
See it livehere
Contact us to learn how we can accompany you in implementing this connection with the Waze API.

### Implementation Details

### Code Examples

**Available:** 0 examples ()  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/apps/canteen/)

---

## traffic-diagnostic-with-waze

**Type:** Traffic Data API  
**Category:** apps  
**Source:** [https://codelibrary.opendatasoft.com/apps/waze/](https://codelibrary.opendatasoft.com/apps/waze/)  

### Overview

Enrich your own data with traffic data and observe in real-time the state of traffic across your territory
The context
Waze’s Connected Citizens Program promotes pooling resources: Waze provides its partners with real-time data on incidents and trouble zones slowing down traffic as signaled by drivers, while its partners give Waze data in real time on the closures of certain roads, ongoing road work, and major accidents.
The service
To facilitate the exchange of information between Waze and partner municipalities within the Connected Citizens Program, Huwise has developed a connecter for the Waze API, capable of extracting data from the traffic app to bring them to the platform. Crossing them with traffic data produced by the municipality allows users to establish a near-comprehensive diagnostic on the traffic’s state.
The ODS Advantage:historical data. Unless you want to see Waze’s data disappear from one day to another from your platform, it is possible to collect a complete history. You can thus compare the evolution of traffic across, for instance, different days, a bank holiday and a work day, the same day of different weeks, etc.
The Use Case
The European Metropolis of Lille (MEL) controls its traffic thanks to traffic sensors installed across different zones of the city. Via the Waze connector built by Huwise, the MEL collects traffic data on its platform which is then compared to the data produced by its sensors. This complete and historicized database allows it to:
More quickly identify problems that may arise in specific streets, so as to then send out emergency intervention services when needed.Anticipate future incidents and traffic blockages to implement preventative solutions.
A Huwise platformBe affiliated with the Waze Connected Citizens Program
The entire application can be found onGithub
Contact us to learn how we can accompany you in implementing this connection with the Waze API.

### Implementation Details

### Code Examples

**Available:** 0 examples ()  
**Full examples:** See [source documentation](https://codelibrary.opendatasoft.com/apps/waze/)

### Setup

See source documentation for setup and installation instructions.

---

---

## Summary

**Total Patterns:** 18
**Types:** 3
**Generated:** 2025-11-17 08:00:39
**Source:** ODS Code Library Documentation

For full implementation code and setup instructions, click source links above.

## Integration Guidelines

When integrating external APIs:

1. **Authentication:** Check API documentation for authentication requirements
2. **Rate Limits:** Be aware of API rate limits and implement caching if needed
3. **Error Handling:** Implement robust error handling for API failures
4. **Data Refresh:** Consider appropriate data refresh intervals
5. **Security:** Never expose API keys in client-side code
6. **Testing:** Test integrations thoroughly with various edge cases

For platform-specific integration support, contact OpenDataSoft.
