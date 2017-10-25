# both 32-bit (x86) AND a 64-bit (AMD64) installer available
{% set PROGRAM_FILES = "%ProgramFiles%" %}
java-sdk:
  '8u144':
    full_name: 'Java SDK'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-windows-x64.exe'
    uninstaller: 'https://javadl-esd-secure.oracle.com/update/jut/JavaUninstallTool.exe'
    {% elif grains['cpuarch'] == 'x86' %}
    installer: 'http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-windows-i586.exe'
    uninstaller: 'https://javadl-esd-secure.oracle.com/update/jut/JavaUninstallTool.exe'
    {% endif %}
    install_flags: '/s ADDLOCAL="ToolsFeature,SourceFeature,PublicjreFeature"'
    uninstall_flags: '/s'
    msiexec: False
    locale: en_US
    reboot: False
