#!/bin/sh

# -----------------------------------------------------------------------------------------------
# This program is free software; you can redistribute it and/or modify it under the
# terms of the GNU Lesser General Public License, version 2.1 as published by the Free Software
# Foundation.
#
# You should have received a copy of the GNU Lesser General Public License along with this
# program; if not, you can obtain a copy at http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html
# or from the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Lesser General Public License for more details.
#
# Copyright (c) 2013-2017 Pentaho Corporation..  All rights reserved.
# -----------------------------------------------------------------------------------------------

#
#  WARNING: Pentaho Report Designer needs JDK 1.7 or newer to run.
#

DIR_REL=`dirname $0`
cd $DIR_REL
DIR=`pwd`
cd -

. "$DIR/set-pentaho-env.sh"
setPentahoEnv

"$_PENTAHO_JAVA" -Xms1024m -Xmx2048m -XX:MaxPermSize=512m -jar "$DIR/launcher.jar" $@