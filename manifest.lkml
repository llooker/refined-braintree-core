project_name: "marketplace_braintree"

################ Constants ################

constant: DATASET_NAME {
  value: "braintree"
  export: override_optional
}

constant: CONNECTION_NAME {
  value: "brick-layer"
  export: override_optional
}

constant: CONFIG_PROJECT_NAME {
  value: "marketplace_braintree_config"
  export: override_optional
}

constant: ROW_FILTER {
  value: "5"
  export: override_optional
}

application: data-portal {
  label: "Data Portal"
  file: "data-portal.js"

  entitlements: {
    use_embeds: yes
    use_form_submit: yes
    core_api_methods: [
      "me",
      "all_user_attributes",
      "user_attribute_user_values",
      "create_user_attribute",
      "update_user_attribute",
      "user_roles",
      "all_boards",
      "board",
      "dashboard"
    ]
  }
}
