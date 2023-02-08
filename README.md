# sandboxWin

## Windows Sandbox and .wsb Configuration

Welcome to the Windows Sandbox and .wsb Configuration repository! Windows Sandbox is a virtual environment built into Windows 10 that allows you to run potentially dangerous applications in a safe and isolated environment. The .wsb file is a configuration file that enables you to customize the Windows Sandbox environment to suit your needs.

This repository provides a comprehensive guide on Windows Sandbox and .wsb Configuration, including installation, usage, and customization options.

## Getting Started

Before you can use Windows Sandbox, you need to make sure your system meets the prerequisites and install the feature.

### Prerequisites

- Windows 10 Pro or Enterprise, version 1903 or later
- Virtualization must be enabled in the BIOS

### Installing Windows Sandbox

1. Open Control Panel and go to Programs > Programs and Features.
2. Click on "Turn Windows features on or off".
3. Scroll down to "Windows Sandbox" and select it.
4. Click "OK" to install the feature.
5. Restart your system when prompted.

### Creating a .wsb Configuration File

A .wsb file is a simple XML file that contains the configuration settings for Windows Sandbox. You can create a .wsb file from scratch or use an existing file as a starting point.

Here is a sample .wsb configuration file:

```
<WindowsSandbox>
  <MappedFolders>
    <MappedFolder>
      <HostFolder>C:\data</HostFolder>
      <ReadOnly>true</ReadOnly>
    </MappedFolder>
  </MappedFolders>
  <LogonCommand>
    <Command>explorer.exe C:\data</Command>
  </LogonCommand>
</WindowsSandbox>
```

### Using Windows Sandbox
1. Launch the Windows Sandbox application.
2. Select the .wsb configuration file you created earlier to load the custom configuration.
3. Run the desired application in the isolated environment.

## Customizing the .wsb Configuration

You can customize the Windows Sandbox environment by modifying the .wsb file. Here are some of the customization options:

- *VideoInput: Enables or disables video input devices in the sandbox.
- *AudioInput: Enables or disables audio input devices in the sandbox.
- *ClipboardRedirection*: Enables or disables clipboard redirection between the host and the sandbox.
- *MemoryInMB*: Specifies the amount of memory to allocate to the sandbox.
- *ProtectecdClient*: Enables or disables the protection of the host network and storage.
- `MappedFolders`: Map host folders to the sandbox environment.
- `LogonCommand`: Specify a command to run automatically when the sandbox environment starts.
- `vGPU`: Enable or disable virtualized GPU support.
- `Network`: Configure the network type (NAT or Bridged).
- `StartupCommand`: Specify a command to run automatically when the sandbox environment starts.

## Conclusion

With Windows Sandbox and .wsb Configuration, you can safely run potentially dangerous applications without the risk of damaging your system. The customization options allow you to tailor the sandbox environment to your specific needs.

## License
This project is licensed under the MIT License.

## Acknowledgments
Windows Sandbox documentation: https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-sandbox/

.wsb Configuration file format: https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-sandbox/windows-sandbox-configure-using-wsb-files
