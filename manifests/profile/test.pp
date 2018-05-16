# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include regex_variable::profile::test
class regex_variable::profile::test (
  Variant[Regex_variable::Test,
    Pattern[/\A\d+\Z/],
    Integer[64]]  $work_mem = '4MB'
) inherits regex_variable {
  notify { "work_mem is ${work_mem}" : }

  if $work_mem.match(Regex_variable::Test) {
    notify { $1 : }
  }
}
