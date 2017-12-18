# both 32-bit (x86) AND a 64-bit (AMD64) installer available
{% set PROGRAM_FILES = "%ProgramFiles%" %}
notepad++:
  '7.5.1':
    full_name: 'Notepad++'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'https://notepad-plus-plus.org/repository/7.x/7.5.1/npp.7.5.1.Installer.x64.exe'
    uninstaller: '%ProgramFiles%/Notepad++/uninstall.exe'
    {% elif grains['cpuarch'] == 'x86' %}
    installer: 'https://notepad-plus-plus.org/repository/7.x/7.5.1/npp.7.5.1.Installer.exe'
    uninstaller: '%ProgramFiles(x86)%/Notepad++/uninstall.exe'
    {% endif %}
    install_flags: '/D=D:\Program Files\notepad /S'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
