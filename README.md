# Brev Setup

In each of your repositories, you can add a `.brev` directory which automates the setup of your workspace. Much like a `.vscode` it holds packages, tools, dependencies and settings would like to have applied to create your developer environment.

By creating a `.brev` folder, you make the developer environment for your repository **clonable, replicable, and shareable**.

This is a template that you can fork and modify. Here are the key components:

### `setup.sh`
This file runs before your workspace is created. You install software like Node v14, Python, and Go.

### `ports.yaml`
This file tells your project which ports to expost publically.

### `settings.json`
This file is taken from VSCode to import into our hosted version of VSCode.
