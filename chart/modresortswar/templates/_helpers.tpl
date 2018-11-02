# Generated by IBM TransformationAdvisor
# Fri Nov 02 18:39:20 UTC 2018

{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 53 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 53 chars because some Kubernetes name fields are limited to 63 (by the DNS naming spec). Allow 10 chars for -service (and such) postfix.
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 53 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 53 chars because some Kubernetes name fields are limited to 63 (by the DNS naming spec). Allow 10 chars for -service (and such) postfix.
*/}}
{{- define "k8name" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s_%s" .Release.Name $name | trunc 53 | trimSuffix "-" | replace "-" "_" | upper -}}
{{- end -}}
