name "server-web"
description "Webserver role"
run_list(
    "role[base]",
    "recipe[minbox-ops]",
    "recipe[nginx]"
)
default_attributes()
override_attributes()
