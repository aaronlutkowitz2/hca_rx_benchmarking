- dashboard: 1__compare_across_drgdrugs
  title: 1 - Compare across DRG-Drugs
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 3TjmR1SyU4IiPv78LIhyEZ
  elements:
  - title: Total Cost
    name: Total Cost
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: single_value
    fields: [fact_facility_drg_drug.total_drug_cost, fact_facility_drg_drug.dynamic_drg_value,
      fact_facility_drg_drug.sum_drug_opportunity]
    sorts: [fact_facility_drg_drug.total_drug_cost desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_drug_value
    row: 0
    col: 0
    width: 5
    height: 5
  - title: Cost & Opportunity by DRG (Top 10)
    name: Cost & Opportunity by DRG (Top 10)
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: looker_column
    fields: [fact_facility_drg_drug.total_drug_cost, fact_facility_drg_drug.dynamic_drg_value,
      fact_facility_drg_drug.sum_drug_opportunity, fact_facility_drg_drug.percent_drug_opportunity]
    sorts: [fact_facility_drg_drug.sum_drug_opportunity desc]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_facility_drg_drug.total_drug_cost,
            id: fact_facility_drg_drug.total_drug_cost, name: Total Drug Cost}, {
            axisId: fact_facility_drg_drug.sum_drug_opportunity, id: fact_facility_drg_drug.sum_drug_opportunity,
            name: Sum Drug Opportunity}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: fact_facility_drg_drug.percent_drug_opportunity,
            id: fact_facility_drg_drug.percent_drug_opportunity, name: Percent Drug
              Opportunity}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      fact_facility_drg_drug.percent_drug_opportunity: scatter
    series_labels:
      fact_facility_drg_drug.percent_drug_opportunity: "% Opportunity / Cost"
    defaults_version: 1
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_drug_value
    row: 0
    col: 5
    width: 19
    height: 10
  - title: Total Opportunity
    name: Total Opportunity
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: single_value
    fields: [fact_facility_drg_drug.dynamic_drg_value, fact_facility_drg_drug.sum_drug_opportunity]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_drug_value
    row: 5
    col: 0
    width: 5
    height: 5
  - title: DRG-Drug Variance (Top 100)
    name: DRG-Drug Variance (Top 100)
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: looker_scatter
    fields: [fact_facility_drg_drug.dynamic_drg_value, fact_facility_drg_drug.drug_name,
      fact_facility_drg_drug.variance, fact_facility_drg_drug.average_drug_cost]
    sorts: [fact_facility_drg_drug.variance desc]
    limit: 100
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_facility_drg_drug.variance,
            id: fact_facility_drg_drug.variance, name: Util % Variance}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, type: linear}]
    size_by_field: fact_facility_drg_drug.average_drug_cost
    series_types: {}
    series_labels:
      fact_facility_drg_drug.percent_drug_opportunity: "% Opportunity / Cost"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_drug_value
    row: 10
    col: 0
    width: 11
    height: 9
  - title: Potential Scores (Top 100)
    name: Potential Scores (Top 100)
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: looker_grid
    fields: [fact_facility_drg_drug.potential_score, fact_facility_drg_drug.variance,
      fact_facility_drg_drug.average_drug_cost, fact_facility_drg_drug.dynamic_drg_drug_value]
    sorts: [fact_facility_drg_drug.potential_score desc]
    limit: 100
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      fact_facility_drg_drug.percent_drug_opportunity: "% Opportunity / Cost"
    series_cell_visualizations:
      fact_facility_drg_drug.potential_score:
        is_active: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [fact_facility_drg_drug.variance]}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [fact_facility_drg_drug.average_drug_cost]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_facility_drg_drug.variance,
            id: fact_facility_drg_drug.variance, name: Util % Variance}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    size_by_field: fact_facility_drg_drug.average_drug_cost
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_drug_value
    row: 10
    col: 11
    width: 13
    height: 9
  filters:
  - name: Granularity
    title: Granularity
    type: field_filter
    default_value: drug^_l1
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: fact_facility_drg_drug.dynamic_drg
  - name: Dynamic Value
    title: Dynamic Value
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [Granularity]
    field: fact_facility_drg_drug.dynamic_drg_drug_value
  - name: Drug Name
    title: Drug Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: fact_facility_drg_drug.drug_name
  - name: L1 In Vs Out
    title: L1 In Vs Out
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: fact_facility_drg_drug.l1_in_vs_out
  - name: L2 Service Line
    title: L2 Service Line
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [L1 In Vs Out]
    field: fact_facility_drg_drug.l2_service_line
  - name: L3 Drg Superfamily
    title: L3 Drg Superfamily
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [L1 In Vs Out, L2 Service Line]
    field: fact_facility_drg_drug.l3_drg_superfamily
  - name: L4 Drg Family
    title: L4 Drg Family
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [L1 In Vs Out, L2 Service Line, L3 Drg Superfamily]
    field: fact_facility_drg_drug.l4_drg_family
  - name: L5 Drg Name
    title: L5 Drg Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [L1 In Vs Out, L2 Service Line, L4 Drg Family, L3 Drg Superfamily]
    field: fact_facility_drg_drug.l5_drg_name



