cheatsheet do
  title 'Chromium Command Line Switches'
  docset_file_name 'Chromium_Command_Line_Switches'
  keyword 'chromiumswitches'
  source_url 'http://peter.sh/experiments/chromium-command-line-switches/?date=2017-03-19'

  category do
    id 'Chromium Command Line Switches'
    
    entry do
      name '--/prefetch:1'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      /prefetch:# arguments to use when launching various process types. It has been observed that when file reads are consistent for 3 process launches with the same /prefetch:# argument, the Windows prefetcher starts issuing reads in batch at process launch. Because reads depend on the process type, the prefetcher wouldn't be able to observe consistent reads if no /prefetch:# arguments were used. Note that the browser process has no /prefetch:# argument; as such all other processes must have one in order to avoid polluting its profile. Note: # must always be in [1, 8]; otherwise it is ignored by the Windows prefetcher. 
      END
    end
    entry do
      name '--/prefetch:2'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      No description 
      END
    end
    entry do
      name '--/prefetch:3'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      No description 
      END
    end
    entry do
      name '--/prefetch:4'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      No description 
      END
    end
    entry do
      name '--/prefetch:5'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      /prefetch:# arguments for the browser process launched in background mode and for the watcher process. Use profiles 5, 6 and 7 as documented on kPrefetchArgument* in content_switches.cc. 
      END
    end
    entry do
      name '--/prefetch:6'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      No description 
      END
    end
    entry do
      name '--/prefetch:8'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      /prefetch:# argument shared by all process types that don't have their own. It is likely that the prefetcher won't work for these process types as it won't be able to observe consistent file reads across launches. However, having a valid prefetch argument for these process types is required to prevent them from interfering with the prefetch profile of the browser process. 
      END
    end
    entry do
      name '--0'
      notes <<-'END'
      Value of the --profiler-timing flag that will disable timing information for chrome://profiler. 
      END
    end
    entry do
      name '--?'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--accept-resource-provider'
      notes <<-'END'
      Flag indicating that a resource provider must be set up to provide cast receiver with resources. Apps cannot start until provided resources. This flag implies --alsa-check-close-timeout=0. 
      END
    end
    entry do
      name '--adaboost'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--aec-refined-adaptive-filter'
      notes <<-'END'
      Enables a new tuning of the WebRTC Acoustic Echo Canceler (AEC). The new tuning aims at resolving two issues with the AEC: https://bugs.chromium.org/p/webrtc/issues/detail?id=5777 https://bugs.chromium.org/p/webrtc/issues/detail?id=5778 TODO(hlundin): Remove this switch when experimentation is over; crbug.com/603821. 
      END
    end
    entry do
      name '--agc-startup-min-volume'
      notes <<-'END'
      Override the default minimum starting volume of the Automatic Gain Control algorithm in WebRTC used with audio tracks from getUserMedia. The valid range is 12-255. Values outside that range will be clamped to the lowest or highest valid value inside WebRTC. TODO(tommi): Remove this switch when crbug.com/555577 is fixed. 
      END
    end
    entry do
      name '--aggressive'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--aggressive-cache-discard'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--aggressive-tab-discard'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--allow-cross-origin-auth-prompt'
      notes <<-'END'
      Allows third-party content included on a page to prompt for a HTTP basic auth username/password pair. 
      END
    end
    entry do
      name '--allow-data-roaming-by-default'
      notes <<-'END'
      If this flag is set, enable data roaming in the cellular network by default upon system start if it's an unmanaged device. This flag is used by Rialto device to obtain device policy during OOBE since the Rialto device has no display and and only connects over cell. 
      END
    end
    entry do
      name '--allow-external-pages'
      notes <<-'END'
      Allow access to external pages during layout tests. 
      END
    end
    entry do
      name '--allow-failed-policy-fetch-for-test'
      notes <<-'END'
      If this flag is passed, failed policy fetches will not cause profile initialization to fail. This is useful for tests because it means that tests don't have to mock out the policy infrastructure. 
      END
    end
    entry do
      name '--allow-file-access-from-files'
      notes <<-'END'
      By default, file:// URIs cannot read other file:// URIs. This is an override for developers who need the old behavior for testing. 
      END
    end
    entry do
      name '--allow-hidden-media-playback'
      notes <<-'END'
      Allows media playback for hidden WebContents 
      END
    end
    entry do
      name '--allow-http-background-page'
      notes <<-'END'
      Allows non-https URL for background_page for hosted apps. 
      END
    end
    entry do
      name '--allow-http-screen-capture'
      notes <<-'END'
      Allow non-secure origins to use the screen capture API and the desktopCapture extension API. 
      END
    end
    entry do
      name '--allow-insecure-localhost'
      notes <<-'END'
      Enables TLS/SSL errors on localhost to be ignored (no interstitial, no blocking of requests). 
      END
    end
    entry do
      name '--allow-legacy-extension-manifests'
      notes <<-'END'
      Allows the browser to load extensions that lack a modern manifest when that would otherwise be forbidden. 
      END
    end
    entry do
      name '--allow-loopback-in-peer-connection'
      notes <<-'END'
      Allows loopback interface to be added in network list for peer connection. 
      END
    end
    entry do
      name '--allow-nacl-crxfs-api'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_PLUGINS) must be defined.
      ```
      Specifies comma-separated list of extension ids or hosts to grant access to CRX file system APIs. 
      END
    end
    entry do
      name '--allow-nacl-file-handle-api'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_PLUGINS) must be defined.
      ```
      Specifies comma-separated list of extension ids or hosts to grant access to file handle APIs. 
      END
    end
    entry do
      name '--allow-nacl-socket-api'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_PLUGINS) must be defined.
      ```
      Specifies comma-separated list of extension ids or hosts to grant access to TCP/UDP socket APIs. 
      END
    end
    entry do
      name '--allow-no-sandbox-job'
      notes <<-'END'
      Enables the sandboxed processes to run without a job object assigned to them. This flag is required to allow Chrome to run in RemoteApps or Citrix. This flag can reduce the security of the sandboxed processes and allow them to do certain API calls like shut down Windows or access the clipboard. Also we lose the chance to kill some processes until the outer job that owns them finishes. 
      END
    end
    entry do
      name '--allow-outdated-plugins'
      notes <<-'END'
      Don't block outdated plugins. 
      END
    end
    entry do
      name '--allow-ra-in-dev-mode'
      notes <<-'END'
      Allows remote attestation (RA) in dev mode for testing purpose. Usually RA is disabled in dev mode because it will always fail. However, there are cases in testing where we do want to go through the permission flow even in dev mode. This can be enabled by this flag. 
      END
    end
    entry do
      name '--allow-running-insecure-content'
      notes <<-'END'
      By default, an https page cannot run JavaScript, CSS or plugins from http URLs. This provides an override to get the old insecure behavior. 
      END
    end
    entry do
      name '--allow-sandbox-debugging'
      notes <<-'END'
      Allows debugging of sandboxed processes (see zygote_main_linux.cc). 
      END
    end
    entry do
      name '--allow-silent-push'
      notes <<-'END'
      Allows Web Push notifications that do not show a notification. 
      END
    end
    entry do
      name '--alsa-check-close-timeout'
      notes <<-'END'
      Time in ms to wait before closing the PCM handle when no more mixer inputs remain. Assumed to be 0 if --accept-resource-provider is present. 
      END
    end
    entry do
      name '--alsa-enable-upsampling'
      notes <<-'END'
      Flag that enables resampling audio with sample rate below 32kHz up to 48kHz. Should be set to true for internal audio products. 
      END
    end
    entry do
      name '--alsa-fixed-output-sample-rate'
      notes <<-'END'
      Optional flag to set a fixed sample rate for the alsa device. 
      END
    end
    entry do
      name '--alsa-input-device'
      notes <<-'END'
      ```
      The constants OS_FREEBSD, OS_LINUX and OS_SOLARIS must be defined.
      ```
      The Alsa device to use when opening an audio input stream. 
      END
    end
    entry do
      name '--alsa-output-avail-min'
      notes <<-'END'
      Minimum number of available frames for scheduling a transfer. 
      END
    end
    entry do
      name '--alsa-output-buffer-size'
      notes <<-'END'
      Size of the ALSA output buffer in frames. This directly sets the latency of the output device. Latency can be calculated by multiplying the sample rate by the output buffer size. 
      END
    end
    entry do
      name '--alsa-output-device'
      notes <<-'END'
      ```
      The constants OS_FREEBSD, OS_LINUX and OS_SOLARIS must be defined.
      ```
      The Alsa device to use when opening an audio stream. 
      END
    end
    entry do
      name '--alsa-output-period-size'
      notes <<-'END'
      Size of the ALSA output period in frames. The period of an ALSA output device determines how many frames elapse between hardware interrupts. 
      END
    end
    entry do
      name '--alsa-output-start-threshold'
      notes <<-'END'
      How many frames need to be in the output buffer before output starts. 
      END
    end
    entry do
      name '--also-emit-success-logs'
      notes <<-'END'
      Also emit full event trace logs for successful tests. 
      END
    end
    entry do
      name '--always-authorize-plugins'
      notes <<-'END'
      Prevents Chrome from requiring authorization to run certain widely installed but less commonly used plugins. 
      END
    end
    entry do
      name '--always-on'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--always-use-complex-text'
      notes <<-'END'
      Always use the complex text path for layout tests. 
      END
    end
    entry do
      name '--alwaystrue'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--android-fonts-path'
      notes <<-'END'
      Uses the android SkFontManager on linux. The specified directory should include the configuration xml file with the name "fonts.xml". This is used in blimp to emulate android fonts on linux. 
      END
    end
    entry do
      name '--android-stderr-port'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Redirect stderr to the given port. Only supported on Android. 
      END
    end
    entry do
      name '--android-stdin-port'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Redirect stdin to the given port. Only supported on Android. 
      END
    end
    entry do
      name '--android-stdout-port'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Redirect stdout to the given port. Only supported on Android. 
      END
    end
    entry do
      name '--angle'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--app'
      notes <<-'END'
      Specifies that the associated value should be launched in "application" mode. 
      END
    end
    entry do
      name '--app-auto-launched'
      notes <<-'END'
      Specifies whether an app launched in kiosk mode was auto launched with zero delay. Used in order to properly restore auto-launched state during session restore flow. 
      END
    end
    entry do
      name '--app-id'
      notes <<-'END'
      Specifies that the extension-app with the specified id should be launched according to its configuration. 
      END
    end
    entry do
      name '--app-mode-auth-code'
      notes <<-'END'
      Value of GAIA auth code for --force-app-mode. 
      END
    end
    entry do
      name '--app-mode-oauth-token'
      notes <<-'END'
      Value of OAuth2 refresh token for --force-app-mode. 
      END
    end
    entry do
      name '--app-mode-oem-manifest'
      notes <<-'END'
      Path for app's OEM manifest file. 
      END
    end
    entry do
      name '--app-shell-allow-roaming'
      notes <<-'END'
      Allow roaming in the cellular network. 
      END
    end
    entry do
      name '--app-shell-host-window-size'
      notes <<-'END'
      Size for the host window to create (i.e. "800x600"). 
      END
    end
    entry do
      name '--app-shell-preferred-network'
      notes <<-'END'
      SSID of the preferred WiFi network. 
      END
    end
    entry do
      name '--app-shell-refresh-token'
      notes <<-'END'
      Refresh token for identity API calls for the current user. Used for testing. 
      END
    end
    entry do
      name '--app-shell-user'
      notes <<-'END'
      User email address of the current user. 
      END
    end
    entry do
      name '--apple'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--apps-gallery-download-url'
      notes <<-'END'
      The URL that the webstore APIs download extensions from. Note: the URL must contain one '%s' for the extension ID. 
      END
    end
    entry do
      name '--apps-gallery-update-url'
      notes <<-'END'
      The update url used by gallery/webstore extensions. 
      END
    end
    entry do
      name '--apps-gallery-url'
      notes <<-'END'
      The URL to use for the gallery link in the app launcher. 
      END
    end
    entry do
      name '--apps-keep-chrome-alive-in-tests'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Prevents Chrome from quitting when Chrome Apps are open. 
      END
    end
    entry do
      name '--arc-availability'
      notes <<-'END'
      Signals ARC support status on this device. This can take one of the following three values. - none: ARC is not installed on this device. (default) - installed: ARC is installed on this device, but not officially supported. Users can enable ARC only when Finch experiment is turned on. - installed-only-kiosk-supported: ARC is installed, but officially supported only in kiosk mode. - officially-supported: ARC is installed and supported on this device. So users can enable ARC via settings etc. - officially-supported-with-active-directory: ARC is supported and also allowed to use with Active Directory management. 
      END
    end
    entry do
      name '--arc-available'
      notes <<-'END'
      DEPRECATED: Please use --arc-availability=installed. Signals the availability of the ARC instance on this device. 
      END
    end
    entry do
      name '--artifacts-dir'
      notes <<-'END'
      Screenshot testing: specifies the directoru where artifacts will be stored. 
      END
    end
    entry do
      name '--ash-adjustable-large-cursor'
      notes <<-'END'
      Enables adjustable large cursor. 
      END
    end
    entry do
      name '--ash-animate-from-boot-splash-screen'
      notes <<-'END'
      Enables an animated transition from the boot splash screen (Chrome logo on a white background) to the login screen.  Implies |kAshCopyHostBackgroundAtBoot| and doesn't make much sense if used in conjunction with |kDisableBootAnimation| (since the transition begins at the same time as the white/grayscale login screen animation). 
      END
    end
    entry do
      name '--ash-copy-host-background-at-boot'
      notes <<-'END'
      Copies the host window's content to the system background layer at startup. Can make boot slightly slower, but also hides an even-longer awkward period where we display a white background if the login wallpaper takes a long time to load. 
      END
    end
    entry do
      name '--ash-debug-shortcuts'
      notes <<-'END'
      Enable keyboard shortcuts useful for debugging. 
      END
    end
    entry do
      name '--ash-dev-shortcuts'
      notes <<-'END'
      Enable keyboard shortcuts used by developers only. 
      END
    end
    entry do
      name '--ash-disable-maximize-mode-window-backdrop'
      notes <<-'END'
      Disables the window backdrops normally used in maximize mode (TouchView). 
      END
    end
    entry do
      name '--ash-disable-screen-orientation-lock'
      notes <<-'END'
      Disable the support for WebContents to lock the screen orientation. 
      END
    end
    entry do
      name '--ash-disable-touch-exploration-mode'
      notes <<-'END'
      Disable the Touch Exploration Mode. Touch Exploration Mode will no longer be turned on automatically when spoken feedback is enabled when this flag is set. 
      END
    end
    entry do
      name '--ash-enable-docked-windows'
      notes <<-'END'
      Enables docking windows to the right or left (not to be confused with snapped windows). 
      END
    end
    entry do
      name '--ash-enable-magnifier-key-scroller'
      notes <<-'END'
      Enables key bindings to scroll magnified screen. 
      END
    end
    entry do
      name '--ash-enable-mirrored-screen'
      notes <<-'END'
      Enables mirrored screen. 
      END
    end
    entry do
      name '--ash-enable-palette-on-all-displays'
      notes <<-'END'
      Enables the palette on every display, instead of only the internal one. 
      END
    end
    entry do
      name '--ash-enable-software-mirroring'
      notes <<-'END'
      Enables software based mirroring. 
      END
    end
    entry do
      name '--ash-enable-unified-desktop'
      notes <<-'END'
      ```
      The constant OS_CHROMEOS must be defined.
      ```
      Enables unified desktop mode. 
      END
    end
    entry do
      name '--ash-force-enable-palette'
      notes <<-'END'
      Enables the palette next to the status area. 
      END
    end
    entry do
      name '--ash-hide-notifications-for-factory'
      notes <<-'END'
      Hides notifications that are irrelevant to Chrome OS device factory testing, such as battery level updates. 
      END
    end
    entry do
      name '--ash-host-window-bounds'
      notes <<-'END'
      Sets a window size, optional position, and optional scale factor. "1024x768" creates a window of size 1024x768. "100+200-1024x768" positions the window at 100,200. "1024x768*2" sets the scale factor to 2 for a high DPI display. "800,0+800-800x800" for two displays at 800x800 resolution. "800,0+800-800x800,0+1600-800x800" for three displays at 800x800 resolution. 
      END
    end
    entry do
      name '--ash-shelf-color'
      notes <<-'END'
      Enables the shelf color to be derived from the wallpaper. 
      END
    end
    entry do
      name '--ash-touch-hud'
      notes <<-'END'
      Enables the heads-up display for tracking touch points. 
      END
    end
    entry do
      name '--ash-webui-init'
      notes <<-'END'
      When wallpaper boot animation is not disabled this switch is used to override OOBE/sign in WebUI init type. Possible values: parallel|postpone. Default: parallel. 
      END
    end
    entry do
      name '--attestation-server'
      notes <<-'END'
      Determines which Google Privacy CA to use for attestation. 
      END
    end
    entry do
      name '--audio-buffer-size'
      notes <<-'END'
      Allow users to specify a custom buffer size for debugging purpose. 
      END
    end
    entry do
      name '--aura-legacy-power-button'
      notes <<-'END'
      (Most) Chrome OS hardware reports ACPI power button releases correctly. Standard hardware reports releases immediately after presses.  If set, we lock the screen or shutdown the system immediately in response to a press instead of displaying an interactive animation. 
      END
    end
    entry do
      name '--auth-ext-path'
      notes <<-'END'
      Enables overriding the path for the default authentication extension. 
      END
    end
    entry do
      name '--auth-server-whitelist'
      notes <<-'END'
      Whitelist for Negotiate Auth servers 
      END
    end
    entry do
      name '--auth-spnego-account-type'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Android authentication account type for SPNEGO authentication 
      END
    end
    entry do
      name '--auto'
      notes <<-'END'
      The values the kTouchEventFeatureDetection switch may have, as in --touch-events=disabled. auto: enabled at startup when an attached touchscreen is present. 
      END
    end
    entry do
      name '--auto-open-devtools-for-tabs'
      notes <<-'END'
      This flag makes Chrome auto-open DevTools window for each tab. It is intended to be used by developers and automation to not require user interaction for opening DevTools. 
      END
    end
    entry do
      name '--auto-select-desktop-capture-source'
      notes <<-'END'
      This flag makes Chrome auto-select the provided choice when an extension asks permission to start desktop capture. Should only be used for tests. For instance, --auto-select-desktop-capture-source="Entire screen" will automatically select to share the entire screen in English locales. 
      END
    end
    entry do
      name '--blink-settings'
      notes <<-'END'
      Set blink settings. Format is &lt;name&gt;[=&lt;value],&lt;name&gt;[=&lt;value&gt;],... The names are declared in Settings.json5. For boolean type, use "true", "false", or omit '=&lt;value&gt;' part to set to true. For enum type, use the int value of the enum value. Applied after other command line flags and prefs. 
      END
    end
    entry do
      name '--bootstrap'
      notes <<-'END'
      Values for the kExtensionContentVerification flag. See ContentVerifierDelegate::Mode for more explanation. 
      END
    end
    entry do
      name '--browser-subprocess-path'
      notes <<-'END'
      Path to the exe to run for the renderer and plugin subprocesses. 
      END
    end
    entry do
      name '--browser-test'
      notes <<-'END'
      Tells Content Shell that it's running as a content_browsertest. 
      END
    end
    entry do
      name '--bwsi'
      notes <<-'END'
      Indicates that the browser is in "browse without sign-in" (Guest session) mode. Should completely disable extensions, sync and bookmarks. 
      END
    end
    entry do
      name '--bypass-app-banner-engagement-checks'
      notes <<-'END'
      This flag causes the user engagement checks for showing app banners to be bypassed. It is intended to be used by developers who wish to test that their sites otherwise meet the criteria needed to show app banners. 
      END
    end
    entry do
      name '--canvas-msaa-sample-count'
      notes <<-'END'
      The number of MSAA samples for canvas2D. Requires MSAA support by GPU to have an effect. 0 disables MSAA. 
      END
    end
    entry do
      name '--cast-initial-screen-height'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--cast-initial-screen-width'
      notes <<-'END'
      Used to pass initial screen resolution to GPU process.  This allows us to set screen size correctly (so no need to resize when first window is created). 
      END
    end
    entry do
      name '--cc-layer-tree-test-long-timeout'
      notes <<-'END'
      Increases timeout for memory checkers. 
      END
    end
    entry do
      name '--cc-layer-tree-test-no-timeout'
      notes <<-'END'
      Prevents the layer tree unit tests from timing out. 
      END
    end
    entry do
      name '--cc-rebaseline-pixeltests'
      notes <<-'END'
      Makes pixel tests write their output instead of read it. 
      END
    end
    entry do
      name '--cellular-only'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--check-for-update-interval'
      notes <<-'END'
      How often (in seconds) to check for updates. Should only be used for testing purposes. 
      END
    end
    entry do
      name '--check-layout-test-sys-deps'
      notes <<-'END'
      Check whether all system dependencies for running layout tests are met. 
      END
    end
    entry do
      name '--check-tile-priority-inversion'
      notes <<-'END'
      Enables CHECKs to ensure that tile priorities are not inverted. 
      END
    end
    entry do
      name '--child-process'
      notes <<-'END'
      Used internally by the main process to indicate that a new process should be a child process. Takes the absolute path to the service library to load as an argument. Not for user use. 
      END
    end
    entry do
      name '--child-wallpaper-large'
      notes <<-'END'
      Default large wallpaper to use for kids accounts (as path to trusted, non-user-writable JPEG file). 
      END
    end
    entry do
      name '--child-wallpaper-small'
      notes <<-'END'
      Default small wallpaper to use for kids accounts (as path to trusted, non-user-writable JPEG file). 
      END
    end
    entry do
      name '--ChromeOSMemoryPressureHandling'
      notes <<-'END'
      The memory pressure thresholds selection which is used to decide whether and when a memory pressure event needs to get fired. 
      END
    end
    entry do
      name '--cipher-suite-blacklist'
      notes <<-'END'
      Comma-separated list of SSL cipher suites to disable. 
      END
    end
    entry do
      name '--class'
      notes <<-'END'
      ```
      The constants OS_CHROMEOS and OS_MACOSX must not be defined, and the constant OS_POSIX must be defined.
      ```
      The same as the --class argument in X applications.  Overrides the WM_CLASS window property with the given value. 
      END
    end
    entry do
      name '--clear-token-service'
      notes <<-'END'
      Clears the token service before using it. This allows simulating the expiration of credentials during testing. 
      END
    end
    entry do
      name '--cloud-print-file'
      notes <<-'END'
      Tells chrome to display the cloud print dialog and upload the specified file for printing. 
      END
    end
    entry do
      name '--cloud-print-file-type'
      notes <<-'END'
      Specifies the mime type to be used when uploading data from the file referenced by cloud-print-file. Defaults to "application/pdf" if unspecified. 
      END
    end
    entry do
      name '--cloud-print-job-title'
      notes <<-'END'
      Used with kCloudPrintFile to specify a title for the resulting print job. 
      END
    end
    entry do
      name '--cloud-print-print-ticket'
      notes <<-'END'
      Used with kCloudPrintFile to specify a JSON print ticket for the resulting print job. Defaults to null if unspecified. 
      END
    end
    entry do
      name '--cloud-print-setup-proxy'
      notes <<-'END'
      Setup cloud print proxy for provided printers. This does not start service or register proxy for autostart. 
      END
    end
    entry do
      name '--cloud-print-url'
      notes <<-'END'
      The URL of the cloud print service to use, overrides any value stored in preferences, and the default. Only used if the cloud print service has been enabled. Used for testing. 
      END
    end
    entry do
      name '--cloud-print-xmpp-endpoint'
      notes <<-'END'
      The XMPP endpoint the cloud print service will use. Only used if the cloud print service has been enabled. Used for testing. 
      END
    end
    entry do
      name '--compensate-for-unstable-pinch-zoom'
      notes <<-'END'
      Enable compensation for unstable pinch zoom. Some touch screens display significant amount of wobble when moving a finger in a straight line. This makes two finger scroll trigger an oscillating pinch zoom. See crbug.com/394380 for details. 
      END
    end
    entry do
      name '--compile-shader-always-succeeds'
      notes <<-'END'
      Always return success when compiling a shader. Linking will still fail. 
      END
    end
    entry do
      name '--component-updater'
      notes <<-'END'
      Comma-separated options to troubleshoot the component updater. Only valid for the browser process. 
      END
    end
    entry do
      name '--connectivity-check-url'
      notes <<-'END'
      Url for network connectivity checking. Default is "https://clients3.google.com/generate_204". 
      END
    end
    entry do
      name '--conservative'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--content-image-texture-target'
      notes <<-'END'
      Texture target for CHROMIUM_image backed content textures. 
      END
    end
    entry do
      name '--content-shell-host-window-size'
      notes <<-'END'
      Size for the content_shell's host window (i.e. "800x600"). 
      END
    end
    entry do
      name '--controller'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--crash-dumps-dir'
      notes <<-'END'
      The directory breakpad should store minidumps in. 
      END
    end
    entry do
      name '--crash-on-failure'
      notes <<-'END'
      When specified to "enable-leak-detection" command-line option, causes the leak detector to cause immediate crash when found leak. 
      END
    end
    entry do
      name '--crash-on-hang-threads'
      notes <<-'END'
      Comma-separated list of BrowserThreads that cause browser process to crash if the given browser thread is not responsive. UI,IO,DB,FILE,CACHE are the list of BrowserThreads that are supported.  For example: --crash-on-hang-threads=UI:3:18,IO:3:18 --&gt; Crash the browser if UI or IO is not responsive for 18 seconds and the number of browser threads that are responding is less than or equal to 3. 
      END
    end
    entry do
      name '--crash-server-url'
      notes <<-'END'
      Server url to upload crash data to. Default is "http://clients2.google.com/cr/report" for prod devices. Default is "http://clients2.google.com/cr/staging_report" for non prod. 
      END
    end
    entry do
      name '--crash-test'
      notes <<-'END'
      Causes the browser process to crash on startup. 
      END
    end
    entry do
      name '--crashpad-handler'
      notes <<-'END'
      A process type (switches::kProcessType) that indicates chrome.exe or setup.exe is being launched as crashpad_handler. This is only used on Windows. We bundle the handler into chrome.exe on Windows because there is high probability of a "new" .exe being blocked or interfered with by application firewalls, AV software, etc. On other platforms, crashpad_handler is a standalone executable. 
      END
    end
    entry do
      name '--create-browser-on-startup-for-tests'
      notes <<-'END'
      Some platforms like ChromeOS default to empty desktop. Browser tests may need to add this switch so that at least one browser instance is created on startup. TODO(nkostylev): Investigate if this switch could be removed. (http://crbug.com/148675) 
      END
    end
    entry do
      name '--create-default-gl-context'
      notes <<-'END'
      Ask the GLX driver for the default context instead of trying to get the highest version possible. 
      END
    end
    entry do
      name '--cros-region'
      notes <<-'END'
      Forces CrOS region value. 
      END
    end
    entry do
      name '--cros-regions-mode'
      notes <<-'END'
      Control regions data load ("" is default). 
      END
    end
    entry do
      name '--crosh-command'
      notes <<-'END'
      ```
      The constant OS_CHROMEOS must be defined.
      ```
      Custom crosh command. 
      END
    end
    entry do
      name '--cryptauth-http-host'
      notes <<-'END'
      Overrides the default URL for Google APIs (https://www.googleapis.com) used by CryptAuth. 
      END
    end
    entry do
      name '--custom-devtools-frontend'
      notes <<-'END'
      Specify a custom path to devtools for devtools tests 
      END
    end
    entry do
      name '--custom-launcher-page'
      notes <<-'END'
      Specifies the chrome-extension:// URL for the contents of an additional page added to the app launcher. 
      END
    end
    entry do
      name '--custom_summary'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Forces a custom summary to be displayed below the update menu item. 
      END
    end
    entry do
      name '--d3d11'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--d3d9'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--daemon'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--dark_muted'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--dark_vibrant'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--data-path'
      notes <<-'END'
      Makes Content Shell use the given path for its data directory. 
      END
    end
    entry do
      name '--data-reduction-proxy-config-url'
      notes <<-'END'
      The URL from which to retrieve the Data Reduction Proxy configuration. 
      END
    end
    entry do
      name '--data-reduction-proxy-enable-quic-on-non-core-proxies'
      notes <<-'END'
      If set, enables use of QUIC with non core data reduction proxies. 
      END
    end
    entry do
      name '--data-reduction-proxy-experiment'
      notes <<-'END'
      The name of a Data Reduction Proxy experiment to run. These experiments are defined by the proxy server. Use --force-fieldtrials for Data Reduction Proxy field trials. 
      END
    end
    entry do
      name '--data-reduction-proxy-http-proxies'
      notes <<-'END'
      The semicolon-separated list of proxy server URIs to override the list of HTTP proxies returned by the Data Saver API. It is illegal to use |kDataReductionProxy| or |kDataReductionProxyFallback| switch in conjunction with |kDataReductionProxyHttpProxies|. If the URI omits a scheme, then the proxy server scheme defaults to HTTP, and if the port is omitted then the default port for that scheme is used. E.g. "http://foo.net:80", "http://foo.net", "foo.net:80", and "foo.net" are all equivalent. 
      END
    end
    entry do
      name '--data-reduction-proxy-lo-fi'
      notes <<-'END'
      The mode for Data Reduction Proxy Lo-Fi. The various modes are always-on, cellular-only, slow connections only and disabled. 
      END
    end
    entry do
      name '--data-reduction-proxy-pingback-url'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--data-reduction-proxy-secure-proxy-check-url'
      notes <<-'END'
      Sets a secure proxy check URL to test before committing to using the Data Reduction Proxy. Note this check does not go through the Data Reduction Proxy. 
      END
    end
    entry do
      name '--data-reduction-proxy-server-experiments-disabled'
      notes <<-'END'
      Disables server experiments that may be enabled through field trial. 
      END
    end
    entry do
      name '--data-reduction-proxy-warmup-url'
      notes <<-'END'
      Sets a URL to fetch to warm up the data reduction proxy on startup and network changes. 
      END
    end
    entry do
      name '--dbus-stub'
      notes <<-'END'
      Forces the stub implementation of dbus clients. 
      END
    end
    entry do
      name '--debug-devtools'
      notes <<-'END'
      Run devtools tests in debug mode (not bundled and minified) 
      END
    end
    entry do
      name '--debug-enable-frame-toggle'
      notes <<-'END'
      Enables a frame context menu item that toggles the frame in and out of glass mode (Windows Vista and up only). 
      END
    end
    entry do
      name '--debug-packed-apps'
      notes <<-'END'
      Adds debugging entries such as Inspect Element to context menus of packed apps. 
      END
    end
    entry do
      name '--debug-print'
      notes <<-'END'
      ```
      The constant OFFICIAL_BUILD must not be defined, and the constant BUILDFLAG(ENABLE_PRINT_PREVIEW) must be defined.
      ```
      Enables support to debug printing subsystem. 
      END
    end
    entry do
      name '--default'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--default-tile-height'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--default-tile-width'
      notes <<-'END'
      Sets the tile size used by composited layers. 
      END
    end
    entry do
      name '--default-wallpaper-is-oem'
      notes <<-'END'
      Indicates that the wallpaper images specified by kAshDefaultWallpaper{Large,Small} are OEM-specific (i.e. they are not downloadable from Google). 
      END
    end
    entry do
      name '--default-wallpaper-large'
      notes <<-'END'
      Default large wallpaper to use (as path to trusted, non-user-writable JPEG file). 
      END
    end
    entry do
      name '--default-wallpaper-small'
      notes <<-'END'
      Default small wallpaper to use (as path to trusted, non-user-writable JPEG file). 
      END
    end
    entry do
      name '--demo'
      notes <<-'END'
      Optional value for Data Saver prompt on cellular networks. 
      END
    end
    entry do
      name '--derelict-detection-timeout'
      notes <<-'END'
      Time in seconds before a machine at OOBE is considered derelict. 
      END
    end
    entry do
      name '--derelict-idle-timeout'
      notes <<-'END'
      Time in seconds before a derelict machines starts demo mode. 
      END
    end
    entry do
      name '--desktop'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--desktop-window-1080p'
      notes <<-'END'
      When present, desktop cast_shell will create 1080p window (provided display resolution is high enough).  Otherwise, cast_shell defaults to 720p. 
      END
    end
    entry do
      name '--deterministic-fetch'
      notes <<-'END'
      Instructs headless_shell to cause network fetches to complete in order of creation. This removes a significant source of network related non-determinism at the cost of slower page loads. 
      END
    end
    entry do
      name '--device-management-url'
      notes <<-'END'
      Specifies the URL at which to fetch configuration policy from the device management backend. 
      END
    end
    entry do
      name '--device-scale-factor'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Device scale factor passed to certain processes like renderers, etc. 
      END
    end
    entry do
      name '--devtools-flags'
      notes <<-'END'
      Passes command line parameters to the DevTools front-end. 
      END
    end
    entry do
      name '--diagnostics'
      notes <<-'END'
      Triggers a plethora of diagnostic modes. 
      END
    end
    entry do
      name '--diagnostics-format'
      notes <<-'END'
      Sets the output format for diagnostic modes enabled by diagnostics flag. 
      END
    end
    entry do
      name '--diagnostics-recovery'
      notes <<-'END'
      Tells the diagnostics mode to do the requested recovery step(s). 
      END
    end
    entry do
      name '--disable'
      notes <<-'END'
      Values for the kShowSavedCopy flag. 
      END
    end
    entry do
      name '--disable-2d-canvas-clip-aa'
      notes <<-'END'
      Disable antialiasing on 2d canvas clips 
      END
    end
    entry do
      name '--disable-2d-canvas-image-chromium'
      notes <<-'END'
      Disables Canvas2D rendering into a scanout buffer for overlay support. 
      END
    end
    entry do
      name '--disable-3d-apis'
      notes <<-'END'
      Disables client-visible 3D APIs, in particular WebGL and Pepper 3D. This is controlled by policy and is kept separate from the other enable/disable switches to avoid accidentally regressing the policy support for controlling access to these APIs. 
      END
    end
    entry do
      name '--disable-accelerated-2d-canvas'
      notes <<-'END'
      Disable gpu-accelerated 2d canvas. 
      END
    end
    entry do
      name '--disable-accelerated-jpeg-decoding'
      notes <<-'END'
      Disable partially decoding jpeg images using the GPU. At least YUV decoding will be accelerated when not using this flag. Has no effect unless GPU rasterization is enabled. 
      END
    end
    entry do
      name '--disable-accelerated-mjpeg-decode'
      notes <<-'END'
      Disable hardware acceleration of mjpeg decode for captured frame, where available. 
      END
    end
    entry do
      name '--disable-accelerated-video-decode'
      notes <<-'END'
      Disables hardware acceleration of video decode, where available. 
      END
    end
    entry do
      name '--disable-account-consistency'
      notes <<-'END'
      Disables consistent identity features. 
      END
    end
    entry do
      name '--disable-add-to-shelf'
      notes <<-'END'
      Disables the display of a banner allowing the user to add a web app to their shelf (or platform-specific equivalent) 
      END
    end
    entry do
      name '--disable-app-info-dialog-mac'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Disable the toolkit-views App Info dialog for Mac. 
      END
    end
    entry do
      name '--disable-app-list-dismiss-on-blur'
      notes <<-'END'
      If set, the app list will not be dismissed when it loses focus. This is useful when testing the app list or a custom launcher page. It can still be dismissed via the other methods (like the Esc key). 
      END
    end
    entry do
      name '--disable-app-window-cycling'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Disables custom Cmd+` window cycling for platform apps and hosted apps. 
      END
    end
    entry do
      name '--disable-appcontainer'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-arc-data-wipe'
      notes <<-'END'
      Disables android user data wipe on opt out. 
      END
    end
    entry do
      name '--disable-arc-opt-in-verification'
      notes <<-'END'
      Disables ARC Opt-in verification process and ARC is enabled by default. 
      END
    end
    entry do
      name '--disable-audio-support-for-desktop-share'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-autofill-keyboard-accessory-view'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Disables showing suggestions in a keyboard accessory view. 
      END
    end
    entry do
      name '--disable-avfoundation-overlays'
      notes <<-'END'
      ```
      The constant OS_IOS must not be defined, and the constant OS_MACOSX must be defined.
      ```
      Disable use of AVFoundation to draw video content. 
      END
    end
    entry do
      name '--disable-background-networking'
      notes <<-'END'
      Disable several subsystems which run network requests in the background. This is for use when doing network performance testing to avoid noise in the measurements. 
      END
    end
    entry do
      name '--disable-background-timer-throttling'
      notes <<-'END'
      Disable task throttling of timer tasks from background pages. 
      END
    end
    entry do
      name '--disable-backing-store-limit'
      notes <<-'END'
      Disable limits on the number of backing stores. Can prevent blinking for users with many windows/tabs and lots of memory. 
      END
    end
    entry do
      name '--disable-blink-features'
      notes <<-'END'
      Disable one or more Blink runtime-enabled features. Use names from RuntimeEnabledFeatures.json5, separated by commas. Applied after kEnableBlinkFeatures, and after other flags that change these features. 
      END
    end
    entry do
      name '--disable-boot-animation'
      notes <<-'END'
      Disables wallpaper boot animation (except of OOBE case). 
      END
    end
    entry do
      name '--disable-breakpad'
      notes <<-'END'
      Disables the crash reporting. 
      END
    end
    entry do
      name '--disable-browser-task-scheduler'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-bundled-ppapi-flash'
      notes <<-'END'
      Disables the bundled PPAPI version of Flash. 
      END
    end
    entry do
      name '--disable-canvas-aa'
      notes <<-'END'
      Disable antialiasing on 2d canvas. 
      END
    end
    entry do
      name '--disable-captive-portal-bypass-proxy'
      notes <<-'END'
      Disables bypass proxy for captive portal authorization. 
      END
    end
    entry do
      name '--disable-cast-streaming-hw-encoding'
      notes <<-'END'
      Disable hardware encoding support for Cast Streaming. 
      END
    end
    entry do
      name '--disable-clear-browsing-data-counters'
      notes <<-'END'
      Disables data volume counters in the Clear Browsing Data dialog. 
      END
    end
    entry do
      name '--disable-client-side-phishing-detection'
      notes <<-'END'
      Disables the client-side phishing detection feature. Note that even if client-side phishing detection is enabled, it will only be active if the user has opted in to UMA stats and SafeBrowsing is enabled in the preferences. 
      END
    end
    entry do
      name '--disable-cloud-import'
      notes <<-'END'
      Disables cloud backup feature. 
      END
    end
    entry do
      name '--disable-component-cloud-policy'
      notes <<-'END'
      Disables fetching and storing cloud policy for components. 
      END
    end
    entry do
      name '--disable-component-extensions-with-background-pages'
      notes <<-'END'
      Disable default component extensions with background pages - useful for performance tests where these pages may interfere with perf results. 
      END
    end
    entry do
      name '--disable-component-update'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-composited-antialiasing'
      notes <<-'END'
      Disables layer-edge anti-aliasing in the compositor. 
      END
    end
    entry do
      name '--disable-contextual-search'
      notes <<-'END'
      Disables Contextual Search. 
      END
    end
    entry do
      name '--disable-d3d11'
      notes <<-'END'
      Disables use of D3D11. 
      END
    end
    entry do
      name '--disable-databases'
      notes <<-'END'
      Disables HTML5 DB support. 
      END
    end
    entry do
      name '--disable-datasaver-prompt'
      notes <<-'END'
      Disables Data Saver prompt on cellular networks. 
      END
    end
    entry do
      name '--disable-default-apps'
      notes <<-'END'
      Disables installation of default apps on first run. This is used during automated testing. 
      END
    end
    entry do
      name '--disable-demo-mode'
      notes <<-'END'
      Disables the Chrome OS demo. 
      END
    end
    entry do
      name '--disable-device-disabling'
      notes <<-'END'
      If this switch is set, the device cannot be remotely disabled by its owner. 
      END
    end
    entry do
      name '--disable-device-discovery-notifications'
      notes <<-'END'
      Disables device discovery notifications. 
      END
    end
    entry do
      name '--disable-dinosaur-easter-egg'
      notes <<-'END'
      Disables the dinosaur easter egg on the offline interstitial. 
      END
    end
    entry do
      name '--disable-direct-composition'
      notes <<-'END'
      Disables the use of DirectComposition to draw to the screen. 
      END
    end
    entry do
      name '--disable-directwrite-for-ui'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Disables DirectWrite font rendering for general UI elements. 
      END
    end
    entry do
      name '--disable-display-color-calibration'
      notes <<-'END'
      ```
      The constant OS_CHROMEOS must be defined.
      ```
      No description 
      END
    end
    entry do
      name '--disable-display-list-2d-canvas'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-distance-field-text'
      notes <<-'END'
      Disables distance field text. 
      END
    end
    entry do
      name '--disable-domain-blocking-for-3d-apis'
      notes <<-'END'
      Disable the per-domain blocking for 3D APIs after GPU reset. This switch is intended only for tests. 
      END
    end
    entry do
      name '--disable-domain-reliability'
      notes <<-'END'
      Disables Domain Reliability Monitoring. 
      END
    end
    entry do
      name '--disable-download-image-renaming'
      notes <<-'END'
      Disables the string change from "Save Image" to "Download Image". 
      END
    end
    entry do
      name '--disable-drive-search-in-app-launcher'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-dwm-composition'
      notes <<-'END'
      Disables use of DWM composition for top level windows. 
      END
    end
    entry do
      name '--disable-eol-notification'
      notes <<-'END'
      Disables notification when device is in end of life status. 
      END
    end
    entry do
      name '--disable-es3-apis'
      notes <<-'END'
      Disable OpenGL ES 3 APIs. This in turn will disable WebGL2. 
      END
    end
    entry do
      name '--disable-es3-gl-context'
      notes <<-'END'
      Disables use of ES3 backend (use ES2 backend instead). 
      END
    end
    entry do
      name '--disable-extensions'
      notes <<-'END'
      Disable extensions. 
      END
    end
    entry do
      name '--disable-extensions-except'
      notes <<-'END'
      Disable extensions except those specified in a comma-separated list. 
      END
    end
    entry do
      name '--disable-extensions-file-access-check'
      notes <<-'END'
      Disable checking for user opt-in for extensions that want to inject script into file URLs (ie, always allow it). This is used during automated testing. 
      END
    end
    entry do
      name '--disable-extensions-http-throttling'
      notes <<-'END'
      Disable the net::URLRequestThrottlerManager functionality for requests originating from extensions. 
      END
    end
    entry do
      name '--disable-fast-web-scroll-view-insets'
      notes <<-'END'
      Disables a workaround for fast inset updates for UIWebView.scrollView. 
      END
    end
    entry do
      name '--disable-features'
      notes <<-'END'
      Lists separated by commas the name of features to disable. See base::FeatureList::InitializeFromCommandLine for details. 
      END
    end
    entry do
      name '--disable-field-trial-config'
      notes <<-'END'
      Disable field trial tests configured in fieldtrial_testing_config.json. 
      END
    end
    entry do
      name '--disable-file-system'
      notes <<-'END'
      Disable FileSystem API. 
      END
    end
    entry do
      name '--disable-flash-3d'
      notes <<-'END'
      Disable 3D inside of flapper. 
      END
    end
    entry do
      name '--disable-flash-stage3d'
      notes <<-'END'
      Disable Stage3D inside of flapper. 
      END
    end
    entry do
      name '--disable-fullscreen-low-power-mode'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Disables fullscreen low power mode on Mac. 
      END
    end
    entry do
      name '--disable-fullscreen-tab-detaching'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Disables tab detaching in fullscreen mode on Mac. 
      END
    end
    entry do
      name '--disable-gaia-services'
      notes <<-'END'
      Disables GAIA services such as enrollment and OAuth session restore. Used by 'fake' telemetry login. 
      END
    end
    entry do
      name '--disable-gesture-editing'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-gesture-requirement-for-media-playback'
      notes <<-'END'
      Disable user gesture requirement for media playback. 
      END
    end
    entry do
      name '--disable-gesture-requirement-for-presentation'
      notes <<-'END'
      Disable user gesture requirement for presentation. 
      END
    end
    entry do
      name '--disable-gesture-typing'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-gl-drawing-for-tests'
      notes <<-'END'
      Disables GL drawing operations which produce pixel output. With this the GL output will not be correct but tests will run faster. 
      END
    end
    entry do
      name '--disable-gl-error-limit'
      notes <<-'END'
      Disable the GL error log limit. 
      END
    end
    entry do
      name '--disable-gl-extensions'
      notes <<-'END'
      Disables specified comma separated GL Extensions if found. 
      END
    end
    entry do
      name '--disable-glsl-translator'
      notes <<-'END'
      Disable the GLSL translator. 
      END
    end
    entry do
      name '--disable-gpu'
      notes <<-'END'
      Disables GPU hardware acceleration.  If software renderer is not in place, then the GPU process won't launch. 
      END
    end
    entry do
      name '--disable-gpu-async-worker-context'
      notes <<-'END'
      Disable async GL worker context. Overrides kEnableGpuAsyncWorkerContext. 
      END
    end
    entry do
      name '--disable-gpu-compositing'
      notes <<-'END'
      Prevent the compositor from using its GPU implementation. 
      END
    end
    entry do
      name '--disable-gpu-driver-bug-workarounds'
      notes <<-'END'
      Disable workarounds for various GPU driver bugs. 
      END
    end
    entry do
      name '--disable-gpu-early-init'
      notes <<-'END'
      Disable proactive early init of GPU process. 
      END
    end
    entry do
      name '--disable-gpu-memory-buffer-compositor-resources'
      notes <<-'END'
      Do not force that all compositor resources be backed by GPU memory buffers. 
      END
    end
    entry do
      name '--disable-gpu-memory-buffer-video-frames'
      notes <<-'END'
      Disable GpuMemoryBuffer backed VideoFrames. 
      END
    end
    entry do
      name '--disable-gpu-process-crash-limit'
      notes <<-'END'
      Disable the limit on the number of times the GPU process may be restarted. For tests and platforms where software fallback is disabled. 
      END
    end
    entry do
      name '--disable-gpu-program-cache'
      notes <<-'END'
      Turn off gpu program caching 
      END
    end
    entry do
      name '--disable-gpu-rasterization'
      notes <<-'END'
      Disable GPU rasterization, i.e. rasterize on the CPU only. Overrides the kEnableGpuRasterization and kForceGpuRasterization flags. 
      END
    end
    entry do
      name '--disable-gpu-sandbox'
      notes <<-'END'
      Disable the GPU process sandbox. 
      END
    end
    entry do
      name '--disable-gpu-shader-disk-cache'
      notes <<-'END'
      Disables the GPU shader on disk cache. 
      END
    end
    entry do
      name '--disable-gpu-vsync'
      notes <<-'END'
      Stop the GPU from synchronizing on the vsync before presenting. We can select from the options below: beginframe: Next frame can start without any delay on cc::scheduler in renderer compositors. gpu: Disable display and browser vsync. default: Set both flags. 
      END
    end
    entry do
      name '--disable-gpu-watchdog'
      notes <<-'END'
      Disable the thread that crashes the GPU process if it stops responding to messages. 
      END
    end
    entry do
      name '--disable-hang-monitor'
      notes <<-'END'
      Suppresses hang monitor dialogs in renderer processes.  This may allow slow unload handlers on a page to prevent the tab from closing, but the Task Manager can be used to terminate the offending process in this case. 
      END
    end
    entry do
      name '--disable-hid-detection-on-oobe'
      notes <<-'END'
      Disables HID-detection OOBE screen. 
      END
    end
    entry do
      name '--disable-hide-inactive-stacked-tab-close-buttons'
      notes <<-'END'
      Disable hiding the close buttons of inactive tabs when the tabstrip is in stacked mode. 
      END
    end
    entry do
      name '--disable-histogram-customizer'
      notes <<-'END'
      Disable the RenderThread's HistogramCustomizer. 
      END
    end
    entry do
      name '--disable-hosted-app-shim-creation'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Disables app shim creation for hosted apps on Mac. 
      END
    end
    entry do
      name '--disable-hosted-apps-in-windows'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Prevents hosted apps from being opened in windows on Mac. 
      END
    end
    entry do
      name '--disable-http2'
      notes <<-'END'
      Disables the HTTP/2 protocol. 
      END
    end
    entry do
      name '--disable-in-process-stack-traces'
      notes <<-'END'
      Disable in-process stack traces. 
      END
    end
    entry do
      name '--disable-infobars'
      notes <<-'END'
      Prevent infobars from appearing. 
      END
    end
    entry do
      name '--disable-input-view'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-ios-password-generation'
      notes <<-'END'
      Disable password generation for iOS. 
      END
    end
    entry do
      name '--disable-ios-password-suggestions'
      notes <<-'END'
      Disable showing available password credentials in the keyboard accessory view when focused on form fields. 
      END
    end
    entry do
      name '--disable-ios-physical-web'
      notes <<-'END'
      Disables Physical Web scanning for nearby URLs. 
      END
    end
    entry do
      name '--disable-javascript-harmony-shipping'
      notes <<-'END'
      Disable latest shipping ECMAScript 6 features. 
      END
    end
    entry do
      name '--disable-kill-after-bad-ipc'
      notes <<-'END'
      Don't kill a child process when it sends a bad IPC message.  Apart from testing, it is a bad idea from a security perspective to enable this switch. 
      END
    end
    entry do
      name '--disable-lcd-text'
      notes <<-'END'
      Disables LCD text. 
      END
    end
    entry do
      name '--disable-legacy-window'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Disable the Legacy Window which corresponds to the size of the WebContents. 
      END
    end
    entry do
      name '--disable-local-storage'
      notes <<-'END'
      Disable LocalStorage. 
      END
    end
    entry do
      name '--disable-logging'
      notes <<-'END'
      Force logging to be disabled.  Logging is enabled by default in debug builds. 
      END
    end
    entry do
      name '--disable-login-animations'
      notes <<-'END'
      Avoid doing expensive animations upon login. 
      END
    end
    entry do
      name '--disable-low-end-device-mode'
      notes <<-'END'
      Force disabling of low-end device mode when set. 
      END
    end
    entry do
      name '--disable-low-latency-dxva'
      notes <<-'END'
      Disables using CODECAPI_AVLowLatencyMode when creating DXVA decoders. 
      END
    end
    entry do
      name '--disable-low-res-tiling'
      notes <<-'END'
      When using CPU rasterizing disable low resolution tiling. This uses less power, particularly during animations, but more white may be seen during fast scrolling especially on slower devices. 
      END
    end
    entry do
      name '--disable-lru-snapshot-cache'
      notes <<-'END'
      Disable the snapshots lru cache. 
      END
    end
    entry do
      name '--disable-mac-overlays'
      notes <<-'END'
      ```
      The constant OS_IOS must not be defined, and the constant OS_MACOSX must be defined.
      ```
      Fall back to using CAOpenGLLayers display content, instead of the IOSurface based overlay display path. 
      END
    end
    entry do
      name '--disable-mac-views-native-app-windows'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Disables use of toolkit-views based native app windows. 
      END
    end
    entry do
      name '--disable-main-frame-before-activation'
      notes <<-'END'
      Disables sending the next BeginMainFrame before the previous commit activates. Overrides the kEnableMainFrameBeforeActivation flag. 
      END
    end
    entry do
      name '--disable-md-oobe'
      notes <<-'END'
      Disables material design OOBE UI. 
      END
    end
    entry do
      name '--disable-media-session-api'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Disable Media Session API 
      END
    end
    entry do
      name '--disable-media-suspend'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-merge-key-char-events'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Disables merging the key event (WM_KEY*) with the char event (WM_CHAR). 
      END
    end
    entry do
      name '--disable-minimize-on-second-launcher-item-click'
      notes <<-'END'
      Disable the behavior that the second click on a launcher item (the click when the item is already active) minimizes the item. 
      END
    end
    entry do
      name '--disable-mojo-renderer'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_RUNTIME_MEDIA_RENDERER_SELECTION) must be defined.
      ```
      Rather than use the renderer hosted remotely in the media service, fall back to the default renderer within content_renderer. Does not change the behavior of the media service. 
      END
    end
    entry do
      name '--disable-mtp-write-support'
      notes <<-'END'
      Disables mtp write support. 
      END
    end
    entry do
      name '--disable-multi-display-layout'
      notes <<-'END'
      Disables the multiple display layout UI. 
      END
    end
    entry do
      name '--disable-namespace-sandbox'
      notes <<-'END'
      Disables usage of the namespace sandbox. 
      END
    end
    entry do
      name '--disable-native-gpu-memory-buffers'
      notes <<-'END'
      Disables native GPU memory buffer support. 
      END
    end
    entry do
      name '--disable-network-portal-notification'
      notes <<-'END'
      Disables notifications about captive portals in session. 
      END
    end
    entry do
      name '--disable-new-bookmark-apps'
      notes <<-'END'
      Disables the new bookmark app system. 
      END
    end
    entry do
      name '--disable-new-channel-switcher-ui'
      notes <<-'END'
      Disables new channel switcher UI. 
      END
    end
    entry do
      name '--disable-new-kiosk-ui'
      notes <<-'END'
      Disables new Kiosk UI when kiosk apps are represented as user pods. 
      END
    end
    entry do
      name '--disable-new-korean-ime'
      notes <<-'END'
      Disables the new Korean IME in chrome://settings/languages. 
      END
    end
    entry do
      name '--disable-new-profile-management'
      notes <<-'END'
      Disables new profile management system, including new profile chooser UI. 
      END
    end
    entry do
      name '--disable-new-zip-unpacker'
      notes <<-'END'
      Disables the new File System Provider API based ZIP unpacker. 
      END
    end
    entry do
      name '--disable-notifications'
      notes <<-'END'
      Disables the Web Notification and the Push APIs. 
      END
    end
    entry do
      name '--disable-ntp-popular-sites'
      notes <<-'END'
      Disables showing popular sites on the NTP. 
      END
    end
    entry do
      name '--disable-nv12-dxgi-video'
      notes <<-'END'
      Disables the video decoder from drawing to an NV12 textures instead of ARGB. 
      END
    end
    entry do
      name '--disable-offer-store-unmasked-wallet-cards'
      notes <<-'END'
      Force hiding the local save checkbox in the autofill dialog box for getting the full credit card number for a wallet card. The card will never be stored locally. 
      END
    end
    entry do
      name '--disable-offer-upload-credit-cards'
      notes <<-'END'
      Disables offering to upload credit cards. 
      END
    end
    entry do
      name '--disable-office-editing-component-extension'
      notes <<-'END'
      Disables Office Editing for Docs, Sheets & Slides component app so handlers won't be registered, making it possible to install another version for testing. 
      END
    end
    entry do
      name '--disable-offline-auto-reload'
      notes <<-'END'
      Disable auto-reload of error pages if offline. 
      END
    end
    entry do
      name '--disable-offline-auto-reload-visible-only'
      notes <<-'END'
      Disable only auto-reloading error pages when the tab is visible. 
      END
    end
    entry do
      name '--disable-overlay-scrollbar'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-overscroll-edge-effect'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Disable overscroll edge effects like those found in Android views. 
      END
    end
    entry do
      name '--disable-panel-fitting'
      notes <<-'END'
      ```
      The constant OS_CHROMEOS must be defined.
      ```
      Disables panel fitting (used for mirror mode). 
      END
    end
    entry do
      name '--disable-partial-raster'
      notes <<-'END'
      Disable partial raster in the renderer. Disabling this switch also disables the use of persistent gpu memory buffers. 
      END
    end
    entry do
      name '--disable-password-generation'
      notes <<-'END'
      Disables password generation when we detect that the user is going through account creation. 
      END
    end
    entry do
      name '--disable-payment-request'
      notes <<-'END'
      Disable the Payment Request API. 
      END
    end
    entry do
      name '--disable-pepper-3d'
      notes <<-'END'
      Disable Pepper3D. 
      END
    end
    entry do
      name '--disable-pepper-3d-image-chromium'
      notes <<-'END'
      Disable Image Chromium for Pepper 3d. 
      END
    end
    entry do
      name '--disable-per-monitor-dpi'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Disables per monitor DPI for supported Windows versions. This flag overrides kEnablePerMonitorDpi. 
      END
    end
    entry do
      name '--disable-permission-action-reporting'
      notes <<-'END'
      Disables permission action reporting to Safe Browsing servers for opted in users. 
      END
    end
    entry do
      name '--disable-permissions-api'
      notes <<-'END'
      Disables the Permissions API. 
      END
    end
    entry do
      name '--disable-physical-keyboard-autocorrect'
      notes <<-'END'
      Disables suggestions while typing on a physical keyboard. 
      END
    end
    entry do
      name '--disable-pinch'
      notes <<-'END'
      Disables compositor-accelerated touch-screen pinch gestures. 
      END
    end
    entry do
      name '--disable-pnacl-crash-throttling'
      notes <<-'END'
      Disables crash throttling for Portable Native Client. 
      END
    end
    entry do
      name '--disable-popup-blocking'
      notes <<-'END'
      Disable pop-up blocking. 
      END
    end
    entry do
      name '--disable-prefer-compositing-to-lcd-text'
      notes <<-'END'
      Disable the creation of compositing layers when it would prevent LCD text. 
      END
    end
    entry do
      name '--disable-presentation-api'
      notes <<-'END'
      Disables the Presentation API. 
      END
    end
    entry do
      name '--disable-print-preview'
      notes <<-'END'
      Disables print preview (For testing, and for users who don't like us. :[ ) 
      END
    end
    entry do
      name '--disable-prompt-on-repost'
      notes <<-'END'
      Normally when the user attempts to navigate to a page that was the result of a post we prompt to make sure they want to. This switch may be used to disable that check. This switch is used during automated testing. 
      END
    end
    entry do
      name '--disable-pull-to-refresh-effect'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Disable the pull-to-refresh effect when vertically overscrolling content. 
      END
    end
    entry do
      name '--disable-push-api-background-mode'
      notes <<-'END'
      Enable background mode for the Push API. 
      END
    end
    entry do
      name '--disable-quic'
      notes <<-'END'
      Disables the QUIC protocol. 
      END
    end
    entry do
      name '--disable-reading-from-canvas'
      notes <<-'END'
      Taints all &lt;canvas&gt; elements, regardless of origin. 
      END
    end
    entry do
      name '--disable-remote-core-animation'
      notes <<-'END'
      ```
      The constant OS_IOS must not be defined, and the constant OS_MACOSX must be defined.
      ```
      Disable use of cross-process CALayers to display content directly from the GPU process on Mac. 
      END
    end
    entry do
      name '--disable-remote-fonts'
      notes <<-'END'
      Disables remote web font support. SVG font should always work whether this option is specified or not. 
      END
    end
    entry do
      name '--disable-remote-playback-api'
      notes <<-'END'
      Disables the RemotePlayback API. 
      END
    end
    entry do
      name '--disable-renderer-accessibility'
      notes <<-'END'
      Turns off the accessibility in the renderer. 
      END
    end
    entry do
      name '--disable-renderer-backgrounding'
      notes <<-'END'
      Prevent renderer process backgrounding when set. 
      END
    end
    entry do
      name '--disable-renderer-priority-management'
      notes <<-'END'
      No not manage renderer process priority at all when set. 
      END
    end
    entry do
      name '--disable-resize-lock'
      notes <<-'END'
      Whether the resize lock is disabled. Default is false. This is generally only useful for tests that want to force disabling. 
      END
    end
    entry do
      name '--disable-rgba-4444-textures'
      notes <<-'END'
      Disables RGBA_4444 textures. 
      END
    end
    entry do
      name '--disable-rollback-option'
      notes <<-'END'
      Disables rollback option on reset screen. 
      END
    end
    entry do
      name '--disable-rtc-smoothness-algorithm'
      notes <<-'END'
      Disables the new rendering algorithm for webrtc, which is designed to improve the rendering smoothness. 
      END
    end
    entry do
      name '--disable-screen-orientation-lock'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Disable the locking feature of the screen orientation API. 
      END
    end
    entry do
      name '--disable-search-geolocation-disclosure'
      notes <<-'END'
      Disables showing the search geolocation disclosure UI. Used for perf testing. 
      END
    end
    entry do
      name '--disable-seccomp-filter-sandbox'
      notes <<-'END'
      Disable the seccomp filter sandbox (seccomp-bpf) (Linux only). 
      END
    end
    entry do
      name '--disable-settings-window'
      notes <<-'END'
      Disable settings in a separate browser window per profile (see SettingsWindowEnabled() below). 
      END
    end
    entry do
      name '--disable-setuid-sandbox'
      notes <<-'END'
      Disable the setuid sandbox (Linux only). 
      END
    end
    entry do
      name '--disable-shader-name-hashing'
      notes <<-'END'
      Turn off user-defined name hashing in shaders. 
      END
    end
    entry do
      name '--disable-shared-workers'
      notes <<-'END'
      Disable shared workers. 
      END
    end
    entry do
      name '--disable-signin-scoped-device-id'
      notes <<-'END'
      Disables sending signin scoped device id to LSO with refresh token request. 
      END
    end
    entry do
      name '--disable-single-click-autofill'
      notes <<-'END'
      The "disable" flag for kEnableSingleClickAutofill. 
      END
    end
    entry do
      name '--disable-slimming-paint-invalidation'
      notes <<-'END'
      Disable paint invalidation based on slimming paint. See kEnableSlimmingPaintInvalidation. 
      END
    end
    entry do
      name '--disable-smart-virtual-keyboard'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-smooth-scrolling'
      notes <<-'END'
      Disable smooth scrolling for testing. 
      END
    end
    entry do
      name '--disable-software-rasterizer'
      notes <<-'END'
      Disables the use of a 3D software rasterizer. 
      END
    end
    entry do
      name '--disable-speech-api'
      notes <<-'END'
      Disables the Web Speech API. 
      END
    end
    entry do
      name '--disable-suggestions-ui'
      notes <<-'END'
      Disables the Suggestions UI 
      END
    end
    entry do
      name '--disable-sync'
      notes <<-'END'
      Disables syncing browser data to a Google Account. 
      END
    end
    entry do
      name '--disable-sync-app-list'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-sync-types'
      notes <<-'END'
      Disables syncing one or more sync data types that are on by default. See sync/base/model_type.h for possible types. Types should be comma separated, and follow the naming convention for string representation of model types, e.g.: --disable-synctypes='Typed URLs, Bookmarks, Autofill Profiles' 
      END
    end
    entry do
      name '--disable-system-timezone-automatic-detection'
      notes <<-'END'
      Disables SystemTimezoneAutomaticDetection policy. 
      END
    end
    entry do
      name '--disable-tab-for-desktop-share'
      notes <<-'END'
      Enables tab for desktop sharing. 
      END
    end
    entry do
      name '--disable-tab-strip-autoscroll-new-tabs'
      notes <<-'END'
      Disables the tab strip auto scroll new tabs. 
      END
    end
    entry do
      name '--disable-threaded-animation'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-threaded-compositing'
      notes <<-'END'
      Disable multithreaded GPU compositing of web content. 
      END
    end
    entry do
      name '--disable-threaded-scrolling'
      notes <<-'END'
      Disable multithreaded, compositor scrolling of web content. 
      END
    end
    entry do
      name '--disable-touch-adjustment'
      notes <<-'END'
      Disables touch adjustment. 
      END
    end
    entry do
      name '--disable-touch-drag-drop'
      notes <<-'END'
      Disables touch event based drag and drop. 
      END
    end
    entry do
      name '--disable-translate'
      notes <<-'END'
      Allows disabling of translate from the command line to assist with automated browser testing (e.g. Selenium/WebDriver). Normal browser users should disable translate with the preference. 
      END
    end
    entry do
      name '--disable-translate-new-ux'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Disables Translate experimental new UX which replaces the infobar. 
      END
    end
    entry do
      name '--disable-usb-keyboard-detect'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Disables the USB keyboard detection for blocking the OSK on Win8+. 
      END
    end
    entry do
      name '--disable-v8-idle-tasks'
      notes <<-'END'
      Disable V8 idle tasks. 
      END
    end
    entry do
      name '--disable-vaapi-accelerated-video-encode'
      notes <<-'END'
      ```
      The constant OS_CHROMEOS must be defined.
      ```
      Disables VA-API accelerated video encode. 
      END
    end
    entry do
      name '--disable-views-rect-based-targeting'
      notes <<-'END'
      Specifies if a heuristic should be used to determine the most probable target of a gesture, where the touch region is represented by a rectangle. 
      END
    end
    entry do
      name '--disable-virtual-keyboard-overscroll'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-voice-input'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--disable-volume-adjust-sound'
      notes <<-'END'
      Disables volume adjust sound. 
      END
    end
    entry do
      name '--disable-wake-on-wifi'
      notes <<-'END'
      Disables wake on wifi features. 
      END
    end
    entry do
      name '--disable-web-notification-custom-layouts'
      notes <<-'END'
      Disables Web Notification custom layouts. 
      END
    end
    entry do
      name '--disable-web-security'
      notes <<-'END'
      Don't enforce the same-origin policy. (Used by people testing their sites.) 
      END
    end
    entry do
      name '--disable-webgl'
      notes <<-'END'
      Disable experimental WebGL support. 
      END
    end
    entry do
      name '--disable-webgl-image-chromium'
      notes <<-'END'
      Disables WebGL rendering into a scanout buffer for overlay support. 
      END
    end
    entry do
      name '--disable-webrtc-encryption'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_WEBRTC) must be defined.
      ```
      Disables encryption of RTP Media for WebRTC. When Chrome embeds Content, it ignores this switch on its stable and beta channels. 
      END
    end
    entry do
      name '--disable-webrtc-hw-decoding'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_WEBRTC) must be defined.
      ```
      Disables HW decode acceleration for WebRTC. 
      END
    end
    entry do
      name '--disable-webrtc-hw-encoding'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_WEBRTC) must be defined.
      ```
      Disables HW encode acceleration for WebRTC. 
      END
    end
    entry do
      name '--disable-webrtc-hw-vp8-encoding'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_WEBRTC) must be defined.
      ```
      Disables HW VP8 encode acceleration for WebRTC. 
      END
    end
    entry do
      name '--disable-win32k-lockdown'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Disables the Win32K process mitigation policy for child processes. 
      END
    end
    entry do
      name '--disable-xss-auditor'
      notes <<-'END'
      Disables Blink's XSSAuditor. The XSSAuditor mitigates reflective XSS. 
      END
    end
    entry do
      name '--disable-zero-browsers-open-for-tests'
      notes <<-'END'
      Some tests seem to require the application to close when the last browser window is closed. Thus, we need a switch to force this behavior for ChromeOS Aura, disable "zero window mode". TODO(pkotwicz): Investigate if this bug can be removed. (http://crbug.com/119175) 
      END
    end
    entry do
      name '--disable-zero-copy'
      notes <<-'END'
      Disable rasterizer that writes directly to GPU memory associated with tiles. 
      END
    end
    entry do
      name '--disable-zero-copy-dxgi-video'
      notes <<-'END'
      Disable the video decoder from drawing directly to a texture. 
      END
    end
    entry do
      name '--disabled'
      notes <<-'END'
      disabled: touch events are disabled. 
      END
    end
    entry do
      name '--disk-cache-dir'
      notes <<-'END'
      Use a specific disk cache location, rather than one derived from the UserDatadir. 
      END
    end
    entry do
      name '--disk-cache-size'
      notes <<-'END'
      Forces the maximum disk space to be used by the disk cache, in bytes. 
      END
    end
    entry do
      name '--display'
      notes <<-'END'
      ```
      The constant OS_CHROMEOS must not be defined.
      ```
      Which X11 display to connect to. Emulates the GTK+ "--display=" command line argument. 
      END
    end
    entry do
      name '--dmg-device'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      When switches::kProcessType is switches::kRelauncherProcess, if this switch is also present, the relauncher process will unmount and eject a mounted disk image and move its disk image file to the trash.  The argument's value must be a BSD device name of the form "diskN" or "diskNsM". 
      END
    end
    entry do
      name '--dns-log-details'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--dom-automation'
      notes <<-'END'
      Specifies if the |DOMAutomationController| needs to be bound in the renderer. This binding happens on per-frame basis and hence can potentially be a performance bottleneck. One should only enable it when automating dom based tests. 
      END
    end
    entry do
      name '--duck-flash'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_PLUGINS) must be defined.
      ```
      This value is used as an option for |kEnableDefaultMediaSession|. Flash will be ducked when losing audio focus. 
      END
    end
    entry do
      name '--dump-browser-histograms'
      notes <<-'END'
      Requests that a running browser process dump its collected histograms to a given file. The file is overwritten if it exists. 
      END
    end
    entry do
      name '--dump-dom'
      notes <<-'END'
      Instructs headless_shell to print document.body.innerHTML to stdout. 
      END
    end
    entry do
      name '--eafe-path'
      notes <<-'END'
      EAFE path to use for Easy bootstrapping. 
      END
    end
    entry do
      name '--eafe-url'
      notes <<-'END'
      EAFE URL to use for Easy bootstrapping. 
      END
    end
    entry do
      name '--early-tracing'
      notes <<-'END'
      ```
      The constant NDEBUG must be defined.
      ```
      No description 
      END
    end
    entry do
      name '--easy-unlock-app-path'
      notes <<-'END'
      Overrides the path of Easy Unlock component app. 
      END
    end
    entry do
      name '--edge-touch-filtering'
      notes <<-'END'
      ```
      The constants USE_OZONE and USE_X11 must be defined.
      ```
      Tells Chrome to do edge touch filtering. Useful for convertible tablet. 
      END
    end
    entry do
      name '--egl'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--elevate'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--embedded-extension-options'
      notes <<-'END'
      Enables extension options to be embedded in chrome://extensions rather than a new tab. 
      END
    end
    entry do
      name '--emphasize-titles-in-omnibox-dropdown'
      notes <<-'END'
      Causes the omnibox dropdown to emphasize the titles of URL suggestions for query-like inputs. 
      END
    end
    entry do
      name '--emulate-shader-precision'
      notes <<-'END'
      Emulate ESSL lowp and mediump float precisions by mutating the shaders to round intermediate values in ANGLE. 
      END
    end
    entry do
      name '--enable-accelerated-2d-canvas'
      notes <<-'END'
      Enable accelerated 2D canvas. 
      END
    end
    entry do
      name '--enable-accelerated-vpx-decode'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Enables experimental hardware acceleration for VP8/VP9 video decoding. Bitmask - 0x1=Microsoft, 0x2=AMD, 0x03=Try all. 
      END
    end
    entry do
      name '--enable-accessibility-tab-switcher'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Enable the accessibility tab switcher. 
      END
    end
    entry do
      name '--enable-account-consistency'
      notes <<-'END'
      Enables consistent identity features. 
      END
    end
    entry do
      name '--enable-ad'
      notes <<-'END'
      Enables AD functionality. 
      END
    end
    entry do
      name '--enable-adaptive-selection-handle-orientation'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Enable inverting of selection handles so that they are not clipped by the viewport boundaries. 
      END
    end
    entry do
      name '--enable-add-to-shelf'
      notes <<-'END'
      Enables the display of a banner allowing the user to add a web app to their shelf (or platform-specific equivalent) 
      END
    end
    entry do
      name '--enable-aggressive-domstorage-flushing'
      notes <<-'END'
      Enable the aggressive flushing of DOM Storage to minimize data loss. 
      END
    end
    entry do
      name '--enable-android-wallpapers-app'
      notes <<-'END'
      Enables the Android Wallpapers App as the default app on Chrome OS. 
      END
    end
    entry do
      name '--enable-app-info-dialog-mac'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Enable the toolkit-views App Info dialog for Mac. This is accessible from chrome://apps and chrome://extensions and is already enabled on non-mac. 
      END
    end
    entry do
      name '--enable-app-list'
      notes <<-'END'
      If set, the app list will be enabled as if enabled from CWS. 
      END
    end
    entry do
      name '--enable-app-window-cycling'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Enables custom Cmd+` window cycling for platform apps and hosted apps. 
      END
    end
    entry do
      name '--enable-appcontainer'
      notes <<-'END'
      Enable or disable appcontainer/lowbox for renderer on Win8+ platforms. 
      END
    end
    entry do
      name '--enable-arc'
      notes <<-'END'
      DEPRECATED. Please use --arc-availability=officially-supported. Enables starting the ARC instance upon session start. 
      END
    end
    entry do
      name '--enable-arc-oobe-optin'
      notes <<-'END'
      Enables ARC OptIn flow in OOBE. 
      END
    end
    entry do
      name '--enable-audio-debug-recordings-from-extension'
      notes <<-'END'
      If the WebRTC logging private API is active, enables audio debug recordings. 
      END
    end
    entry do
      name '--enable-autofill-keyboard-accessory-view'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Enables showing suggestions in a keyboard accessory view. 
      END
    end
    entry do
      name '--enable-automation'
      notes <<-'END'
      Inform users that their browser is being controlled by an automated test. 
      END
    end
    entry do
      name '--enable-benchmarking'
      notes <<-'END'
      Enables the benchmarking extensions. 
      END
    end
    entry do
      name '--enable-ble-advertising-in-apps'
      notes <<-'END'
      Enable BLE Advertisiing in apps. 
      END
    end
    entry do
      name '--enable-blink-features'
      notes <<-'END'
      Enable one or more Blink runtime-enabled features. Use names from RuntimeEnabledFeatures.json5, separated by commas. Applied before kDisableBlinkFeatures, and after other flags that change these features. 
      END
    end
    entry do
      name '--enable-bookmark-undo'
      notes <<-'END'
      Enables the multi-level undo system for bookmarks. 
      END
    end
    entry do
      name '--enable-browser-side-navigation'
      notes <<-'END'
      PlzNavigate: Use the experimental browser-side navigation path. 
      END
    end
    entry do
      name '--enable-browser-task-scheduler'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--enable-canvas-2d-dynamic-rendering-mode-switching'
      notes <<-'END'
      Enables dynamic rendering pipeline switching to optimize the performance of 2d canvas 
      END
    end
    entry do
      name '--enable-checker-imaging'
      notes <<-'END'
      Enables defering image decodes to the image decode service. 
      END
    end
    entry do
      name '--enable-chromevox-arc-support'
      notes <<-'END'
      Enables native ChromeVox support for Arc. 
      END
    end
    entry do
      name '--enable-clear-browsing-data-counters'
      notes <<-'END'
      Enables data volume counters in the Clear Browsing Data dialog. 
      END
    end
    entry do
      name '--enable-cloud-print-proxy'
      notes <<-'END'
      This applies only when the process type is "service". Enables the Cloud Print Proxy component within the service process. 
      END
    end
    entry do
      name '--enable-cloud-print-xps'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Fallback to XPS. By default connector uses CDD. 
      END
    end
    entry do
      name '--enable-color-correct-rendering'
      notes <<-'END'
      Convert rasterization and compositing inputs to the output color space before operating on them. 
      END
    end
    entry do
      name '--enable-color-correct-rendering-default-mode'
      notes <<-'END'
      Changes the behavior of the "default" color space conversion mode in createImageBitmap. When enabled without kEnableColorCorrectRendering or kEnableTrueColorRendering flags, "default" means color correct the image bitmap to the display color space. 
      END
    end
    entry do
      name '--enable-consumer-kiosk'
      notes <<-'END'
      Enables consumer kiosk mode for Chrome OS. 
      END
    end
    entry do
      name '--enable-content-intent-detection'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Enable content intent detection in the renderer. 
      END
    end
    entry do
      name '--enable-contextual-search'
      notes <<-'END'
      Enables Contextual Search. 
      END
    end
    entry do
      name '--enable-crash-reporter'
      notes <<-'END'
      Indicates that crash reporting should be enabled. On platforms where helper processes cannot access to files needed to make this decision, this flag is generated internally. 
      END
    end
    entry do
      name '--enable-crash-reporter-for-testing'
      notes <<-'END'
      ```
      The constant OS_POSIX must be defined.
      ```
      Used for turning on Breakpad crash reporting in a debug environment where crash reporting is typically compiled but disabled. 
      END
    end
    entry do
      name '--enable-crx-hash-check'
      notes <<-'END'
      Enable package hash check: the .crx file sha256 hash sum should be equal to the one received from update manifest. 
      END
    end
    entry do
      name '--enable-data-reduction-proxy-bypass-warning'
      notes <<-'END'
      Enable the data reduction proxy bypass warning. 
      END
    end
    entry do
      name '--enable-data-reduction-proxy-carrier-test'
      notes <<-'END'
      Enables the origin of the carrier test data reduction proxy. 
      END
    end
    entry do
      name '--enable-data-reduction-proxy-force-pingback'
      notes <<-'END'
      Enables sending a pageload metrics pingback after every page load. 
      END
    end
    entry do
      name '--enable-data-reduction-proxy-lite-page'
      notes <<-'END'
      Enables lite page from the data reduction proxy. This means a lite page should be requested instead of placeholders whenever Lo-Fi mode is on. Lo-fi must also be enabled via a flag or field trial. 
      END
    end
    entry do
      name '--enable-data-reduction-proxy-savings-promo'
      notes <<-'END'
      Enables a 1 MB savings promo for the data reduction proxy. 
      END
    end
    entry do
      name '--enable-datasaver-prompt'
      notes <<-'END'
      Enables Data Saver prompt on cellular networks. 
      END
    end
    entry do
      name '--enable-default-media-session'
      notes <<-'END'
      ```
      The constant OS_ANDROID must not be defined, and the constant BUILDFLAG(ENABLE_PLUGINS) must be defined.
      ```
      Use a media session for each tabs in a way that two tabs can't play on top of each other. This is different from the Media Session API as it is enabling a default behaviour for the browser. The allowed values are: "" (empty), |kEnableDefaultMediaSessionDuckFlash|. 
      END
    end
    entry do
      name '--enable-device-discovery-notifications'
      notes <<-'END'
      Enable device discovery notifications. 
      END
    end
    entry do
      name '--enable-devtools-experiments'
      notes <<-'END'
      If true devtools experimental settings are enabled. 
      END
    end
    entry do
      name '--enable-display-list-2d-canvas'
      notes <<-'END'
      Enables display list based 2d canvas implementation. Options: 1. Enable: allow browser to use display list for 2d canvas (browser makes decision). 2. Force: browser always uses display list for 2d canvas. 
      END
    end
    entry do
      name '--enable-distance-field-text'
      notes <<-'END'
      Enables using signed distance fields when rendering text. Only valid if GPU rasterization is enabled as well. 
      END
    end
    entry do
      name '--enable-distillability-service'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--enable-dom-distiller'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--enable-domain-reliability'
      notes <<-'END'
      Enables Domain Reliability Monitoring. 
      END
    end
    entry do
      name '--enable-download-image-renaming'
      notes <<-'END'
      Enables the string change from "Save Image" to "Download Image". 
      END
    end
    entry do
      name '--enable-drive-search-in-app-launcher'
      notes <<-'END'
      Enable/disable drive search in chrome launcher. 
      END
    end
    entry do
      name '--enable-drm-atomic'
      notes <<-'END'
      Try to enable drm atomic. This works only with drm platform. 
      END
    end
    entry do
      name '--enable-embedded-extension-options'
      notes <<-'END'
      Hack so that feature switch can work with about_flags. See kEnableScriptsRequireAction. 
      END
    end
    entry do
      name '--enable-es3-apis'
      notes <<-'END'
      Enable OpenGL ES 3 APIs. 
      END
    end
    entry do
      name '--enable-exclusive-audio'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Use exclusive mode audio streaming for Windows Vista and higher. Leads to lower latencies for audio streams which uses the AudioParameters::AUDIO_PCM_LOW_LATENCY audio path. See http://msdn.microsoft.com/en-us/library/windows/desktop/dd370844.aspx for details. 
      END
    end
    entry do
      name '--enable-experimental-accessibility-features'
      notes <<-'END'
      Shows additional checkboxes in Settings to enable Chrome OS accessibility features that haven't launched yet. 
      END
    end
    entry do
      name '--enable-experimental-canvas-features'
      notes <<-'END'
      Enable experimental canvas features, e.g. canvas 2D context attributes 
      END
    end
    entry do
      name '--enable-experimental-extension-apis'
      notes <<-'END'
      Enables extension APIs that are in development. 
      END
    end
    entry do
      name '--enable-experimental-input-view-features'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--enable-experimental-web-platform-features'
      notes <<-'END'
      Enables Web Platform features that are in development. 
      END
    end
    entry do
      name '--enable-extension-activity-log-testing'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--enable-extension-activity-logging'
      notes <<-'END'
      Enables logging for extension activity. 
      END
    end
    entry do
      name '--enable-extension-assets-sharing'
      notes <<-'END'
      Enables sharing assets for installed default apps. 
      END
    end
    entry do
      name '--enable-fast-unload'
      notes <<-'END'
      Enable the fast unload controller, which speeds up tab/window close by running a tab's onunload js handler independently of the GUI - crbug.com/142458 . 
      END
    end
    entry do
      name '--enable-fast-web-scroll-view-insets'
      notes <<-'END'
      Enables a workaround for fast inset updates for UIWebView.scrollView. 
      END
    end
    entry do
      name '--enable-features'
      notes <<-'END'
      Lists separated by commas the name of features to disable. See base::FeatureList::InitializeFromCommandLine for details. 
      END
    end
    entry do
      name '--enable-first-run-ui-transitions'
      notes <<-'END'
      Enables animated transitions during first-run tutorial. 
      END
    end
    entry do
      name '--enable-floating-virtual-keyboard'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--enable-font-antialiasing'
      notes <<-'END'
      Enable font antialiasing for pixel tests. 
      END
    end
    entry do
      name '--enable-fullscreen-tab-detaching'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Enables tab detaching in fullscreen mode on Mac. 
      END
    end
    entry do
      name '--enable-fullscreen-toolbar-reveal'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Enables the fullscreen toolbar to reveal itself for tab strip changes. 
      END
    end
    entry do
      name '--enable-google-branded-context-menu'
      notes <<-'END'
      ```
      The constant GOOGLE_CHROME_BUILD must be defined.
      ```
      Shows a Google icon next to context menu items powered by Google services. 
      END
    end
    entry do
      name '--enable-gpu-async-worker-context'
      notes <<-'END'
      Makes the GL worker context run asynchronously by using a separate stream. 
      END
    end
    entry do
      name '--enable-gpu-benchmarking'
      notes <<-'END'
      Enables the GPU benchmarking extension 
      END
    end
    entry do
      name '--enable-gpu-client-logging'
      notes <<-'END'
      Enable GPU client logging. 
      END
    end
    entry do
      name '--enable-gpu-client-tracing'
      notes <<-'END'
      Enables TRACE for GL calls in the renderer. 
      END
    end
    entry do
      name '--enable-gpu-command-logging'
      notes <<-'END'
      Turn on Logging GPU commands. 
      END
    end
    entry do
      name '--enable-gpu-debugging'
      notes <<-'END'
      Turn on Calling GL Error after every command. 
      END
    end
    entry do
      name '--enable-gpu-driver-debug-logging'
      notes <<-'END'
      Enable logging of GPU driver debug messages. 
      END
    end
    entry do
      name '--enable-gpu-memory-buffer-compositor-resources'
      notes <<-'END'
      Specify that all compositor resources should be backed by GPU memory buffers. 
      END
    end
    entry do
      name '--enable-gpu-memory-buffer-video-frames'
      notes <<-'END'
      Enable GpuMemoryBuffer backed VideoFrames. 
      END
    end
    entry do
      name '--enable-gpu-rasterization'
      notes <<-'END'
      Allow heuristics to determine when a layer tile should be drawn with the Skia GPU backend. Only valid with GPU accelerated compositing + impl-side painting. 
      END
    end
    entry do
      name '--enable-gpu-service-logging'
      notes <<-'END'
      Turns on GPU logging (debug build only). 
      END
    end
    entry do
      name '--enable-gpu-service-tracing'
      notes <<-'END'
      Turns on calling TRACE for every GL call. 
      END
    end
    entry do
      name '--enable-grouped-history'
      notes <<-'END'
      Enables grouping websites by domain and filtering them by period. 
      END
    end
    entry do
      name '--enable-hardware-overlays'
      notes <<-'END'
      Enable compositing individual elements via hardware overlays when permitted by device. Setting the flag to "single-fullscreen" will try to promote a single fullscreen overlay and use it as main framebuffer where possible. 
      END
    end
    entry do
      name '--enable-harfbuzz-rendertext'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Enables the HarfBuzz port of RenderText on Mac (it's already used only for text editing; this enables it for everything else). 
      END
    end
    entry do
      name '--enable-hdr-output'
      notes <<-'END'
      Use an fp16 scRGB swap chain compatible with HDR output. 
      END
    end
    entry do
      name '--enable-heap-profiling'
      notes <<-'END'
      Makes memory allocators keep track of their allocations and context, so a detailed breakdown of memory usage can be presented in chrome://tracing when the memory-infra category is enabled. 
      END
    end
    entry do
      name '--enable-hosted-app-quit-notification'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Shows a notification when quitting Chrome with hosted apps running. Default behavior is to also quit all hosted apps. 
      END
    end
    entry do
      name '--enable-hosted-apps-in-windows'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Allows hosted apps to be opened in windows on Mac. 
      END
    end
    entry do
      name '--enable-hosted-mode'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Enables chrome hosted mode for Android. 
      END
    end
    entry do
      name '--enable-hotword-hardware'
      notes <<-'END'
      Enables experimental hotword features specific to always-on. 
      END
    end
    entry do
      name '--enable-hung-renderer-infobar'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Enables a hung renderer InfoBar allowing the user to close or wait on unresponsive web content. 
      END
    end
    entry do
      name '--enable-inband-text-tracks'
      notes <<-'END'
      Enables support for inband text tracks in media content. 
      END
    end
    entry do
      name '--enable-ios-handoff-to-other-devices'
      notes <<-'END'
      Enables support for Handoff from Chrome on iOS to the default browser of other Apple devices. 
      END
    end
    entry do
      name '--enable-ios-password-generation'
      notes <<-'END'
      Enable password generation for iOS. 
      END
    end
    entry do
      name '--enable-ios-physical-web'
      notes <<-'END'
      Enables Physical Web scanning for nearby URLs. 
      END
    end
    entry do
      name '--enable-kiosk-mode'
      notes <<-'END'
      Enables Kiosk mode for Chrome OS. Note this switch refers to retail mode rather than the kiosk app mode. 
      END
    end
    entry do
      name '--enable-layer-lists'
      notes <<-'END'
      Switches cc machinery to use layer lists instead of layer trees 
      END
    end
    entry do
      name '--enable-lcd-text'
      notes <<-'END'
      Enables LCD text. 
      END
    end
    entry do
      name '--enable-leak-detection'
      notes <<-'END'
      Enables the leak detection of loading webpages. This allows us to check whether or not reloading a webpage releases web-related objects correctly. 
      END
    end
    entry do
      name '--enable-local-file-accesses'
      notes <<-'END'
      Enable file accesses. It should not be enabled for most Cast devices. 
      END
    end
    entry do
      name '--enable-local-sync-backend'
      notes <<-'END'
      Enabled the local sync backend implemented by the LoopbackServer. 
      END
    end
    entry do
      name '--enable-logging'
      notes <<-'END'
      Force logging to be enabled.  Logging is disabled by default in release builds. 
      END
    end
    entry do
      name '--enable-longpress-drag-selection'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Enable drag manipulation of longpress-triggered text selections. 
      END
    end
    entry do
      name '--enable-low-end-device-mode'
      notes <<-'END'
      Force low-end device mode when set. 
      END
    end
    entry do
      name '--enable-low-res-tiling'
      notes <<-'END'
      When using CPU rasterizing generate low resolution tiling. Low res tiles may be displayed during fast scrolls especially on slower devices. 
      END
    end
    entry do
      name '--enable-lru-snapshot-cache'
      notes <<-'END'
      Enables the snapshot lru cache. 
      END
    end
    entry do
      name '--enable-mac-views-native-app-windows'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Enables use of toolkit-views based native app windows. 
      END
    end
    entry do
      name '--enable-main-frame-before-activation'
      notes <<-'END'
      Enables sending the next BeginMainFrame before the previous commit activates. 
      END
    end
    entry do
      name '--enable-md-feedback'
      notes <<-'END'
      Enables the Material Design feedback form. 
      END
    end
    entry do
      name '--enable-md-policy-page'
      notes <<-'END'
      Enables the Material Design policy page at chrome://md-policy. 
      END
    end
    entry do
      name '--enable-media-suspend'
      notes <<-'END'
      Suspend media pipeline on background tabs. 
      END
    end
    entry do
      name '--enable-merge-key-char-events'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Enables merging the key event (WM_KEY*) with the char event (WM_CHAR). 
      END
    end
    entry do
      name '--enable-message-center-always-scroll-up-upon-notification-removal'
      notes <<-'END'
      Enables message center to always move other notifications upwards when a notification is removed, no matter whether the message center is displayed top down or not. 
      END
    end
    entry do
      name '--enable-nacl'
      notes <<-'END'
      Runs the Native Client inside the renderer process and enables GPU plugin (internally adds lEnableGpuPlugin to the command line). 
      END
    end
    entry do
      name '--enable-nacl-debug'
      notes <<-'END'
      Enables debugging via RSP over a socket. 
      END
    end
    entry do
      name '--enable-nacl-nonsfi-mode'
      notes <<-'END'
      Enables Non-SFI mode, in which programs can be run without NaCl's SFI sandbox. 
      END
    end
    entry do
      name '--enable-native-cups'
      notes <<-'END'
      ```
      The constant OS_CHROMEOS must be defined.
      ```
      Enables native cups integration 
      END
    end
    entry do
      name '--enable-native-gpu-memory-buffers'
      notes <<-'END'
      Enable native GPU memory buffer support when available. 
      END
    end
    entry do
      name '--enable-natural-scroll-default'
      notes <<-'END'
      Enables natural scroll by default. 
      END
    end
    entry do
      name '--enable-navigation-tracing'
      notes <<-'END'
      Enables tracing for each navigation. It will attempt to trace each navigation for 10s, until the buffer is full, or until the next navigation. It only works if a URL was provided by --trace-upload-url. 
      END
    end
    entry do
      name '--enable-net-benchmarking'
      notes <<-'END'
      Enables the network-related benchmarking extensions. 
      END
    end
    entry do
      name '--enable-network-information'
      notes <<-'END'
      Enables the network information API. 
      END
    end
    entry do
      name '--enable-network-portal-notification'
      notes <<-'END'
      Enables notifications about captive portals in session. 
      END
    end
    entry do
      name '--enable-new-bookmark-apps'
      notes <<-'END'
      Enables the new bookmark app system. 
      END
    end
    entry do
      name '--enable-ntp-popular-sites'
      notes <<-'END'
      Enables showing popular sites on the NTP. 
      END
    end
    entry do
      name '--enable-ntp-search-engine-country-detection'
      notes <<-'END'
      Enables using the default search engine country to show country specific popular sites on the NTP. 
      END
    end
    entry do
      name '--enable-offer-store-unmasked-wallet-cards'
      notes <<-'END'
      Force showing the local save checkbox in the autofill dialog box for getting the full credit card number for a wallet card. 
      END
    end
    entry do
      name '--enable-offer-upload-credit-cards'
      notes <<-'END'
      Enables offering to upload credit cards. 
      END
    end
    entry do
      name '--enable-offline-auto-reload'
      notes <<-'END'
      Enable auto-reload of error pages if offline. 
      END
    end
    entry do
      name '--enable-offline-auto-reload-visible-only'
      notes <<-'END'
      Only auto-reload error pages when the tab is visible. 
      END
    end
    entry do
      name '--enable-osk-overscroll'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Enables overscrolling for the OSK on Android. 
      END
    end
    entry do
      name '--enable-overlay-scrollbar'
      notes <<-'END'
      Enables or disables overlay scrollbars in Blink (i.e. web content) on Aura or Linux.  The status of native UI overlay scrollbars are determined in PlatformStyle::CreateScrollBar. Does nothing on Mac. 
      END
    end
    entry do
      name '--enable-override-bookmarks-ui'
      notes <<-'END'
      Enables extensions to hide bookmarks UI elements. 
      END
    end
    entry do
      name '--enable-partial-raster'
      notes <<-'END'
      Enable partial raster in the renderer. 
      END
    end
    entry do
      name '--enable-password-generation'
      notes <<-'END'
      Enables password generation when we detect that the user is going through account creation. 
      END
    end
    entry do
      name '--enable-payment-request'
      notes <<-'END'
      Enable the Payment Request API. 
      END
    end
    entry do
      name '--enable-pepper-testing'
      notes <<-'END'
      Enables the testing interface for PPAPI. 
      END
    end
    entry do
      name '--enable-per-monitor-dpi'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Enables per monitor DPI for supported Windows versions. 
      END
    end
    entry do
      name '--enable-permission-action-reporting'
      notes <<-'END'
      Enables permission action reporting to Safe Browsing servers for opted in users. 
      END
    end
    entry do
      name '--enable-physical-keyboard-autocorrect'
      notes <<-'END'
      Enables suggestions while typing on a physical keyboard. 
      END
    end
    entry do
      name '--enable-pinch'
      notes <<-'END'
      Enables compositor-accelerated touch-screen pinch gestures. 
      END
    end
    entry do
      name '--enable-pixel-output-in-tests'
      notes <<-'END'
      Forces tests to produce pixel output when they normally wouldn't. 
      END
    end
    entry do
      name '--enable-plugin-placeholder-testing'
      notes <<-'END'
      Enables testing features of the Plugin Placeholder. For internal use only. 
      END
    end
    entry do
      name '--enable-potentially-annoying-security-features'
      notes <<-'END'
      Enables a number of potentially annoying security features (strict mixed content mode, powerful feature restrictions, etc.) 
      END
    end
    entry do
      name '--enable-power-overlay'
      notes <<-'END'
      Enables the Power overlay in Settings. 
      END
    end
    entry do
      name '--enable-precache'
      notes <<-'END'
      Enables the proactive populating of the disk cache with Web resources that are likely to be needed in future page fetches. 
      END
    end
    entry do
      name '--enable-precise-memory-info'
      notes <<-'END'
      Make the values returned to window.performance.memory more granular and more up to date in shared worker. Without this flag, the memory information is still available, but it is bucketized and updated less frequently. This flag also applys to workers. 
      END
    end
    entry do
      name '--enable-prefer-compositing-to-lcd-text'
      notes <<-'END'
      Enable the creation of compositing layers when it would prevent LCD text. 
      END
    end
    entry do
      name '--enable-print-browser'
      notes <<-'END'
      Enables PrintBrowser mode, in which everything renders as though printed. 
      END
    end
    entry do
      name '--enable-print-preview-register-promos'
      notes <<-'END'
      Enables showing unregistered printers in print preview 
      END
    end
    entry do
      name '--enable-profile-shortcut-manager'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Force-enables the profile shortcut manager. This is needed for tests since they use a custom-user-data-dir which disables this. 
      END
    end
    entry do
      name '--enable-profiling'
      notes <<-'END'
      Enables tracking of tasks in profiler for viewing via about:profiler. To predominantly disable tracking (profiling), use the command line switch: --enable-profiling=0 Some tracking will still take place at startup, but it will be turned off during chrome_browser_main. 
      END
    end
    entry do
      name '--enable-proximity-auth-bluetooth-low-energy-discovery'
      notes <<-'END'
      Enables discovery of the phone over Bluetooth Low Energy. 
      END
    end
    entry do
      name '--enable-proximity-auth-proximity-detection'
      notes <<-'END'
      Enables close proximity detection. This allows the user to set a setting to require very close proximity between the remote device and the local device in order to unlock the local device, which trades off convenience for security. 
      END
    end
    entry do
      name '--enable-push-api-background-mode'
      notes <<-'END'
      Enable background mode for the Push API. 
      END
    end
    entry do
      name '--enable-quic'
      notes <<-'END'
      Enables the QUIC protocol.  This is a temporary testing flag. 
      END
    end
    entry do
      name '--enable-reader-mode-toolbar-icon'
      notes <<-'END'
      Enables context-sensitive reader mode button in the toolbar. 
      END
    end
    entry do
      name '--enable-request-tablet-site'
      notes <<-'END'
      Enables request of tablet site (via user agent override). 
      END
    end
    entry do
      name '--enable-rgba-4444-textures'
      notes <<-'END'
      Enables RGBA_4444 textures. 
      END
    end
    entry do
      name '--enable-sandbox'
      notes <<-'END'
      Enables the sandbox on this process. 
      END
    end
    entry do
      name '--enable-sandbox-logging'
      notes <<-'END'
      Cause the OS X sandbox write to syslog every time an access to a resource is denied by the sandbox. 
      END
    end
    entry do
      name '--enable-screenshot-testing-with-mode'
      notes <<-'END'
      Enables using screenshots in tests and seets mode. 
      END
    end
    entry do
      name '--enable-scripts-require-action'
      notes <<-'END'
      FeatureSwitch and about_flags don't play nice. Feature switch expects either --enable-&lt;feature&gt; or --&lt;feature&gt;=1, but about_flags expects the command line argument to enable it (or a selection). Hack this in, so enabling it in about_flags enables the feature. Appending this flag has the same effect as --scripts-require-action=1. 
      END
    end
    entry do
      name '--enable-scroll-prediction'
      notes <<-'END'
      Enable scroll prediction for scroll update events. 
      END
    end
    entry do
      name '--enable-service-manager-tracing'
      notes <<-'END'
      Enable the tracing service. 
      END
    end
    entry do
      name '--enable-settings-window'
      notes <<-'END'
      Enable settings in a separate browser window per profile (see SettingsWindowEnabled() below). 
      END
    end
    entry do
      name '--enable-sgi-video-sync'
      notes <<-'END'
      Enable use of the SGI_video_sync extension, which can have driver/sandbox/window manager compatibility issues. 
      END
    end
    entry do
      name '--enable-single-click-autofill'
      notes <<-'END'
      Enables/disables suggestions without typing anything (on first click). 
      END
    end
    entry do
      name '--enable-site-engagement-eviction-policy'
      notes <<-'END'
      Enable the Site Engagement Eviction Policy which evicts temporary storage using the site engagement service. Implicitly enables the site engagement service. 
      END
    end
    entry do
      name '--enable-site-settings'
      notes <<-'END'
      Enables the site settings all sites list and site details pages in the Chrome settings UI. 
      END
    end
    entry do
      name '--enable-skia-benchmarking'
      notes <<-'END'
      Enables the Skia benchmarking extension 
      END
    end
    entry do
      name '--enable-slimming-paint-invalidation'
      notes <<-'END'
      Enables paint invalidation based on slimming paint but without the full slimming paint v2 compositing code. See: https://goo.gl/eQczQW 
      END
    end
    entry do
      name '--enable-slimming-paint-v2'
      notes <<-'END'
      Enables slimming paint phase 2: http://www.chromium.org/blink/slimming-paint 
      END
    end
    entry do
      name '--enable-smooth-scrolling'
      notes <<-'END'
      On platforms that support it, enables smooth scroll animation. 
      END
    end
    entry do
      name '--enable-spatial-navigation'
      notes <<-'END'
      Enable spatial navigation 
      END
    end
    entry do
      name '--enable-spdy-proxy-auth'
      notes <<-'END'
      Enable the data reduction proxy. 
      END
    end
    entry do
      name '--enable-speech-dispatcher'
      notes <<-'END'
      ```
      The constant OS_CHROMEOS must not be defined, and the constant OS_LINUX must be defined.
      ```
      Allows sending text-to-speech requests to speech-dispatcher, a common Linux speech service. Because it's buggy, the user must explicitly enable it so that visiting a random webpage can't cause instability. 
      END
    end
    entry do
      name '--enable-spelling-feedback-field-trial'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_SPELLCHECK) must be defined.
      ```
      Enables participation in the field trial for user feedback to spelling service. 
      END
    end
    entry do
      name '--enable-spotlight-actions'
      notes <<-'END'
      Enables the Spotlight actions. 
      END
    end
    entry do
      name '--enable-stats-collection-bindings'
      notes <<-'END'
      Specifies if the |StatsCollectionController| needs to be bound in html pages. This binding happens on per-frame basis and hence can potentially be a performance bottleneck. One should only enable it when running a test that needs to access the provided statistics. 
      END
    end
    entry do
      name '--enable-stats-table'
      notes <<-'END'
      Enables StatsTable, logging statistics to a global named shared memory table. 
      END
    end
    entry do
      name '--enable-strict-mixed-content-checking'
      notes <<-'END'
      Blocks all insecure requests from secure contexts, and prevents the user from overriding that decision. 
      END
    end
    entry do
      name '--enable-strict-powerful-feature-restrictions'
      notes <<-'END'
      Blocks insecure usage of a number of powerful features (device orientation, for example) that we haven't yet deprecated for the web at large. 
      END
    end
    entry do
      name '--enable-suggestions-ui'
      notes <<-'END'
      Enables the Suggestions UI 
      END
    end
    entry do
      name '--enable-suggestions-with-substring-match'
      notes <<-'END'
      Enables suggestions with substring matching instead of prefix matching. 
      END
    end
    entry do
      name '--enable-supervised-user-managed-bookmarks-folder'
      notes <<-'END'
      Enables the supervised user managed bookmarks folder. 
      END
    end
    entry do
      name '--enable-swap-buffers-with-bounds'
      notes <<-'END'
      Enables SwapBuffersWithBounds if it is supported. 
      END
    end
    entry do
      name '--enable-sync-app-list'
      notes <<-'END'
      Enable/disable syncing of the app list independent of extensions. 
      END
    end
    entry do
      name '--enable-sync-articles'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--enable-tab-audio-muting'
      notes <<-'END'
      Enables user control over muting tab audio from the tab strip. 
      END
    end
    entry do
      name '--enable-tcp-fastopen'
      notes <<-'END'
      Enable use of experimental TCP sockets API for sending data in the SYN packet. 
      END
    end
    entry do
      name '--enable-tether'
      notes <<-'END'
      Enables tethering to nearby LTE devices. 
      END
    end
    entry do
      name '--enable-threaded-compositing'
      notes <<-'END'
      Enabled threaded compositing for layout tests. 
      END
    end
    entry do
      name '--enable-threaded-texture-mailboxes'
      notes <<-'END'
      Simulates shared textures when share groups are not available. Not available everywhere. 
      END
    end
    entry do
      name '--enable-thumbnail-retargeting'
      notes <<-'END'
      Enables fanciful thumbnail processing. Used with NTP for instant-extended-api, where thumbnails are generally smaller. 
      END
    end
    entry do
      name '--enable-tile-compression'
      notes <<-'END'
      Compress tile textures for GPUs supporting it. 
      END
    end
    entry do
      name '--enable-touch-calibration-setting'
      notes <<-'END'
      Enables the touch calibration option in MD settings UI for valid touch displays. 
      END
    end
    entry do
      name '--enable-touch-drag-drop'
      notes <<-'END'
      Enables touch event based drag and drop. 
      END
    end
    entry do
      name '--enable-touch-support-for-screen-magnifier'
      notes <<-'END'
      Enables touch support for screen magnifier. 
      END
    end
    entry do
      name '--enable-touchpad-three-finger-click'
      notes <<-'END'
      Enables touchpad three-finger-click as middle button. 
      END
    end
    entry do
      name '--enable-touchview'
      notes <<-'END'
      Enables the observation of accelerometer events to enter touch-view mode. 
      END
    end
    entry do
      name '--enable-trace-app-source'
      notes <<-'END'
      Pass launch source to platform apps. 
      END
    end
    entry do
      name '--enable-tracing'
      notes <<-'END'
      Enable tracing during the execution of browser tests. 
      END
    end
    entry do
      name '--enable-tracing-output'
      notes <<-'END'
      The filename to write the output of the test tracing to. 
      END
    end
    entry do
      name '--enable-translate-new-ux'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Enables Translate experimental new UX which replaces the infobar. 
      END
    end
    entry do
      name '--enable-true-color-rendering'
      notes <<-'END'
      Force all rasterization and compositing to be done in linear color space, with physically correct blending and interpolation. 
      END
    end
    entry do
      name '--enable-ui-devtools'
      notes <<-'END'
      Enables DevTools server for UI (mus, ash, etc). Value should be the port the server is started on. Default port is 9332. 
      END
    end
    entry do
      name '--enable-use-zoom-for-dsf'
      notes <<-'END'
      Enable the mode that uses zooming to implment device scale factor behavior. 
      END
    end
    entry do
      name '--enable-user-controlled-alternate-protocol-ports'
      notes <<-'END'
      Enables Alternate-Protocol when the port is user controlled (&gt; 1024). 
      END
    end
    entry do
      name '--enable-user-metrics'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Enable user metrics from within the installer. 
      END
    end
    entry do
      name '--enable-usermedia-screen-capturing'
      notes <<-'END'
      Enable screen capturing support for MediaStream API. 
      END
    end
    entry do
      name '--enable-video-player-chromecast-support'
      notes <<-'END'
      Enables the chromecast support for video player app. 
      END
    end
    entry do
      name '--enable-viewport'
      notes <<-'END'
      Enables the use of the @viewport CSS rule, which allows pages to control aspects of their own layout. This also turns on touch-screen pinch gestures. 
      END
    end
    entry do
      name '--enable-virtual-keyboard'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--enable-vp9-in-mp4'
      notes <<-'END'
      Enables demuxing of vp9 in mp4. Note that this flag will not have any effect if MP4 demuxing is not enabled in the build. 
      END
    end
    entry do
      name '--enable-vtune-support'
      notes <<-'END'
      Enable the Vtune profiler support. 
      END
    end
    entry do
      name '--enable-vulkan'
      notes <<-'END'
      Enable Vulkan support, must also have ENABLE_VULKAN defined. 
      END
    end
    entry do
      name '--enable-wayland-server'
      notes <<-'END'
      ```
      The constant ENABLE_WAYLAND_SERVER must be defined.
      ```
      Enables Wayland display server support. 
      END
    end
    entry do
      name '--enable-web-notification-custom-layouts'
      notes <<-'END'
      Enables Web Notification custom layouts. 
      END
    end
    entry do
      name '--enable-webfonts-intervention-trigger'
      notes <<-'END'
      Enable WebFonts intervention and trigger the signal always. 
      END
    end
    entry do
      name '--enable-webfonts-intervention-v2'
      notes <<-'END'
      WebFonts intervention v2 flag and values. 
      END
    end
    entry do
      name '--enable-webgl-draft-extensions'
      notes <<-'END'
      Enables WebGL extensions not yet approved by the community. 
      END
    end
    entry do
      name '--enable-webgl-image-chromium'
      notes <<-'END'
      Enables WebGL rendering into a scanout buffer for overlay support. 
      END
    end
    entry do
      name '--enable-webrtc-event-logging-from-extension'
      notes <<-'END'
      If the WebRTC logging private API is active, enables WebRTC event logging. 
      END
    end
    entry do
      name '--enable-webrtc-stun-origin'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_WEBRTC) must be defined.
      ```
      Enables Origin header in Stun messages for WebRTC. 
      END
    end
    entry do
      name '--enable-webvr'
      notes <<-'END'
      Enables interaction with virtual reality devices. 
      END
    end
    entry do
      name '--enable-wifi-credential-sync'
      notes <<-'END'
      Enables synchronizing WiFi credentials across devices, using Chrome Sync. 
      END
    end
    entry do
      name '--enable-win7-webrtc-hw-h264-decoding'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Enables H264 HW decode acceleration for WebRtc on Win 7. 
      END
    end
    entry do
      name '--enable-zero-copy'
      notes <<-'END'
      Enable rasterizer that writes directly to GPU memory associated with tiles. 
      END
    end
    entry do
      name '--enabled'
      notes <<-'END'
      enabled: touch events always enabled. 
      END
    end
    entry do
      name '--enabled-2g'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--enabled-3g'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--enabled-slow2g'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--encode-binary'
      notes <<-'END'
      Encode binary layout test results (images, audio) using base64. 
      END
    end
    entry do
      name '--enforce'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--enforce-gl-minimums'
      notes <<-'END'
      Enforce GL minimums. 
      END
    end
    entry do
      name '--enforce-webrtc-ip-permission-check'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_WEBRTC) must be defined.
      ```
      Enforce IP Permission check. TODO(guoweis): Remove this once the feature is not under finch and becomes the default. 
      END
    end
    entry do
      name '--enforce_strict'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--enterprise-disable-arc'
      notes <<-'END'
      Disables ARC for managed accounts. 
      END
    end
    entry do
      name '--enterprise-enable-forced-re-enrollment'
      notes <<-'END'
      Whether to enable forced enterprise re-enrollment. 
      END
    end
    entry do
      name '--enterprise-enable-zero-touch-enrollment'
      notes <<-'END'
      Enables the zero-touch enterprise enrollment flow. 
      END
    end
    entry do
      name '--enterprise-enrollment-initial-modulus'
      notes <<-'END'
      Power of the power-of-2 initial modulus that will be used by the auto-enrollment client. E.g. "4" means the modulus will be 2^4 = 16. 
      END
    end
    entry do
      name '--enterprise-enrollment-modulus-limit'
      notes <<-'END'
      Power of the power-of-2 maximum modulus that will be used by the auto-enrollment client. 
      END
    end
    entry do
      name '--error-console'
      notes <<-'END'
      Allows the ErrorConsole to collect runtime and manifest errors, and display them in the chrome:extensions page. 
      END
    end
    entry do
      name '--explicitly-allowed-ports'
      notes <<-'END'
      Explicitly allows additional ports using a comma-separated list of port numbers. 
      END
    end
    entry do
      name '--expose-internals-for-testing'
      notes <<-'END'
      Exposes the window.internals object to JavaScript for interactive development and debugging of layout tests that rely on it. 
      END
    end
    entry do
      name '--extension-content-verification'
      notes <<-'END'
      Name of the command line flag to force content verification to be on in one of various modes. 
      END
    end
    entry do
      name '--extension-process'
      notes <<-'END'
      Marks a renderer as extension process. 
      END
    end
    entry do
      name '--extensions-install-verification'
      notes <<-'END'
      Turns on extension install verification if it would not otherwise have been turned on. 
      END
    end
    entry do
      name '--extensions-multi-account'
      notes <<-'END'
      Enables multiple account versions of chrome.identity APIs. 
      END
    end
    entry do
      name '--extensions-not-webstore'
      notes <<-'END'
      Specifies a comma-separated list of extension ids that should be forced to be treated as not from the webstore when doing install verification. 
      END
    end
    entry do
      name '--extensions-on-chrome-urls'
      notes <<-'END'
      Enables extensions running scripts on chrome:// URLs. Extensions still need to explicitly request access to chrome:// URLs in the manifest. 
      END
    end
    entry do
      name '--extensions-update-frequency'
      notes <<-'END'
      Frequency in seconds for Extensions auto-update. 
      END
    end
    entry do
      name '--extra-search-query-params'
      notes <<-'END'
      Additional query params to insert in the search and instant URLs.  Useful for testing. 
      END
    end
    entry do
      name '--fake-variations-channel'
      notes <<-'END'
      Fakes the channel of the browser for purposes of Variations filtering. This is to be used for testing only. Possible values are "stable", "beta", "dev" and "canary". Note that this only applies if the browser's reported channel is UNKNOWN. 
      END
    end
    entry do
      name '--false'
      notes <<-'END'
      Value indicating whether flag from command line switch is false. 
      END
    end
    entry do
      name '--fast'
      notes <<-'END'
      Defines that Material Design visual feedback animations should be fast. 
      END
    end
    entry do
      name '--fast-start'
      notes <<-'END'
      If this flag is present then this command line is being delegated to an already running chrome process via the fast path, ie: before chrome.dll is loaded. It is useful to tell the difference for tracking purposes. 
      END
    end
    entry do
      name '--feedback-server'
      notes <<-'END'
      Alternative feedback server to use when submitting user feedback 
      END
    end
    entry do
      name '--field-trial-handle'
      notes <<-'END'
      Handle to the shared memory segment containing field trial state that is to be shared between processes. The argument to this switch is the handle id (pointer on Windows) as a string, followed by a comma, then the size of the shared memory segment as a string. 
      END
    end
    entry do
      name '--first-exec-after-boot'
      notes <<-'END'
      Passed to Chrome the first time that it's run after the system boots. Not passed on restart after sign out. 
      END
    end
    entry do
      name '--flag-switches-begin'
      notes <<-'END'
      These two flags are added around the switches about:flags adds to the command line. This is useful to see which switches were added by about:flags on about:version. They don't have any effect. 
      END
    end
    entry do
      name '--flag-switches-end'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--font-cache-shared-handle'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      DirectWrite FontCache is shared by browser to renderers using shared memory. This switch allows us to pass the shared memory handle to the renderer. 
      END
    end
    entry do
      name '--force-android-app-mode'
      notes <<-'END'
      Forces Android application mode. This hides certain system UI elements and forces the app to be installed if it hasn't been already. 
      END
    end
    entry do
      name '--force-app-mode'
      notes <<-'END'
      Forces application mode. This hides certain system UI elements and forces the app to be installed if it hasn't been already. 
      END
    end
    entry do
      name '--force-desktop-ios-promotion'
      notes <<-'END'
      Forces Desktop to iOS promotion to appear in windows whenever an entrypoint is triggered. 
      END
    end
    entry do
      name '--force-dev-mode-highlighting'
      notes <<-'END'
      Whether to force developer mode extensions highlighting. 
      END
    end
    entry do
      name '--force-device-scale-factor'
      notes <<-'END'
      Overrides the device scale factor for the browser UI and the contents. 
      END
    end
    entry do
      name '--force-display-list-2d-canvas'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--force-fieldtrial-params'
      notes <<-'END'
      This option can be used to force parameters of field trials when testing changes locally. The argument is a param list of (key, value) pairs prefixed by an associated (trial, group) pair. You specify the param list for multiple (trial, group) pairs with a comma separator. Example: "Trial1.Group1:k1/v1/k2/v2,Trial2.Group2:k3/v3/k4/v4" Trial names, groups names, parameter names, and value should all be URL escaped for all non-alphanumeric characters. 
      END
    end
    entry do
      name '--force-fieldtrials'
      notes <<-'END'
      This option can be used to force field trials when testing changes locally. The argument is a list of name and value pairs, separated by slashes. If a trial name is prefixed with an asterisk, that trial will start activated. For example, the following argument defines two trials, with the second one activated: "GoogleNow/Enable/*MaterialDesignNTP/Default/" This option can also be used by the browser process to send the list of trials to a non-browser process, using the same format. See FieldTrialList::CreateTrialsFromString() in field_trial.h for details. 
      END
    end
    entry do
      name '--force-first-run'
      notes <<-'END'
      Displays the First Run experience when the browser is started, regardless of whether or not it's actually the First Run (this overrides kNoFirstRun). 
      END
    end
    entry do
      name '--force-first-run-ui'
      notes <<-'END'
      Forces first-run UI to be shown for every login. 
      END
    end
    entry do
      name '--force-gpu-mem-available-mb'
      notes <<-'END'
      Sets the total amount of memory that may be allocated for GPU resources 
      END
    end
    entry do
      name '--force-gpu-rasterization'
      notes <<-'END'
      Always use the Skia GPU backend for drawing layer tiles. Only valid with GPU accelerated compositing + impl-side painting. Overrides the kEnableGpuRasterization flag. 
      END
    end
    entry do
      name '--force-happiness-tracking-system'
      notes <<-'END'
      Force enables the Happiness Tracking System for the device. This ignores user profile check and time limits and shows the notification every time for any type of user. Should be used only for testing. 
      END
    end
    entry do
      name '--force-load-easy-unlock-app-in-tests'
      notes <<-'END'
      Force easy unlock app loading in test. TODO(xiyuan): Remove this when app could be bundled with Chrome. 
      END
    end
    entry do
      name '--force-local-ntp'
      notes <<-'END'
      Forces Chrome to use localNTP instead of server (GWS) NTP. 
      END
    end
    entry do
      name '--force-login-manager-in-tests'
      notes <<-'END'
      Usually in browser tests the usual login manager bringup is skipped so that tests can change how it's brought up. This flag disables that. 
      END
    end
    entry do
      name '--force-mediafoundation'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Force the use of MediaFoundation for video capture. This is only supported in Windows 7 and above. Used, like |kForceDirectShowVideoCapture|, to troubleshoot problems in Windows platforms. 
      END
    end
    entry do
      name '--force-overlay-fullscreen-video'
      notes <<-'END'
      Forces use of hardware overlay for fullscreen video playback. Useful for testing the Android overlay fullscreen functionality on other platforms. 
      END
    end
    entry do
      name '--force-pnacl-subzero'
      notes <<-'END'
      Force use of the Subzero as the PNaCl translator instead of LLC. 
      END
    end
    entry do
      name '--force-renderer-accessibility'
      notes <<-'END'
      Force renderer accessibility to be on instead of enabling it on demand when a screen reader is detected. The disable-renderer-accessibility switch overrides this if present. 
      END
    end
    entry do
      name '--force-show-update-menu-badge'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Forces the update menu badge to show. 
      END
    end
    entry do
      name '--force-show-update-menu-item'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Forces the update menu item to show. 
      END
    end
    entry do
      name '--force-system-compositor-mode'
      notes <<-'END'
      Force system compositor mode when set. 
      END
    end
    entry do
      name '--force-ui-direction'
      notes <<-'END'
      Force the UI to a specific direction. Valid values are "ltr" (left-to-right) and "rtl" (right-to-left). 
      END
    end
    entry do
      name '--force-variation-ids'
      notes <<-'END'
      Forces additional Chrome Variation Ids that will be sent in X-Client-Data header, specified as a 64-bit encoded list of numeric experiment ids. Ids prefixed with the character "t" will be treated as Trigger Variation Ids. 
      END
    end
    entry do
      name '--force-video-overlays'
      notes <<-'END'
      Force media player using SurfaceView instead of SurfaceTexture on Android. 
      END
    end
    entry do
      name '--force-wave-audio'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Use Windows WaveOut/In audio API even if Core Audio is supported. 
      END
    end
    entry do
      name '--force-webrtc-ip-handling-policy'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_WEBRTC) must be defined.
      ```
      Override WebRTC IP handling policy to mimic the behavior when WebRTC IP handling policy is specified in Preferences. 
      END
    end
    entry do
      name '--full-memory-crash-report'
      notes <<-'END'
      Generates full memory crash dump. 
      END
    end
    entry do
      name '--gaia-url'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--gcm-checkin-url'
      notes <<-'END'
      Sets the checkin service endpoint that will be used for performing Google Cloud Messaging checkins. 
      END
    end
    entry do
      name '--gcm-mcs-endpoint'
      notes <<-'END'
      Sets the Mobile Connection Server endpoint that will be used for Google Cloud Messaging. 
      END
    end
    entry do
      name '--gcm-registration-url'
      notes <<-'END'
      Sets the registration endpoint that will be used for creating new Google Cloud Messaging registrations. 
      END
    end
    entry do
      name '--generate-accessibility-test-expectations'
      notes <<-'END'
      For development / testing only. When running content_browsertests, saves output of failing accessibility tests to their expectations files in content/test/data/accessibility/, overwriting existing file content. 
      END
    end
    entry do
      name '--gl'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--gl-composited-texture-quad-border'
      notes <<-'END'
      Renders a green border around GL composited texture quads to help debug and study overlay support. 
      END
    end
    entry do
      name '--gl-shader-interm-output'
      notes <<-'END'
      Include ANGLE's intermediate representation (AST) output in shader compilation info logs. 
      END
    end
    entry do
      name '--gles'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--golden-screenshots-dir'
      notes <<-'END'
      Screenshot testing: specifies the directory where the golden screenshots are stored. 
      END
    end
    entry do
      name '--google-apis-url'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--google-base-url'
      notes <<-'END'
      Specifies an alternate URL to use for speaking to Google. Useful for testing. 
      END
    end
    entry do
      name '--google-doodle-url'
      notes <<-'END'
      Overrides the URL used to fetch the current Google Doodle. 
      END
    end
    entry do
      name '--google-profile-info'
      notes <<-'END'
      Enables using GAIA information to populate profile name and icon. 
      END
    end
    entry do
      name '--google-url'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--gpu-active-device-id'
      notes <<-'END'
      Passes active gpu device id from browser process to GPU process. 
      END
    end
    entry do
      name '--gpu-active-vendor-id'
      notes <<-'END'
      Passes active gpu vendor id from browser process to GPU process. 
      END
    end
    entry do
      name '--gpu-device-id'
      notes <<-'END'
      Passes gpu device_id from browser process to GPU process. 
      END
    end
    entry do
      name '--gpu-driver-bug-workarounds'
      notes <<-'END'
      Pass a set of GpuDriverBugWorkaroundType ids, seperated by ','. 
      END
    end
    entry do
      name '--gpu-driver-date'
      notes <<-'END'
      Passes gpu driver_date from browser process to GPU process. 
      END
    end
    entry do
      name '--gpu-driver-vendor'
      notes <<-'END'
      Passes gpu driver_vendor from browser process to GPU process. 
      END
    end
    entry do
      name '--gpu-driver-version'
      notes <<-'END'
      Passes gpu driver_version from browser process to GPU process. 
      END
    end
    entry do
      name '--gpu-launcher'
      notes <<-'END'
      Extra command line options for launching the GPU process (normally used for debugging). Use like renderer-cmd-prefix. 
      END
    end
    entry do
      name '--gpu-no-complete-info-collection'
      notes <<-'END'
      Testing switch to not launch the gpu process for full gpu info collection. 
      END
    end
    entry do
      name '--gpu-no-context-lost'
      notes <<-'END'
      Inform Chrome that a GPU context will not be lost in power saving mode, screen saving mode, etc.  Note that this flag does not ensure that a GPU context will never be lost in any situations, say, a GPU reset. 
      END
    end
    entry do
      name '--gpu-process'
      notes <<-'END'
      Makes this process a GPU sub-process. 
      END
    end
    entry do
      name '--gpu-program-cache-size-kb'
      notes <<-'END'
      Sets the maximum size of the in-memory gpu program cache, in kb 
      END
    end
    entry do
      name '--gpu-rasterization-msaa-sample-count'
      notes <<-'END'
      The number of multisample antialiasing samples for GPU rasterization. Requires MSAA support on GPU to have an effect. 0 disables MSAA. 
      END
    end
    entry do
      name '--gpu-sandbox-allow-sysv-shm'
      notes <<-'END'
      Allows shmat() system call in the GPU sandbox. 
      END
    end
    entry do
      name '--gpu-sandbox-failures-fatal'
      notes <<-'END'
      Makes GPU sandbox failures fatal. 
      END
    end
    entry do
      name '--gpu-sandbox-start-early'
      notes <<-'END'
      Starts the GPU sandbox before creating a GL context. 
      END
    end
    entry do
      name '--gpu-secondary-device-ids'
      notes <<-'END'
      Passes secondary gpu device ids from browser process to GPU process. 
      END
    end
    entry do
      name '--gpu-secondary-vendor-ids'
      notes <<-'END'
      Passes secondary gpu vendor ids from browser process to GPU process. 
      END
    end
    entry do
      name '--gpu-startup-dialog'
      notes <<-'END'
      Causes the GPU process to display a dialog on launch. 
      END
    end
    entry do
      name '--gpu-testing-device-id'
      notes <<-'END'
      Override gpu device id from the GpuInfoCollector. 
      END
    end
    entry do
      name '--gpu-testing-driver-date'
      notes <<-'END'
      Override gpu driver date from the GpuInfoCollector. 
      END
    end
    entry do
      name '--gpu-testing-gl-renderer'
      notes <<-'END'
      Override gl renderer from the GpuInfoCollector. 
      END
    end
    entry do
      name '--gpu-testing-gl-vendor'
      notes <<-'END'
      Override gl vendor from the GpuInfoCollector. 
      END
    end
    entry do
      name '--gpu-testing-gl-version'
      notes <<-'END'
      Override gl version from the GpuInfoCollector. 
      END
    end
    entry do
      name '--gpu-testing-os-version'
      notes <<-'END'
      Override os version from GpuControlList::MakeDecision. 
      END
    end
    entry do
      name '--gpu-testing-secondary-device-ids'
      notes <<-'END'
      Override secondary gpu device ids from the GpuInfoCollector. 
      END
    end
    entry do
      name '--gpu-testing-secondary-vendor-ids'
      notes <<-'END'
      Override secondary gpu vendor ids from the GpuInfoCollector. 
      END
    end
    entry do
      name '--gpu-testing-vendor-id'
      notes <<-'END'
      Override gpu vendor id from the GpuInfoCollector. 
      END
    end
    entry do
      name '--gpu-vendor-id'
      notes <<-'END'
      Passes gpu vendor_id from browser process to GPU process. 
      END
    end
    entry do
      name '--guest-wallpaper-large'
      notes <<-'END'
      Large wallpaper to use in guest mode (as path to trusted, non-user-writable JPEG file). 
      END
    end
    entry do
      name '--guest-wallpaper-small'
      notes <<-'END'
      Small wallpaper to use in guest mode (as path to trusted, non-user-writable JPEG file). 
      END
    end
    entry do
      name '--h'
      notes <<-'END'
      ```
      The constants OS_CHROMEOS and OS_MACOSX must not be defined, and the constant OS_POSIX must be defined.
      ```
      No description 
      END
    end
    entry do
      name '--has-chromeos-diamond-key'
      notes <<-'END'
      If true, the Chromebook has a keyboard with a diamond key. 
      END
    end
    entry do
      name '--headless'
      notes <<-'END'
      Run in headless mode, i.e., without a UI or display server dependencies. 
      END
    end
    entry do
      name '--help'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--hide'
      notes <<-'END'
      "Hide" value for kCrosRegionsMode (VPD values are hidden). 
      END
    end
    entry do
      name '--hide-icons'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Makes Windows happy by allowing it to show "Enable access to this program" checkbox in Add/Remove Programs-&gt;Set Program Access and Defaults. This only shows an error box because the only way to hide Chrome is by uninstalling it. 
      END
    end
    entry do
      name '--hide-scrollbars'
      notes <<-'END'
      Hide scrollbars from screenshots. 
      END
    end
    entry do
      name '--history-entry-requires-user-gesture'
      notes <<-'END'
      Don't allow content to arbitrarily append to the back/forward list. The page must prcoess a user gesture before an entry can be added. 
      END
    end
    entry do
      name '--homedir'
      notes <<-'END'
      Defines user homedir. This defaults to primary user homedir. 
      END
    end
    entry do
      name '--homepage'
      notes <<-'END'
      Specifies which page will be displayed in newly-opened tabs. We need this for testing purposes so that the UI tests don't depend on what comes up for http://google.com. 
      END
    end
    entry do
      name '--host'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--host-pairing-oobe'
      notes <<-'END'
      With this switch, start remora OOBE with the pairing screen. 
      END
    end
    entry do
      name '--host-resolver-retry-attempts'
      notes <<-'END'
      The maximum number of retry attempts to resolve the host. Set this to zero to disable host resolver retry attempts. 
      END
    end
    entry do
      name '--host-resolver-rules'
      notes <<-'END'
      These mappings only apply to the host resolver. 
      END
    end
    entry do
      name '--host-rules'
      notes <<-'END'
      Comma-separated list of rules that control how hostnames are mapped.  For example: "MAP * 127.0.0.1" --&gt; Forces all hostnames to be mapped to 127.0.0.1 "MAP *.google.com proxy" --&gt; Forces all google.com subdomains to be resolved to "proxy". "MAP test.com [::1]:77 --&gt; Forces "test.com" to resolve to IPv6 loopback. Will also force the port of the resulting socket address to be 77. "MAP * baz, EXCLUDE www.google.com" --&gt; Remaps everything to "baz", except for "www.google.com".  These mappings apply to the endpoint host in a net::URLRequest (the TCP connect and host resolver in a direct connection, and the CONNECT in an http proxy connection, and the endpoint host in a SOCKS proxy connection). 
      END
    end
    entry do
      name '--icu-data-dir'
      notes <<-'END'
      The path where ICU initialization data can be found. If not provided, the service binary's directory is assumed. 
      END
    end
    entry do
      name '--ignore-autocomplete-off-autofill'
      notes <<-'END'
      Ignores autocomplete="off" for Autofill data (profiles + credit cards). 
      END
    end
    entry do
      name '--ignore-certificate-errors'
      notes <<-'END'
      Ignores certificate-related errors. 
      END
    end
    entry do
      name '--ignore-gpu-blacklist'
      notes <<-'END'
      Ignores GPU blacklist. 
      END
    end
    entry do
      name '--ignore-missing-cdm-host-file'
      notes <<-'END'
      By default, if any CDM host (including signature) file is missing, the CDM will not be called to verify the host. Enable this switch to ignore missing CDM host files. This can be used in tests. 
      END
    end
    entry do
      name '--ignore-urlfetcher-cert-requests'
      notes <<-'END'
      Causes net::URLFetchers to ignore requests for SSL client certificates, causing them to attempt an unauthenticated SSL/TLS session. This is intended for use when testing various service URLs (eg: kPromoServerURL, kSbURLPrefix, kSyncServiceURL, etc). 
      END
    end
    entry do
      name '--ignore-user-profile-mapping-for-tests'
      notes <<-'END'
      If true, profile selection in UserManager will always return active user's profile. TODO(nkostlyev): http://crbug.com/364604 - Get rid of this switch after we turn on multi-profile feature on ChromeOS. 
      END
    end
    entry do
      name '--in-process-gpu'
      notes <<-'END'
      Run the GPU process as a thread in the browser process. 
      END
    end
    entry do
      name '--incognito'
      notes <<-'END'
      Causes the browser to launch directly in incognito mode. 
      END
    end
    entry do
      name '--inert-visual-viewport'
      notes <<-'END'
      Makes all APIs reflect the layout viewport. 
      END
    end
    entry do
      name '--input'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--install-chrome-app'
      notes <<-'END'
      Causes Chrome to initiate an installation flow for the given app. 
      END
    end
    entry do
      name '--install-supervised-user-whitelists'
      notes <<-'END'
      A list of whitelists to install for a supervised user, for testing. The list is of the following form: &lt;id&gt;[:&lt;name&gt;],[&lt;id&gt;[:&lt;name&gt;],...] 
      END
    end
    entry do
      name '--instant-process'
      notes <<-'END'
      Marks a renderer as an Instant process. 
      END
    end
    entry do
      name '--interests-url'
      notes <<-'END'
      The URL for the interests API. 
      END
    end
    entry do
      name '--invalidation-use-gcm-channel'
      notes <<-'END'
      Invalidation service should use GCM network channel even if experiment is not enabled. 
      END
    end
    entry do
      name '--ipc-connection-timeout'
      notes <<-'END'
      Overrides the timeout, in seconds, that a child process waits for a connection from the browser before killing itself. 
      END
    end
    entry do
      name '--ipc-dump-directory'
      notes <<-'END'
      ```
      The constant ENABLE_IPC_FUZZER must be defined.
      ```
      Dumps IPC messages sent from renderer processes to the browser process to the given directory. Used primarily to gather samples for IPC fuzzing. 
      END
    end
    entry do
      name '--ipc-fuzzer-testcase'
      notes <<-'END'
      ```
      The constant ENABLE_IPC_FUZZER must be defined.
      ```
      Specifies the testcase used by the IPC fuzzer. 
      END
    end
    entry do
      name '--is-running-in-mash'
      notes <<-'END'
      Chrome is running in Mash. 
      END
    end
    entry do
      name '--isolate-extensions'
      notes <<-'END'
      Enables site isolation for all chrome-extension:// urls. 
      END
    end
    entry do
      name '--isolate-sites-for-testing'
      notes <<-'END'
      Enable site isolation (--site-per-process style isolation) for a subset of sites. The argument is a wildcard pattern which will be matched against the site URL to determine which sites to isolate. This can be used to isolate just one top-level domain, or just one scheme. Example usages: --isolate-sites-for-testing=*.com --isolate-sites-for-testing=https://* 
      END
    end
    entry do
      name '--javascript-harmony'
      notes <<-'END'
      Enables experimental Harmony (ECMAScript 6) features. 
      END
    end
    entry do
      name '--js-flags'
      notes <<-'END'
      Specifies the flags passed to JS engine 
      END
    end
    entry do
      name '--keep-alive-for-test'
      notes <<-'END'
      Used for testing - keeps browser alive after last browser window closes. 
      END
    end
    entry do
      name '--kiosk'
      notes <<-'END'
      Enable kiosk mode. Please note this is not Chrome OS kiosk mode. 
      END
    end
    entry do
      name '--kiosk-printing'
      notes <<-'END'
      Enable automatically pressing the print button in print preview. 
      END
    end
    entry do
      name '--lang'
      notes <<-'END'
      The language file that we want to try to open. Of the form language[-country] where language is the 2 letter code from ISO-639. 
      END
    end
    entry do
      name '--last-launched-app'
      notes <<-'END'
      Pass the app id information to the renderer process, to be used for logging. last-launched-app should be the app that just launched and is spawning the renderer. 
      END
    end
    entry do
      name '--light_muted'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--light_vibrant'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--load-and-launch-app'
      notes <<-'END'
      Loads an app from the specified directory and launches it. 
      END
    end
    entry do
      name '--load-apps'
      notes <<-'END'
      Path to a comma-separated list of apps to load at startup.  The first app in the list will be launched. 
      END
    end
    entry do
      name '--load-extension'
      notes <<-'END'
      Loads an extension from the specified directory. 
      END
    end
    entry do
      name '--load-media-router-component-extension'
      notes <<-'END'
      Loads the Media Router component extension on startup. 
      END
    end
    entry do
      name '--local-heuristics-only-for-password-generation'
      notes <<-'END'
      Removes the requirement that we recieved a ping from the autofill servers and that the user doesn't have the given form blacklisted. Used in testing. 
      END
    end
    entry do
      name '--local-ntp-reload'
      notes <<-'END'
      ```
      The constant GOOGLE_CHROME_BUILD must not be defined.
      ```
      Enables a live-reload for local NTP resources. This only works when Chrome is running from a Chrome source directory. 
      END
    end
    entry do
      name '--local-sync-backend-dir'
      notes <<-'END'
      Specifies the local sync backend directory. The name is chosen to mimic user-data-dir etc. This flag only matters if the enable-local-sync-backend flag is present. 
      END
    end
    entry do
      name '--log-gpu-control-list-decisions'
      notes <<-'END'
      Logs GPU control list decisions when enforcing blacklist rules. 
      END
    end
    entry do
      name '--log-level'
      notes <<-'END'
      Sets the minimum log level. Valid values are from 0 to 3: INFO = 0, WARNING = 1, LOG_ERROR = 2, LOG_FATAL = 3. 
      END
    end
    entry do
      name '--log-net-log'
      notes <<-'END'
      Enables saving net log events to a file and sets the file name to use. 
      END
    end
    entry do
      name '--login-manager'
      notes <<-'END'
      Enables Chrome-as-a-login-manager behavior. 
      END
    end
    entry do
      name '--login-profile'
      notes <<-'END'
      Specifies the profile to use once a chromeos user is logged in. This parameter is ignored if user goes through login screen since user_id hash defines which profile directory to use. In case of browser restart within active session this parameter is used to pass user_id hash for primary user. 
      END
    end
    entry do
      name '--login-user'
      notes <<-'END'
      Specifies the user which is already logged in. 
      END
    end
    entry do
      name '--lso-url'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--ltr'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--main-frame-resizes-are-orientation-changes'
      notes <<-'END'
      Resizes of the main frame are caused by changing between landscape and portrait mode (i.e. Android) so the page should be rescaled to fit. 
      END
    end
    entry do
      name '--make-chrome-default'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      Indicates whether Chrome should be set as the default browser during installation. 
      END
    end
    entry do
      name '--make-default-browser'
      notes <<-'END'
      Makes Chrome default browser 
      END
    end
    entry do
      name '--managed-user-id'
      notes <<-'END'
      Sets the supervised user ID for any loaded or newly created profile to the given value. Pass an empty string to mark the profile as non-supervised. Used for testing. 
      END
    end
    entry do
      name '--managed-user-sync-token'
      notes <<-'END'
      Used to authenticate requests to the Sync service for supervised users. Setting this switch also causes Sync to be set up for a supervised user. 
      END
    end
    entry do
      name '--mark-non-secure-as'
      notes <<-'END'
      Use to opt-in to marking HTTP as non-secure. 
      END
    end
    entry do
      name '--market-url-for-testing'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Sets the market URL for Chrome for use in testing. 
      END
    end
    entry do
      name '--mash'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_PACKAGE_MASH_SERVICES) must be defined.
      ```
      Used to enable Mus+ash. 
      END
    end
    entry do
      name '--material'
      notes <<-'END'
      Material design mode for the |kTopChromeMD| switch. 
      END
    end
    entry do
      name '--material-design-ink-drop-animation-speed'
      notes <<-'END'
      Defines the speed of Material Design visual feedback animations. 
      END
    end
    entry do
      name '--material-hybrid'
      notes <<-'END'
      Material design hybrid mode for the |kTopChromeMD| switch. Targeted for mouse/touch hybrid devices. 
      END
    end
    entry do
      name '--max-gum-fps'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_WEBRTC) must be defined.
      ```
      Override the maximum framerate as can be specified in calls to getUserMedia. This flag expects a value.  Example: --max-gum-fps=17.5 
      END
    end
    entry do
      name '--max-untiled-layer-height'
      notes <<-'END'
      Sets the width and height above which a composited layer will get tiled. 
      END
    end
    entry do
      name '--max-untiled-layer-width'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--media-cache-size'
      notes <<-'END'
      Forces the maximum disk space to be used by the media cache, in bytes. 
      END
    end
    entry do
      name '--mem-pressure-system-reserved-kb'
      notes <<-'END'
      Some platforms typically have very little 'free' memory, but plenty is available in buffers+cached.  For such platforms, configure this amount as the portion of buffers+cached memory that should be treated as unavailable.  If this switch is not used, a simple pressure heuristic based purely on free memory will be used. 
      END
    end
    entry do
      name '--memory-metrics'
      notes <<-'END'
      Sample memory usage with high frequency and store the results to the Renderer.Memory histogram. Used in memory tests. 
      END
    end
    entry do
      name '--memory-pressure-off'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--memory-pressure-thresholds'
      notes <<-'END'
      The memory pressure threshold selection which is used to decide whether and when a memory pressure event needs to get fired. 
      END
    end
    entry do
      name '--memory-pressure-thresholds-mb'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Sets the free memory thresholds below which the system is considered to be under moderate and critical memory pressure. Used in the browser process, and ignored if invalid. Specified as a pair of comma separated integers. See base/win/memory_pressure_monitor.cc for defaults. 
      END
    end
    entry do
      name '--message-center-changes-while-open'
      notes <<-'END'
      Flag to enable or disable notification changes while the message center opens. This flag will be removed once the feature gets stable. 
      END
    end
    entry do
      name '--metrics-client-id'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      This is how the metrics client ID is passed from the browser process to its children. With Crashpad, the metrics client ID is distinct from the crash client ID. 
      END
    end
    entry do
      name '--metrics-recording-only'
      notes <<-'END'
      Enables the recording of metrics reports but disables reporting. In contrast to kDisableMetrics, this executes all the code that a normal client would use for reporting, except the report is dropped rather than sent to the server. This is useful for finding issues in the metrics code during UI and performance tests. 
      END
    end
    entry do
      name '--mhtml-generator-option'
      notes <<-'END'
      Sets options for MHTML generator to skip no-store resources: "skip-nostore-main" - fails to save a page if main frame is 'no-store' "skip-nostore-all" - also skips no-store subresources. 
      END
    end
    entry do
      name '--mock'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--mojo-channel-token'
      notes <<-'END'
      The token to use to construct the message pipe on which to layer ChannelMojo. 
      END
    end
    entry do
      name '--mojo-local-storage'
      notes <<-'END'
      Use a Mojo-based LocalStorage implementation. 
      END
    end
    entry do
      name '--mojo-pipe-token'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--monitoring-destination-id'
      notes <<-'END'
      Allows setting a different destination ID for connection-monitoring GCM messages. Useful when running against a non-prod management server. 
      END
    end
    entry do
      name '--mse-audio-buffer-size-limit'
      notes <<-'END'
      Allows explicitly specifying MSE audio/video buffer sizes. Default values are 150M for video and 12M for audio. 
      END
    end
    entry do
      name '--mse-video-buffer-size-limit'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--mute-audio'
      notes <<-'END'
      Mutes audio sent to the audio device so it is not audible during automated testing. 
      END
    end
    entry do
      name '--nacl-broker'
      notes <<-'END'
      Value for --type that causes the process to run as a NativeClient broker (used for launching NaCl loader processes on 64-bit Windows). 
      END
    end
    entry do
      name '--nacl-dangerous-no-sandbox-nonsfi'
      notes <<-'END'
      Disable sandbox even for non SFI mode. This is particularly unsafe as non SFI NaCl heavily relies on the seccomp sandbox. 
      END
    end
    entry do
      name '--nacl-debug-mask'
      notes <<-'END'
      Uses NaCl manifest URL to choose whether NaCl program will be debugged by debug stub. Switch value format: [!]pattern1,pattern2,...,patternN. Each pattern uses the same syntax as patterns in Chrome extension manifest. The only difference is that * scheme matches all schemes instead of matching only http and https. If the value doesn't start with !, a program will be debugged if manifest URL matches any pattern. If the value starts with !, a program will be debugged if manifest URL does not match any pattern. 
      END
    end
    entry do
      name '--nacl-gdb'
      notes <<-'END'
      Native Client GDB debugger that will be launched automatically when needed. 
      END
    end
    entry do
      name '--nacl-gdb-script'
      notes <<-'END'
      GDB script to pass to the nacl-gdb debugger at startup. 
      END
    end
    entry do
      name '--nacl-loader'
      notes <<-'END'
      Value for --type that causes the process to run as a NativeClient loader for SFI mode. 
      END
    end
    entry do
      name '--nacl-loader-nonsfi'
      notes <<-'END'
      Value for --type that causes the process to run as a NativeClient loader for non SFI mode. 
      END
    end
    entry do
      name '--native'
      notes <<-'END'
      Report native (walk the stack) allocation traces. By default pseudo stacks derived from trace events are reported. 
      END
    end
    entry do
      name '--native-crx-bindings'
      notes <<-'END'
      Enables the use of C++-based extension bindings (instead of JS generation). 
      END
    end
    entry do
      name '--net-log-capture-mode'
      notes <<-'END'
      Sets the granularity of events to capture in the network log. The mode can be set to one of the following values: "Default" "IncludeCookiesAndCredentials" "IncludeSocketBytes"  See the functions of the corresponding name in net_log_capture_mode.h for a description of their meaning. 
      END
    end
    entry do
      name '--netifs-to-ignore'
      notes <<-'END'
      List of network interfaces to ignore. Ignored interfaces will not be used for network connectivity. 
      END
    end
    entry do
      name '--network-country-iso'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      The telephony region (ISO country code) to use in phone number detection. 
      END
    end
    entry do
      name '--new-profile-management'
      notes <<-'END'
      Enables new profile management system, including lock mode. 
      END
    end
    entry do
      name '--new-window'
      notes <<-'END'
      Launches URL in new browser window. 
      END
    end
    entry do
      name '--NewProfileManagement'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--no-default-browser-check'
      notes <<-'END'
      Disables the default browser check. Useful for UI/browser tests where we want to avoid having the default browser info-bar displayed. 
      END
    end
    entry do
      name '--no-experiments'
      notes <<-'END'
      Disables all experiments set on about:flags. Does not disable about:flags itself. Useful if an experiment makes chrome crash at startup: One can start chrome with --no-experiments, disable the problematic lab at about:flags and then restart chrome without this switch again. 
      END
    end
    entry do
      name '--no-first-run'
      notes <<-'END'
      Skip First Run tasks, whether or not it's actually the First Run. Overridden by kForceFirstRun. This does not drop the First Run sentinel and thus doesn't prevent first run from occuring the next time chrome is launched without this flag. 
      END
    end
    entry do
      name '--no-managed-user-acknowledgment-check'
      notes <<-'END'
      Disables checking whether we received an acknowledgment when registering a supervised user. Also disables the timeout during registration that waits for the ack. Useful when debugging against a server that does not support notifications. 
      END
    end
    entry do
      name '--no-network-profile-warning'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Whether or not the browser should warn if the profile is on a network share. This flag is only relevant for Windows currently. 
      END
    end
    entry do
      name '--no-pings'
      notes <<-'END'
      Don't send hyperlink auditing pings 
      END
    end
    entry do
      name '--no-proxy-server'
      notes <<-'END'
      Don't use a proxy server, always make direct connections. Overrides any other proxy server flags that are passed. 
      END
    end
    entry do
      name '--no-referrers'
      notes <<-'END'
      Don't send HTTP-Referer headers. 
      END
    end
    entry do
      name '--no-sandbox'
      notes <<-'END'
      Disables the sandbox for all process types that are normally sandboxed. 
      END
    end
    entry do
      name '--no-service-autorun'
      notes <<-'END'
      Disables the service process from adding itself as an autorun process. This does not delete existing autorun registrations, it just prevents the service from registering a new one. 
      END
    end
    entry do
      name '--no-startup-window'
      notes <<-'END'
      Does not automatically open a browser window on startup (used when launching Chrome for the purpose of hosting background apps). 
      END
    end
    entry do
      name '--no-use-mus-in-renderer'
      notes <<-'END'
      Do not use the mojo UI Service in the Chrome render process. 
      END
    end
    entry do
      name '--no-wifi'
      notes <<-'END'
      Disable features that require WiFi management. 
      END
    end
    entry do
      name '--no-zygote'
      notes <<-'END'
      Disables the use of a zygote process for forking child processes. Instead, child processes will be forked and exec'd directly. Note that --no-sandbox should also be used together with this flag because the sandbox needs the zygote to work. 
      END
    end
    entry do
      name '--noerrdialogs'
      notes <<-'END'
      Suppresses all error dialogs when present. 
      END
    end
    entry do
      name '--non-material'
      notes <<-'END'
      Classic, non-material, mode for the |kTopChromeMD| switch. 
      END
    end
    entry do
      name '--non-secure'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--none'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--normal_muted'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--normal_vibrant'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--note-taking-app-ids'
      notes <<-'END'
      An optional comma-separated list of IDs of apps that can be used to take notes. If unset, a hardcoded list is used instead. 
      END
    end
    entry do
      name '--ntp-snippets-add-incomplete'
      notes <<-'END'
      If this flag is set, we will add downloaded snippets that are missing some critical data to the list. 
      END
    end
    entry do
      name '--ntp-switch-to-existing-tab'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Switch to an existing tab for a suggestion opened from the New Tab Page. 
      END
    end
    entry do
      name '--null'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--num-pac-threads'
      notes <<-'END'
      Specifies the maximum number of threads to use for running the Proxy Autoconfig (PAC) script. 
      END
    end
    entry do
      name '--num-raster-threads'
      notes <<-'END'
      Number of worker threads used to rasterize content. 
      END
    end
    entry do
      name '--oauth2-client-id'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--oauth2-client-secret'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--off'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--on'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--oobe-bootstrapping-master'
      notes <<-'END'
      Indicates that if we should start bootstrapping Master OOBE. 
      END
    end
    entry do
      name '--oobe-guest-session'
      notes <<-'END'
      Indicates that a guest session has been started before OOBE completion. 
      END
    end
    entry do
      name '--oobe-skip-postlogin'
      notes <<-'END'
      Skips all other OOBE pages after user login. 
      END
    end
    entry do
      name '--oobe-timer-interval'
      notes <<-'END'
      Interval at which we check for total time on OOBE. 
      END
    end
    entry do
      name '--open-ash'
      notes <<-'END'
      ```
      The constant USE_ASH must be defined.
      ```
      No description 
      END
    end
    entry do
      name '--opengraph'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--origin-to-force-quic-on'
      notes <<-'END'
      Specifies a comma separated list of host-port pairs to force use of QUIC on. 
      END
    end
    entry do
      name '--origin-trial-disabled-features'
      notes <<-'END'
      Contains a list of feature names for which origin trial experiments should be disabled. Names should be separated by "|" characters. 
      END
    end
    entry do
      name '--origin-trial-public-key'
      notes <<-'END'
      Overrides the default public key for checking origin trial tokens. 
      END
    end
    entry do
      name '--original-process-start-time'
      notes <<-'END'
      The time that a new chrome process which is delegating to an already running chrome process started. (See ProcessSingleton for more details.) 
      END
    end
    entry do
      name '--osmesa'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--output'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--override'
      notes <<-'END'
      "Override" value for kCrosRegionsMode (region's data is read first). 
      END
    end
    entry do
      name '--override-metrics-upload-url'
      notes <<-'END'
      Override the URL to which metrics logs are sent for debugging. 
      END
    end
    entry do
      name '--override-plugin-power-saver-for-testing'
      notes <<-'END'
      Override the behavior of plugin throttling for testing. By default the throttler is only enabled for a hard-coded list of plugins. Set the value to 'always' to always throttle every plugin instance. 
      END
    end
    entry do
      name '--override-use-software-gl-for-tests'
      notes <<-'END'
      Forces the use of software GL instead of hardware gpu. 
      END
    end
    entry do
      name '--overscroll-history-navigation'
      notes <<-'END'
      Controls the behavior of history navigation in response to horizontal overscroll. Set the value to '0' to disable. Set the value to '1' to enable the behavior where pages slide in and out in response to the horizontal overscroll gesture and a screenshot of the target page is shown. Set the value to '2' to enable the simplified overscroll UI where a navigation arrow slides in from the side of the screen in response to the horizontal overscroll gesture. Defaults to '1'. 
      END
    end
    entry do
      name '--ozone-dump-file'
      notes <<-'END'
      Specify location for image dumps. 
      END
    end
    entry do
      name '--ozone-platform'
      notes <<-'END'
      Specify ozone platform implementation to use. 
      END
    end
    entry do
      name '--pack-extension'
      notes <<-'END'
      Packages an extension to a .crx installable file from a given directory. 
      END
    end
    entry do
      name '--pack-extension-key'
      notes <<-'END'
      Optional PEM private key to use in signing packaged .crx. 
      END
    end
    entry do
      name '--parent-profile'
      notes <<-'END'
      Specifies the path to the user data folder for the parent profile. 
      END
    end
    entry do
      name '--parent-window'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--passive-listeners-default'
      notes <<-'END'
      Override the default value for the 'passive' field in javascript addEventListener calls. Values are defined as: 'documentonlytrue' to set the default be true only for document level nodes. 'true' to set the default to be true on all nodes (when not specified). 'forcealltrue' to force the value on all nodes. 
      END
    end
    entry do
      name '--password-store'
      notes <<-'END'
      ```
      The constants OS_CHROMEOS and OS_MACOSX must not be defined, and the constant OS_POSIX must be defined.
      ```
      Specifies which encryption storage backend to use. Possible values are kwallet, kwallet5, gnome, gnome-keyring, gnome-libsecret, basic. Any other value will lead to Chrome detecting the best backend automatically. TODO(crbug.com/571003): Once PasswordStore no longer uses the Keyring or KWallet for storing passwords, rename this flag to stop referencing passwords. Do not rename it sooner, though; developers and testers might rely on it keeping large amounts of testing passwords out of their Keyrings or KWallets. 
      END
    end
    entry do
      name '--permission-request-api-scope'
      notes <<-'END'
      Development flag for permission request API. This flag is needed until the API is finalized. TODO(bauerb): Remove when this flag is not needed anymore. 
      END
    end
    entry do
      name '--permission-request-api-url'
      notes <<-'END'
      Development flag for permission request API. This flag is needed until the API is finalized. TODO(bauerb): Remove when this flag is not needed anymore. 
      END
    end
    entry do
      name '--power-stub'
      notes <<-'END'
      Specifies power stub behavior: 'cycle=2' - Cycles power states every 2 seconds. See FakeDBusThreadManager::ParsePowerCommandLineSwitch for full details. 
      END
    end
    entry do
      name '--ppapi'
      notes <<-'END'
      Argument to the process type that indicates a PPAPI plugin process type. 
      END
    end
    entry do
      name '--ppapi-antialiased-text-enabled'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      The boolean value (0/1) of FontRenderParams::antialiasing to be passed to Ppapi processes. 
      END
    end
    entry do
      name '--ppapi-broker'
      notes <<-'END'
      Argument to the process type that indicates a PPAPI broker process type. 
      END
    end
    entry do
      name '--ppapi-flash-args'
      notes <<-'END'
      "Command-line" arguments for the PPAPI Flash; used for debugging options. 
      END
    end
    entry do
      name '--ppapi-flash-path'
      notes <<-'END'
      Use the PPAPI (Pepper) Flash found at the given path. 
      END
    end
    entry do
      name '--ppapi-flash-version'
      notes <<-'END'
      Report the given version for the PPAPI (Pepper) Flash. The version should be numbers separated by '.'s (e.g., "12.3.456.78"). If not specified, it defaults to "10.2.999.999". 
      END
    end
    entry do
      name '--ppapi-in-process'
      notes <<-'END'
      Runs PPAPI (Pepper) plugins in-process. 
      END
    end
    entry do
      name '--ppapi-plugin-launcher'
      notes <<-'END'
      Specifies a command that should be used to launch the ppapi plugin process. Useful for running the plugin process through purify or quantify.  Ex: --ppapi-plugin-launcher="path\to\purify /Run=yes" 
      END
    end
    entry do
      name '--ppapi-startup-dialog'
      notes <<-'END'
      Causes the PPAPI sub process to display a dialog on launch. Be sure to use --no-sandbox as well or the sandbox won't allow the dialog to display. 
      END
    end
    entry do
      name '--ppapi-subpixel-rendering-setting'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      The enum value of FontRenderParams::subpixel_rendering to be passed to Ppapi processes. 
      END
    end
    entry do
      name '--precache-config-settings-url'
      notes <<-'END'
      The URL that provides the PrecacheConfigurationSettings proto. 
      END
    end
    entry do
      name '--precache-manifest-url-prefix'
      notes <<-'END'
      Precache manifests will be served from URLs with this prefix. 
      END
    end
    entry do
      name '--prerender-from-omnibox'
      notes <<-'END'
      Triggers prerendering of pages from suggestions in the omnibox. Only has an effect when Instant is either disabled or restricted to search, and when prerender is enabled. 
      END
    end
    entry do
      name '--previous-app'
      notes <<-'END'
      previous-app should be the app that was running when last-launched-app started. 
      END
    end
    entry do
      name '--primary'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--primordial-pipe-token'
      notes <<-'END'
      Provides a child process with a token string they can use to establish a primordial message pipe to the parent. 
      END
    end
    entry do
      name '--privet-ipv6-only'
      notes <<-'END'
      Use IPv6 only for privet HTTP. 
      END
    end
    entry do
      name '--process-per-site'
      notes <<-'END'
      Enable the "Process Per Site" process model for all domains. This mode consolidates same-site pages so that they share a single process.  More details here: - http://www.chromium.org/developers/design-documents/process-models - The class comment in site_instance.h, listing the supported process models.  IMPORTANT: This isn't to be confused with --site-per-process (which is about isolation, not consolidation). You probably want the other one. 
      END
    end
    entry do
      name '--process-per-tab'
      notes <<-'END'
      Runs each set of script-connected tabs (i.e., a BrowsingInstance) in its own renderer process.  We default to using a renderer process for each site instance (i.e., group of pages from the same registered domain with script connections to each other). 
      END
    end
    entry do
      name '--process-service-name'
      notes <<-'END'
      The name of the service the process is starting for. 
      END
    end
    entry do
      name '--product-version'
      notes <<-'END'
      Outputs the product version information and quit. Used as an internal api to detect the installed version of Chrome on Linux. 
      END
    end
    entry do
      name '--profile-directory'
      notes <<-'END'
      Selects directory of profile to associate with the first browser launched. 
      END
    end
    entry do
      name '--profiler-timing'
      notes <<-'END'
      Configure whether chrome://profiler will contain timing information. This option is enabled by default. A value of "0" will disable profiler timing, while all other values will enable it. 
      END
    end
    entry do
      name '--profiling-at-start'
      notes <<-'END'
      Starts the sampling based profiler for the browser process at startup. This will only work if chrome has been built with the gyp variable profiling=1. The output will go to the value of kProfilingFile. 
      END
    end
    entry do
      name '--profiling-file'
      notes <<-'END'
      Specifies a location for profiling output. This will only work if chrome has been built with the gyp variable profiling=1 or gn arg enable_profiling=true.  {pid} if present will be replaced by the pid of the process. {count} if present will be incremented each time a profile is generated for this process. The default is chrome-profile-{pid} for the browser and test-profile-{pid} for tests. 
      END
    end
    entry do
      name '--profiling-flush'
      notes <<-'END'
      Controls whether profile data is periodically flushed to a file. Normally the data gets written on exit but cases exist where chrome doesn't exit cleanly (especially when using single-process). A time in seconds can be specified. 
      END
    end
    entry do
      name '--progress-bar-animation'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Specifies Android phone page loading progress bar animation. 
      END
    end
    entry do
      name '--progress-bar-completion'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      When blink should declare a load "done" for the purpose of the progress bar. 
      END
    end
    entry do
      name '--prompt-for-external-extensions'
      notes <<-'END'
      ```
      The constant CHROMIUM_BUILD must be defined.
      ```
      Should we prompt the user before allowing external extensions to install? This flag is available on Chromium for testing purposes. 
      END
    end
    entry do
      name '--proxy-auto-detect'
      notes <<-'END'
      Forces proxy auto-detection. 
      END
    end
    entry do
      name '--proxy-bypass-list'
      notes <<-'END'
      Specifies a list of hosts for whom we bypass proxy settings and use direct connections. Ignored if --proxy-auto-detect or --no-proxy-server are also specified. This is a comma-separated list of bypass rules. See: "net/proxy/proxy_bypass_rules.h" for the format of these rules. 
      END
    end
    entry do
      name '--proxy-pac-url'
      notes <<-'END'
      Uses the pac script at the given URL 
      END
    end
    entry do
      name '--proxy-server'
      notes <<-'END'
      Uses a specified proxy server, overrides system settings. This switch only affects HTTP and HTTPS requests. 
      END
    end
    entry do
      name '--quic-connection-options'
      notes <<-'END'
      Specifies a comma separated list of QUIC connection options to send to the server. 
      END
    end
    entry do
      name '--quic-host-whitelist'
      notes <<-'END'
      Specifies a comma separated list of hosts to whitelist QUIC for. 
      END
    end
    entry do
      name '--quic-max-packet-length'
      notes <<-'END'
      Specifies the maximum length for a QUIC packet. 
      END
    end
    entry do
      name '--quic-version'
      notes <<-'END'
      Specifies the version of QUIC to use. 
      END
    end
    entry do
      name '--rdp_desktop_session'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--reader-mode-feedback'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--reader-mode-heuristics'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--rebaseline-pixel-tests'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_PLUGINS) must be defined.
      ```
      Makes browser pixel tests overwrite the reference if it does not match. 
      END
    end
    entry do
      name '--reduce-security-for-testing'
      notes <<-'END'
      Enables more web features over insecure connections. Designed to be used for testing purposes only. 
      END
    end
    entry do
      name '--reduced-referrer-granularity'
      notes <<-'END'
      Reduce the default `referer` header's granularity. 
      END
    end
    entry do
      name '--register-font-files'
      notes <<-'END'
      Registers additional font files on Windows (for fonts outside the usual %WINDIR%\Fonts location). Multiple files can be used by separating them with a semicolon (;). 
      END
    end
    entry do
      name '--register-pepper-plugins'
      notes <<-'END'
      Register Pepper plugins (see pepper_plugin_list.cc for its format). 
      END
    end
    entry do
      name '--relauncher'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      A process type (switches::kProcessType) that relaunches the browser. See chrome/browser/mac/relauncher.h. 
      END
    end
    entry do
      name '--remote-debugging-address'
      notes <<-'END'
      Use the given address instead of the default loopback for accepting remote debugging connections. Should be used together with --remote-debugging-port. Note that the remote debugging protocol does not perform any authentication, so exposing it too widely can be a security risk. 
      END
    end
    entry do
      name '--remote-debugging-port'
      notes <<-'END'
      Enables remote debug over HTTP on the specified port. 
      END
    end
    entry do
      name '--remote-debugging-socket-name'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Enables remote debug over HTTP on the specified socket name. 
      END
    end
    entry do
      name '--remote-debugging-targets'
      notes <<-'END'
      Porvides a list of addresses to discover DevTools remote debugging targets. The format is &lt;host&gt;:&lt;port&gt;,...,&lt;host&gt;:port. 
      END
    end
    entry do
      name '--renderer'
      notes <<-'END'
      Causes the process to run as renderer instead of as browser. 
      END
    end
    entry do
      name '--renderer-client-id'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--renderer-cmd-prefix'
      notes <<-'END'
      The contents of this flag are prepended to the renderer command line. Useful values might be "valgrind" or "xterm -e gdb --args". 
      END
    end
    entry do
      name '--renderer-process-limit'
      notes <<-'END'
      Overrides the default/calculated limit to the number of renderer processes. Very high values for this setting can lead to high memory/resource usage or instability. 
      END
    end
    entry do
      name '--renderer-startup-dialog'
      notes <<-'END'
      Causes the renderer process to display a dialog on launch. Passing this flag also adds kNoSandbox on Windows non-official builds, since that's needed to show a dialog. 
      END
    end
    entry do
      name '--renderer-wait-for-java-debugger'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Block ChildProcessMain thread of the renderer's ChildProcessService until a Java debugger is attached. 
      END
    end
    entry do
      name '--repl'
      notes <<-'END'
      Runs a read-eval-print loop that allows the user to evaluate Javascript expressions. 
      END
    end
    entry do
      name '--report-vp9-as-an-unsupported-mime-type'
      notes <<-'END'
      Force to report VP9 as an unsupported MIME type. 
      END
    end
    entry do
      name '--require-audio-hardware-for-testing'
      notes <<-'END'
      When running tests on a system without the required hardware or libraries, this flag will cause the tests to fail. Otherwise, they silently succeed. 
      END
    end
    entry do
      name '--reset-app-list-install-state'
      notes <<-'END'
      If set, the app list will forget it has been installed on startup. Note this doesn't prevent the app list from running, it just makes Chrome think the app list hasn't been enabled (as in kEnableAppList) yet. 
      END
    end
    entry do
      name '--reset-variation-state'
      notes <<-'END'
      Forces a reset of the one-time-randomized FieldTrials on this client, also known as the Chrome Variations state. 
      END
    end
    entry do
      name '--restore-last-session'
      notes <<-'END'
      Indicates the last session should be restored on startup. This overrides the preferences value. 
      END
    end
    entry do
      name '--root-layer-scrolls'
      notes <<-'END'
      Handles frame scrolls via the root RenderLayer instead of the FrameView. 
      END
    end
    entry do
      name '--rtl'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--run-layout-test'
      notes <<-'END'
      Request the render trees of pages to be dumped as text once they have finished loading. 
      END
    end
    entry do
      name '--safebrowsing-disable-auto-update'
      notes <<-'END'
      If present, safebrowsing only performs update when SafeBrowsingProtocolManager::ForceScheduleNextUpdate() is explicitly called. This is used for testing only. 
      END
    end
    entry do
      name '--safebrowsing-disable-download-protection'
      notes <<-'END'
      TODO(lzheng): Remove this flag once the feature works fine (http://crbug.com/74848).  Disables safebrowsing feature that checks download url and downloads content's hash to make sure the content are not malicious. 
      END
    end
    entry do
      name '--safebrowsing-disable-extension-blacklist'
      notes <<-'END'
      Disables safebrowsing feature that checks for blacklisted extensions. 
      END
    end
    entry do
      name '--safebrowsing-manual-download-blacklist'
      notes <<-'END'
      List of comma-separated sha256 hashes of executable files which the download-protection service should treat as "dangerous."  For a file to show a warning, it also must be considered a dangerous filetype and not be whitelisted otherwise (by signature or URL) and must be on a supported OS. Hashes are in hex. This is used for manual testing when looking for ways to by-pass download protection. 
      END
    end
    entry do
      name '--SafeSites'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--sandbox-ipc'
      notes <<-'END'
      Causes the process to run as a sandbox IPC subprocess. 
      END
    end
    entry do
      name '--save-page-as-mhtml'
      notes <<-'END'
      Disable saving pages as HTML-only, disable saving pages as HTML Complete (with a directory of sub-resources). Enable only saving pages as MHTML. See http://crbug.com/120416 for how to remove this switch. 
      END
    end
    entry do
      name '--saveas-menu-label'
      notes <<-'END'
      Switches 'Save as...' context and app menu labels to 'Download...'. 
      END
    end
    entry do
      name '--screen-config'
      notes <<-'END'
      Specifies the initial screen configuration, or state of all displays, for FakeDisplayDelegate, see class for format details. 
      END
    end
    entry do
      name '--screenshot'
      notes <<-'END'
      Save a screenshot of the loaded page. 
      END
    end
    entry do
      name '--scripts-require-action'
      notes <<-'END'
      Notify the user and require consent for extensions running scripts. Appending --scripts-require-action=1 has the same effect as --enable-scripts-require-action (see below). 
      END
    end
    entry do
      name '--scroll-end-effect'
      notes <<-'END'
      Enables or disables scroll end effect in response to vertical overscroll. Set the value to '1' to enable the feature, and set to '0' to disable. Defaults to disabled. 
      END
    end
    entry do
      name '--secondary'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--secondary-display-layout'
      notes <<-'END'
      Specifies the layout mode and offsets for the secondary display for testing. The format is "&lt;t|r|b|l&gt;,&lt;offset&gt;" where t=TOP, r=RIGHT, b=BOTTOM and L=LEFT. For example, 'r,-100' means the secondary display is positioned on the right with -100 offset. (above than primary) 
      END
    end
    entry do
      name '--secondary-ui-md'
      notes <<-'END'
      Applies the material design mode passed via --top-chrome-md to elements throughout Chrome (not just top Chrome). 
      END
    end
    entry do
      name '--service'
      notes <<-'END'
      Causes the process to run as a service process. 
      END
    end
    entry do
      name '--service-overrides'
      notes <<-'END'
      Specifies a JSON file from which to read a set of service metadata overrides. This can be used with the standalone mojo_runner to override executable and package resolution behavior. 
      END
    end
    entry do
      name '--service-request-channel-token'
      notes <<-'END'
      The token to use to construct the message pipe for a service in a child process. 
      END
    end
    entry do
      name '--shared-files'
      notes <<-'END'
      Describes the file descriptors passed to the child process. List: &lt;file id from manifest&gt;:&lt;global descriptor id&gt;,&lt;file id string from manifest&gt; :&lt;global descriptor id&gt;,... 
      END
    end
    entry do
      name '--shill-stub'
      notes <<-'END'
      Overrides network stub behavior. By default, ethernet, wifi and vpn are enabled, and transitions occur instantaneously. Multiple options can be comma separated (no spaces). Note: all options are in the format 'foo=x'. Values are case sensitive and based on Shill names in service_constants.h. See FakeShillManagerClient::SetInitialNetworkState for implementation. Examples: 'clear=1' - Clears all default configurations 'wifi=on' - A wifi network is initially connected ('1' also works) 'wifi=off' - Wifi networks are all initially disconnected ('0' also works) 'wifi=disabled' - Wifi is initially disabled 'wifi=none' - Wifi is unavailable 'wifi=portal' - Wifi connection will be in Portal state 'cellular=1' - Cellular is initially connected 'cellular=LTE' - Cellular is initially connected, technology is LTE 'interactive=3' - Interactive mode, connect/scan/etc requests take 3 secs 
      END
    end
    entry do
      name '--show-app-list'
      notes <<-'END'
      If true the app list will be shown. 
      END
    end
    entry do
      name '--show-autofill-signatures'
      notes <<-'END'
      Annotates forms and fields with Autofill signatures. 
      END
    end
    entry do
      name '--show-autofill-type-predictions'
      notes <<-'END'
      Annotates forms with Autofill field type predictions. 
      END
    end
    entry do
      name '--show-component-extension-options'
      notes <<-'END'
      Makes component extensions appear in chrome://settings/extensions. 
      END
    end
    entry do
      name '--show-composited-layer-borders'
      notes <<-'END'
      Renders a border around compositor layers to help debug and study layer compositing. 
      END
    end
    entry do
      name '--show-fps-counter'
      notes <<-'END'
      Draws a heads-up-display showing Frames Per Second as well as GPU memory usage. If you also use --enable-logging=stderr --vmodule="head*=1" then FPS will also be output to the console log. 
      END
    end
    entry do
      name '--show-icons'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      See kHideIcons. 
      END
    end
    entry do
      name '--show-layer-animation-bounds'
      notes <<-'END'
      Renders a border that represents the bounding box for the layer's animation. 
      END
    end
    entry do
      name '--show-mac-overlay-borders'
      notes <<-'END'
      ```
      The constant OS_IOS must not be defined, and the constant OS_MACOSX must be defined.
      ```
      Show borders around CALayers corresponding to overlays and partial damage. 
      END
    end
    entry do
      name '--show-overdraw-feedback'
      notes <<-'END'
      Visualize overdraw by color-coding elements based on if they have other elements drawn underneath. This is good for showing where the UI might be doing more rendering work than necessary. The colors are hinting at the amount of overdraw on your screen for each pixel, as follows:  True color: No overdraw. Blue: Overdrawn once. Green: Overdrawn twice. Pink: Overdrawn three times. Red: Overdrawn four or more times. 
      END
    end
    entry do
      name '--show-paint-rects'
      notes <<-'END'
      Visibly render a border around paint rects in the web page to help debug and study painting behavior. 
      END
    end
    entry do
      name '--show-property-changed-rects'
      notes <<-'END'
      Show rects in the HUD around layers whose properties have changed. 
      END
    end
    entry do
      name '--show-saved-copy'
      notes <<-'END'
      Command line flag offering a "Show saved copy" option to the user if offline. The various modes are disabled, primary, or secondary. Primary/secondary refers to button placement (for experiment). 
      END
    end
    entry do
      name '--show-screenspace-rects'
      notes <<-'END'
      Show rects in the HUD around the screen-space transformed bounds of every layer. 
      END
    end
    entry do
      name '--show-surface-damage-rects'
      notes <<-'END'
      Show rects in the HUD around damage as it is recorded into each render surface. 
      END
    end
    entry do
      name '--show_summary'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Forces a summary to be displayed below the update menu item. 
      END
    end
    entry do
      name '--silent-debugger-extension-api'
      notes <<-'END'
      Does not show an infobar when an extension attaches to a page using chrome.debugger page. Required to attach to extension background pages. 
      END
    end
    entry do
      name '--silent-launch'
      notes <<-'END'
      Causes Chrome to launch without opening any windows by default. Useful if one wishes to use Chrome as an ash server. 
      END
    end
    entry do
      name '--simulate-critical-update'
      notes <<-'END'
      Simulates a critical update being available. 
      END
    end
    entry do
      name '--simulate-elevated-recovery'
      notes <<-'END'
      Simulates that elevation is needed to recover upgrade channel. 
      END
    end
    entry do
      name '--simulate-outdated'
      notes <<-'END'
      Simulates that current version is outdated. 
      END
    end
    entry do
      name '--simulate-outdated-no-au'
      notes <<-'END'
      Simulates that current version is outdated and auto-update is off. 
      END
    end
    entry do
      name '--simulate-upgrade'
      notes <<-'END'
      Simulates an update being available. 
      END
    end
    entry do
      name '--single-process'
      notes <<-'END'
      Runs the renderer and plugins in the same process as the browser 
      END
    end
    entry do
      name '--site-per-process'
      notes <<-'END'
      Enforces a one-site-per-process security policy: * Each renderer process, for its whole lifetime, is dedicated to rendering pages for just one site. * Thus, pages from different sites are never in the same process. * A renderer process's access rights are restricted based on its site. * All cross-site navigations force process swaps. * &lt;iframe&gt;s are rendered out-of-process whenever the src= is cross-site.  More details here: - http://www.chromium.org/developers/design-documents/site-isolation - http://www.chromium.org/developers/design-documents/process-models - The class comment in site_instance.h, listing the supported process models.  IMPORTANT: this isn't to be confused with --process-per-site (which is about process consolidation, not isolation). You probably want this one. 
      END
    end
    entry do
      name '--skip-gpu-data-loading'
      notes <<-'END'
      Skip gpu info collection, blacklist loading, and blacklist auto-update scheduling at browser startup time. Therefore, all GPU features are available, and about:gpu page shows empty content. The switch is intended only for layout tests. TODO(gab): Get rid of this switch entirely. 
      END
    end
    entry do
      name '--skip-nostore-all'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--skip-nostore-main'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--skip-reencoding-on-skp-capture'
      notes <<-'END'
      Skips reencoding bitmaps as PNGs when the encoded data is unavailable during SKP capture.  This allows for obtaining an accurate sample of the types of images on the web, rather than being weighted towards PNGs that we have encoded ourselves. 
      END
    end
    entry do
      name '--slow'
      notes <<-'END'
      Defines that Material Design visual feedback animations should be slow. 
      END
    end
    entry do
      name '--slow-connections-only'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--slow-down-raster-scale-factor'
      notes <<-'END'
      Re-rasters everything multiple times to simulate a much slower machine. Give a scale factor to cause raster to take that many times longer to complete, such as --slow-down-raster-scale-factor=25. 
      END
    end
    entry do
      name '--sms-test-messages'
      notes <<-'END'
      Sends test messages on first call to RequestUpdate (stub only). 
      END
    end
    entry do
      name '--spdy-proxy-auth-fallback'
      notes <<-'END'
      The origin of the data reduction proxy fallback. 
      END
    end
    entry do
      name '--spdy-proxy-auth-origin'
      notes <<-'END'
      The origin of the data reduction proxy. 
      END
    end
    entry do
      name '--spdy-proxy-auth-value'
      notes <<-'END'
      A test key for data reduction proxy authentication. 
      END
    end
    entry do
      name '--spelling-service-feedback-interval-seconds'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_SPELLCHECK) must be defined.
      ```
      Specifies the number of seconds between sending batches of feedback to spelling service. The default is 30 minutes. The minimum is 5 seconds. This switch is for temporary testing only. TODO(rouslan): Remove this flag when feedback testing is complete. Revisit by August 2013. 
      END
    end
    entry do
      name '--spelling-service-feedback-url'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_SPELLCHECK) must be defined.
      ```
      Specifies the URL where spelling service feedback data will be sent instead of the default URL. This switch is for temporary testing only. TODO(rouslan): Remove this flag when feedback testing is complete. Revisit by August 2013. 
      END
    end
    entry do
      name '--ssl-key-log-file'
      notes <<-'END'
      Causes SSL key material to be logged to the specified file for debugging purposes. See https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS/Key_Log_Format for the format. 
      END
    end
    entry do
      name '--ssl-version-max'
      notes <<-'END'
      Specifies the maximum SSL/TLS version ("tls1", "tls1.1", "tls1.2", or "tls1.3"). 
      END
    end
    entry do
      name '--ssl-version-min'
      notes <<-'END'
      Specifies the minimum SSL/TLS version ("tls1", "tls1.1", "tls1.2", or "tls1.3"). 
      END
    end
    entry do
      name '--stable-release-mode'
      notes <<-'END'
      This makes us disable some web-platform runtime features so that we test content_shell as if it was a stable release. It is only followed when kRunLayoutTest is set. For the features' level, see http://dev.chromium.org/blink/runtime-enabled-features. 
      END
    end
    entry do
      name '--start-fullscreen'
      notes <<-'END'
      Specifies if the browser should start in fullscreen mode, like if the user had pressed F11 right after startup. 
      END
    end
    entry do
      name '--start-maximized'
      notes <<-'END'
      Starts the browser maximized, regardless of any previous settings. 
      END
    end
    entry do
      name '--start-stack-profiler'
      notes <<-'END'
      Starts the stack sampling profiler in the child process. 
      END
    end
    entry do
      name '--started'
      notes <<-'END'
      Value for kTestCrosGaiaIdMigration indicating that migration is started (i.e. all stored user keys will be converted to GaiaId) 
      END
    end
    entry do
      name '--stub'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--stub-cros-settings'
      notes <<-'END'
      Indicates that a stub implementation of CrosSettings that stores settings in memory without signing should be used, treating current user as the owner. This also modifies OwnerSettingsServiceChromeOS::HandlesSetting such that no settings are handled by OwnerSettingsServiceChromeOS. This option is for testing the chromeos build of chrome on the desktop only. 
      END
    end
    entry do
      name '--supports-dual-gpus'
      notes <<-'END'
      Indicates whether the dual GPU switching is supported or not. 
      END
    end
    entry do
      name '--swiftshader'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--swiftshader-path'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--swiftshader-webgl'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--sync-allow-insecure-xmpp-connection'
      notes <<-'END'
      Allows insecure XMPP connections for sync (for testing). 
      END
    end
    entry do
      name '--sync-deferred-startup-timeout-seconds'
      notes <<-'END'
      Allows overriding the deferred init fallback timeout. 
      END
    end
    entry do
      name '--sync-disable-deferred-startup'
      notes <<-'END'
      Enables deferring sync backend initialization until user initiated changes occur. 
      END
    end
    entry do
      name '--sync-enable-get-update-avoidance'
      notes <<-'END'
      Enables feature to avoid unnecessary GetUpdate requests. 
      END
    end
    entry do
      name '--sync-notification-host-port'
      notes <<-'END'
      Overrides the default host:port used for notifications. 
      END
    end
    entry do
      name '--sync-on-draw-hardware'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--sync-short-initial-retry-override'
      notes <<-'END'
      This flag causes sync to retry very quickly (see polling_constants.h) the when it encounters an error, as the first step towards exponential backoff. 
      END
    end
    entry do
      name '--sync-short-nudge-delay-for-test'
      notes <<-'END'
      This flag significantly shortens the delay between nudge cycles. Its primary purpose is to speed up integration tests. The normal delay allows coalescing and prevention of server overload, so don't use this unless you're really sure that it's what you want. 
      END
    end
    entry do
      name '--sync-url'
      notes <<-'END'
      Overrides the default server used for profile sync. 
      END
    end
    entry do
      name '--system-developer-mode'
      notes <<-'END'
      Indicates that the system is running in dev mode. The dev mode probing is done by session manager. 
      END
    end
    entry do
      name '--system-log-upload-frequency'
      notes <<-'END'
      Frequency in Milliseconds for system log uploads. Should only be used for testing purposes. 
      END
    end
    entry do
      name '--tab-management-experiment-type-disabled'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Specifies a particular tab management experiment to enable. 
      END
    end
    entry do
      name '--tab-management-experiment-type-elderberry'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      No description 
      END
    end
    entry do
      name '--task-profiler'
      notes <<-'END'
      Report per-task heap usage and churn in the task profiler. Does not keep track of individual allocations unlike the default and native mode. Keeps only track of summarized churn stats in the task profiler (chrome://profiler). 
      END
    end
    entry do
      name '--test-auto-update-ui'
      notes <<-'END'
      Enables testing for auto update UI. 
      END
    end
    entry do
      name '--test-child-process'
      notes <<-'END'
      When running certain tests that spawn child processes, this switch indicates to the test framework that the current process is a child process. 
      END
    end
    entry do
      name '--test-cros-gaia-id-migration'
      notes <<-'END'
      Controls CrOS GaiaId migration for tests ("" is default). 
      END
    end
    entry do
      name '--test-do-not-initialize-icu'
      notes <<-'END'
      When running certain tests that spawn child processes, this switch indicates to the test framework that the current process should not initialize ICU to avoid creating any scoped handles too early in startup. 
      END
    end
    entry do
      name '--test-gl-lib'
      notes <<-'END'
      Flag used for Linux tests: for desktop GL bindings, try to load this GL library first, but fall back to regular library if loading fails. 
      END
    end
    entry do
      name '--test-name'
      notes <<-'END'
      Passes the name of the current running automated test to Chrome. 
      END
    end
    entry do
      name '--test-type'
      notes <<-'END'
      Type of the current test harness ("browser" or "ui"). 
      END
    end
    entry do
      name '--testing-fixed-http-port'
      notes <<-'END'
      Allows for forcing socket connections to http/https to use fixed ports. 
      END
    end
    entry do
      name '--testing-fixed-https-port'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--timeout'
      notes <<-'END'
      Issues a stop after the specified number of milliseconds.  This cancels all navigation and causes the DOMContentLoaded event to fire. 
      END
    end
    entry do
      name '--tls1'
      notes <<-'END'
      These values aren't switches, but rather the values that kSSLVersionMax and kSSLVersionMin can have. 
      END
    end
    entry do
      name '--tls1.1'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--tls1.2'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--tls1.3'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--top-chrome-md'
      notes <<-'END'
      Enables top Chrome material design elements. 
      END
    end
    entry do
      name '--top-controls-hide-threshold'
      notes <<-'END'
      Percentage of the browser controls need to be hidden before they will auto hide. 
      END
    end
    entry do
      name '--top-controls-show-threshold'
      notes <<-'END'
      Percentage of the browser controls need to be shown before they will auto show. 
      END
    end
    entry do
      name '--top-document-isolation'
      notes <<-'END'
      Groups all out-of-process iframes to a different process from the process of the top document. This is a performance isolation mode. 
      END
    end
    entry do
      name '--touch-calibration'
      notes <<-'END'
      ```
      The constants USE_OZONE and USE_X11 must be defined.
      ```
      The calibration factors given as "&lt;left&gt;,&lt;right&gt;,&lt;top&gt;,&lt;bottom&gt;". 
      END
    end
    entry do
      name '--touch-devices'
      notes <<-'END'
      ```
      The constant OS_LINUX must be defined.
      ```
      Tells chrome to interpret events from these devices as touch events. Only available with XInput 2 (i.e. X server 1.8 or above). The id's of the devices can be retrieved from 'xinput list'. 
      END
    end
    entry do
      name '--touch-events'
      notes <<-'END'
      Enable support for touch event feature detection. 
      END
    end
    entry do
      name '--touch-noise-filtering'
      notes <<-'END'
      ```
      The constants USE_OZONE and USE_X11 must be defined.
      ```
      Tells Chrome to do additional touch noise filtering. Should only be used if the driver level filtering is insufficient. 
      END
    end
    entry do
      name '--touch-selection-strategy'
      notes <<-'END'
      Controls how text selection granularity changes when touch text selection handles are dragged. Should be "character" or "direction". If not specified, the platform default is used. 
      END
    end
    entry do
      name '--trace-config-file'
      notes <<-'END'
      Causes TRACE_EVENT flags to be recorded from startup. This flag will be ignored if --trace-startup or --trace-shutdown is provided. 
      END
    end
    entry do
      name '--trace-export-events-to-etw'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Enables the exporting of the tracing events to ETW. This is only supported on Windows Vista and later. 
      END
    end
    entry do
      name '--trace-shutdown'
      notes <<-'END'
      Causes TRACE_EVENT flags to be recorded beginning with shutdown. Optionally, can specify the specific trace categories to include (e.g. --trace-shutdown=base,net) otherwise, all events are recorded. --trace-shutdown-file can be used to control where the trace log gets stored to since there is otherwise no way to access the result. 
      END
    end
    entry do
      name '--trace-shutdown-file'
      notes <<-'END'
      If supplied, sets the file which shutdown tracing will be stored into, if omitted the default will be used "chrometrace.log" in the current directory. Has no effect unless --trace-shutdown is also supplied. Example: --trace-shutdown --trace-shutdown-file=/tmp/trace_event.log 
      END
    end
    entry do
      name '--trace-startup'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--trace-startup-duration'
      notes <<-'END'
      Sets the time in seconds until startup tracing ends. If omitted a default of 5 seconds is used. Has no effect without --trace-startup, or if --startup-trace-file=none was supplied. 
      END
    end
    entry do
      name '--trace-startup-file'
      notes <<-'END'
      If supplied, sets the file which startup tracing will be stored into, if omitted the default will be used "chrometrace.log" in the current directory. Has no effect unless --trace-startup is also supplied. Example: --trace-startup --trace-startup-file=/tmp/trace_event.log As a special case, can be set to 'none' - this disables automatically saving the result to a file and the first manually recorded trace will then receive all events since startup. 
      END
    end
    entry do
      name '--trace-to-console'
      notes <<-'END'
      Sends a pretty-printed version of tracing info to the console. 
      END
    end
    entry do
      name '--trace-to-file'
      notes <<-'END'
      Sends trace events from these categories to a file. --trace-to-file on its own sends to default categories. 
      END
    end
    entry do
      name '--trace-to-file-name'
      notes <<-'END'
      Specifies the file name for --trace-to-file. If unspecified, it will go to a default file name. 
      END
    end
    entry do
      name '--trace-upload-url'
      notes <<-'END'
      Sets the target URL for uploading tracing data. 
      END
    end
    entry do
      name '--translate-ranker-model-url'
      notes <<-'END'
      Overrides the URL from which the translate ranker model is downloaded. 
      END
    end
    entry do
      name '--translate-script-url'
      notes <<-'END'
      Overrides the default server used for Google Translate. 
      END
    end
    entry do
      name '--translate-security-origin'
      notes <<-'END'
      Overrides security-origin with which Translate runs in an isolated world. 
      END
    end
    entry do
      name '--true'
      notes <<-'END'
      Value indicating whether flag from command line switch is true. 
      END
    end
    entry do
      name '--try-chrome-again'
      notes <<-'END'
      Experimental. Shows a dialog asking the user to try chrome. This flag is to be used only by the upgrade process. 
      END
    end
    entry do
      name '--try-supported-channel-layouts'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Instead of always using the hardware channel layout, check if a driver supports the source channel layout.  Avoids outputting empty channels and permits drivers to enable stereo to multichannel expansion.  Kept behind a flag since some drivers lie about supported layouts and hang when used.  See http://crbug.com/259165 for more details. 
      END
    end
    entry do
      name '--type'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--ui-disable-partial-swap'
      notes <<-'END'
      Disable partial swap which is needed for some OpenGL drivers / emulators. 
      END
    end
    entry do
      name '--ui-enable-layer-lists'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--ui-enable-rgba-4444-textures'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--ui-enable-zero-copy'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--ui-prioritize-in-gpu-process'
      notes <<-'END'
      Prioritizes the UI's command stream in the GPU process 
      END
    end
    entry do
      name '--ui-show-fps-counter'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--ui-show-layer-animation-bounds'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--ui-show-layer-borders'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--ui-show-paint-rects'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--ui-show-property-changed-rects'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--ui-show-screenspace-rects'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--ui-show-surface-damage-rects'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--ui-slow-animations'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--uninstall'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Runs un-installation steps that were done by chrome first-run. 
      END
    end
    entry do
      name '--unlimited-storage'
      notes <<-'END'
      Overrides per-origin quota settings to unlimited storage for any apps/origins.  This should be used only for testing purpose. 
      END
    end
    entry do
      name '--unsafe-pac-url'
      notes <<-'END'
      Pass the full https:// URL to PAC (Proxy Auto Config) scripts. As opposed to the default behavior which strips path and query components before passing to the PAC scripts. 
      END
    end
    entry do
      name '--unsafely-treat-insecure-origin-as-secure'
      notes <<-'END'
      Treat given (insecure) origins as secure origins. Multiple origins can be supplied. Has no effect unless --user-data-dir is also supplied. Example: --unsafely-treat-insecure-origin-as-secure=http://a.test,http://b.test --user-data-dir=/test/only/profile/dir 
      END
    end
    entry do
      name '--use-angle'
      notes <<-'END'
      Select which ANGLE backend to use. Options are: default: Attempts several ANGLE renderers until one successfully initializes, varying ES support by platform. d3d9: Legacy D3D9 renderer, ES2 only. d3d11: D3D11 renderer, ES2 and ES3. warp: D3D11 renderer using software rasterization, ES2 and ES3. gl: Desktop GL renderer, ES2 and ES3. gles: GLES renderer, ES2 and ES3. 
      END
    end
    entry do
      name '--use-cras'
      notes <<-'END'
      ```
      The constant USE_CRAS must be defined.
      ```
      Use CRAS, the ChromeOS audio server. 
      END
    end
    entry do
      name '--use-fake-device-for-media-stream'
      notes <<-'END'
      Use fake device for Media Stream to replace actual camera and microphone. 
      END
    end
    entry do
      name '--use-fake-ui-for-media-stream'
      notes <<-'END'
      Bypass the media stream infobar by selecting the default device for media streams (e.g. WebRTC). Works with --use-fake-device-for-media-stream. 
      END
    end
    entry do
      name '--use-file-for-fake-audio-capture'
      notes <<-'END'
      Play a .wav file as the microphone. Note that for WebRTC calls we'll treat the bits as if they came from the microphone, which means you should disable audio processing (lest your audio file will play back distorted). The input file is converted to suit Chrome's audio buses if necessary, so most sane .wav files should work. You can pass either &lt;path&gt; to play the file looping or &lt;path&gt;%noloop to stop after playing the file to completion. 
      END
    end
    entry do
      name '--use-file-for-fake-video-capture'
      notes <<-'END'
      Use an .y4m file to play as the webcam. See the comments in media/capture/video/file_video_capture_device.h for more details. 
      END
    end
    entry do
      name '--use-first-display-as-internal'
      notes <<-'END'
      Uses the 1st display in --ash-host-window-bounds as internal display. This is for debugging on linux desktop. 
      END
    end
    entry do
      name '--use-gl'
      notes <<-'END'
      Select which implementation of GL the GPU process should use. Options are: desktop: whatever desktop OpenGL the user has installed (Linux and Mac default). egl: whatever EGL / GLES2 the user has installed (Windows default - actually ANGLE). osmesa: The OSMesa software renderer. swiftshader: The SwiftShader software renderer. 
      END
    end
    entry do
      name '--use-gpu-in-tests'
      notes <<-'END'
      Use hardware gpu, if available, for tests. 
      END
    end
    entry do
      name '--use-mobile-user-agent'
      notes <<-'END'
      Set when Chromium should use a mobile user agent. 
      END
    end
    entry do
      name '--use-mock-keychain'
      notes <<-'END'
      ```
      The constant OS_MACOSX must be defined.
      ```
      No description 
      END
    end
    entry do
      name '--use-new-virtual-keyboard-behavior'
      notes <<-'END'
      Use new window behavior for virtual keyboard (do not change work area in non-sticky mode). 
      END
    end
    entry do
      name '--use-passthrough-cmd-decoder'
      notes <<-'END'
      Use the Pass-through command decoder, skipping all validation and state tracking. 
      END
    end
    entry do
      name '--use-simple-cache-backend'
      notes <<-'END'
      Uses experimental simple cache backend if possible. 
      END
    end
    entry do
      name '--use-test-config'
      notes <<-'END'
      Initializes X11 in threaded mode, and sets the |override_redirect| flag when creating X11 windows. Also, exposes the WindowServerTest interface to clients when launched with this flag. 
      END
    end
    entry do
      name '--user-agent'
      notes <<-'END'
      A string used to override the default user agent with a custom one. 
      END
    end
    entry do
      name '--user-always-affiliated'
      notes <<-'END'
      Always treat user as affiliated. TODO(antrim): Remove once test servers correctly produce affiliation ids. 
      END
    end
    entry do
      name '--user-data-dir'
      notes <<-'END'
      Directory where the browser stores the user profile. 
      END
    end
    entry do
      name '--use_new_features_summary'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Forces the new features summary to be displayed below the update menu item. 
      END
    end
    entry do
      name '--utility'
      notes <<-'END'
      Causes the process to run as a utility subprocess. 
      END
    end
    entry do
      name '--utility-allowed-dir'
      notes <<-'END'
      The utility process is sandboxed, with access to one directory. This flag specifies the directory that can be accessed. 
      END
    end
    entry do
      name '--utility-cmd-prefix'
      notes <<-'END'
      The contents of this flag are prepended to the utility process command line. Useful values might be "valgrind" or "xterm -e gdb --args". 
      END
    end
    entry do
      name '--utility-run-elevated'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--v'
      notes <<-'END'
      Gives the default maximal active V-logging level; 0 is the default. Normally positive values are used for V-logging levels. 
      END
    end
    entry do
      name '--v8-cache-options'
      notes <<-'END'
      Set options to cache V8 data. (off, preparse data, or code) 
      END
    end
    entry do
      name '--v8-cache-strategies-for-cache-storage'
      notes <<-'END'
      Set strategies to cache V8 data in CacheStorage. (off, normal, or aggressive) 
      END
    end
    entry do
      name '--validate-crx'
      notes <<-'END'
      Examines a .crx for validity and prints the result. 
      END
    end
    entry do
      name '--validate-input-event-stream'
      notes <<-'END'
      In debug builds, asserts that the stream of input events is valid. 
      END
    end
    entry do
      name '--variations-server-url'
      notes <<-'END'
      Specifies a custom URL for the server which reports variation data to the client. Specifying this switch enables the Variations service on unofficial builds. See variations_service.cc. 
      END
    end
    entry do
      name '--version'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--video-image-texture-target'
      notes <<-'END'
      Texture target for CHROMIUM_image backed video frame textures. 
      END
    end
    entry do
      name '--video-threads'
      notes <<-'END'
      Set number of threads to use for video decoding. 
      END
    end
    entry do
      name '--video-underflow-threshold-ms'
      notes <<-'END'
      Allows clients to override the threshold for when the media renderer will declare the underflow state for the video stream when audio is present. TODO(dalecurtis): Remove once experiments for http://crbug.com/470940 finish. 
      END
    end
    entry do
      name '--viewer-launch-via-appid'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Requests that Chrome launch the Metro viewer process via the given appid (which is assumed to be registered as default browser) and synchronously connect to it. 
      END
    end
    entry do
      name '--virtual-time-budget'
      notes <<-'END'
      If set the system waits the specified number of virtual milliseconds before deeming the page to be ready.  For determinism virtual time does not advance while there are pending network fetches (i.e no timers will fire). Once all network fetches have completed, timers fire and if the system runs out of virtual time is fastforwarded so the next timer fires immediatley, until the specified virtual time budget is exhausted. 
      END
    end
    entry do
      name '--vmodule'
      notes <<-'END'
      Gives the per-module maximal V-logging levels to override the value given by --v.  E.g. "my_module=2,foo*=3" would change the logging level for all code in source files "my_module.*" and "foo*.*" ("-inl" suffixes are also disregarded for this matching).  Any pattern containing a forward or backward slash will be tested against the whole pathname and not just the module.  E.g., "*/foo/bar/*=2" would change the logging level for all code in source files under a "foo/bar" directory. 
      END
    end
    entry do
      name '--wait-for-debugger'
      notes <<-'END'
      Will wait for 60 seconds for a debugger to come to attach to the process. 
      END
    end
    entry do
      name '--wait-for-debugger-children'
      notes <<-'END'
      Will add kWaitForDebugger to every child processes. If a value is passed, it will be used as a filter to determine if the child process should have the kWaitForDebugger flag passed on or not. 
      END
    end
    entry do
      name '--wake-on-wifi-packet'
      notes <<-'END'
      Enables wake on wifi packet feature, which wakes the device on the receipt of network packets from whitelisted sources. 
      END
    end
    entry do
      name '--wallet-service-use-sandbox'
      notes <<-'END'
      Use the sandbox Online Wallet service URL (for developer testing). 
      END
    end
    entry do
      name '--watcher'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Causes the process to run as a watcher process. 
      END
    end
    entry do
      name '--waveout-buffers'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Number of buffers to use for WaveOut. 
      END
    end
    entry do
      name '--webapk-server-url'
      notes <<-'END'
      ```
      The constant OS_ANDROID must be defined.
      ```
      Custom WebAPK server URL for the sake of testing. 
      END
    end
    entry do
      name '--webrtc-stun-probe-trial'
      notes <<-'END'
      ```
      The constant BUILDFLAG(ENABLE_WEBRTC) must be defined.
      ```
      Renderer process parameter for WebRTC Stun probe trial to determine the interval. Please see SetupStunProbeTrial in chrome_browser_field_trials_desktop.cc for more detail. 
      END
    end
    entry do
      name '--webview-enable-safebrowsing-support'
      notes <<-'END'
      used to enable safebrowsing functionality in webview 
      END
    end
    entry do
      name '--webview-sandboxed-renderer'
      notes <<-'END'
      No description 
      END
    end
    entry do
      name '--whitelisted-extension-id'
      notes <<-'END'
      Adds the given extension ID to all the permission whitelists. 
      END
    end
    entry do
      name '--win-jumplist-action'
      notes <<-'END'
      Specifies which category option was clicked in the Windows Jumplist that resulted in a browser startup. 
      END
    end
    entry do
      name '--window-position'
      notes <<-'END'
      Specify the initial window position: --window-position=x,y 
      END
    end
    entry do
      name '--window-size'
      notes <<-'END'
      Sets the initial window size. Provided as string in the format "800,600". 
      END
    end
    entry do
      name '--window-workspace'
      notes <<-'END'
      Specify the initial window workspace: --window-workspace=id 
      END
    end
    entry do
      name '--windows10-custom-titlebar'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Enables custom-drawing the titlebar and tabstrip background so that it's not a garish #FFFFFF like it is by default on Windows 10. 
      END
    end
    entry do
      name '--windows8-search'
      notes <<-'END'
      ```
      The constant OS_WIN must be defined.
      ```
      Indicates that chrome was launched to service a search request in Windows 8. 
      END
    end
    entry do
      name '--winhttp-proxy-resolver'
      notes <<-'END'
      Uses WinHTTP to fetch and evaluate PAC scripts. Otherwise the default is to use Chromium's network stack to fetch, and V8 to evaluate. 
      END
    end
    entry do
      name '--wm-window-animations-disabled'
      notes <<-'END'
      If present animations are disabled. 
      END
    end
    entry do
      name '--zygote'
      notes <<-'END'
      Causes the process to run as a renderer zygote. 
      END
    end
  end

  notes <<-'END'
  * Based on [List of Chromium Command Line Switches by Peter Beverloo](http://peter.sh/experiments/chromium-command-line-switches/?date=2017-03-19)
  END
end
