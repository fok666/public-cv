#!/bin/bash

# Author: Fernando Korndorfer
# Description:
#   This script prints contact information in an obfuscated way.
#   It works by calculating the ASCII code of each character of the contact information.
# Obfuscation: technique is Copyright © 2008 Davide Brini
# References:
# - https://www.gnu.org/software/gawk/manual/gawk.html#And-Now-for-Something-Completely-Different
# - https://backreference.org/2011/02/03/obfuscated-awk/index.html

echo -en "\nE-mail: "
awk 'BEGIN {O="~"~"~";o="=="=="==";o+=+o;x=O""O;while(X++<=x+o*o) c=c"%c";
printf c, x^o-X-o,O+(x*x)-x,x^o-X+o+O,x*(x/o)-X%x,x*(x/o)-X%x,x*(x/o)-X%x,
O+((x*x)/o)+o+O,(x*x)-(x+x-o-o),x*(x-O)-O,x*(x-O-O)-O-O,x*x-o*o*(o*(O+O)),
(x*x)-x-o,x*(O+O+O+O)+o,x*(x-O-O),O+(x*x)-(O+o+O+o+O+o+O+o-O),x*(x-O)-O}';

echo -en "\nMobile: "
awk 'BEGIN {O="~"~"~";o="=="=="==";o+=+o;x=O""O;while(X++<=x+o+o)c=c"%d";c=substr(c,O,(x+O+o+o));printf "+";
printf c,x*(o+O)+x+o+O+o,0,(X-o),(X+O+O+O),X*o*(O+O)+(O+O)+O,(X*o)+(X%x)-O,x*(x/(O+O))-(X%x)+o,(x+O)/o+O;}';

echo -en "\nAddress: "
awk 'BEGIN{O="~"~"~";o="=="=="==";o+=+o;x=O""O;while(X++<=x*(o+o)-o*o+o)c=c"%c";
printf c, (o*X)-o*o-O,(X*o)+x,(x^o)-x-(o*o)-o,(X*o+X-x-o),X*o+x+o,(X*o+x+o^o+o),
(X*o)+x+O,(X*o)+x*o,(X*o+x+o^o+o),(X*(x+o))/(o*o)-(x*o)-(o*o)-O,(o*X)+x*o+(x+O),
(X*(o)+(x+o)),(X*o)+(x*o+o*o),(X-x-O),o*X-(o*o)-O,(X*(x+o))/(o*o)-(x*o)-(o*o)-O,
(X*o)+(x*o)+o*o,(X+o),X-x-O,(X+x-o-O),(X+x-(o*o*o)+o),X,(X-x-O),(X+x+O),(X+o*o),
(X+x+o),(X+x+o),X+x,X-x-O,X*o-x,(X*(o+O)-(x*o)+o+o+o+O),(X*o+x+o),X*o+x*o,X*o+x,
(x^o-x-(o*o)-o),(X*o+x+o),(X*o)+x*o,X,(X-x-O),(X*o)-x-x+o,(X*o)-x-x+o+O,x,x+o}';

echo ""

