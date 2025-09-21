# Streamlit & Marimo MVP Dashboard Kit

A starter kit for quickly mocking up simple dashboard applications.

This project provides a fully containerized development environment that includes both [Streamlit](https://streamlit.io/) for building data apps and [Marimo](https://marimo.io/) for reactive, notebook-based development.

## Development Environment

This repository is configured with a **VS Code Development Container**, which creates a consistent and reproducible environment for all users.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/dario-j-c/app-edu-mvp?quickstart=1)

*Note: If you use this repository as a template, remember to update the URL in the README to point to your own repository.*

### Getting Started

1.  Open this repository in a VS Code Dev Container or GitHub Codespaces.
2.  The container will automatically build, install all system and Python dependencies, and start the development servers.
3.  Once attached, you can access the services on the following forwarded ports:
    *   **Streamlit:** `http://localhost:8501`
    *   **Marimo:** `http://localhost:2718`

### Environment Details


This dev container is configured with the following helpful properties in the `.devcontainer/devcontainer.json` file:

*   **Container Name:** The Docker container is named `app-edu-mvp-dev`. You can change this by editing the `name` property.
*   **Automatic Shutdown:** To save system resources, the container will automatically stop when you close VS Code. This is controlled by the `shutdownAction` property. You can set it to `"none"` if you prefer to manage the container's lifecycle manually.

Additional information such as a description and documentation URL are included as comments in the `devcontainer.json` for maintainers' reference.

### ⚠️ Authentication Notice

For convenience within the isolated development environment, authentication and some security features have been disabled by default:

*   **Streamlit:** Started with `--server.enableCORS false` and `--server.enableXsrfProtection false`.
*   **Marimo:** Started with the `--no-token` flag.

This configuration is **for development only**. If you deploy this application to a public server, you must remove these flags and configure a proper authentication method.

## Project Goal & Flexibility

The primary goal of this kit is to provide a quick starting point for building simple dashboard mockups with Streamlit.

However, the environment is flexible. You are encouraged to:
*   **Extend it** for your own more complex applications.
*   **Explore Marimo** as an alternative for building your app. The reactive, notebook-style interface of Marimo may be a better fit for your project.
