FROM ansibleplaybookbundle/apb-base:canary

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGRlcHJvLWNyZWRzLWFwYgpkZXNjcmlwdGlvbjogVGhpcyBpcyBh\
IHNhbXBsZSBhcHBsaWNhdGlvbiBnZW5lcmF0ZWQgYnkgYXBiIGluaXQKYmluZGFibGU6IEZhbHNl\
CmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YToKICBkaXNwbGF5TmFtZTogRGVwcm92aXNpb24gQ3Jl\
ZHMgQVBCCnBsYW5zOgogIC0gbmFtZTogZGVmYXVsdAogICAgZGVzY3JpcHRpb246IFRoaXMgZGVm\
YXVsdCBwbGFuIGRlcGxveXMgZm9vLWFwYgogICAgZnJlZTogVHJ1ZQogICAgbWV0YWRhdGE6IHt9\
CiAgICBwYXJhbWV0ZXJzOiBbXQo="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
