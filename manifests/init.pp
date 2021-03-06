# Class: kubernetes
# ===========================
#
# Class to orchestrate Kubernetes cluster
#
# Parameters
# ----------
#
# [*manage_repo*]
#   Manage apt repository configurations
#   Defult: $kubernetes::params::manage_repo
#
# [*package_key_id*]
#   Repository gpg key id
#   Default: $kubernetes::params::package_key_id
#
# [*package_key_source*]
#   Repository gpg key source
#   Default: $kubernetes::params::package_key_source
#
# [*package_location*]
#   Repository URL location
#   Default: $kubernetes::params::package_location
#
# [*package_release*]
#   Repository release
#   Default: $kubernetes::params::package_release
#
# [*package_repos*]
#   APT repositories
#   Default: $kubernetes::params::package_repos
#
# Authors
# -------
#
# Rhommel Lamas <roml@rhommell.com>
#
# License
# ---------
#
# MIT License
#
# Copyright (c) 2017 Rhommel Lamas
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# Copyright 2017 Rhommel Lamas, unless otherwise noted.
#
class kubernetes (
  $manage_repo        = $kubernetes::params::manage_repo,
  $package_key_id     = $kubernetes::params::package_key_id,
  $package_key_source = $kubernetes::params::package_key_source,
  $package_location   = $kubernetes::params::package_location,
  $package_release    = $kubernetes::params::package_release,
  $package_repos      = $kubernetes::params::package_repos,
) {

  validate_bool($manage_repo)
  validate_string($package_key_id)

  class { 'kubernetes::repos': }
  contain 'docker::repos'
}
