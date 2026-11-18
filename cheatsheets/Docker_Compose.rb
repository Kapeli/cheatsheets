cheatsheet do
  title 'Docker Compose'
  docset_file_name 'Docker_Compose'
  keyword 'compose'
  source_url 'http://cheat.kapeli.com'

  introduction <<-'END'
    A quick reference for writing `compose.yaml` with the current
    [Compose Specification](https://docs.docker.com/reference/compose-file/).
    This sheet covers Compose files, not Docker Engine commands or Dockerfile instructions.
    Unless a snippet shows a top-level key such as `services`, place it inside a service definition.
    Newer features require a compatible Docker Compose version.
  END

  category do
    id 'Compose File'

    entry do
      name 'compose.yaml'
      notes <<-'END'
        ```yaml
        name: demo
        services:
          web:
            image: nginx:stable
            ports:
              - "127.0.0.1:8080:80"
        ```

        `compose.yaml` is the preferred filename. `compose.yml`, `docker-compose.yaml`,
        and `docker-compose.yml` are also supported.
        `services` maps service names to container configurations.
        Top-level `networks`, `volumes`, `configs`, and `secrets` declare shared resources.
      END
    end

    entry do
      name 'name'
      notes <<-'END'
        ```yaml
        name: demo
        ```

        Top-level project name. Used to scope generated resource names.
        `-p` takes precedence over `COMPOSE_PROJECT_NAME`, which takes precedence over `name`.
        Without these, Compose normally uses the project directory name.
      END
    end

    entry do
      name 'version'
      notes <<-'END'
        Omit the top-level `version` field in new files.
        It is obsolete and does not select a schema; Compose uses the current specification.

        [Reference](https://docs.docker.com/reference/compose-file/version-and-name/)
      END
    end
  end

  category do
    id 'Service Basics'

    entry do
      name 'image'
      notes <<-'END'
        ```yaml
        image: nginx:stable
        ```

        Image name, optionally with a registry, tag, or `@sha256:` digest.
        A digest pins immutable image content. A tag can change.
        A service needs `image` or `build`.
      END
    end

    entry do
      name 'command'
      notes <<-'END'
        ```yaml
        command: ["redis-server", "--appendonly", "yes"]
        ```

        Overrides the image's default command. String form does not automatically
        run in a shell. Request one explicitly for shell expansion:

        ```yaml
        command: ["/bin/sh", "-c", "echo $$HOSTNAME"]
        ```

        `null` keeps the image default; `[]` or `''` clears it.
      END
    end

    entry do
      name 'entrypoint'
      notes <<-'END'
        ```yaml
        entrypoint: ["/app/entrypoint.sh"]
        command: ["serve"]
        ```

        Overrides the image's entrypoint. A non-null entrypoint also discards the
        image's default command; set `command` to supply arguments.
        `null` keeps the image entrypoint; `[]` or `''` clears it.
      END
    end

    entry do
      name 'working_dir, user'
      notes <<-'END'
        ```yaml
        working_dir: /app
        user: "1000:1000"
        ```

        Override the working directory and user, optionally with a group.
        Mounted paths must have suitable permissions for this user.
      END
    end

    entry do
      name 'init, stop_grace_period'
      notes <<-'END'
        ```yaml
        init: true
        stop_signal: SIGTERM
        stop_grace_period: 30s
        ```

        `init` forwards signals and reaps child processes.
        After the stop signal, allow this grace period before sending `SIGKILL`.
      END
    end

    entry do
      name 'labels'
      notes <<-'END'
        ```yaml
        labels:
          com.example.description: "Web application"
        ```

        Container metadata, as a map or a list of `key=value` strings.
        Use reverse-DNS names. The `com.docker.compose` prefix is reserved.
        Image labels belong under `build.labels`.
      END
    end

    entry do
      name 'container_name'
      notes <<-'END'
        Sets a fixed container name. Usually omit it and let Compose generate names.
        A service with `container_name` cannot scale beyond one container.

        [Service reference](https://docs.docker.com/reference/compose-file/services/)
      END
    end
  end

  category do
    id 'Environment and Interpolation'

    entry do
      name 'environment'
      notes <<-'END'
        ```yaml
        environment:
          APP_ENV: production
          DEBUG: "false"
          PORT: "8080"
        ```

        Sets variables inside the container. Map and `KEY=value` list forms are supported.
        Quote boolean values. These values override the service's `env_file`,
        including when a value is empty.
      END
    end

    entry do
      name 'env_file'
      notes <<-'END'
        ```yaml
        env_file:
          - ./default.env
          - ./local.env
        ```

        Reads container environment variables from files.
        Later files override earlier ones. Relative paths use the Compose file's directory.
        Unlike `env_file`, the project's `.env` supplies Compose interpolation values;
        it does not automatically inject every variable into containers.

        Compose 2.24.0+ supports optional files:

        ```yaml
        env_file:
          - path: ./local.env
            required: false
        ```
      END
    end

    entry do
      name '${VAR}, defaults, required values'
      notes <<-'END'
        ```yaml
        image: "nginx:${TAG:-stable}"
        environment:
          API_URL: "${API_URL:?Set API_URL}"
        ```

        * `${VAR}`: substitute a value.
        * `${VAR:-default}`: use the default if unset or empty.
        * `${VAR-default}`: use the default only if unset.
        * `${VAR:?message}`: fail if unset or empty.
        * `${VAR?message}`: fail only if unset.
        * `${VAR:+value}`: use `value` if set and non-empty, otherwise empty.

        Host shell variables take precedence over interpolation values from `.env`.
        Use `--env-file` to select an interpolation file.
        Interpolation applies to YAML values, not keys.
      END
    end

    entry do
      name '$$'
      notes <<-'END'
        ```yaml
        command: ["/bin/sh", "-c", "echo $$HOSTNAME"]
        ```

        Escapes a dollar sign so Compose does not interpolate it.
        Here the container's shell expands `$HOSTNAME` at runtime.

        [Interpolation reference](https://docs.docker.com/reference/compose-file/interpolation/)
      END
    end
  end

  category do
    id 'Startup and Health'

    entry do
      name 'depends_on'
      notes <<-'END'
        ```yaml
        depends_on:
          - db
        ```

        Starts dependencies first and removes them last.
        Short syntax waits for startup, not application readiness.
        Use long syntax to wait for health or successful completion:

        ```yaml
        depends_on:
          db:
            condition: service_healthy
          migrate:
            condition: service_completed_successfully
        ```

        `service_healthy` requires a healthcheck on the dependency.
        `service_completed_successfully` suits one-off setup tasks.
        This is a startup gate, not continuous dependency supervision.
      END
    end

    entry do
      name 'healthcheck'
      notes <<-'END'
        ```yaml
        healthcheck:
          test: ["CMD", "pg_isready", "-U", "postgres"]
          interval: 10s
          timeout: 5s
          retries: 5
          start_period: 30s
        ```

        Runs inside the container, so the check command must exist in the image.
        `CMD` runs an argument list; `CMD-SHELL` runs a shell command.
        Exit code `0` is healthy; `1` is unhealthy.
        `start_period` allows initialization before failures count.
        `disable: true` disables an image's healthcheck.
      END
    end

    entry do
      name 'restart'
      notes <<-'END'
        ```yaml
        restart: unless-stopped
        ```

        * `"no"`: do not restart (default).
        * `always`: restart after exit.
        * `on-failure`: restart after a nonzero exit; optionally `on-failure:3`.
        * `unless-stopped`: restart unless explicitly stopped.

        A failed healthcheck alone does not restart a container.
        This policy differs from `depends_on.<service>.restart`, which applies
        to explicit Compose dependency updates/restarts, not runtime crashes.

        [Service reference](https://docs.docker.com/reference/compose-file/services/)
      END
    end
  end

  category do
    id 'Networking'

    entry do
      name 'ports'
      notes <<-'END'
        ```yaml
        ports:
          - "127.0.0.1:8080:80"
          - "127.0.0.1:5353:53/udp"
        ```

        Short syntax: `[HOST_IP:]HOST_PORT:CONTAINER_PORT[/PROTOCOL]`.
        Quote port mappings. Omitting `HOST_IP` normally publishes on all host interfaces.
        Other services use the service name and **container** port, not the published port.

        Long syntax:

        ```yaml
        ports:
          - target: 80
            published: "8080"
            host_ip: 127.0.0.1
            protocol: tcp
        ```
      END
    end

    entry do
      name 'expose'
      notes <<-'END'
        ```yaml
        expose:
          - "8080"
        ```

        Declares container ports without publishing them to the host.
        Services on a shared network can communicate without `expose`;
        it is not a firewall or access-control rule.
      END
    end

    entry do
      name 'networks, aliases'
      notes <<-'END'
        ```yaml
        services:
          api:
            image: example/api:1.0
            networks:
              backend:
                aliases: [app]
          db:
            image: postgres:17
            networks: [backend]
        networks:
          backend:
            internal: true
        ```

        Services without explicit networks join the project's default network.
        On a shared network, service names and network-scoped aliases resolve through DNS.
        Inside `api`, use `db:5432`, not `localhost:5432`, to reach the database.
        `internal: true` creates an externally isolated network.
      END
    end

    entry do
      name 'networks.external'
      notes <<-'END'
        ```yaml
        networks:
          shared:
            external: true
            name: shared-network
        ```

        Top-level definition of an existing network. Attach services with `networks: [shared]`.
        Compose does not create or remove it. With `external: true`, only `name`
        may be set alongside `external`.
      END
    end

    entry do
      name 'network_mode'
      notes <<-'END'
        ```yaml
        network_mode: "service:vpn"
        ```

        Shares another service's network namespace. Other modes include `host` and `none`.
        Do not combine `network_mode` with `networks`.
        Do not publish `ports` with host networking.

        [Networks reference](https://docs.docker.com/reference/compose-file/networks/)
      END
    end
  end

  category do
    id 'Storage and Files'

    entry do
      name 'volumes'
      notes <<-'END'
        ```yaml
        services:
          db:
            image: postgres:17
            volumes:
              - db-data:/var/lib/postgresql/data
        volumes:
          db-data: {}
        ```

        Short syntax: `SOURCE:CONTAINER_PATH[:MODE]`.
        A source such as `db-data` is a named volume; `./data` is a bind mount.
        Named volumes persist after containers are removed.
        `docker compose down -v` removes declared non-external named volumes and
        attached anonymous volumes: it can destroy data.
      END
    end

    entry do
      name 'volumes: bind mounts'
      notes <<-'END'
        ```yaml
        volumes:
          - type: bind
            source: ./config
            target: /etc/app
            read_only: true
            bind:
              create_host_path: false
        ```

        Long syntax distinguishes `bind`, `volume`, and `tmpfs` mounts.
        `create_host_path: false` fails rather than creating a missing host directory.
        Short form `./config:/etc/app:ro` mounts read-only but can create a missing directory.
        Bind mounts refer to paths on the Docker daemon's host.
      END
    end

    entry do
      name 'volumes.external, volumes.name'
      notes <<-'END'
        ```yaml
        volumes:
          db-data:
            external: true
            name: existing-db-data
        ```

        Top-level definition of an existing volume; Compose does not create or delete it.
        `name` is used as-is, without a project prefix.
        With `external: true`, only `name` may be set alongside `external`.

        [Volumes reference](https://docs.docker.com/reference/compose-file/volumes/)
      END
    end

    entry do
      name 'secrets'
      notes <<-'END'
        ```yaml
        services:
          db:
            image: postgres:17
            environment:
              POSTGRES_PASSWORD_FILE: /run/secrets/db_password
            secrets:
              - db_password
        secrets:
          db_password:
            file: ./secrets/db_password.txt
        ```

        Declare secrets at the top level, then grant each service access explicitly.
        Short syntax mounts a secret at `/run/secrets/<name>` in Linux containers.
        The application must read the file; `_FILE` variables are an image convention,
        not automatic Compose behavior. Keep source files out of version control.
        Local file-backed secrets use bind mounts, not an encrypted secret store.

        [Secrets reference](https://docs.docker.com/reference/compose-file/secrets/)
      END
    end

    entry do
      name 'configs'
      notes <<-'END'
        ```yaml
        services:
          web:
            image: nginx:stable
            configs:
              - source: nginx_config
                target: /etc/nginx/nginx.conf
        configs:
          nginx_config:
            file: ./nginx.conf
        ```

        Mount non-secret configuration files without rebuilding the image.
        Defining a config does not grant service access; list it on the service.

        [Configs reference](https://docs.docker.com/reference/compose-file/configs/)
      END
    end
  end

  category do
    id 'Building Images'

    entry do
      name 'build.context, build.dockerfile, build.target'
      notes <<-'END'
        ```yaml
        build:
          context: .
          dockerfile: docker/Dockerfile
          target: production
        ```

        `context` selects build input files; `dockerfile` is relative to that context.
        `target` selects a stage in a multi-stage Dockerfile.
        Short form `build: ./app` uses `./app/Dockerfile`.
      END
    end

    entry do
      name 'build.args, build.secrets'
      notes <<-'END'
        ```yaml
        build:
          context: .
          args:
            APP_VERSION: "1.0"
          secrets:
            - build_token
        ```

        `args` supplies Dockerfile `ARG` values, not container environment variables.
        Do not pass credentials through build arguments.
        Declare `build_token` under top-level `secrets`; consume it with
        `RUN --mount=type=secret,id=build_token ...` in the Dockerfile.
        Build secrets and runtime service secrets are separate grants.
      END
    end

    entry do
      name 'pull_policy'
      notes <<-'END'
        ```yaml
        image: example/app:dev
        build: .
        pull_policy: build
        ```

        Controls pulling versus building. Common values: `always`, `missing`,
        `never`, and `build`. With both `image` and `build` but no policy,
        Compose tries pulling first, then builds if the image is unavailable.
        `build` requests a build even if the image is already present.

        [Build reference](https://docs.docker.com/reference/compose-file/build/)
      END
    end
  end

  category do
    id 'Runtime Settings'

    entry do
      name 'cpus, mem_limit, pids_limit'
      notes <<-'END'
        ```yaml
        cpus: 1.5
        mem_limit: 512m
        pids_limit: 100
        ```

        Limit CPU allocation, memory, and process count.
        Support depends on the runtime and platform.
        `deploy.resources` also describes limits and reservations; deploy support is optional.
        If both forms are used, corresponding limits must be consistent.
      END
    end

    entry do
      name 'read_only, tmpfs'
      notes <<-'END'
        ```yaml
        read_only: true
        tmpfs:
          - /tmp
        ```

        Makes the root filesystem read-only while allowing temporary writes in `/tmp`.
        Volumes and bind mounts have their own write permissions.
        Data in `tmpfs` does not persist after the container stops.
      END
    end

    entry do
      name 'cap_drop, security_opt'
      notes <<-'END'
        ```yaml
        cap_drop:
          - ALL
        security_opt:
          - no-new-privileges:true
        ```

        Linux example: drop capabilities and prevent privilege escalation through
        mechanisms such as setuid binaries. Add only capabilities the application needs.
        Avoid `privileged: true` unless its broad access is required.
      END
    end

    entry do
      name 'logging'
      notes <<-'END'
        ```yaml
        logging:
          driver: json-file
          options:
            max-size: "10m"
            max-file: "3"
        ```

        Select a logging driver and its options. Options are strings and depend on the driver.
        This example limits log size and retains three files.

        [Service reference](https://docs.docker.com/reference/compose-file/services/)
      END
    end
  end

  category do
    id 'Reuse and Overrides'

    entry do
      name 'profiles'
      notes <<-'END'
        ```yaml
        profiles: [debug]
        ```

        Enable this service with `docker compose --profile debug up`.
        Services without profiles are always enabled.
        Explicitly targeting a profiled service enables that service and its dependencies,
        not every other service in the profile.

        [Profiles reference](https://docs.docker.com/reference/compose-file/profiles/)
      END
    end

    entry do
      name 'x- extensions, anchors'
      notes <<-'END'
        ```yaml
        x-common: &common
          restart: unless-stopped
          init: true
        services:
          web:
            <<: *common
            image: nginx:stable
          worker:
            <<: *common
            image: example/worker:1.0
        ```

        Compose ignores `x-` extension fields. YAML anchors and aliases reuse values
        within a file. `<<` merges mappings, not sequences.

        [Extensions reference](https://docs.docker.com/reference/compose-file/extension/)
      END
    end

    entry do
      name 'include'
      notes <<-'END'
        ```yaml
        include:
          - ./database/compose.yaml
        ```

        Top-level inclusion of another Compose model (Compose 2.20.0+).
        Included files resolve relative paths from their own project directories.
        Do not rely on `include` to merge conflicting resource names.

        [Include reference](https://docs.docker.com/reference/compose-file/include/)
      END
    end

    entry do
      name 'merge, !reset, !override'
      notes <<-'END'
        Combine files with `docker compose -f compose.yaml -f compose.prod.yaml config`.
        Later files override scalar values and merge mappings; sequences generally append.
        `command`, `entrypoint`, and `healthcheck.test` are replaced.
        Ports, volumes, configs, and secrets have special uniqueness rules.
        Relative paths use the base file's directory.

        Override-file fragment:

        ```yaml
        services:
          web:
            ports: !override
              - "127.0.0.1:8443:443"
            environment:
              DEBUG: !reset null
        ```

        `!reset` removes a value. `!override` replaces it without normal merging
        and requires Compose 2.24.4+.

        [Merge reference](https://docs.docker.com/reference/compose-file/merge/)
      END
    end
  end

  category do
    id 'Validation'

    entry do
      name 'docker compose config'
      notes <<-'END'
        ```sh
        docker compose config --quiet
        docker compose config
        docker compose config --environment
        ```

        Validate the model, print its resolved form, or inspect interpolation inputs.
        These commands do not start containers.
        Resolved output can contain credentials: do not publish it unredacted.

        [Reference](https://docs.docker.com/reference/cli/docker/compose/config/)
      END
    end
  end
end
