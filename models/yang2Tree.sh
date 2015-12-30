#!/bin/bash
# Script to Generate TREE from YANG models ##

echo $0
echo "Script to Generate TREE from YANG models"


pyang -f tree nsd.yang > treeview/nsd.yang.tree
pyang -f tree vld.yang > treeview/vld.yang.tree
pyang -f tree vnfd.yang > treeview/vnfd.yang.tree
