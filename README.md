# test_acts_framework

Scripts for installing and testing the [acts-framework](https://gitlab.cern.ch/acts/acts-framework/tree/FASER) package for the FASER experiment.


## Prerequisites

You must be in an lxplus environment to use these scripts without changes.


## How to use

To start from scratch, run the following:
```
git clone git@github.com:asoffa/test_acts_framework.git
# or `git clone https://github.com/asoffa/test_acts_framework.git` if you don't have developer permissions
cd test_acts_framework
./install.sh
source set_up_acts_framework_environment.sh
source make_acts_framework.sh
```

To resume the environment after starting a new shell, run
```
source set_up_acts_framework_environment.sh
```

To recompile the acts-framework framework package after making changes, run
```
source make_acts_framework.sh
```

To remove the acts-framework-build and acts-framework-run directories, run
```
./clean.sh
```

If you have developer permissions, but have issues with the ssh keys, try running
```
source activate_ssh_agent.sh
```

