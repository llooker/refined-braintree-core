connection: "@{CONNECTION_NAME}"
label: "💸 Braintree Block"

include: "views/*.view.lkml"
include: "*.explore.lkml"
# include: "*.dashboard.lookml"
include: "//@{CONFIG_PROJECT_NAME}/views/*.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.model.lkml"
# include: "//@{CONFIG_PROJECT_NAME}/*.dashboard"

explore: transaction {
  extends: [transaction_config]
}

explore: subscription {
  extends: [subscription_config]
}
