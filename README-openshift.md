oc new-project mywebsite
oc new-app --name httpd .
oc expose svc httpd


oc new-project pipelinetest
oc create -f https://raw.githubusercontent.com/openshift/origin/master/examples/jenkins/pipeline/nodejs-sample-pipeline.yaml

oc new-project s2itest
oc new-app https://github.com/iteratec/juice-shop.git --strategy source
