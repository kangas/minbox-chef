name "base"
description "Base role applied to all nodes."
run_list(
    "recipe[chef_handler]"
)
default_attributes()
override_attributes()
