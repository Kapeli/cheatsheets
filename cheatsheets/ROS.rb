cheatsheet do
  title 'ROS'
  docset_file_name 'ROS'
  keyword 'ros'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Filesystem Command-Line Tools'                  
    entry do
      command   'apt-cache search ros-indigo'
      name      'Search for available packages on Ubuntu'
    end
    
    entry do
      command   'rospack/rosstack'                      
      name      'A tool inspecting packages/stacks. http://wiki.ros.org/rospack'    
      notes     'Usage: `rospack find [package]`'
    end
    
    entry do
      command   'roscd'
      name      'Changes directories to a package or stack. http://wiki.ros.org/rosbash'
      notes     'Usage: `roscd [package[/subdir]]`'
    end
    
    entry do
      command   'rosls'
      name      'Lists package or stack information. http://wiki.ros.org/rosbash'
      notes     'Usage: `rosls [package[/subdir]]`'
    end
    
    entry do
      command   'roscreate-pkg'
      name      'Creates a new ROS package. http://wiki.ros.org/roscreate'
      notes     'Usage: `roscreate-pkg [package name]`'
    end
    
    entry do
      command   'roscreate-stack'
      name      'Creates a new ROS stack. http://wiki.ros.org/roscreate'
      notes     'Usage: `roscreate-stack [path]`'
    end
    
    entry do
      command   'rosdep'
      name      'Installs ROS package system dependencies. http://wiki.ros.org/rosdep'
      notes     'Usage: `rosdep install [package]`'
    end
    
    entry do
      command   'rosmake'
      name      'Builds a ROS package. http://wiki.ros.org/rosmake'
      notes     'Usage: `rosmake [package]`'
    end
    
    entry do
      command   'roswtf'
      name      'Displays errors and warnings about a running ROS system or launch file. http://wiki.ros.org/roswtf'
      notes     'Usage: `roswtf or roswtf [file]`'
    end
 
  end
 
  category do
    id 'Common Command-Line Tools'                  
    
    entry do
      command   'roscore'
      name      'A collection of nodes and programs that are pre-requisites of a ROS-based system. You must have a roscore running in order for ROS nodes to communicate. http://wiki.ros.org/roscore'
      notes     'Usage: `roscore`'
    end
    
    entry do
      command   'rosmsg'
      name      'The rosmsg command-line tool displays information about ROS message types. http://wiki.ros.org/rosmsg'
      notes     'Usage: `rosmsg [options]`'
    end
    
    entry do
      command   'rossrv'
      name      'The rossrv command-line tool displays information about ROS services. http://wiki.ros.org/rosmsg'
      notes     'Usage: `rossrv [options]`'
    end
    
    entry do
      command   'rosrun'
      name      'The rosrun allows you to run an executable in an arbitrary package from anywhere without having to give its full path. http://wiki.ros.org/rosbash'
      notes     'Usage: `rosrun package executable`'
    end
    
    entry do
      command   'rosnode'
      name      'Displays debugging information about ROS nodes, including publications, subscriptions and connections. http://wiki.ros.org/rosnode'
      notes     'Usage: `rosnode [options]`'
    end
  
    entry do
      command   'roslaunch'
      name      'Starts ROS nodes locally and remotely via SSH, as well as setting parameters on the parameter server. http://wiki.ros.org/roslaunch'
      notes     'Usage: `roslaunch [options]`'
    end
  
    entry do
      command   'rostopic'
      name      'A tool for displaying debug information about ROS topics, including publishers, subscribers, publishing rate, and messages. http://wiki.ros.org/rostopic'
      notes     'Usage: `rostopic [options]`'
    end
  
    entry do
      command   'rosparam'
      name      'A tool for getting and setting ROS parameters on the parameter server using YAML-encoded files. http://wiki.ros.org/rosparam'
      notes     'Usage: `rosparam [options]`'
    end
    
    entry do
      command   'rosservice'
      name      'A tool for listing and querying ROS services. http://wiki.ros.org/rosservice'
      notes     'Usage: `rosservice [options]`'
    end
  end
  
  category do
    id 'Logging Command-Line Tools'                  
    
    entry do
      command   'rosbag'
      name      'This is a set of tools for recording from and playing back to ROS topics. It is intended to be high performance and avoids deserialization and reserialization of the messages. http://wiki.ros.org/rosbag'
      notes     'Usage: `rosbag`'
    end 
  end
 
 category do
    id 'Graphical Tools'                  
    
    entry do
      command   'rosgraph'
      name      'Displays a graph of the ROS nodes that are currently running, as well as the ROS topics that connect them. http://wiki.ros.org/rosgraph'
      notes     'Usage: `rosgraph`'
    end 
    
    entry do
      command   'rqt'
      name      'rqt is a Qt-based framework for GUI development for ROS. http://wiki.ros.org/rqt'
      notes     'Usage: `rqt`'
    end
    
    entry do
      command   'rqt_bag'
      name      'rqt\_bag provides a GUI plugin for displaying and replaying ROS bag files. http://wiki.ros.org/rqt_bag'
      notes     'Usage: `rqt_bag`'
    end
    
    entry do
      command   'rqt_consol'
      name      'rqt\_console provides a GUI plugin for displaying and filtering ROS messages. http://wiki.ros.org/rqt_consol'
      notes     'Usage: `rqt_consol`'
    end
  end
   
  category do
    id 'tf Command-Line Tools'                  
    
    entry do
      command   'rosrun tf'
      name      'A tool that prints the information about a particular transformation between a source frame and a target frame. http://wiki.ros.org/tf'
      notes     'Usage: `rosrun tf [options]]`'
    end 
  end
   
  category do
    id 'Workspaces'                  
    entry do
      name 'Create workspace'
      notes <<-'END'
        ```sh
        mkdir catkin_ws
        cd catkin_ws
        wstool init src
        catkin_make
        source devel/setup.bash
        ```
      END
    end
    
    entry do
      name 'Add repo to workspace'
      notes <<-'END'
        ```sh
        roscd
        cd ../src
        wstool set repo_name --git http://github.com/org/repo_name.git --version=indigo-devel
        wstool up
        ```
      END
    end
    
    entry do
      name 'Resolve dependencies in workspace'
      notes <<-'END'
        ```sh
        sudo rosdep init # only once
        rosdep update
        rosdep install --from-paths src --ignore-src --rosdistro=indigo -y
        ```
      END
    end 
  end
   
  category do
    id 'Packages'                  
    entry do
      name 'Create a package'
      notes <<-'END'
        ```sh
        catkin_create_pkg package_name [dependencies ...]
        ```
      END
    end
    
    entry do
      name 'Package folders'
      notes <<-'END'
        ```sh
        include/package_name   # C++ header files
        src                    # Source files, Python libraries in subdirectories
        scripts                # Python nodes and scripts
        msg, srv, action       # Message, Service, and Action definitions
        ```
      END
    end
    
    entry do
      name 'Release repo packages'
      notes <<-'END'
        ```sh
        catkin_generate_changelog
        # review & commit changelogs"
        catkin_prepare_release
        bloom-release --track indigo --ros-distro indigo repo_name
        ```
      END
    end
  end
  
  category do
    id 'CMakeLists.txt'                  
    entry do
      name 'Skeleton'
      notes <<-'END'
        ```sh
        cmake_minimum_required(VERSION 2.8.3)
        project(package_name)
        find_package(catkin REQUIRED)
        catkin_package()
        ```
      END
    end
    
    entry do
      name 'Package dependencies'
      notes <<-'END'
        ```sh
        find_package(catkin REQUIRED COMPONENTS roscpp)
        catkin_package(
          INCLUDE_DIRS include
          LIBRARIES ${PROJECT_NAME}
          CATKIN_DEPENDS roscpp)
        ```

        To use headers or libraries in a package, or to use a package’s exported CMake macros, express a build-time dependency.
        Tell dependent packages what headers or libraries to pull in when your package is declared as a `catkin` component. 
        Note that any packages listed as `CATKIN_DEPENDS` dependencies must also be declared as a `<run_depend>` in `package.xml`.
      END
    end
    
    entry do
      name 'Messages, services'
      notes <<-'END'
        ```sh
        find_package(catkin REQUIRED COMPONENTS message_generation std_msgs)
        add_message_files(FILES MyMessage.msg)
        add_service_files(FILES MyService.msg)
        generate_messages(DEPENDENCIES std_msgs)
        catkin_package(CATKIN_DEPENDS message_runtime std_msgs)
        ```      
        These go after `find_package()`, but before `catkin_package()`.
      END
    end
    
    entry do
      name 'Build libraries, executables'
      notes <<-'END'
        ```sh
        add_library(${PROJECT_NAME} src/main)
        add_executable(${PROJECT_NAME}_node src/main)
        target_link_libraries(${PROJECT_NAME}_node ${catkin_LIBRARIES})
        ```      
        These go after the `catkin_package()` call.
      END
    end
    
    entry do
      name 'Installation'
      notes <<-'END'
        ```sh
        install(TARGETS ${PROJECT_NAME} DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION})
        install(TARGETS ${PROJECT_NAME}_node DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
        install(PROGRAMS scripts/myscript DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
        install(DIRECTORY launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
        ```      
        These go after the `catkin_package()` call.
      END
    end  
  end 
   
  category do
    id 'Running System'                  
    entry do
      name 'Run ROS using plain'
      notes <<-'END'
        ```sh
        roscore
        ```
      END
    end
    
    entry do
      name 'Running `roslaunch` will run its own `roscore` automatically'
      notes <<-'END'
        ```sh
        roslaunch my_package package_launchfile.launch
        ```
      END
    end
   
    entry do
      name 'Nodes, topics, messages'
      notes <<-'END'
        ```sh
        rosnode list
        rostopic list
        rostopic echo cmd_vel
        rostopic hz cmd_vel
        rostopic info cmd_vel
        rosmsg show geometry_msgs/Twist
        ```
      END
    end
    
    entry do
      name 'Remote connection - master’s ROS environment'
      notes <<-'END'
        ```sh
        export ROS_IP or ROS_HOSTNAME set to this machine’s network address
        export ROS_MASTER_URI set to URI containing that IP or hostname
        ```
      END
    end
    
    entry do
      name 'Remote connection - your environment'
      notes <<-'END'
        ```sh
        export ROS_IP or ROS_HOSTNAME set to your machine’s network address
        export ROS_MASTER_URI set to the URI from the master
        ```
        To debug, check ping from each side to the other, run `roswtf` on each side
      END
    end
    
    entry do
      name 'ROS Console'
      notes <<-'END'
        ```sh
        vi $HOME/.ros/config/rosconsole.config
          log4j.logger.ros.package_name=DEBUG
        ```
        Adjust using `rqt_logger_level` and monitor via `rqt_console`.
        Use the `roslaunch --screen` flag to force all node output to the screen,
        as if each declared `<node>` had the `output="screen"` attribute.
      END
    end
    
  end
    
  category do
    id 'Developer Commands'                  
    entry do
      command   'catkin_make'                                     
      name      'Build all projects in workspace'                 
      notes     'Run from root folder. Example: `~/catkin_ws/`.'
    end
    
    entry do
      command   'catkin_make clean'                               
      name      'Clean all projects in workspace'                 
      notes     'Run from root folder. Example: `~/catkin_ws/`.'
    end
  end
end

