# For participants: how to launch the experiment

1. Download the experimental images following the url that has been privately transmitted to you, and unzip the archive
2. Open the Pharo Launcher (dowload it if necessary ![pl](https://pharo.org/download))
3. Click on *Launch from disk* and select *the image folder* that you unzipped
![launch-image](https://github.com/StevenCostiou/Pharo-VariableBreakpoint-Tutorial/raw/main/pictures/launch-from-disk.png)
4. Use the library menu of the menu bar to launch the task manager
![open-phex](https://github.com/StevenCostiou/Pharo-VariableBreakpoint-Tutorial/raw/main/pictures/phex-start.png)
5. The tasks are now displayed and you can select the first one and click "start"
![phex-tasks](https://github.com/StevenCostiou/Pharo-VariableBreakpoint-Tutorial/raw/main/pictures/phex-tasks.png)



# For developers only:

```Smalltalk
Metacello new
    baseline: 'PharoVariableBreakpointExperiment';
    repository: 'github://StevenCostiou/PharoVariableBreakpointExperiment:main';
    load.
```
