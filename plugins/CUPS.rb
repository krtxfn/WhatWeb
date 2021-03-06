##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "CUPS" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-12-05
version "0.1"
description "Common UNIX Printing System (CUPS) - Homepage: http://www.cups.org/"

# ShodanHQ results as at 2011-12-05 #
# 19 for CUPS Upgrade

# Examples #
examples %w|
128.8.128.225
134.100.106.235
129.241.107.43
129.22.96.89
202.128.73.28
131.94.130.112
|

# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^CUPS\/([^\s]+)$/ },

# Upgrade Header
{ :search=>"headers[upgrade]", :regexp=>/^TLS\/1\.0,HTTP\/1\.1$/, :certainty=>25 },

]

end

