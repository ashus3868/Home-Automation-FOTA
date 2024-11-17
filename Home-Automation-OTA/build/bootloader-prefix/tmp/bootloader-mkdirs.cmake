# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/ashishsaini/esp/esp-idf/components/bootloader/subproject"
  "/Users/ashishsaini/Downloads/Home-Automation-OTA-Server/Home-Automation-OTA/build/bootloader"
  "/Users/ashishsaini/Downloads/Home-Automation-OTA-Server/Home-Automation-OTA/build/bootloader-prefix"
  "/Users/ashishsaini/Downloads/Home-Automation-OTA-Server/Home-Automation-OTA/build/bootloader-prefix/tmp"
  "/Users/ashishsaini/Downloads/Home-Automation-OTA-Server/Home-Automation-OTA/build/bootloader-prefix/src/bootloader-stamp"
  "/Users/ashishsaini/Downloads/Home-Automation-OTA-Server/Home-Automation-OTA/build/bootloader-prefix/src"
  "/Users/ashishsaini/Downloads/Home-Automation-OTA-Server/Home-Automation-OTA/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/ashishsaini/Downloads/Home-Automation-OTA-Server/Home-Automation-OTA/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/ashishsaini/Downloads/Home-Automation-OTA-Server/Home-Automation-OTA/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
