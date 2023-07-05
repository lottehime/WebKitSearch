#!/bin/sh

#==============================================
# webkitsearch.sh - webkit git commit helper
# Copyright 2014 Josh_Axey
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#==============================================


echo "Unattended WebKit Mirror Commit Searcher"
echo 

read -p "Press [Enter] key to begin..."

for sha1 in $(git rev-list HEAD -i --grep="$1"); do
    python -mwebbrowser https://github.com/WebKit/webkit/commit/$sha1 >/dev/null 2>/dev/null

echo "Done, thanks for using."
echo 

read -p "Press [Enter] key to continue..."
    
done
