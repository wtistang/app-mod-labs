FROM quay.io/operator-framework/helm-operator:v0.9.0

LABEL name="transformation-advisor-operator" \
      vendor="IBM" \
      version="v2.0.1" \
      release="1" \
      summary="Operator for IBM Cloud Transformation Advisor." \
      description="This operator will deploy an instance of Transformation Advisor to the cluster."
COPY licenses /licenses

COPY watches.yaml ${HOME}/watches.yaml
COPY helm-charts/ ${HOME}/helm-charts/
