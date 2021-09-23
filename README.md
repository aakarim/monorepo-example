# Monorepo template designed around small teams & developer productivity
Designed for those who want to use Cloud Native technology, without dedicated build & deployment teams (like myself). Designed to inspire future work @lix-it.

Using Bazel we can operate a micro-service-ish monorepo, and build, test, and deploy only what we need to work on right now.

## Curent Tools
### Build & Deploy
- Bazel
- Skaffold
### Configuration
- Cue
### DevEx & Code Generation
- iBazel
- Gazelle
- Buildifier
### Orchestration
- Kubernetes (Production)
- Skaffold & Local Docker (Local)

## Supported Service Languages/ Frontend Build systems
- [x] Go
    - [ ] Protobuf
- [ ] NodeJS
    - [ ] Protobuf
- [ ] Python
    - [ ] Protobuf
- [ ] PHP
    - [ ] Laravel 
    - [ ] Protobuf
- [ ] Javascript
    - [ ] Webpack
    - [ ] Rollup

## Goals
- Be a playground for an idealised workspace.
- Have a unified interface for performing common workflow tasks including, but not limited to:
    - Code Generation.
    - Local database migrations.
    - Connecting to databases in different execution contexts, locally.
- Maximise app configuration re-use through generation/compilation.
- Play nice with VSCode. First party extensions like the Golang and Typescript should work as expected with no additional configuration.
- Fast Feedback loop:
    - Services should be brought up/torn down as required.
    - It should run on my laptop.
- Flexible enough to support common paradigms for frontend and backend development.
- Production deploys should use the same tools & shared configuration as far as possible. 
    - K8s manifests should be generated from simple, user-editable files.
- Easily share common code amongst different projects.
- Supports MacOS, Windows (WSL) & Linux.
- Follow the 12 factor app principles.
- Play nice with existing frameworks. This is a selfish one, but I have a Laravel-based service that's too easy to use to throw away in favour of a full-Go app. Any build system should also play nicely with Laravel (and similar frameworks).

## Non-goals
- Support the 20% use case.
- Be a proper template. This is a toy project and will probably need customisation to work properly. For instance, all the Go package paths will refer to this repo.
- Make our own DSL or add so much custom scripting that it results the same effect. All tools should be used out-of-the-box as far as possible and if developers have to learn how to use Starlark & BUILD, then so be it.
- Hide implementation complexity - Users *should* have to learn how each tool works, to the level of 1 day's experience.
- Hotswapping configs. Restarting is fine for the moment.

## Constraints
- External tools should be used out-of-the-box, without extensive shell scripting.
- Inheritance should be avoided, code generation used instead, where possible.

# Concepts
## Execution Contexts
E.g. Dev, Prod, Staging. 

An EC is the final compiled configuration that is ultimately loaded by a service. 