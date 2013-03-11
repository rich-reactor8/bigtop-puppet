class bigtop(
  $kerberos_realm = hiera('bigtop::kerberos_realm',$bigtop::params::kerberos_realm) #2nd arg could also be the default itself
) inherits bigtop::params {

  $repo_file = $bigtop::params::repo_file
  class { "bigtop::repo":
    repo_url => $repo_url,
  }

  Class['bigtop::repo'] -> Package<||>
}