- dashboard: 2__financial_summary
  title: 2 - Financial Summary
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: OVwyE6rYpLKRg0l5QO2p9w
  elements:
  - title: Potential Scores (Top 500)
    name: Potential Scores (Top 500)
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: looker_grid
    fields: [fact_facility_drg_drug.potential_score, fact_facility_drg_drug.variance,
      fact_facility_drg_drug.average_drug_cost, fact_facility_drg_drug.total_drug_cost,
      fact_facility_drg_drug.dynamic_drg_drug_value]
    sorts: [fact_facility_drg_drug.potential_score desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      fact_facility_drg_drug.percent_drug_opportunity: "% Opportunity / Cost"
    series_cell_visualizations:
      fact_facility_drg_drug.potential_score:
        is_active: true
      fact_facility_drg_drug.total_drug_cost:
        is_active: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [fact_facility_drg_drug.variance]}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [fact_facility_drg_drug.average_drug_cost]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_facility_drg_drug.variance,
            id: fact_facility_drg_drug.variance, name: Util % Variance}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    size_by_field: fact_facility_drg_drug.average_drug_cost
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_value
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      Variance: pdt_potential_score_summary.variance
      Average Drug Cost: pdt_potential_score_summary.average_drug_cost
    row: 0
    col: 0
    width: 18
    height: 8
  - title: Total Cost $ (Annual)
    name: Total Cost $ (Annual)
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: single_value
    fields: [fact_facility_drg_drug.total_drug_cost]
    limit: 5000
    total: true
    dynamic_fields: [{table_calculation: annual_cost, label: Annual Cost, expression: "${fact_facility_drg_drug.total_drug_cost}/3",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      fact_facility_drg_drug.percent_drug_opportunity: "% Opportunity / Cost"
    series_cell_visualizations:
      fact_facility_drg_drug.potential_score:
        is_active: true
      fact_facility_drg_drug.total_drug_cost:
        is_active: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_facility_drg_drug.variance,
            id: fact_facility_drg_drug.variance, name: Util % Variance}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    size_by_field: fact_facility_drg_drug.average_drug_cost
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [fact_facility_drg_drug.total_drug_cost]
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_value
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      Variance: pdt_potential_score_summary.variance
      Average Drug Cost: pdt_potential_score_summary.average_drug_cost
    row: 0
    col: 18
    width: 6
    height: 8
  filters:
  - name: Granularity
    title: Granularity
    type: field_filter
    default_value: drug^_l1
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: fact_facility_drg_drug.dynamic_drg
  - name: Dynamic Value
    title: Dynamic Value
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [Granularity]
    field: fact_facility_drg_drug.dynamic_drg_drug_value
  - name: Drug Name
    title: Drug Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: fact_facility_drg_drug.drug_name
  - name: L1 In Vs Out
    title: L1 In Vs Out
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: fact_facility_drg_drug.l1_in_vs_out
  - name: L2 Service Line
    title: L2 Service Line
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [L1 In Vs Out]
    field: fact_facility_drg_drug.l2_service_line
  - name: L3 Drg Superfamily
    title: L3 Drg Superfamily
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [L1 In Vs Out, L2 Service Line]
    field: fact_facility_drg_drug.l3_drg_superfamily
  - name: L4 Drg Family
    title: L4 Drg Family
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [L1 In Vs Out, L2 Service Line, L3 Drg Superfamily]
    field: fact_facility_drg_drug.l4_drg_family
  - name: L5 Drg Name
    title: L5 Drg Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [L1 In Vs Out, L2 Service Line, L3 Drg Superfamily, L4 Drg
        Family]
    field: fact_facility_drg_drug.l5_drg_name
  - name: Variance
    title: Variance
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: pdt_potential_score_summary.variance
  - name: Average Drug Cost
    title: Average Drug Cost
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: pdt_potential_score_summary.average_drug_cost



- dashboard: 3__compare_across_facilities
  title: 3 - Compare across Facilities
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: 4Fei0Eu0WKF6DOWrDDn2D4
  elements:
  - title: Total Encounters
    name: Total Encounters
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: single_value
    fields: [fact_facility_drg_drug.sum_drug_encounters]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      2 Group: fact_facility_drg_drug.group_name
      3 Division: fact_facility_drg_drug.division_name
      4 Market: fact_facility_drg_drug.market_name
      5 Facility Name: fact_facility_drg_drug.facility_name
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_drug_value
    row: 0
    col: 0
    width: 7
    height: 5
  - title: Util % & Cost by Facility
    name: Util % & Cost by Facility
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: looker_grid
    fields: [fact_facility_drg_drug.market_name, fact_facility_drg_drug.facility_name,
      fact_facility_drg_drug.percent_total_encounters, fact_facility_drg_drug.total_drug_cost,
      fact_encounter_drug.count_encounters]
    sorts: [fact_facility_drg_drug.percent_total_encounters desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      fact_facility_drg_drug.percent_drug_opportunity: "% Opportunity / Cost"
    series_cell_visualizations:
      fact_facility_drg_drug.percent_total_encounters:
        is_active: true
      fact_facility_drg_drug.total_drug_cost:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_facility_drg_drug.total_drug_cost,
            id: fact_facility_drg_drug.total_drug_cost, name: Total Drug Cost}, {
            axisId: fact_facility_drg_drug.sum_drug_opportunity, id: fact_facility_drg_drug.sum_drug_opportunity,
            name: Sum Drug Opportunity}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: fact_facility_drg_drug.percent_drug_opportunity,
            id: fact_facility_drg_drug.percent_drug_opportunity, name: Percent Drug
              Opportunity}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      2 Group: fact_facility_drg_drug.group_name
      3 Division: fact_facility_drg_drug.division_name
      4 Market: fact_facility_drg_drug.market_name
      5 Facility Name: fact_facility_drg_drug.facility_name
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_drug_value
    row: 0
    col: 7
    width: 17
    height: 9
  - title: Variance
    name: Variance
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: single_value
    fields: [fact_facility_drg_drug.variance]
    sorts: [fact_facility_drg_drug.variance desc 0]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      2 Group: fact_facility_drg_drug.group_name
      3 Division: fact_facility_drg_drug.division_name
      4 Market: fact_facility_drg_drug.market_name
      5 Facility Name: fact_facility_drg_drug.facility_name
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_drug_value
    row: 5
    col: 0
    width: 7
    height: 4
  - title: Util % by Facility
    name: Util % by Facility
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: looker_map
    fields: [fact_facility_drg_drug.division_name, fact_facility_drg_drug.market_name,
      fact_facility_drg_drug.facility_name, fact_facility_drg_drug.percent_total_encounters,
      fact_facility_drg_drug.location]
    filters:
      fact_facility_drg_drug.facility_id: not 30201
    sorts: [fact_facility_drg_drug.percent_total_encounters desc 0]
    limit: 100
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: fixed
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_marker_radius_fixed: 4
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_facility_drg_drug.variance,
            id: fact_facility_drg_drug.variance, name: Util % Variance}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, type: linear}]
    size_by_field: fact_facility_drg_drug.average_drug_cost
    series_types: {}
    series_labels:
      fact_facility_drg_drug.percent_drug_opportunity: "% Opportunity / Cost"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      2 Group: fact_facility_drg_drug.group_name
      3 Division: fact_facility_drg_drug.division_name
      4 Market: fact_facility_drg_drug.market_name
      5 Facility Name: fact_facility_drg_drug.facility_name
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_drug_value
    row: 9
    col: 0
    width: 8
    height: 9
  - title: "% Util by Facility"
    name: "% Util by Facility"
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: looker_scatter
    fields: [fact_facility_drg_drug.facility_name, fact_facility_drg_drug.drug_name,
      fact_facility_drg_drug.percent_total_encounters, fact_facility_drg_drug.average_drug_cost]
    pivots: [fact_facility_drg_drug.drug_name]
    sorts: [fact_facility_drg_drug.drug_name, fact_facility_drg_drug.percent_total_encounters
        desc 0]
    limit: 100
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      fact_facility_drg_drug.percent_drug_opportunity: "% Opportunity / Cost"
    series_cell_visualizations:
      fact_facility_drg_drug.potential_score:
        is_active: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_facility_drg_drug.variance,
            id: fact_facility_drg_drug.variance, name: Util % Variance}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, type: linear}]
    size_by_field: fact_facility_drg_drug.average_drug_cost
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      2 Group: fact_facility_drg_drug.group_name
      3 Division: fact_facility_drg_drug.division_name
      4 Market: fact_facility_drg_drug.market_name
      5 Facility Name: fact_facility_drg_drug.facility_name
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_drug_value
    row: 9
    col: 8
    width: 8
    height: 9
  - title: "% Util by Division"
    name: "% Util by Division"
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: looker_scatter
    fields: [fact_facility_drg_drug.drug_name, fact_facility_drg_drug.percent_total_encounters,
      fact_facility_drg_drug.average_drug_cost, fact_facility_drg_drug.division_name]
    pivots: [fact_facility_drg_drug.drug_name]
    sorts: [fact_facility_drg_drug.drug_name, fact_facility_drg_drug.percent_total_encounters
        desc 0]
    limit: 100
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      fact_facility_drg_drug.percent_drug_opportunity: "% Opportunity / Cost"
    series_cell_visualizations:
      fact_facility_drg_drug.potential_score:
        is_active: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_facility_drg_drug.variance,
            id: fact_facility_drg_drug.variance, name: Util % Variance}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, type: linear}]
    size_by_field: fact_facility_drg_drug.average_drug_cost
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Granularity: fact_facility_drg_drug.dynamic_drg
      Drug Name: fact_facility_drg_drug.drug_name
      L1 In Vs Out: fact_facility_drg_drug.l1_in_vs_out
      L2 Service Line: fact_facility_drg_drug.l2_service_line
      L3 Drg Superfamily: fact_facility_drg_drug.l3_drg_superfamily
      L4 Drg Family: fact_facility_drg_drug.l4_drg_family
      L5 Drg Name: fact_facility_drg_drug.l5_drg_name
      2 Group: fact_facility_drg_drug.group_name
      3 Division: fact_facility_drg_drug.division_name
      4 Market: fact_facility_drg_drug.market_name
      5 Facility Name: fact_facility_drg_drug.facility_name
      Dynamic Value: fact_facility_drg_drug.dynamic_drg_drug_value
    row: 9
    col: 16
    width: 8
    height: 9
  filters:
  - name: Granularity
    title: Granularity
    type: field_filter
    default_value: drug^_l1
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: fact_facility_drg_drug.dynamic_drg
  - name: Dynamic Value
    title: Dynamic Value
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [Granularity]
    field: fact_facility_drg_drug.dynamic_drg_drug_value
  - name: Drug Name
    title: Drug Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: fact_facility_drg_drug.drug_name
  - name: L1 In Vs Out
    title: L1 In Vs Out
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: fact_facility_drg_drug.l1_in_vs_out
  - name: L2 Service Line
    title: L2 Service Line
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [L1 In Vs Out]
    field: fact_facility_drg_drug.l2_service_line
  - name: L3 Drg Superfamily
    title: L3 Drg Superfamily
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [L1 In Vs Out, L2 Service Line]
    field: fact_facility_drg_drug.l3_drg_superfamily
  - name: L4 Drg Family
    title: L4 Drg Family
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [L1 In Vs Out, L2 Service Line, L3 Drg Superfamily]
    field: fact_facility_drg_drug.l4_drg_family
  - name: L5 Drg Name
    title: L5 Drg Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [L1 In Vs Out, L2 Service Line, L3 Drg Superfamily, L4 Drg
        Family]
    field: fact_facility_drg_drug.l5_drg_name
  - name: 2 Group
    title: 2 Group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: fact_facility_drg_drug.group_name
  - name: 3 Division
    title: 3 Division
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [2 Group]
    field: fact_facility_drg_drug.division_name
  - name: 4 Market
    title: 4 Market
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [2 Group, 3 Division]
    field: fact_facility_drg_drug.market_name
  - name: 5 Facility Name
    title: 5 Facility Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: [2 Group, 3 Division, 4 Market]
    field: fact_facility_drg_drug.facility_name


