cheatsheet do
	title 'Docker'
	docset_file_name 'Docker'
	keyword 'docker'
	source_url 'http://cheat.kapeli.com'

	category do
		id 'attach'

		entry do
			notes "__Attach to a running container__"
		end

		entry do
			name "--detach-keys"
			notes "
			```
			Override the key sequence for detaching a container
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "--no-stdin"
			notes "
			```
			Do not attach STDIN
			```"
		end
		entry do
			name "--sig-proxy"
			notes "
			```
			Proxy all received signals to the process (default true)
			```"
		end
	end

	category do
		id 'build'

		entry do
			notes "__Build an image from a Dockerfile__"
		end

		entry do
			name "--build-arg"
			notes "
			```
			Set build-time variables (default [])
			```"
		end
		entry do
			name "--cgroup-parent"
			notes "
			```
			Optional parent cgroup for the container
			```"
		end
		entry do
			name "--cpu-period"
			notes "
			```
			Limit the CPU CFS (Completely Fair Scheduler) period
			```"
		end
		entry do
			name "--cpu-quota"
			notes "
			```
			Limit the CPU CFS (Completely Fair Scheduler) quota
			```"
		end
		entry do
			name "-c"
			notes "
			```
			int          CPU shares (relative weight)
			```"
		end
		entry do
			name "--cpuset-cpus"
			notes "
			```
			CPUs in which to allow execution (0-3, 0,1)
			```"
		end
		entry do
			name "--cpuset-mems"
			notes "
			```
			MEMs in which to allow execution (0-3, 0,1)
			```"
		end
		entry do
			name "--disable-content-trust"
			notes "
			```
			Skip image verification (default true)
			```"
		end
		entry do
			name "-f"
			notes "
			```
			string             Name of the Dockerfile (Default is 'PATH/Dockerfile')
			```"
		end
		entry do
			name "--force-rm"
			notes "
			```
			Always remove intermediate containers
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "--isolation"
			notes "
			```
			Container isolation technology
			```"
		end
		entry do
			name "--label"
			notes "
			```
			Set metadata for an image (default [])
			```"
		end
		entry do
			name "-m"
			notes "
			```
			string           Memory limit
			```"
		end
		entry do
			name "--memory-swap"
			notes "
			```
			Swap limit equal to memory plus swap: '-1' to enable unlimited swap
			```"
		end
		entry do
			name "--no-cache"
			notes "
			```
			Do not use cache when building the image
			```"
		end
		entry do
			name "--pull"
			notes "
			```
			Always attempt to pull a newer version of the image
			```"
		end
		entry do
			name "-q"
			notes "
			```
			Suppress the build output and print image ID on success
			```"
		end
		entry do
			name "--rm"
			notes "
			```
			Remove intermediate containers after a successful build (default true)
			```"
		end
		entry do
			name "--shm-size"
			notes "
			```
			Size of /dev/shm, default value is 64MB
			```"
		end
		entry do
			name "-t"
			notes "
			```
			value               Name and optionally a tag in the 'name:tag' format (default [])
			```"
		end
		entry do
			name "--ulimit"
			notes "
			```
			Ulimit options (default [])
			```"
		end
	end

	category do
		id 'commit'

		entry do
			notes "__Create a new image from a container's changes__"
		end

		entry do
			name "-a"
			notes "
			```
			string    Author (e.g., \"John Hannibal Smith <hannibal@a-team.com>\")
			```"
		end
		entry do
			name "-c"
			notes "
			```
			value     Apply Dockerfile instruction to the created image (default [])
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-m"
			notes "
			```
			string   Commit message
			```"
		end
		entry do
			name "-p"
			notes "
			```
			Pause container during commit (default true)
			```"
		end
	end

	category do
		id 'cp'

		entry do
			notes "__Copy files/folders between a container and the local filesystem__"
		end

		entry do
			name "-L"
			notes "
			```
			Always follow symbol link in SRC_PATH
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'create'

		entry do
			notes "__Create a new container__"
		end

		entry do
			name "--add-host"
			notes "
			```
			Add a custom host-to-IP mapping (host:ip) (default [])
			```"
		end
		entry do
			name "-a"
			notes "
			```
			value                Attach to STDIN, STDOUT or STDERR (default [])
			```"
		end
		entry do
			name "--blkio-weight"
			notes "
			```
			Block IO (relative weight), between 10 and 1000
			```"
		end
		entry do
			name "--blkio-weight-device"
			notes "
			```
			Block IO weight (relative device weight) (default [])
			```"
		end
		entry do
			name "--cap-add"
			notes "
			```
			Add Linux capabilities (default [])
			```"
		end
		entry do
			name "--cap-drop"
			notes "
			```
			Drop Linux capabilities (default [])
			```"
		end
		entry do
			name "--cgroup-parent"
			notes "
			```
			Optional parent cgroup for the container
			```"
		end
		entry do
			name "--cidfile"
			notes "
			```
			Write the container ID to the file
			```"
		end
		entry do
			name "--cpu-percent"
			notes "
			```
			CPU percent (Windows only)
			```"
		end
		entry do
			name "--cpu-period"
			notes "
			```
			Limit CPU CFS (Completely Fair Scheduler) period
			```"
		end
		entry do
			name "--cpu-quota"
			notes "
			```
			Limit CPU CFS (Completely Fair Scheduler) quota
			```"
		end
		entry do
			name "-c"
			notes "
			```
			int              CPU shares (relative weight)
			```"
		end
		entry do
			name "--cpuset-cpus"
			notes "
			```
			CPUs in which to allow execution (0-3, 0,1)
			```"
		end
		entry do
			name "--cpuset-mems"
			notes "
			```
			MEMs in which to allow execution (0-3, 0,1)
			```"
		end
		entry do
			name "--device"
			notes "
			```
			Add a host device to the container (default [])
			```"
		end
		entry do
			name "--device-read-bps"
			notes "
			```
			Limit read rate (bytes per second) from a device (default [])
			```"
		end
		entry do
			name "--device-read-iops"
			notes "
			```
			Limit read rate (IO per second) from a device (default [])
			```"
		end
		entry do
			name "--device-write-bps"
			notes "
			```
			Limit write rate (bytes per second) to a device (default [])
			```"
		end
		entry do
			name "--device-write-iops"
			notes "
			```
			Limit write rate (IO per second) to a device (default [])
			```"
		end
		entry do
			name "--disable-content-trust"
			notes "
			```
			Skip image verification (default true)
			```"
		end
		entry do
			name "--dns"
			notes "
			```
			Set custom DNS servers (default [])
			```"
		end
		entry do
			name "--dns-opt"
			notes "
			```
			Set DNS options (default [])
			```"
		end
		entry do
			name "--dns-search"
			notes "
			```
			Set custom DNS search domains (default [])
			```"
		end
		entry do
			name "--entrypoint"
			notes "
			```
			Overwrite the default ENTRYPOINT of the image
			```"
		end
		entry do
			name "-e"
			notes "
			```
			value                   Set environment variables (default [])
			```"
		end
		entry do
			name "--env-file"
			notes "
			```
			Read in a file of environment variables (default [])
			```"
		end
		entry do
			name "--expose"
			notes "
			```
			Expose a port or a range of ports (default [])
			```"
		end
		entry do
			name "--group-add"
			notes "
			```
			Add additional groups to join (default [])
			```"
		end
		entry do
			name "--health-cmd"
			notes "
			```
			Command to run to check health
			```"
		end
		entry do
			name "--health-interval"
			notes "
			```
			Time between running the check
			```"
		end
		entry do
			name "--health-retries"
			notes "
			```
			Consecutive failures needed to report unhealthy
			```"
		end
		entry do
			name "--health-timeout"
			notes "
			```
			Maximum time to allow one check to run
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-h"
			notes "
			```
			string             Container host name
			```"
		end
		entry do
			name "-i"
			notes "
			```
			Keep STDIN open even if not attached
			```"
		end
		entry do
			name "--io-maxbandwidth"
			notes "
			```
			Maximum IO bandwidth limit for the system drive (Windows only)
			```"
		end
		entry do
			name "--io-maxiops"
			notes "
			```
			Maximum IOps limit for the system drive (Windows only)
			```"
		end
		entry do
			name "--ip"
			notes "
			```
			Container IPv4 address (e.g. 172.30.100.104)
			```"
		end
		entry do
			name "--ip6"
			notes "
			```
			Container IPv6 address (e.g. 2001:db8::33)
			```"
		end
		entry do
			name "--ipc"
			notes "
			```
			IPC namespace to use
			```"
		end
		entry do
			name "--isolation"
			notes "
			```
			Container isolation technology
			```"
		end
		entry do
			name "--kernel-memory"
			notes "
			```
			Kernel memory limit
			```"
		end
		entry do
			name "-l"
			notes "
			```
			value                 Set meta data on a container (default [])
			```"
		end
		entry do
			name "--label-file"
			notes "
			```
			Read in a line delimited file of labels (default [])
			```"
		end
		entry do
			name "--link"
			notes "
			```
			Add link to another container (default [])
			```"
		end
		entry do
			name "--link-local-ip"
			notes "
			```
			Container IPv4/IPv6 link-local addresses (default [])
			```"
		end
		entry do
			name "--log-driver"
			notes "
			```
			Logging driver for container
			```"
		end
		entry do
			name "--log-opt"
			notes "
			```
			Log driver options (default [])
			```"
		end
		entry do
			name "--mac-address"
			notes "
			```
			Container MAC address (e.g. 92:d0:c6:0a:29:33)
			```"
		end
		entry do
			name "-m"
			notes "
			```
			string               Memory limit
			```"
		end
		entry do
			name "--memory-reservation"
			notes "
			```
			Memory soft limit
			```"
		end
		entry do
			name "--memory-swap"
			notes "
			```
			Swap limit equal to memory plus swap: '-1' to enable unlimited swap
			```"
		end
		entry do
			name "--memory-swappiness"
			notes "
			```
			Tune container memory swappiness (0 to 100) (default -1)
			```"
		end
		entry do
			name "--name"
			notes "
			```
			Assign a name to the container
			```"
		end
		entry do
			name "--net"
			notes "
			```
			Connect a container to a network (default \"default\")
			```"
		end
		entry do
			name "--net-alias"
			notes "
			```
			Add network-scoped alias for the container (default [])
			```"
		end
		entry do
			name "--no-healthcheck"
			notes "
			```
			Disable any container-specified HEALTHCHECK
			```"
		end
		entry do
			name "--oom-kill-disable"
			notes "
			```
			Disable OOM Killer
			```"
		end
		entry do
			name "--oom-score-adj"
			notes "
			```
			Tune host's OOM preferences (-1000 to 1000)
			```"
		end
		entry do
			name "--pid"
			notes "
			```
			PID namespace to use
			```"
		end
		entry do
			name "--pids-limit"
			notes "
			```
			Tune container pids limit (set -1 for unlimited)
			```"
		end
		entry do
			name "--privileged"
			notes "
			```
			Give extended privileges to this container
			```"
		end
		entry do
			name "-p"
			notes "
			```
			value               Publish a container's port(s) to the host (default [])
			```"
		end
		entry do
			name "-P"
			notes "
			```
			Publish all exposed ports to random ports
			```"
		end
		entry do
			name "--read-only"
			notes "
			```
			Mount the container's root filesystem as read only
			```"
		end
		entry do
			name "--restart"
			notes "
			```
			Restart policy to apply when a container exits (default \"no\")
			```"
		end
		entry do
			name "--runtime"
			notes "
			```
			Runtime to use for this container
			```"
		end
		entry do
			name "--security-opt"
			notes "
			```
			Security Options (default [])
			```"
		end
		entry do
			name "--shm-size"
			notes "
			```
			Size of /dev/shm, default value is 64MB
			```"
		end
		entry do
			name "--stop-signal"
			notes "
			```
			Signal to stop a container, SIGTERM by default (default \"SIGTERM\")
			```"
		end
		entry do
			name "--storage-opt"
			notes "
			```
			Set storage driver options per container (default [])
			```"
		end
		entry do
			name "--sysctl"
			notes "
			```
			Sysctl options (default map[])
			```"
		end
		entry do
			name "--tmpfs"
			notes "
			```
			Mount a tmpfs directory (default [])
			```"
		end
		entry do
			name "-t"
			notes "
			```
			Allocate a pseudo-TTY
			```"
		end
		entry do
			name "--ulimit"
			notes "
			```
			Ulimit options (default [])
			```"
		end
		entry do
			name "-u"
			notes "
			```
			string                 Username or UID (format: <name|uid>[:<group|gid>])
			```"
		end
		entry do
			name "--userns"
			notes "
			```
			User namespace to use
			```"
		end
		entry do
			name "--uts"
			notes "
			```
			UTS namespace to use
			```"
		end
		entry do
			name "-v"
			notes "
			```
			value                Bind mount a volume (default [])
			```"
		end
		entry do
			name "--volume-driver"
			notes "
			```
			Optional volume driver for the container
			```"
		end
		entry do
			name "--volumes-from"
			notes "
			```
			Mount volumes from the specified container(s) (default [])
			```"
		end
		entry do
			name "-w"
			notes "
			```
			string              Working directory inside the container
			```"
		end
	end

	category do
		id 'deploy'

		entry do
			notes "__Create and update a stack__"
		end

		entry do
			name "-f"
			notes "
			```
			string   Path to a bundle (Default: STACK.dsb)
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'diff'

		entry do
			notes "__Inspect changes on a container's filesystem__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'events'

		entry do
			notes "__Get real time events from the server__"
		end

		entry do
			name "-f"
			notes "
			```
			value   Filter output based on conditions provided (default [])
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "--since"
			notes "
			```
			Show all events created since timestamp
			```"
		end
		entry do
			name "--until"
			notes "
			```
			Stream events until this timestamp
			```"
		end
	end

	category do
		id 'exec'

		entry do
			notes "__Run a command in a running container__"
		end

	end

	category do
		id 'export'

		entry do
			notes "__Export a container's filesystem as a tar archive__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-o"
			notes "
			```
			string   Write to a file, instead of STDOUT
			```"
		end
	end

	category do
		id 'history'

		entry do
			notes "__Show the history of an image__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-H"
			notes "
			```
			Print sizes and dates in human readable format (default true)
			```"
		end
		entry do
			name "--no-trunc"
			notes "
			```
			Don't truncate output
			```"
		end
		entry do
			name "-q"
			notes "
			```
			Only show numeric IDs
			```"
		end
	end

	category do
		id 'images'

		entry do
			notes "__List images__"
		end

		entry do
			name "-a"
			notes "
			```
			Show all images (default hides intermediate images)
			```"
		end
		entry do
			name "--digests"
			notes "
			```
			Show digests
			```"
		end
		entry do
			name "-f"
			notes "
			```
			value    Filter output based on conditions provided (default [])
			```"
		end
		entry do
			name "--format"
			notes "
			```
			Pretty-print images using a Go template
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "--no-trunc"
			notes "
			```
			Don't truncate output
			```"
		end
		entry do
			name "-q"
			notes "
			```
			Only show numeric IDs
			```"
		end
	end

	category do
		id 'import'

		entry do
			notes "__Import the contents from a tarball to create a filesystem image__"
		end

		entry do
			name "-c"
			notes "
			```
			value     Apply Dockerfile instruction to the created image (default [])
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-m"
			notes "
			```
			string   Set commit message for imported image
			```"
		end
	end

	category do
		id 'info'

		entry do
			notes "__Display system-wide information__"
		end

	end

	category do
		id 'inspect'

		entry do
			notes "__Return low-level information on a container, image or task__"
		end

	end

	category do
		id 'kill'

		entry do
			notes "__Kill one or more running container__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-s"
			notes "
			```
			string   Signal to send to the container (default \"KILL\")
			```"
		end
	end

	category do
		id 'load'

		entry do
			notes "__Load an image from a tar archive or STDIN__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-i"
			notes "
			```
			string   Read from tar archive file, instead of STDIN
			```"
		end
		entry do
			name "-q"
			notes "
			```
			Suppress the load output
			```"
		end
	end

	category do
		id 'login'

		entry do
			notes "__Log in to a Docker registry.__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-p"
			notes "
			```
			string   Password
			```"
		end
		entry do
			name "-u"
			notes "
			```
			string   Username
			```"
		end
	end

	category do
		id 'logout'

		entry do
			notes "__Log out from a Docker registry.__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'logs'

		entry do
			notes "__Fetch the logs of a container__"
		end

		entry do
			name "--details"
			notes "
			```
			Show extra details provided to logs
			```"
		end
		entry do
			name "-f"
			notes "
			```
			Follow log output
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "--since"
			notes "
			```
			Show logs since timestamp
			```"
		end
		entry do
			name "--tail"
			notes "
			```
			Number of lines to show from the end of the logs (default \"all\")
			```"
		end
		entry do
			name "-t"
			notes "
			```
			Show timestamps
			```"
		end
	end

	category do
		id 'network'

		entry do
			notes "__Manage Docker networks__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'node'

		entry do
			notes "__Manage Docker Swarm nodes__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'pause'

		entry do
			notes "__Pause all processes within one or more containers__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'plugin'

		entry do
			notes "__Manage Docker plugins__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'port'

		entry do
			notes "__List port mappings or a specific mapping for the container__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'ps'

		entry do
			notes "__List containers__"
		end

		entry do
			name "-n"
			notes "
			```
			int            Show n last created containers (includes all states) (default -1)
			```"
		end
		entry do
			name "-a"
			notes "
			```
			Show all containers (default shows just running)
			```"
		end
		entry do
			name "-f"
			notes "
			```
			value    Filter output based on conditions provided (default [])
			```"
		end
		entry do
			name "--format"
			notes "
			```
			Pretty-print containers using a Go template
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-l"
			notes "
			```
			Show the latest created container (includes all states)
			```"
		end
		entry do
			name "--no-trunc"
			notes "
			```
			Don't truncate output
			```"
		end
		entry do
			name "-q"
			notes "
			```
			Only display numeric IDs
			```"
		end
		entry do
			name "-s"
			notes "
			```
			Display total file sizes
			```"
		end
	end

	category do
		id 'pull'

		entry do
			notes "__Pull an image or a repository from a registry__"
		end

		entry do
			name "-a"
			notes "
			```
			Download all tagged images in the repository
			```"
		end
		entry do
			name "--disable-content-trust"
			notes "
			```
			Skip image verification (default true)
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'push'

		entry do
			notes "__Push an image or a repository to a registry__"
		end

		entry do
			name "--disable-content-trust"
			notes "
			```
			Skip image verification (default true)
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'rename'

		entry do
			notes "__Rename a container__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'restart'

		entry do
			notes "__Restart a container__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-t"
			notes "
			```
			int   Seconds to wait for stop before killing the container (default 10)
			```"
		end
	end

	category do
		id 'rm'

		entry do
			notes "__Remove one or more containers__"
		end

		entry do
			name "-f"
			notes "
			```
			Force the removal of a running container (uses SIGKILL)
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-l"
			notes "
			```
			Remove the specified link
			```"
		end
		entry do
			name "-v"
			notes "
			```
			Remove the volumes associated with the container
			```"
		end
	end

	category do
		id 'rmi'

		entry do
			notes "__Remove one or more images__"
		end

		entry do
			name "-f"
			notes "
			```
			Force removal of the image
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "--no-prune"
			notes "
			```
			Do not delete untagged parents
			```"
		end
	end

	category do
		id 'run'

		entry do
			notes "__Run a command in a new container__"
		end

		entry do
			name "--add-host"
			notes "
			```
			Add a custom host-to-IP mapping (host:ip) (default [])
			```"
		end
		entry do
			name "-a"
			notes "
			```
			value                Attach to STDIN, STDOUT or STDERR (default [])
			```"
		end
		entry do
			name "--blkio-weight"
			notes "
			```
			Block IO (relative weight), between 10 and 1000
			```"
		end
		entry do
			name "--blkio-weight-device"
			notes "
			```
			Block IO weight (relative device weight) (default [])
			```"
		end
		entry do
			name "--cap-add"
			notes "
			```
			Add Linux capabilities (default [])
			```"
		end
		entry do
			name "--cap-drop"
			notes "
			```
			Drop Linux capabilities (default [])
			```"
		end
		entry do
			name "--cgroup-parent"
			notes "
			```
			Optional parent cgroup for the container
			```"
		end
		entry do
			name "--cidfile"
			notes "
			```
			Write the container ID to the file
			```"
		end
		entry do
			name "--cpu-percent"
			notes "
			```
			CPU percent (Windows only)
			```"
		end
		entry do
			name "--cpu-period"
			notes "
			```
			Limit CPU CFS (Completely Fair Scheduler) period
			```"
		end
		entry do
			name "--cpu-quota"
			notes "
			```
			Limit CPU CFS (Completely Fair Scheduler) quota
			```"
		end
		entry do
			name "-c"
			notes "
			```
			int              CPU shares (relative weight)
			```"
		end
		entry do
			name "--cpuset-cpus"
			notes "
			```
			CPUs in which to allow execution (0-3, 0,1)
			```"
		end
		entry do
			name "--cpuset-mems"
			notes "
			```
			MEMs in which to allow execution (0-3, 0,1)
			```"
		end
		entry do
			name "-d"
			notes "
			```
			Run container in background and print container ID
			```"
		end
		entry do
			name "--detach-keys"
			notes "
			```
			Override the key sequence for detaching a container
			```"
		end
		entry do
			name "--device"
			notes "
			```
			Add a host device to the container (default [])
			```"
		end
		entry do
			name "--device-read-bps"
			notes "
			```
			Limit read rate (bytes per second) from a device (default [])
			```"
		end
		entry do
			name "--device-read-iops"
			notes "
			```
			Limit read rate (IO per second) from a device (default [])
			```"
		end
		entry do
			name "--device-write-bps"
			notes "
			```
			Limit write rate (bytes per second) to a device (default [])
			```"
		end
		entry do
			name "--device-write-iops"
			notes "
			```
			Limit write rate (IO per second) to a device (default [])
			```"
		end
		entry do
			name "--disable-content-trust"
			notes "
			```
			Skip image verification (default true)
			```"
		end
		entry do
			name "--dns"
			notes "
			```
			Set custom DNS servers (default [])
			```"
		end
		entry do
			name "--dns-opt"
			notes "
			```
			Set DNS options (default [])
			```"
		end
		entry do
			name "--dns-search"
			notes "
			```
			Set custom DNS search domains (default [])
			```"
		end
		entry do
			name "--entrypoint"
			notes "
			```
			Overwrite the default ENTRYPOINT of the image
			```"
		end
		entry do
			name "-e"
			notes "
			```
			value                   Set environment variables (default [])
			```"
		end
		entry do
			name "--env-file"
			notes "
			```
			Read in a file of environment variables (default [])
			```"
		end
		entry do
			name "--expose"
			notes "
			```
			Expose a port or a range of ports (default [])
			```"
		end
		entry do
			name "--group-add"
			notes "
			```
			Add additional groups to join (default [])
			```"
		end
		entry do
			name "--health-cmd"
			notes "
			```
			Command to run to check health
			```"
		end
		entry do
			name "--health-interval"
			notes "
			```
			Time between running the check
			```"
		end
		entry do
			name "--health-retries"
			notes "
			```
			Consecutive failures needed to report unhealthy
			```"
		end
		entry do
			name "--health-timeout"
			notes "
			```
			Maximum time to allow one check to run
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-h"
			notes "
			```
			string             Container host name
			```"
		end
		entry do
			name "-i"
			notes "
			```
			Keep STDIN open even if not attached
			```"
		end
		entry do
			name "--io-maxbandwidth"
			notes "
			```
			Maximum IO bandwidth limit for the system drive (Windows only)
			```"
		end
		entry do
			name "--io-maxiops"
			notes "
			```
			Maximum IOps limit for the system drive (Windows only)
			```"
		end
		entry do
			name "--ip"
			notes "
			```
			Container IPv4 address (e.g. 172.30.100.104)
			```"
		end
		entry do
			name "--ip6"
			notes "
			```
			Container IPv6 address (e.g. 2001:db8::33)
			```"
		end
		entry do
			name "--ipc"
			notes "
			```
			IPC namespace to use
			```"
		end
		entry do
			name "--isolation"
			notes "
			```
			Container isolation technology
			```"
		end
		entry do
			name "--kernel-memory"
			notes "
			```
			Kernel memory limit
			```"
		end
		entry do
			name "-l"
			notes "
			```
			value                 Set meta data on a container (default [])
			```"
		end
		entry do
			name "--label-file"
			notes "
			```
			Read in a line delimited file of labels (default [])
			```"
		end
		entry do
			name "--link"
			notes "
			```
			Add link to another container (default [])
			```"
		end
		entry do
			name "--link-local-ip"
			notes "
			```
			Container IPv4/IPv6 link-local addresses (default [])
			```"
		end
		entry do
			name "--log-driver"
			notes "
			```
			Logging driver for container
			```"
		end
		entry do
			name "--log-opt"
			notes "
			```
			Log driver options (default [])
			```"
		end
		entry do
			name "--mac-address"
			notes "
			```
			Container MAC address (e.g. 92:d0:c6:0a:29:33)
			```"
		end
		entry do
			name "-m"
			notes "
			```
			string               Memory limit
			```"
		end
		entry do
			name "--memory-reservation"
			notes "
			```
			Memory soft limit
			```"
		end
		entry do
			name "--memory-swap"
			notes "
			```
			Swap limit equal to memory plus swap: '-1' to enable unlimited swap
			```"
		end
		entry do
			name "--memory-swappiness"
			notes "
			```
			Tune container memory swappiness (0 to 100) (default -1)
			```"
		end
		entry do
			name "--name"
			notes "
			```
			Assign a name to the container
			```"
		end
		entry do
			name "--net"
			notes "
			```
			Connect a container to a network (default \"default\")
			```"
		end
		entry do
			name "--net-alias"
			notes "
			```
			Add network-scoped alias for the container (default [])
			```"
		end
		entry do
			name "--no-healthcheck"
			notes "
			```
			Disable any container-specified HEALTHCHECK
			```"
		end
		entry do
			name "--oom-kill-disable"
			notes "
			```
			Disable OOM Killer
			```"
		end
		entry do
			name "--oom-score-adj"
			notes "
			```
			Tune host's OOM preferences (-1000 to 1000)
			```"
		end
		entry do
			name "--pid"
			notes "
			```
			PID namespace to use
			```"
		end
		entry do
			name "--pids-limit"
			notes "
			```
			Tune container pids limit (set -1 for unlimited)
			```"
		end
		entry do
			name "--privileged"
			notes "
			```
			Give extended privileges to this container
			```"
		end
		entry do
			name "-p"
			notes "
			```
			value               Publish a container's port(s) to the host (default [])
			```"
		end
		entry do
			name "-P"
			notes "
			```
			Publish all exposed ports to random ports
			```"
		end
		entry do
			name "--read-only"
			notes "
			```
			Mount the container's root filesystem as read only
			```"
		end
		entry do
			name "--restart"
			notes "
			```
			Restart policy to apply when a container exits (default \"no\")
			```"
		end
		entry do
			name "--rm"
			notes "
			```
			Automatically remove the container when it exits
			```"
		end
		entry do
			name "--runtime"
			notes "
			```
			Runtime to use for this container
			```"
		end
		entry do
			name "--security-opt"
			notes "
			```
			Security Options (default [])
			```"
		end
		entry do
			name "--shm-size"
			notes "
			```
			Size of /dev/shm, default value is 64MB
			```"
		end
		entry do
			name "--sig-proxy"
			notes "
			```
			Proxy received signals to the process (default true)
			```"
		end
		entry do
			name "--stop-signal"
			notes "
			```
			Signal to stop a container, SIGTERM by default (default \"SIGTERM\")
			```"
		end
		entry do
			name "--storage-opt"
			notes "
			```
			Set storage driver options per container (default [])
			```"
		end
		entry do
			name "--sysctl"
			notes "
			```
			Sysctl options (default map[])
			```"
		end
		entry do
			name "--tmpfs"
			notes "
			```
			Mount a tmpfs directory (default [])
			```"
		end
		entry do
			name "-t"
			notes "
			```
			Allocate a pseudo-TTY
			```"
		end
		entry do
			name "--ulimit"
			notes "
			```
			Ulimit options (default [])
			```"
		end
		entry do
			name "-u"
			notes "
			```
			string                 Username or UID (format: <name|uid>[:<group|gid>])
			```"
		end
		entry do
			name "--userns"
			notes "
			```
			User namespace to use
			```"
		end
		entry do
			name "--uts"
			notes "
			```
			UTS namespace to use
			```"
		end
		entry do
			name "-v"
			notes "
			```
			value                Bind mount a volume (default [])
			```"
		end
		entry do
			name "--volume-driver"
			notes "
			```
			Optional volume driver for the container
			```"
		end
		entry do
			name "--volumes-from"
			notes "
			```
			Mount volumes from the specified container(s) (default [])
			```"
		end
		entry do
			name "-w"
			notes "
			```
			string              Working directory inside the container
			```"
		end
	end

	category do
		id 'save'

		entry do
			notes "__Save one or more images to a tar archive (streamed to STDOUT by default)__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-o"
			notes "
			```
			string   Write to a file, instead of STDOUT
			```"
		end
	end

	category do
		id 'search'

		entry do
			notes "__Search the Docker Hub for images__"
		end

		entry do
			name "-f"
			notes "
			```
			value   Filter output based on conditions provided (default [])
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "--limit"
			notes "
			```
			Max number of search results (default 25)
			```"
		end
		entry do
			name "--no-trunc"
			notes "
			```
			Don't truncate output
			```"
		end
	end

	category do
		id 'service'

		entry do
			notes "__Manage Docker services__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'stack'

		entry do
			notes "__Manage Docker stacks__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'start'

		entry do
			notes "__Start one or more stopped containers__"
		end

		entry do
			name "-a"
			notes "
			```
			Attach STDOUT/STDERR and forward signals
			```"
		end
		entry do
			name "--detach-keys"
			notes "
			```
			Override the key sequence for detaching a container
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-i"
			notes "
			```
			Attach container's STDIN
			```"
		end
	end

	category do
		id 'stats'

		entry do
			notes "__Display a live stream of container(s) resource usage statistics__"
		end

		entry do
			name "-a"
			notes "
			```
			Show all containers (default shows just running)
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "--no-stream"
			notes "
			```
			Disable streaming stats and only pull the first result
			```"
		end
	end

	category do
		id 'stop'

		entry do
			notes "__Stop one or more running containers__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
		entry do
			name "-t"
			notes "
			```
			int   Seconds to wait for stop before killing it (default 10)
			```"
		end
	end

	category do
		id 'swarm'

		entry do
			notes "__Manage Docker Swarm__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'tag'

		entry do
			notes "__Tag an image into a repository__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'top'

		entry do
			notes "__Display the running processes of a container__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'unpause'

		entry do
			notes "__Unpause all processes within one or more containers__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'update'

		entry do
			notes "__Update configuration of one or more containers__"
		end

	end

	category do
		id 'version'

		entry do
			notes "__Show the Docker version information__"
		end

		entry do
			name "-f"
			notes "
			```
			string   Format the output using the given go template
			```"
		end
		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'volume'

		entry do
			notes "__Manage Docker volumes__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	category do
		id 'wait'

		entry do
			notes "__Block until a container stops, then print its exit code__"
		end

		entry do
			name "--help"
			notes "
			```
			Print usage
			```"
		end
	end

	notes <<-'END'
		* Converted and extended by [jhezjkp](https://github.com/jhezjkp).
	END

end