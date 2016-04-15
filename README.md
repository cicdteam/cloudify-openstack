## Bootstrap CFY 3.3.1 and Cloudify Manager (WebUI) on your own Openstack

Blueprints allow bootstrap Cloudify Manager on current Openstack infrastructure
using current Router, curent Private (fixed IP's) and Public (floating IP's) networks.

### Boostrap

- create simple VM instance for CFY (use Centos7 image, 1 VCPU, 1 Gb RAM)
- clone current repo to VM
- check and set variables in `own-openstack-manager-blueprint-inputs.yaml`
- install CFY 3.3.1 on VM by **build_cfy.sh**
- relogin to CFY VM or use `source /opt/cfy/env/bin/activate`
- bootstrap new VM with Cloudify Manager by **build_cfy_manager.sh**

Some of the required inputs may actually be left empty when appropriate,
standard Openstack environment variables are set in place before calling
the cfy bootstrap command. These variables are:

- OS_USERNAME (sets `keystone_username`)
- OS_PASSWORD (sets `keystone_password`)
- OS_TENANT_NAME (sets `keystone_tenant_name`)
- OS_AUTH_URL (sets `keystone_url`)
- OS_REGION_NAME (sets `region`)

These settings are available in the Openstack Horizon dashboard
(Look for API credentials).

>NOTE: Cloudify Manager uses VM with 4 Gb RAM minimu for normal work
(heap size of Elasticache is 2 Gb).

