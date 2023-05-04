# aping

A tool to ping multiple hosts at once and export results as Prometheus metrics.

Relies on https://github.com/romana/multi-ping/ (see https://stackoverflow.com/a/45746002).

## Installation

```shell
pip install aping-cli
```

## Usage

To run the tool, type:

```shell
aping "google-dns-1=8.8.8.8" "google-dns-2=8.8.4.4"
```

Sample output:

```text
Prometheus metrics server available at http://127.0.0.1:8000
google-dns-1 (8.8.8.8): 100.78ms, google-dns-2 (8.8.4.4): 100.78ms
google-dns-1 (8.8.8.8): 123.73ms, google-dns-2 (8.8.4.4): 122.97ms
google-dns-1 (8.8.8.8): 111.99ms, google-dns-2 (8.8.4.4): 112.96ms
google-dns-1 (8.8.8.8): 112.76ms, google-dns-2 (8.8.4.4): 113.86ms
```

## Contributing

### Local development

How to set up a local environment:

```shell
python -m venv venv

source ./venv/bin/activate

python -m pip install -U pip
pip install -e . -r requirements-dev.txt

pre-commit install
```

## Resources

Grafana:

- Default username and password are both `admin`.
- https://grafana.com/tutorials/grafana-fundamentals/
- https://grafana.com/docs/grafana/latest/getting-started/build-first-dashboard/

Prometheus:

- https://prometheus.io/docs/concepts/metric_types/
- https://prometheus.io/docs/practices/histograms/
- https://github.com/prometheus/client_python
- https://prometheus.io/docs/prometheus/latest/getting_started/
