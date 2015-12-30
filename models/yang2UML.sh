#!/bin/bash
# Script to Generate UML from YANG models

echo $0
echo "Script to Generate UML from YANG models"


pyang -o umlview/nsd.uml -f uml nsd.yang
pyang -o umlview/vnfd.uml -f uml vnfd.yang
pyang -o umlview/vld.uml -f uml vld.yang

cd umlview

java -jar lib/plantuml.7997.jar nsd.uml
java -jar lib/plantuml.7997.jar vnfd.uml
java -jar lib/plantuml.7997.jar vld.uml
