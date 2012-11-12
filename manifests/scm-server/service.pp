# 
#  Copyright (c) 2011, Cloudera, Inc. All Rights Reserved. 
# 
#  Cloudera, Inc. licenses this file to you under the Apache License, 
#  Version 2.0 (the "License"). You may not use this file except in 
#  compliance with the License. You may obtain a copy of the License at 
# 
#      http://www.apache.org/licenses/LICENSE-2.0 
# 
#  This software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR 
#  CONDITIONS OF ANY KIND, either express or implied. See the License for 
#  the specific language governing permissions and limitations under the 
#  License. 
# 

# Note that this class assumes that mysqld is already installed and running, and
# that the mysql jdbc connector is present.  You should add them to the list of
# requires, however they are defined in your installation.

class cloudera::scm-server::service inherits cloudera::scm-server::params {
  service { $service_name:
    ensure  => running,
    enable  => true,
    require => [ Package[$package_names], File["/etc/cloudera-scm-server/db.properties"] ]
,
  }
}

