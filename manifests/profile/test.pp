# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include regex_variable::profile::test
class regex_variable::profile::test (
  Variant[Pattern[$regex_variable::params::postgresql_setting_numeric_w_memory_unit_regex],
    Pattern[/\A\d+\Z/],
    Integer[64]]  $work_mem = '4MB'
) inherits regex_variable {
  notify { "work_mem is ${work_mem}" : }
}
