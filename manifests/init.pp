class bigtop(
  $kerberos_realm = 'none'
) inherits bigtop::params {

  #TODO: may move $repo_file references to use $bigtop::params::repo_file  
  $repo_file = $bigtop::params::repo_file
  class { "bigtop::repo":
    repo_url => $repo_url,
  }

  Class['bigtop::repo'] -> Package<||>
}
