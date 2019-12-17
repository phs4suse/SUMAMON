prometheus_server_config:
  file.managed:
    - user: root
    - group: root
    - mode: '0644'
    - names:
      - /etc/prometheus/prometheus.yml:
        - source: salt://monsrv/files/prometheus.yml
      - /etc/prometheus/alertmanager.yml:
        - source: salt://monsrv/files/alertmanager.yml
      - /etc/prometheus/alert-rules.yml:
        - source: salt://monsrv/files/alert-rules.yml
prometheus-grafana-services:
  service.running:
    - name: prometheus
    - enable: True
    - name: grafana-server
    - enable: True
