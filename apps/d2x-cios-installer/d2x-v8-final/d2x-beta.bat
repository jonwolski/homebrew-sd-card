::d2x-beta.bat should be saved here in order for ModMii v4.6.0+ to use it: modules\More-cIOSs\{ANY FOLDER NAME}\d2x-beta.bat

::--------update what comes after "d2x-beta-rev=" and "ciosversion=" below----------

set ciosversion=21008
::must be <=65535

set d2x-beta-rev=8-final
::This info is used to sign *00.app file for cIOS detection, everything after "=" but before the first "-" is considered the version # and it must be a number! Good examples are "5-beta1-test1" or "5" or "999". Bad examples are "5beta1" or "five-beta1" or "-5-beta1"
::everything after the first "-" is considered the version string (limited by 16 chars) and it only recognizes letters, numbers and + - _ ( ) [ ]

set cIOSFamilyName=d2x
::Only change this if building a cIOS that isn't a "d2x" branded cIOS. This string is limited by 16 chars and it only recognizes letters, numbers and + - _ ( ) [ ]


if "%wadname%"=="" goto:endofd2xbat

::------------------------Section to update (below)--------------------
::here you should enter the new beta cIOS hashes (under the OLD non-beta "wadname")
if /i "%wadname:~0,17%" EQU "cIOS249[37]-d2x-v" set md5=26b2ab4b94378b92ee2a4802f80db5d0
if /i "%wadname:~0,17%" EQU "cIOS250[37]-d2x-v" set md5=ae84bfa60623907bb8e427b2152bf644
if /i "%wadname:~0,17%" EQU "cIOS249[38]-d2x-v" set md5=3f6fb796a0f7353b2abdec94d54c848f
if /i "%wadname:~0,17%" EQU "cIOS250[38]-d2x-v" set md5=828434bf32e8955604fd97f279679ea4
if /i "%wadname:~0,17%" EQU "cIOS249[53]-d2x-v" set md5=45cacba5c6ec4354fdfc1897e181d0a9
if /i "%wadname:~0,17%" EQU "cIOS250[53]-d2x-v" set md5=82bae3f38f80fb75283ea8b3f9f0dcf3
if /i "%wadname:~0,17%" EQU "cIOS249[55]-d2x-v" set md5=6b89794840db07268969e42eadff65d3
if /i "%wadname:~0,17%" EQU "cIOS250[55]-d2x-v" set md5=d8e2af0dc66b304e4a91ef02931681c1
if /i "%wadname:~0,17%" EQU "cIOS249[56]-d2x-v" set md5=15b4f42b7c174bc59dde005d6308174b
if /i "%wadname:~0,17%" EQU "cIOS250[56]-d2x-v" set md5=7768708751021d1726c0776b805e3a6f
if /i "%wadname:~0,17%" EQU "cIOS249[57]-d2x-v" set md5=7acd515c425b45172f909c2c8d95ff40
if /i "%wadname:~0,17%" EQU "cIOS250[57]-d2x-v" set md5=7f3d117827fcd955f5675d895ae2a962
if /i "%wadname:~0,17%" EQU "cIOS249[58]-d2x-v" set md5=ff2a70cb57f8e87298748b78fb28a11c
if /i "%wadname:~0,17%" EQU "cIOS250[58]-d2x-v" set md5=6388a7fb31a40c13ac8e4eff5b1e25a5
if /i "%wadname:~0,17%" EQU "cIOS249[60]-d2x-v" set md5=5b6e7d60e43de908286255c8562c8705
if /i "%wadname:~0,17%" EQU "cIOS250[60]-d2x-v" set md5=54cdceddde554a2a8ca4147cda903cdf
if /i "%wadname:~0,17%" EQU "cIOS249[70]-d2x-v" set md5=3feb0755ca2ddb4b13e68eaadf990959
if /i "%wadname:~0,17%" EQU "cIOS250[70]-d2x-v" set md5=f51402e9d65c522bcb248d16dbc5c1ed
if /i "%wadname:~0,17%" EQU "cIOS249[80]-d2x-v" set md5=04d83f1ae06e6f078a1ad62c8980ae14
if /i "%wadname:~0,17%" EQU "cIOS250[80]-d2x-v" set md5=84fbd1f37ea17585e41cd3d1fcf4fee2
::------------------------Section to update (above)--------------------

::----------Additional Instructions---------------
::save any of the following beta files to the following directory
::if any of the following is not found, the standard d2x module used in the previous ModMii release will continue to be used
::modules\More-cIOSs\{ANY FOLDER NAME}\mload.app
::modules\More-cIOSs\{ANY FOLDER NAME}\FAT.app
::modules\More-cIOSs\{ANY FOLDER NAME}\SDHC.app
::modules\More-cIOSs\{ANY FOLDER NAME}\EHCI.app
::modules\More-cIOSs\{ANY FOLDER NAME}\USBS.app
::modules\More-cIOSs\{ANY FOLDER NAME}\DIPP.app
::modules\More-cIOSs\{ANY FOLDER NAME}\ES.app
::modules\More-cIOSs\{ANY FOLDER NAME}\FFSP.app
::------------------------------------------------------

set md5alt=%md5%

::change some variables
set wadname=%wadname:~0,17%%d2x-beta-rev%
if /i "%name:~0,17%" NEQ "Advanced Download" set name=%wadname%

:endofd2xbat 

