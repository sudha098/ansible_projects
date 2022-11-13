#!/usr/bin/env bash

ansible all -m yum_repository -a "name=appstream baseurl=url gpgkey=key gpgcheck=1 enabled=0 description='appstreamm'"

ansible all -m yum_repository -a "name=baseos baseurl=url gpgkey=key gpgcheck=1 enabled=0 description='baseOs'"