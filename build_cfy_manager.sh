#!/bin/bash

if [ ! -d .cloudify ]; then cfy init; fi

sudo cp -f own-openstack-manager-blueprint.yaml /opt/cfy/cloudify-manager-blueprints-commercial/

cfy bootstrap --install-plugins -p /opt/cfy/cloudify-manager-blueprints-commercial/own-openstack-manager-blueprint.yaml -i own-openstack-manager-blueprint-inputs.yaml

