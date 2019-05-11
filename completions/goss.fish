# global options
complete -c goss -n '__fish_no_arguments' -l version -s v -d 'print the version'
complete -c goss -n '__fish_no_arguments' -l help -s h -d 'show help'
complete -c goss -n '__fish_no_arguments' -l package -d 'Package type to use [rpm, deb, apk, pacman]'
complete -c goss -n '__fish_no_arguments' -l vars -d 'json/yaml file containing variables for template [$GOSS_VARS]'
complete -c goss -n '__fish_no_arguments' -l gossfile -s g -d 'Goss file to read from / write to (default: "./goss.yaml") [$GOSS_FILE]'

# validate v
complete -f -c goss  -n '__fish_use_subcommand' -a 'validate v' -d 'Validate system'
complete -x -c goss -n '__fish_seen_subcommand_from validate v' -l format -s f -a 'documentation json json_oneline junit nagios rspecish slient tap' -d 'Format to output in, valid options: [documentation json json_oneline junit nagios rspecish silent tap] (default: "rspecish") [$GOSS_FMT]'
complete -x -c goss -n '__fish_seen_subcommand_from validate v' -l format-options -s o -a 'perfdata options' -d 'Extra options passed to the formatter, valid options: [perfdata verbose] [$GOSS_FMT_OPTIONS]'
complete -x -c goss -n '__fish_seen_subcommand_from validate v' -l color -d 'Force color on [$GOSS_COLOR]'
complete -x -c goss -n '__fish_seen_subcommand_from validate v' -l no-color -d 'Force color off [$GOSS_COLOR]'
complete -x -c goss -n '__fish_seen_subcommand_from validate v' -l sleep -s s -a '1s' -d 'Time to sleep between retries, only active when -r is set (default: 1s) [$GOSS_SLEEP]'
complete -x -c goss -n '__fish_seen_subcommand_from validate v' -l retry-timeout -s r -a '0s' -d 'Retry on failure so long as elapsed + sleep time is less than this (default: 0s) [$GOSS_RETRY_TIMEOUT]'

# serve s
complete -f -c goss -n '__fish_use_subcommand' -a 'serve s' -d 'Serve a health endpoint'
complete -x -c goss -n '__fish_seen_subcommand_from serve s' -l format -s f -a 'documentation json json_oneline junit nagios rspecish slient tap' -d 'Format to output in, valid options: [documentation json json_oneline junit nagios rspecish silent tap] (default: "rspecish") [$GOSS_FMT]'
complete -x -c goss -n '__fish_seen_subcommand_from serve s' -l format-options -s o -a 'perfdata verbose' -d 'Extra options passed to the formatter, valid options: [perfdata verbose] [$GOSS_FMT_OPTIONS]'
complete -x -c goss -n '__fish_seen_subcommand_from serve s' -l cache -s c -a '5s' -d 'Time to cache the results (default: 5s) [$GOSS_CACHE]'
complete -x -c goss -n '__fish_seen_subcommand_from serve s' -l listen-addr -s l -a ':8080' -d 'Address to listen on [ip]:port (default: ":8080") [$GOSS_LISTEN]'
complete -x -c goss -n '__fish_seen_subcommand_from serve s' -l endpoint -s e -a '/healthz' -d 'Endpoint to expose (default: "/healthz") [$GOSS_ENDPOINT]'
complete -x -c goss -n '__fish_seen_subcommand_from serve s' -l max-concurrent -a '50' -d 'Max number of tests to run concurrently (default: 50) [$GOSS_MAX_CONCURRENT]'

# render r
complete -f -c goss -n '__fish_use_subcommand' -a 'render r' -d 'render gossfile after imports'
complete -x -c goss -n '__fish_seen_subcommand_from render r' -l debug -s d -d  'Print debugging info when redering'

# autoadd aa
complete -f -c goss -n '__fish_use_subcommand' -a 'autoadd aa' -d 'automatically add all matching resource to the test suite'

# add a
complete -f -c goss -n '__fish_use_subcommand' -a 'add a' -d 'add a resource to the suite'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -l help -s h -d  'show help'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'package' -d 'add new package'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'file' -d 'add new file'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'addr' -d 'add new remote address:port - ex: google.com:80'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'port' -d 'add new port listening [protocol]:port - ex: 80 or udp:123'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'user' -d 'add new user'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'group' -d 'add new group'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'command' -d 'add new command'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'dns' -d 'add new dns'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'process' -d 'add new process name'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'http' -d 'add new http'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'goss' -d 'add new goss file, it will be imported from this one'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'kernel-param' -d 'add new new goss kernel param'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'mount' -d 'add new mount'
complete -x -c goss -n '__fish_seen_subcommand_from add a' -a 'interface' -d 'add new interface'

complete -f -c goss -n '__fish_use_subcommand' -a 'help h' -d 'Shows a list of commands or help for one command'


