# Rocket Kubernetes Mission Control

![](https://github.com/kubesphere/console/workflows/Main/badge.svg)
[![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

Rocket Kubernetes Mission Control is the web-based UI for [RKS](https://github.com/occentus/rks) clusters.

![RKS Console](docs/images/dashboard-ui.png)

## Getting Started

A RKS cluster is required before getting started.

Features Map:

![Features Map](docs/images/module-map.jpg)

## Developer Guide

### Preparation

Make sure the following software is installed and added to the \$PATH variable:

- A RKS cluster ([Installation](https://github.com/kubesphere/kubesphere#installation))
- Node.js 8+ ([installation with nvm](https://github.com/creationix/nvm#usage))
- Yarn 1.19.1+

Install yarn with npm:

```sh
npm install -g yarn
```

Fork the repository, then clone your repository and install the dependencies:

```sh
yarn
```

Note: If you are in China Mainland, execute the following command before running the command above for faster installation.

```sh
yarn config set registry https://registry.npm.taobao.org
```

Alternatively you can start development using docker. See [Development with Docker](/docs/development-with-docker.md).

### Access the backend services of KubeSphere

Follow [the guide](/docs/access-backend.md) to configure the backend services.

### Start KubeSphere Console for development

```sh
yarn lego
yarn start
```

Now, you can access http://localhost:8000 to view the console using the default account admin / P@88w0rd.

### Run tests

```sh
yarn test
```

### Build KubeSphere Console for production

The project can be built for production by using the following task:

```sh
yarn build
```

To build and serve from dist, using the following task:

```sh
yarn serve
```

To build KubeSphere console to an image, run the following task after `yarn build`:

```sh
docker build -t ks-console .
```

Test KubeSphere console image by run:

```sh
./docker-run
```

## Development Workflow

Follow [Development Workflow](/docs/development-workflow.md) to commit your codes.

## Support, Discussion, and Community

If you need any help with KubeSphere, please join us at [Slack Channel](https://join.slack.com/t/kubesphere/shared_invite/enQtNTE3MDIxNzUxNzQ0LTZkNTdkYWNiYTVkMTM5ZThhODY1MjAyZmVlYWEwZmQ3ODQ1NmM1MGVkNWEzZTRhNzk0MzM5MmY4NDc3ZWVhMjE).

Please submit any KubeSphere Console bugs, issues, and feature requests to [KubeSphere Console GitHub Issue](https://github.com/kubesphere/console/issues).

## Contributing to the project

Welcome to contribute to KubeSphere Console, see [Contributing Guide](docs/contributing-guide.md).
