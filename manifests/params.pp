# == Class: kubernetes::params
#
# Default parameter values for kubernetes module
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
class kubernetes::params {
  $manage_repo        = true
  $package_key_id     = '7F438280EF8D349F'
  $package_key_source = 'https://packages.cloud.google.com/apt/doc/apt-key.gpg'
  $package_location   = 'http://apt.kubernetes.io'
  $package_release    = "kubernetes-${::lsbdistcodename}"
  $package_repos      = 'main'
}