- dashboard: 4__encounter_detail
  title: 4 - Encounter Detail
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: BZWj3weYQas21Bcog1KohQ
  elements:
  - title: Drug Summary
    name: Drug Summary
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: looker_grid
    fields: [fact_charge.rx_ingredient_name, fact_charge.charge_description, fact_charge.rev_desc,
      fact_charge.sum_total_cost]
    sorts: [fact_charge.sum_total_cost desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Encounter ID Hashed: fact_encounter_drug.encounter_id_hashed
    row: 0
    col: 16
    width: 8
    height: 10
  - title: Charge Cost Breakdown
    name: Charge Cost Breakdown
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: looker_bar
    fields: [fact_charge.charge_description, fact_charge.sum_total_var_direct_cost_amt,
      fact_charge.sum_var_implants_amt, fact_charge.sum_var_med_charge_sply_amt, fact_charge.sum_total_cost]
    sorts: [fact_charge.sum_total_cost desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [fact_charge.sum_total_cost]
    listen:
      Encounter ID Hashed: fact_encounter_drug.encounter_id_hashed
    row: 0
    col: 8
    width: 8
    height: 10
  - title: Encounter Summary
    name: Encounter Summary
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: looker_grid
    fields: [fact_charge.charge_code, fact_charge.charge_description, fact_charge.dept_num,
      fact_charge.rev_code, fact_charge.rev_desc, fact_charge.rx_ingredient_name,
      fact_charge.standard_charge_code, fact_charge.standard_item_num, fact_charge.sum_detail_direct_implant_cost,
      fact_charge.sum_detail_direct_med_supply_cost, fact_charge.sum_detail_variable_direct_cost,
      fact_charge.sum_total_cost]
    sorts: [fact_charge.sum_total_cost desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      fact_charge.sum_detail_direct_implant_cost:
        is_active: false
      fact_charge.sum_total_cost:
        is_active: true
    series_types: {}
    defaults_version: 1
    listen:
      Encounter ID Hashed: fact_encounter_drug.encounter_id_hashed
    row: 10
    col: 0
    width: 24
    height: 14
  - title: Encounter Facts
    name: Encounter Facts
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    type: looker_single_record
    fields: [fact_encounter_drug.encounter_id_hashed, fact_facility_drg_drug.l1_in_vs_out,
      fact_facility_drg_drug.l2_service_line, fact_facility_drg_drug.l3_drg_superfamily,
      fact_facility_drg_drug.l4_drg_family, fact_facility_drg_drug.l5_drg_name, fact_facility_drg_drug.group_name,
      fact_facility_drg_drug.division_name, fact_facility_drg_drug.market_name, fact_facility_drg_drug.facility_name,
      fact_charge.sum_detail_direct_implant_cost, fact_charge.sum_detail_direct_med_supply_cost,
      fact_charge.sum_detail_variable_direct_cost, fact_charge.sum_total_cost]
    limit: 500
    show_view_names: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Encounter ID Hashed: fact_encounter_drug.encounter_id_hashed
    row: 0
    col: 0
    width: 8
    height: 10
  filters:
  - name: Encounter ID Hashed
    title: Encounter ID Hashed
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: reba_rx_benchmarking
    explore: fact_facility_drg_drug
    listens_to_filters: []
    field: fact_encounter_drug.encounter_id_hashed
