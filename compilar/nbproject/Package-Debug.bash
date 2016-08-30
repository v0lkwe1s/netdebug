#!/bin/bash -x

#
# Generated - do not edit!
#

# Macros
TOP=`pwd`
CND_PLATFORM=GNU-Linux
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build
CND_DLIB_EXT=so
NBTMPDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tmp-packaging
TMPDIRNAME=tmp-packaging
OUTPUT_PATH=${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/mgetdata
OUTPUT_BASENAME=mgetdata
PACKAGE_TOP_DIR=/bin/netdebug/web/

# Functions
function checkReturnCode
{
    rc=$?
    if [ $rc != 0 ]
    then
        exit $rc
    fi
}
function makeDirectory
# $1 directory path
# $2 permission (optional)
{
    mkdir -p "$1"
    checkReturnCode
    if [ "$2" != "" ]
    then
      chmod $2 "$1"
      checkReturnCode
    fi
}
function copyFileToTmpDir
# $1 from-file path
# $2 to-file path
# $3 permission
{
    cp "$1" "$2"
    checkReturnCode
    if [ "$3" != "" ]
    then
        chmod $3 "$2"
        checkReturnCode
    fi
}

# Setup
cd "${TOP}"
mkdir -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/package
rm -rf ${NBTMPDIR}
mkdir -p ${NBTMPDIR}

# Copy files and create directories and links
cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug"
copyFileToTmpDir "${OUTPUT_PATH}" "${NBTMPDIR}//bin/netdebug/net" 0755

cd "${TOP}"
makeDirectory  "${NBTMPDIR}//bin/netdebug/web" 0755

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/css"
copyFileToTmpDir "web/css/app.css" "${NBTMPDIR}//bin/netdebug/web/css/app.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/css"
copyFileToTmpDir "web/css/main.css" "${NBTMPDIR}//bin/netdebug/web/css/main.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/js"
copyFileToTmpDir "web/js/process-controller.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}js/process-controller.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/js"
copyFileToTmpDir "web/js/user-controller.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}js/user-controller.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/js"
copyFileToTmpDir "web/js/group-service.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}js/group-service.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/js"
copyFileToTmpDir "web/js/app.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}js/app.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/js"
copyFileToTmpDir "web/js/mem-controller.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}js/mem-controller.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/js"
copyFileToTmpDir "web/js/group-controller.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}js/group-controller.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/js"
copyFileToTmpDir "web/js/disk-controller.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}js/disk-controller.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/js"
copyFileToTmpDir "web/js/cpu-controller.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}js/cpu-controller.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/js"
copyFileToTmpDir "web/js/user-service.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}js/user-service.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/templates"
copyFileToTmpDir "web/templates/login.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}templates/login.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/templates"
copyFileToTmpDir "web/templates/serverInfo.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}templates/serverInfo.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/templates"
copyFileToTmpDir "web/templates/overview.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}templates/overview.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/templates"
copyFileToTmpDir "web/templates/userGroup.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}templates/userGroup.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/templates"
copyFileToTmpDir "web/templates/users.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}templates/users.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/templates"
copyFileToTmpDir "web/templates/entries.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}templates/entries.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-aria"
copyFileToTmpDir "web/lib/angular-aria/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-aria/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-aria"
copyFileToTmpDir "web/lib/angular-aria/index.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-aria/index.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-aria"
copyFileToTmpDir "web/lib/angular-aria/LICENSE.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-aria/LICENSE.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-aria"
copyFileToTmpDir "web/lib/angular-aria/angular-aria.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-aria/angular-aria.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-aria"
copyFileToTmpDir "web/lib/angular-aria/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-aria/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-aria"
copyFileToTmpDir "web/lib/angular-aria/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-aria/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-aria"
copyFileToTmpDir "web/lib/angular-aria/angular-aria.min.js.map" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-aria/angular-aria.min.js.map" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-aria"
copyFileToTmpDir "web/lib/angular-aria/angular-aria.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-aria/angular-aria.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/.jscsrc" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/.jscsrc" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/angular"
copyFileToTmpDir "web/lib/angular-chart/node_modules/angular/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/angular/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/angular"
copyFileToTmpDir "web/lib/angular-chart/node_modules/angular/index.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/angular/index.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/angular"
copyFileToTmpDir "web/lib/angular-chart/node_modules/angular/angular-csp.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/angular/angular-csp.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/angular"
copyFileToTmpDir "web/lib/angular-chart/node_modules/angular/LICENSE.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/angular/LICENSE.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/angular"
copyFileToTmpDir "web/lib/angular-chart/node_modules/angular/angular.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/angular/angular.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/angular"
copyFileToTmpDir "web/lib/angular-chart/node_modules/angular/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/angular/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/angular"
copyFileToTmpDir "web/lib/angular-chart/node_modules/angular/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/angular/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/angular"
copyFileToTmpDir "web/lib/angular-chart/node_modules/angular/angular.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/angular/angular.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/angular"
copyFileToTmpDir "web/lib/angular-chart/node_modules/angular/angular.min.js.gzip" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/angular/angular.min.js.gzip" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/angular"
copyFileToTmpDir "web/lib/angular-chart/node_modules/angular/angular.min.js.map" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/angular/angular.min.js.map" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/.github"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/.github/ISSUE_TEMPLATE.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/.github/ISSUE_TEMPLATE.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/.github"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/.github/PULL_REQUEST_TEMPLATE.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/.github/PULL_REQUEST_TEMPLATE.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/karma.coverage.conf.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/karma.coverage.conf.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/LICENSE.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/LICENSE.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/.eslintrc" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/.eslintrc" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/ender.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/ender.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/moment.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/moment.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/CHANGELOG.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/CHANGELOG.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/tlh.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/tlh.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/eu.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/eu.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/cv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/cv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ms-my.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ms-my.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/en-au.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/en-au.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fr-ch.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fr-ch.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/be.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/be.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ml.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ml.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/zh-tw.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/zh-tw.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/cy.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/cy.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/hr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/hr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/hy-am.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/hy-am.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fa.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fa.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/uz.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/uz.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ar-sa.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ar-sa.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/de.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/de.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/is.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/is.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/lo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/lo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/me.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/me.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/et.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/et.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/mr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/mr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/mk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/mk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/az.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/az.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ru.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ru.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sq.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sq.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/uk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/uk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/lv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/lv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/gd.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/gd.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/es.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/es.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/tzl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/tzl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/vi.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/vi.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/af.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/af.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/el.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/el.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/tr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/tr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ka.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ka.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ro.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ro.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/br.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/br.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/nn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/nn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/bn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/bn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/pt-br.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/pt-br.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sr-cyrl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sr-cyrl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/eo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/eo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/nb.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/nb.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ms.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ms.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/km.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/km.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/en-nz.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/en-nz.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/bo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/bo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/se.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/se.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/hu.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/hu.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fr-ca.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fr-ca.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ky.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ky.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ar-ma.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ar-ma.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/en-gb.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/en-gb.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/te.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/te.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/pa-in.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/pa-in.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/x-pseudo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/x-pseudo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ta.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ta.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/pl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/pl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/he.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/he.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sw.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sw.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/es-do.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/es-do.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/en-ca.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/en-ca.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/zh-cn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/zh-cn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/tzm-latn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/tzm-latn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/lt.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/lt.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/si.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/si.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ko.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ko.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/kk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/kk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/lb.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/lb.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ja.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ja.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ar-tn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ar-tn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/nl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/nl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ne.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ne.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/bs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/bs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fy.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fy.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/en-ie.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/en-ie.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/dv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/dv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/my.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/my.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/gl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/gl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/da.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/da.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/bg.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/bg.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/th.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/th.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/tzm.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/tzm.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/id.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/id.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/cs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/cs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/tl-ph.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/tl-ph.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/hi.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/hi.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ss.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ss.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/it.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/it.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ca.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/ca.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/jv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/jv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/de-at.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/de-at.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/sr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fi.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/fi.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/pt.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/locale/pt.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/.npmignore" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/.npmignore" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/moment.d.ts" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/moment.d.ts" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/min"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/min/moment-with-locales.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/min/moment-with-locales.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/min"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/min/locales.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/min/locales.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/min"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/min/locales.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/min/locales.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/min"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/min/moment.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/min/moment.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/min"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/min/moment-with-locales.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/min/moment-with-locales.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/moment.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/moment.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/units.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/units.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/timestamp.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/timestamp.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/day-of-week.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/day-of-week.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/minute.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/minute.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/offset.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/offset.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/day-of-month.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/day-of-month.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/constants.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/constants.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/second.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/second.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/week-calendar-utils.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/week-calendar-utils.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/millisecond.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/millisecond.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/priorities.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/priorities.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/aliases.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/aliases.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/week.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/week.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/day-of-year.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/day-of-year.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/quarter.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/quarter.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/week-year.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/week-year.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/timezone.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/timezone.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/month.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/month.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/hour.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/hour.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/year.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/units/year.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/relative.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/relative.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/constructor.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/constructor.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/en.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/en.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/locale.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/locale.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/locales.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/locales.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/ordinal.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/ordinal.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/invalid.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/invalid.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/set.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/set.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/prototype.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/prototype.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/lists.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/lists.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/formats.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/formats.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/base-config.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/base-config.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/pre-post-format.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/pre-post-format.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/calendar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/locale/calendar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/format"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/format/format.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/format/format.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/constructor.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/constructor.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/now.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/now.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/moment.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/moment.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/compare.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/compare.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/locale.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/locale.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/to.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/to.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/creation-data.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/creation-data.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/start-end-of.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/start-end-of.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/add-subtract.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/add-subtract.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/clone.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/clone.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/format.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/format.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/min-max.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/min-max.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/diff.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/diff.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/to-type.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/to-type.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/prototype.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/prototype.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/from.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/from.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/get-set.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/get-set.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/calendar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/calendar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/valid.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/moment/valid.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/from-string.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/from-string.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/from-string-and-array.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/from-string-and-array.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/from-anything.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/from-anything.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/from-object.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/from-object.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/date-from-array.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/date-from-array.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/check-overflow.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/check-overflow.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/utc.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/utc.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/parsing-flags.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/parsing-flags.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/valid.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/valid.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/from-array.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/from-array.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/local.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/local.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/from-string-and-format.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/create/from-string-and-format.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/constructor.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/constructor.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/abs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/abs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/create.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/create.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/add-subtract.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/add-subtract.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/prototype.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/prototype.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/as.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/as.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/iso-string.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/iso-string.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/get.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/get.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/humanize.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/humanize.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/bubble.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/bubble.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/duration.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/duration/duration.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/is-function.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/is-function.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/is-object.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/is-object.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/is-date.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/is-date.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/is-object-empty.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/is-object-empty.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/defaults.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/defaults.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/is-array.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/is-array.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/to-int.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/to-int.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/is-undefined.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/is-undefined.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/keys.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/keys.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/abs-round.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/abs-round.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/some.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/some.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/index-of.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/index-of.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/abs-floor.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/abs-floor.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/abs-ceil.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/abs-ceil.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/extend.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/extend.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/zero-fill.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/zero-fill.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/hooks.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/hooks.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/compare-arrays.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/compare-arrays.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/deprecate.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/deprecate.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/map.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/map.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/has-own-prop.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/utils/has-own-prop.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/parse"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/parse/token.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/parse/token.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/parse"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/parse/regex.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/lib/parse/regex.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/tlh.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/tlh.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/eu.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/eu.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/cv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/cv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ms-my.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ms-my.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/en-au.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/en-au.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fr-ch.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fr-ch.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/be.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/be.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ml.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ml.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/zh-tw.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/zh-tw.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/cy.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/cy.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/hr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/hr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/hy-am.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/hy-am.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fa.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fa.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/uz.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/uz.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ar-sa.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ar-sa.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/de.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/de.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/is.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/is.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/lo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/lo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/me.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/me.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/et.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/et.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/mr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/mr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/mk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/mk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/az.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/az.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ru.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ru.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sq.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sq.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/uk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/uk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/lv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/lv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/gd.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/gd.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/es.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/es.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/tzl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/tzl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/vi.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/vi.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/af.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/af.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/el.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/el.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/tr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/tr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ka.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ka.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ro.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ro.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/br.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/br.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/nn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/nn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/bn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/bn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/pt-br.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/pt-br.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sr-cyrl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sr-cyrl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/eo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/eo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/nb.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/nb.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ms.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ms.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/km.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/km.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/en-nz.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/en-nz.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/bo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/bo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/se.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/se.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/hu.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/hu.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fr-ca.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fr-ca.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ky.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ky.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ar-ma.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ar-ma.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/en-gb.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/en-gb.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/te.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/te.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/pa-in.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/pa-in.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/x-pseudo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/x-pseudo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ta.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ta.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/pl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/pl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/he.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/he.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sw.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sw.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/es-do.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/es-do.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/en-ca.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/en-ca.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/zh-cn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/zh-cn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/tzm-latn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/tzm-latn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/lt.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/lt.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/si.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/si.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ko.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ko.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/kk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/kk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/lb.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/lb.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ja.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ja.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ar-tn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ar-tn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/nl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/nl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ne.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ne.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/bs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/bs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fy.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fy.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/en-ie.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/en-ie.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/dv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/dv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/my.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/my.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/gl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/gl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/da.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/da.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/bg.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/bg.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/th.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/th.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/tzm.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/tzm.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/id.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/id.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/cs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/cs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/tl-ph.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/tl-ph.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/hi.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/hi.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ss.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ss.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/it.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/it.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ca.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/ca.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/jv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/jv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/de-at.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/de-at.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/sr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fi.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/fi.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/pt.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/src/locale/pt.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/LICENSE" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/LICENSE" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/moment/package.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/moment/package.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/index.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/index.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/CHANGELOG.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/CHANGELOG.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/CHANGELOG.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/CHANGELOG.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/index.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/index.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/LICENSE" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/LICENSE" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/.travis.yml" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/.travis.yml" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/color-string.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/color-string.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/test/basic.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/test/basic.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/LICENSE" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/LICENSE" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/index.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/index.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/conversions.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/conversions.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/component.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/component.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/CHANGELOG.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/CHANGELOG.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/.travis.yml" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/.travis.yml" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/test/speed.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/test/speed.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/test/basic.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/test/basic.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/LICENSE" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/node_modules/color-convert/LICENSE" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/LICENSE" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/node_modules/chartjs-color/LICENSE" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/.codeclimate.yml" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/.codeclimate.yml" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/.npmignore" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/.npmignore" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/.eslintignore" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/.eslintignore" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/line-logarithmic.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/line-logarithmic.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/line-multi-axis.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/line-multi-axis.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/line.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/line.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/radar-skip-points.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/radar-skip-points.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/radar.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/radar.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/bar-horizontal.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/bar-horizontal.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/line-legend.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/line-legend.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/line-multiline-labels.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/line-multiline-labels.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples/AnimationCallbacks"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/AnimationCallbacks/progress-bar.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/AnimationCallbacks/progress-bar.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/line-stacked-area.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/line-stacked-area.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/line-x-axis-filter.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/line-x-axis-filter.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/data_label_combo-bar-line.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/data_label_combo-bar-line.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/bar.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/bar.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/scatter-logX.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/scatter-logX.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/bar-multi-axis.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/bar-multi-axis.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/bubble.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/bubble.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/line-skip-points.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/line-skip-points.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples/timeScale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/timeScale/line-time-scale.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/timeScale/line-time-scale.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples/timeScale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/timeScale/combo-time-scale.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/timeScale/combo-time-scale.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples/timeScale"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/timeScale/line-time-point-data.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/timeScale/line-time-point-data.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/combo-bar-line.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/combo-bar-line.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/scatter.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/scatter.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/scatter-multi-axis.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/scatter-multi-axis.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/bar-stacked.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/bar-stacked.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/doughnut.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/doughnut.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/different-point-sizes.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/different-point-sizes.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/pie-customTooltips.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/pie-customTooltips.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/polar-area.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/polar-area.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/line-customTooltips.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/line-customTooltips.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/pie.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/pie.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/samples"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/samples/tooltip-hooks.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/samples/tooltip-hooks.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/karma.conf.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/karma.conf.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/karma.conf.ci.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/karma.conf.ci.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/CONTRIBUTING.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/CONTRIBUTING.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/.travis.yml" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/.travis.yml" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/docs"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/docs/07-Pie-Doughnut-Chart.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/docs/07-Pie-Doughnut-Chart.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/docs"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/docs/04-Bar-Chart.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/docs/04-Bar-Chart.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/docs"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/docs/06-Polar-Area-Chart.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/docs/06-Polar-Area-Chart.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/docs"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/docs/03-Line-Chart.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/docs/03-Line-Chart.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/docs"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/docs/10-Notes.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/docs/10-Notes.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/docs"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/docs/08-Bubble-Chart.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/docs/08-Bubble-Chart.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/docs"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/docs/01-Chart-Configuration.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/docs/01-Chart-Configuration.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/docs"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/docs/00-Getting-Started.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/docs/00-Getting-Started.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/docs"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/docs/05-Radar-Chart.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/docs/05-Radar-Chart.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/docs"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/docs/02-Scales.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/docs/02-Scales.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/docs"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/docs/09-Advanced.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/docs/09-Advanced.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/gulpfile.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/gulpfile.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/controller.doughnut.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/controller.doughnut.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/core.helpers.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/core.helpers.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/core.layoutService.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/core.layoutService.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/controller.radar.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/controller.radar.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/controller.polarArea.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/controller.polarArea.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/core.scaleService.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/core.scaleService.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/core.title.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/core.title.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/scale.linear.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/scale.linear.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/controller.bubble.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/controller.bubble.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/core.plugin.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/core.plugin.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/element.point.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/element.point.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/mockContext.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/mockContext.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/element.line.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/element.line.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/controller.line.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/controller.line.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/defaultConfig.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/defaultConfig.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/controller.bar.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/controller.bar.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/scale.logarithmic.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/scale.logarithmic.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/core.tooltip.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/core.tooltip.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/element.rectangle.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/element.rectangle.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/scale.category.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/scale.category.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/element.arc.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/element.arc.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/core.element.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/core.element.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/core.legend.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/core.legend.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/scale.radialLinear.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/scale.radialLinear.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/test"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/test/scale.time.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/test/scale.time.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/scales"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/scales/scale.category.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/scales/scale.category.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/scales"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/scales/scale.logarithmic.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/scales/scale.logarithmic.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/scales"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/scales/scale.radialLinear.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/scales/scale.radialLinear.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/scales"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/scales/scale.time.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/scales/scale.time.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/scales"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/scales/scale.linear.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/scales/scale.linear.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/scales"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/scales/scale.linearbase.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/scales/scale.linearbase.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.scaleService.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.scaleService.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.element.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.element.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.datasetController.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.datasetController.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.tooltip.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.tooltip.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.controller.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.controller.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.scale.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.scale.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.legend.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.legend.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.title.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.title.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.plugin.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.plugin.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.helpers.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.helpers.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.animation.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.animation.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/core"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/core/core.layoutService.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/core/core.layoutService.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/controllers"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/controllers/controller.bubble.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/controllers/controller.bubble.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/controllers"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/controllers/controller.polarArea.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/controllers/controller.polarArea.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/controllers"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/controllers/controller.line.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/controllers/controller.line.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/controllers"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/controllers/controller.doughnut.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/controllers/controller.doughnut.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/controllers"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/controllers/controller.radar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/controllers/controller.radar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/controllers"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/controllers/controller.bar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/controllers/controller.bar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/charts"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/charts/Chart.Scatter.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/charts/Chart.Scatter.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/charts"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/charts/Chart.PolarArea.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/charts/Chart.PolarArea.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/charts"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/charts/Chart.Radar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/charts/Chart.Radar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/charts"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/charts/Chart.Doughnut.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/charts/Chart.Doughnut.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/charts"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/charts/Chart.Line.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/charts/Chart.Line.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/charts"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/charts/Chart.Bubble.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/charts/Chart.Bubble.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/charts"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/charts/Chart.Bar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/charts/Chart.Bar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/elements"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/elements/element.arc.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/elements/element.arc.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/elements"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/elements/element.line.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/elements/element.line.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/elements"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/elements/element.rectangle.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/elements/element.rectangle.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src/elements"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/elements/element.point.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/elements/element.point.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/src"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/src/chart.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/src/chart.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/.editorconfig" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/.editorconfig" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/config.jshintrc" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/config.jshintrc" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/dist"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/dist/Chart.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/dist/Chart.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/dist"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/dist/Chart.bundle.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/dist/Chart.bundle.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/dist"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/dist/Chart.bundle.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/dist/Chart.bundle.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js/dist"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/dist/Chart.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/dist/Chart.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/node_modules/chart.js"
copyFileToTmpDir "web/lib/angular-chart/node_modules/chart.js/composer.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/node_modules/chart.js/composer.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/.codeclimate.yml" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/.codeclimate.yml" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/.dockerignore" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/.dockerignore" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/.npmignore" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/.npmignore" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/angular-chart.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/angular-chart.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/.jshintignore" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/.jshintignore" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/.travis.yml" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/.travis.yml" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/gulpfile.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/gulpfile.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/.jshintrc" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/.jshintrc" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test"
copyFileToTmpDir "web/lib/angular-chart/test/test.integration.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/test.integration.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test"
copyFileToTmpDir "web/lib/angular-chart/test/test.unit.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/test.unit.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test"
copyFileToTmpDir "web/lib/angular-chart/test/mocha.opts" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/mocha.opts" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test"
copyFileToTmpDir "web/lib/angular-chart/test/index.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/index.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/support"
copyFileToTmpDir "web/lib/angular-chart/test/support/setup.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/support/setup.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/dataset-override.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/dataset-override.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/custom-directive.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/custom-directive.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/51-pie-update-colours.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/51-pie-update-colours.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/configure-line-chart.png" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/configure-line-chart.png" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/51-pie-update-colours.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/51-pie-update-colours.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/charts.png" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/charts.png" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/29-tabs.png" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/29-tabs.png" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/horizontal-bar-chart.png" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/horizontal-bar-chart.png" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/dataset-override.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/dataset-override.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/horizontal-bar-chart.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/horizontal-bar-chart.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/51-pie-update-colours.png" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/51-pie-update-colours.png" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/dataset-override.png" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/dataset-override.png" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/54-not-enough-colours.png" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/54-not-enough-colours.png" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/horizontal-bar-chart.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/horizontal-bar-chart.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/charts.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/charts.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/custom-directive.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/custom-directive.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/configure-line-chart.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/configure-line-chart.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/coverage.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/coverage.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/29-tabs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/29-tabs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/57-hex-colours.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/57-hex-colours.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/57-hex-colours.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/57-hex-colours.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/custom-directive.png" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/custom-directive.png" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/configure-line-chart.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/configure-line-chart.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/29-tabs.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/29-tabs.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/54-not-enough-colours.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/54-not-enough-colours.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/54-not-enough-colours.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/54-not-enough-colours.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/57-hex-colours.png" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/57-hex-colours.png" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/test/fixtures"
copyFileToTmpDir "web/lib/angular-chart/test/fixtures/charts.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/test/fixtures/charts.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/Dockerfile" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/Dockerfile" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/.editorconfig" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/.editorconfig" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/dataset-override.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/dataset-override.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/amd.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/amd.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/xy.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/xy.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/app.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/app.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/amd.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/amd.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/xy.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/xy.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/app.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/app.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/dataset-override.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/dataset-override.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/tables.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/tables.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/tabs.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/tabs.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/charts.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/charts.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/charts.template.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/charts.template.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/ticks.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/ticks.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/stacked-bars.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/stacked-bars.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/webpack.config.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/webpack.config.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/bootstrap.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/bootstrap.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/examples"
copyFileToTmpDir "web/lib/angular-chart/examples/smoothscroll.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/examples/smoothscroll.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/.node-version" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/.node-version" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart"
copyFileToTmpDir "web/lib/angular-chart/LICENSE" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/LICENSE" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/tmp"
copyFileToTmpDir "web/lib/angular-chart/tmp/gradient.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/tmp/gradient.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/tmp"
copyFileToTmpDir "web/lib/angular-chart/tmp/gradient.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/tmp/gradient.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/tmp"
copyFileToTmpDir "web/lib/angular-chart/tmp/Dockerfile-alpine" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/tmp/Dockerfile-alpine" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/dist"
copyFileToTmpDir "web/lib/angular-chart/dist/angular-chart.min.js.map" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/dist/angular-chart.min.js.map" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/dist"
copyFileToTmpDir "web/lib/angular-chart/dist/angular-chart.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/dist/angular-chart.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/dist"
copyFileToTmpDir "web/lib/angular-chart/dist/angular-chart.js.tar.gz" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/dist/angular-chart.js.tar.gz" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-chart/dist"
copyFileToTmpDir "web/lib/angular-chart/dist/angular-chart.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-chart/dist/angular-chart.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular"
copyFileToTmpDir "web/lib/angular/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular"
copyFileToTmpDir "web/lib/angular/index.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular/index.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular"
copyFileToTmpDir "web/lib/angular/angular-csp.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular/angular-csp.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular"
copyFileToTmpDir "web/lib/angular/LICENSE.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular/LICENSE.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular"
copyFileToTmpDir "web/lib/angular/angular.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular/angular.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular"
copyFileToTmpDir "web/lib/angular/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular"
copyFileToTmpDir "web/lib/angular/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular"
copyFileToTmpDir "web/lib/angular/angular.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular/angular.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular"
copyFileToTmpDir "web/lib/angular/angular.min.js.gzip" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular/angular.min.js.gzip" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular"
copyFileToTmpDir "web/lib/angular/angular-route.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular/angular-route.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular"
copyFileToTmpDir "web/lib/angular/angular.min.js.map" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular/angular.min.js.map" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/index.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/index.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/angular-material.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/angular-material.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/CHANGELOG.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/CHANGELOG.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/angular-material-mocks.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/angular-material-mocks.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/angular-material.scss" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/angular-material.scss" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/angular-material.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/angular-material.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/angular-material.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/angular-material.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/angular-material.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/angular-material.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/.npmignore" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/.npmignore" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/js/checkbox/checkbox.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/checkbox/checkbox.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/js/checkbox/checkbox.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/checkbox/checkbox.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/js/checkbox/checkbox.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/checkbox/checkbox.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/js/checkbox/checkbox.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/checkbox/checkbox.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/js/checkbox/checkbox-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/checkbox/checkbox-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/js/checkbox/checkbox-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/checkbox/checkbox-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/js/checkbox/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/checkbox/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/select"
copyFileToTmpDir "web/lib/angular-material/modules/js/select/select.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/select/select.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/select"
copyFileToTmpDir "web/lib/angular-material/modules/js/select/select-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/select/select-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/select"
copyFileToTmpDir "web/lib/angular-material/modules/js/select/select.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/select/select.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/select"
copyFileToTmpDir "web/lib/angular-material/modules/js/select/select.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/select/select.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/select"
copyFileToTmpDir "web/lib/angular-material/modules/js/select/select.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/select/select.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/select"
copyFileToTmpDir "web/lib/angular-material/modules/js/select/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/select/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/select"
copyFileToTmpDir "web/lib/angular-material/modules/js/select/select-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/select/select-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/icon"
copyFileToTmpDir "web/lib/angular-material/modules/js/icon/icon.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/icon/icon.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/icon"
copyFileToTmpDir "web/lib/angular-material/modules/js/icon/icon-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/icon/icon-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/icon"
copyFileToTmpDir "web/lib/angular-material/modules/js/icon/icon.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/icon/icon.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/icon"
copyFileToTmpDir "web/lib/angular-material/modules/js/icon/icon.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/icon/icon.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/icon"
copyFileToTmpDir "web/lib/angular-material/modules/js/icon/icon-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/icon/icon-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/icon"
copyFileToTmpDir "web/lib/angular-material/modules/js/icon/icon.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/icon/icon.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/icon"
copyFileToTmpDir "web/lib/angular-material/modules/js/icon/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/icon/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/textField"
copyFileToTmpDir "web/lib/angular-material/modules/js/textField/textField.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/textField/textField.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/textField"
copyFileToTmpDir "web/lib/angular-material/modules/js/textField/textField-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/textField/textField-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/textField"
copyFileToTmpDir "web/lib/angular-material/modules/js/textField/textField.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/textField/textField.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/textField"
copyFileToTmpDir "web/lib/angular-material/modules/js/textField/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/textField/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/textField"
copyFileToTmpDir "web/lib/angular-material/modules/js/textField/textField.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/textField/textField.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/textField"
copyFileToTmpDir "web/lib/angular-material/modules/js/textField/textField.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/textField/textField.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/textField"
copyFileToTmpDir "web/lib/angular-material/modules/js/textField/textField-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/textField/textField-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/virtualRepeat"
copyFileToTmpDir "web/lib/angular-material/modules/js/virtualRepeat/virtualRepeat.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/virtualRepeat/virtualRepeat.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/virtualRepeat"
copyFileToTmpDir "web/lib/angular-material/modules/js/virtualRepeat/virtualRepeat.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/virtualRepeat/virtualRepeat.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/virtualRepeat"
copyFileToTmpDir "web/lib/angular-material/modules/js/virtualRepeat/virtualRepeat.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/virtualRepeat/virtualRepeat.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/virtualRepeat"
copyFileToTmpDir "web/lib/angular-material/modules/js/virtualRepeat/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/virtualRepeat/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/virtualRepeat"
copyFileToTmpDir "web/lib/angular-material/modules/js/virtualRepeat/virtualRepeat.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/virtualRepeat/virtualRepeat.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/sticky"
copyFileToTmpDir "web/lib/angular-material/modules/js/sticky/sticky.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/sticky/sticky.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/sticky"
copyFileToTmpDir "web/lib/angular-material/modules/js/sticky/sticky.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/sticky/sticky.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/sticky"
copyFileToTmpDir "web/lib/angular-material/modules/js/sticky/sticky.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/sticky/sticky.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/sticky"
copyFileToTmpDir "web/lib/angular-material/modules/js/sticky/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/sticky/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/sticky"
copyFileToTmpDir "web/lib/angular-material/modules/js/sticky/sticky.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/sticky/sticky.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/showHide"
copyFileToTmpDir "web/lib/angular-material/modules/js/showHide/showHide.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/showHide/showHide.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/showHide"
copyFileToTmpDir "web/lib/angular-material/modules/js/showHide/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/showHide/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/showHide"
copyFileToTmpDir "web/lib/angular-material/modules/js/showHide/showHide.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/showHide/showHide.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/menuBar/menuBar.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menuBar/menuBar.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/menuBar/menuBar.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menuBar/menuBar.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/menuBar/menuBar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menuBar/menuBar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/menuBar/menuBar-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menuBar/menuBar-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/menuBar/menuBar-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menuBar/menuBar-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/menuBar/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menuBar/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/menuBar/menuBar.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menuBar/menuBar.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/input"
copyFileToTmpDir "web/lib/angular-material/modules/js/input/input-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/input/input-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/input"
copyFileToTmpDir "web/lib/angular-material/modules/js/input/input-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/input/input-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/input"
copyFileToTmpDir "web/lib/angular-material/modules/js/input/input.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/input/input.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/input"
copyFileToTmpDir "web/lib/angular-material/modules/js/input/input.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/input/input.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/input"
copyFileToTmpDir "web/lib/angular-material/modules/js/input/input.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/input/input.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/input"
copyFileToTmpDir "web/lib/angular-material/modules/js/input/input.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/input/input.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/input"
copyFileToTmpDir "web/lib/angular-material/modules/js/input/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/input/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/core"
copyFileToTmpDir "web/lib/angular-material/modules/js/core/core.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/core/core.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/core"
copyFileToTmpDir "web/lib/angular-material/modules/js/core/core.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/core/core.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/core"
copyFileToTmpDir "web/lib/angular-material/modules/js/core/core.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/core/core.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/core"
copyFileToTmpDir "web/lib/angular-material/modules/js/core/default-theme.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/core/default-theme.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/core"
copyFileToTmpDir "web/lib/angular-material/modules/js/core/core.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/core/core.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/core"
copyFileToTmpDir "web/lib/angular-material/modules/js/core/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/core/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/card"
copyFileToTmpDir "web/lib/angular-material/modules/js/card/card.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/card/card.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/card"
copyFileToTmpDir "web/lib/angular-material/modules/js/card/card-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/card/card-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/card"
copyFileToTmpDir "web/lib/angular-material/modules/js/card/card-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/card/card-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/card"
copyFileToTmpDir "web/lib/angular-material/modules/js/card/card.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/card/card.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/card"
copyFileToTmpDir "web/lib/angular-material/modules/js/card/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/card/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/card"
copyFileToTmpDir "web/lib/angular-material/modules/js/card/card.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/card/card.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/card"
copyFileToTmpDir "web/lib/angular-material/modules/js/card/card.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/card/card.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/js/bottomSheet/bottomSheet.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/bottomSheet/bottomSheet.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/js/bottomSheet/bottomSheet.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/bottomSheet/bottomSheet.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/js/bottomSheet/bottomSheet-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/bottomSheet/bottomSheet-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/js/bottomSheet/bottomSheet-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/bottomSheet/bottomSheet-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/js/bottomSheet/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/bottomSheet/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/js/bottomSheet/bottomSheet.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/bottomSheet/bottomSheet.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/js/bottomSheet/bottomSheet.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/bottomSheet/bottomSheet.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/js/toolbar/toolbar.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toolbar/toolbar.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/js/toolbar/toolbar.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toolbar/toolbar.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/js/toolbar/toolbar.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toolbar/toolbar.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/js/toolbar/toolbar-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toolbar/toolbar-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/js/toolbar/toolbar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toolbar/toolbar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/js/toolbar/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toolbar/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/js/toolbar/toolbar-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toolbar/toolbar-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/list"
copyFileToTmpDir "web/lib/angular-material/modules/js/list/list.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/list/list.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/list"
copyFileToTmpDir "web/lib/angular-material/modules/js/list/list.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/list/list.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/list"
copyFileToTmpDir "web/lib/angular-material/modules/js/list/list.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/list/list.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/list"
copyFileToTmpDir "web/lib/angular-material/modules/js/list/list-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/list/list-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/list"
copyFileToTmpDir "web/lib/angular-material/modules/js/list/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/list/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/list"
copyFileToTmpDir "web/lib/angular-material/modules/js/list/list.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/list/list.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/list"
copyFileToTmpDir "web/lib/angular-material/modules/js/list/list-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/list/list-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/gridList"
copyFileToTmpDir "web/lib/angular-material/modules/js/gridList/gridList.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/gridList/gridList.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/gridList"
copyFileToTmpDir "web/lib/angular-material/modules/js/gridList/gridList.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/gridList/gridList.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/gridList"
copyFileToTmpDir "web/lib/angular-material/modules/js/gridList/gridList.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/gridList/gridList.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/gridList"
copyFileToTmpDir "web/lib/angular-material/modules/js/gridList/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/gridList/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/gridList"
copyFileToTmpDir "web/lib/angular-material/modules/js/gridList/gridList.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/gridList/gridList.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/js/autocomplete/autocomplete.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/autocomplete/autocomplete.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/js/autocomplete/autocomplete.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/autocomplete/autocomplete.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/js/autocomplete/autocomplete.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/autocomplete/autocomplete.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/js/autocomplete/autocomplete-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/autocomplete/autocomplete-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/js/autocomplete/autocomplete.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/autocomplete/autocomplete.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/js/autocomplete/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/autocomplete/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/js/autocomplete/autocomplete-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/autocomplete/autocomplete-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/panel"
copyFileToTmpDir "web/lib/angular-material/modules/js/panel/panel-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/panel/panel-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/panel"
copyFileToTmpDir "web/lib/angular-material/modules/js/panel/panel.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/panel/panel.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/panel"
copyFileToTmpDir "web/lib/angular-material/modules/js/panel/panel.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/panel/panel.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/panel"
copyFileToTmpDir "web/lib/angular-material/modules/js/panel/panel.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/panel/panel.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/panel"
copyFileToTmpDir "web/lib/angular-material/modules/js/panel/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/panel/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/panel"
copyFileToTmpDir "web/lib/angular-material/modules/js/panel/panel.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/panel/panel.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/panel"
copyFileToTmpDir "web/lib/angular-material/modules/js/panel/panel-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/panel/panel-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/slider"
copyFileToTmpDir "web/lib/angular-material/modules/js/slider/slider.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/slider/slider.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/slider"
copyFileToTmpDir "web/lib/angular-material/modules/js/slider/slider.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/slider/slider.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/slider"
copyFileToTmpDir "web/lib/angular-material/modules/js/slider/slider-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/slider/slider-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/slider"
copyFileToTmpDir "web/lib/angular-material/modules/js/slider/slider.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/slider/slider.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/slider"
copyFileToTmpDir "web/lib/angular-material/modules/js/slider/slider.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/slider/slider.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/slider"
copyFileToTmpDir "web/lib/angular-material/modules/js/slider/slider-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/slider/slider-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/slider"
copyFileToTmpDir "web/lib/angular-material/modules/js/slider/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/slider/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/divider"
copyFileToTmpDir "web/lib/angular-material/modules/js/divider/divider.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/divider/divider.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/divider"
copyFileToTmpDir "web/lib/angular-material/modules/js/divider/divider.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/divider/divider.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/divider"
copyFileToTmpDir "web/lib/angular-material/modules/js/divider/divider.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/divider/divider.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/divider"
copyFileToTmpDir "web/lib/angular-material/modules/js/divider/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/divider/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/divider"
copyFileToTmpDir "web/lib/angular-material/modules/js/divider/divider-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/divider/divider-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/divider"
copyFileToTmpDir "web/lib/angular-material/modules/js/divider/divider.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/divider/divider.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/divider"
copyFileToTmpDir "web/lib/angular-material/modules/js/divider/divider-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/divider/divider-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/content"
copyFileToTmpDir "web/lib/angular-material/modules/js/content/content-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/content/content-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/content"
copyFileToTmpDir "web/lib/angular-material/modules/js/content/content.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/content/content.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/content"
copyFileToTmpDir "web/lib/angular-material/modules/js/content/content-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/content/content-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/content"
copyFileToTmpDir "web/lib/angular-material/modules/js/content/content.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/content/content.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/content"
copyFileToTmpDir "web/lib/angular-material/modules/js/content/content.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/content/content.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/content"
copyFileToTmpDir "web/lib/angular-material/modules/js/content/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/content/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/content"
copyFileToTmpDir "web/lib/angular-material/modules/js/content/content.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/content/content.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toast"
copyFileToTmpDir "web/lib/angular-material/modules/js/toast/toast-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toast/toast-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toast"
copyFileToTmpDir "web/lib/angular-material/modules/js/toast/toast.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toast/toast.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toast"
copyFileToTmpDir "web/lib/angular-material/modules/js/toast/toast.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toast/toast.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toast"
copyFileToTmpDir "web/lib/angular-material/modules/js/toast/toast.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toast/toast.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toast"
copyFileToTmpDir "web/lib/angular-material/modules/js/toast/toast-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toast/toast-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toast"
copyFileToTmpDir "web/lib/angular-material/modules/js/toast/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toast/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/toast"
copyFileToTmpDir "web/lib/angular-material/modules/js/toast/toast.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/toast/toast.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/colors"
copyFileToTmpDir "web/lib/angular-material/modules/js/colors/colors.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/colors/colors.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/colors"
copyFileToTmpDir "web/lib/angular-material/modules/js/colors/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/colors/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/colors"
copyFileToTmpDir "web/lib/angular-material/modules/js/colors/colors.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/colors/colors.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/js/tooltip/tooltip.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tooltip/tooltip.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/js/tooltip/tooltip.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tooltip/tooltip.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/js/tooltip/tooltip.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tooltip/tooltip.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/js/tooltip/tooltip-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tooltip/tooltip-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/js/tooltip/tooltip-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tooltip/tooltip-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/js/tooltip/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tooltip/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/js/tooltip/tooltip.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tooltip/tooltip.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menu"
copyFileToTmpDir "web/lib/angular-material/modules/js/menu/menu.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menu/menu.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menu"
copyFileToTmpDir "web/lib/angular-material/modules/js/menu/menu-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menu/menu-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menu"
copyFileToTmpDir "web/lib/angular-material/modules/js/menu/menu.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menu/menu.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menu"
copyFileToTmpDir "web/lib/angular-material/modules/js/menu/menu.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menu/menu.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menu"
copyFileToTmpDir "web/lib/angular-material/modules/js/menu/menu-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menu/menu-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menu"
copyFileToTmpDir "web/lib/angular-material/modules/js/menu/menu.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menu/menu.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/menu"
copyFileToTmpDir "web/lib/angular-material/modules/js/menu/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/menu/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/js/subheader/subheader-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/subheader/subheader-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/js/subheader/subheader.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/subheader/subheader.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/js/subheader/subheader.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/subheader/subheader.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/js/subheader/subheader.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/subheader/subheader.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/js/subheader/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/subheader/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/js/subheader/subheader-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/subheader/subheader-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/js/subheader/subheader.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/subheader/subheader.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/js/datepicker/datepicker.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/datepicker/datepicker.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/js/datepicker/datepicker.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/datepicker/datepicker.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/js/datepicker/datepicker.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/datepicker/datepicker.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/js/datepicker/datepicker.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/datepicker/datepicker.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/js/datepicker/datepicker-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/datepicker/datepicker-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/js/datepicker/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/datepicker/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/js/datepicker/datepicker-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/datepicker/datepicker-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/swipe"
copyFileToTmpDir "web/lib/angular-material/modules/js/swipe/swipe.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/swipe/swipe.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/swipe"
copyFileToTmpDir "web/lib/angular-material/modules/js/swipe/swipe.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/swipe/swipe.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/swipe"
copyFileToTmpDir "web/lib/angular-material/modules/js/swipe/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/swipe/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/chips"
copyFileToTmpDir "web/lib/angular-material/modules/js/chips/chips.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/chips/chips.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/chips"
copyFileToTmpDir "web/lib/angular-material/modules/js/chips/chips.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/chips/chips.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/chips"
copyFileToTmpDir "web/lib/angular-material/modules/js/chips/chips-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/chips/chips-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/chips"
copyFileToTmpDir "web/lib/angular-material/modules/js/chips/chips-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/chips/chips-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/chips"
copyFileToTmpDir "web/lib/angular-material/modules/js/chips/chips.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/chips/chips.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/chips"
copyFileToTmpDir "web/lib/angular-material/modules/js/chips/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/chips/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/chips"
copyFileToTmpDir "web/lib/angular-material/modules/js/chips/chips.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/chips/chips.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/js/radioButton/radioButton-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/radioButton/radioButton-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/js/radioButton/radioButton.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/radioButton/radioButton.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/js/radioButton/radioButton.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/radioButton/radioButton.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/js/radioButton/radioButton.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/radioButton/radioButton.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/js/radioButton/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/radioButton/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/js/radioButton/radioButton-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/radioButton/radioButton-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/js/radioButton/radioButton.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/radioButton/radioButton.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/js/tabs/tabs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tabs/tabs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/js/tabs/tabs-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tabs/tabs-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/js/tabs/tabs.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tabs/tabs.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/js/tabs/tabs.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tabs/tabs.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/js/tabs/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tabs/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/js/tabs/tabs-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tabs/tabs-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/js/tabs/tabs.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/tabs/tabs.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabActions"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabActions/fabActions.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabActions/fabActions.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabActions"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabActions/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabActions/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabActions"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabActions/fabActions.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabActions/fabActions.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabSpeedDial"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabSpeedDial/fabSpeedDial.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabSpeedDial/fabSpeedDial.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabSpeedDial"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabSpeedDial/fabSpeedDial.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabSpeedDial/fabSpeedDial.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabSpeedDial"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabSpeedDial/fabSpeedDial.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabSpeedDial/fabSpeedDial.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabSpeedDial"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabSpeedDial/fabSpeedDial.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabSpeedDial/fabSpeedDial.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabSpeedDial"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabSpeedDial/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabSpeedDial/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/js/sidenav/sidenav.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/sidenav/sidenav.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/js/sidenav/sidenav.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/sidenav/sidenav.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/js/sidenav/sidenav-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/sidenav/sidenav-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/js/sidenav/sidenav.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/sidenav/sidenav.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/js/sidenav/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/sidenav/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/js/sidenav/sidenav-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/sidenav/sidenav-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/js/sidenav/sidenav.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/sidenav/sidenav.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/button"
copyFileToTmpDir "web/lib/angular-material/modules/js/button/button.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/button/button.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/button"
copyFileToTmpDir "web/lib/angular-material/modules/js/button/button.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/button/button.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/button"
copyFileToTmpDir "web/lib/angular-material/modules/js/button/button.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/button/button.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/button"
copyFileToTmpDir "web/lib/angular-material/modules/js/button/button-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/button/button-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/button"
copyFileToTmpDir "web/lib/angular-material/modules/js/button/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/button/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/button"
copyFileToTmpDir "web/lib/angular-material/modules/js/button/button.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/button/button.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/button"
copyFileToTmpDir "web/lib/angular-material/modules/js/button/button-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/button/button-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/navBar/navBar.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/navBar/navBar.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/navBar/navBar.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/navBar/navBar.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/navBar/navBar-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/navBar/navBar-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/navBar/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/navBar/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/navBar/navBar.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/navBar/navBar.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/navBar/navBar-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/navBar/navBar-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/js/navBar/navBar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/navBar/navBar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabTrigger"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabTrigger/fabTrigger.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabTrigger/fabTrigger.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabTrigger"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabTrigger/fabTrigger.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabTrigger/fabTrigger.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabTrigger"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabTrigger/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabTrigger/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/whiteframe"
copyFileToTmpDir "web/lib/angular-material/modules/js/whiteframe/whiteframe.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/whiteframe/whiteframe.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/whiteframe"
copyFileToTmpDir "web/lib/angular-material/modules/js/whiteframe/whiteframe.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/whiteframe/whiteframe.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/whiteframe"
copyFileToTmpDir "web/lib/angular-material/modules/js/whiteframe/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/whiteframe/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/whiteframe"
copyFileToTmpDir "web/lib/angular-material/modules/js/whiteframe/whiteframe.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/whiteframe/whiteframe.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/whiteframe"
copyFileToTmpDir "web/lib/angular-material/modules/js/whiteframe/whiteframe.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/whiteframe/whiteframe.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/js/backdrop/backdrop-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/backdrop/backdrop-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/js/backdrop/backdrop-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/backdrop/backdrop-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/js/backdrop/backdrop.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/backdrop/backdrop.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/js/backdrop/backdrop.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/backdrop/backdrop.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/js/backdrop/backdrop.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/backdrop/backdrop.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/js/backdrop/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/backdrop/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/js/backdrop/backdrop.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/backdrop/backdrop.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressCircular/progressCircular.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressCircular/progressCircular.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressCircular/progressCircular.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressCircular/progressCircular.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressCircular/progressCircular.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressCircular/progressCircular.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressCircular/progressCircular-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressCircular/progressCircular-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressCircular/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressCircular/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressCircular/progressCircular.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressCircular/progressCircular.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressCircular/progressCircular-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressCircular/progressCircular-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/js/dialog/dialog-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/dialog/dialog-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/js/dialog/dialog.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/dialog/dialog.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/js/dialog/dialog.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/dialog/dialog.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/js/dialog/dialog.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/dialog/dialog.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/js/dialog/dialog-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/dialog/dialog-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/js/dialog/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/dialog/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/js/dialog/dialog.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/dialog/dialog.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressLinear/progressLinear-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressLinear/progressLinear-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressLinear/progressLinear.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressLinear/progressLinear.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressLinear/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressLinear/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressLinear/progressLinear.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressLinear/progressLinear.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressLinear/progressLinear.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressLinear/progressLinear.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressLinear/progressLinear-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressLinear/progressLinear-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/js/progressLinear/progressLinear.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/progressLinear/progressLinear.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabToolbar"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabToolbar/fabToolbar.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabToolbar/fabToolbar.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabToolbar"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabToolbar/fabToolbar.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabToolbar/fabToolbar.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabToolbar"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabToolbar/fabToolbar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabToolbar/fabToolbar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabToolbar"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabToolbar/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabToolbar/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/fabToolbar"
copyFileToTmpDir "web/lib/angular-material/modules/js/fabToolbar/fabToolbar.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/fabToolbar/fabToolbar.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/switch"
copyFileToTmpDir "web/lib/angular-material/modules/js/switch/switch.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/switch/switch.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/switch"
copyFileToTmpDir "web/lib/angular-material/modules/js/switch/switch.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/switch/switch.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/switch"
copyFileToTmpDir "web/lib/angular-material/modules/js/switch/switch-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/switch/switch-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/switch"
copyFileToTmpDir "web/lib/angular-material/modules/js/switch/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/switch/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/switch"
copyFileToTmpDir "web/lib/angular-material/modules/js/switch/switch.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/switch/switch.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/switch"
copyFileToTmpDir "web/lib/angular-material/modules/js/switch/switch.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/switch/switch.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/js/switch"
copyFileToTmpDir "web/lib/angular-material/modules/js/switch/switch-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/js/switch/switch-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/layouts"
copyFileToTmpDir "web/lib/angular-material/modules/layouts/angular-material.layouts.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/layouts/angular-material.layouts.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/layouts"
copyFileToTmpDir "web/lib/angular-material/modules/layouts/angular-material.layout-attributes.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/layouts/angular-material.layout-attributes.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/layouts"
copyFileToTmpDir "web/lib/angular-material/modules/layouts/angular-material.layouts.ie_fixes.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/layouts/angular-material.layouts.ie_fixes.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/layouts"
copyFileToTmpDir "web/lib/angular-material/modules/layouts/angular-material.layouts.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/layouts/angular-material.layouts.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/layouts"
copyFileToTmpDir "web/lib/angular-material/modules/layouts/angular-material.layout-attributes.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/layouts/angular-material.layout-attributes.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/scss"
copyFileToTmpDir "web/lib/angular-material/modules/scss/angular-material.scss" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/scss/angular-material.scss" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/scss"
copyFileToTmpDir "web/lib/angular-material/modules/scss/angular-material.layouts.scss" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/scss/angular-material.layouts.scss" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/scss"
copyFileToTmpDir "web/lib/angular-material/modules/scss/angular-material.layout-attributes.scss" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/scss/angular-material.layout-attributes.scss" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/closure/checkbox/checkbox.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/checkbox/checkbox.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/closure/checkbox/checkbox.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/checkbox/checkbox.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/closure/checkbox/checkbox.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/checkbox/checkbox.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/closure/checkbox/checkbox.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/checkbox/checkbox.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/closure/checkbox/checkbox-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/checkbox/checkbox-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/checkbox"
copyFileToTmpDir "web/lib/angular-material/modules/closure/checkbox/checkbox-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/checkbox/checkbox-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/select"
copyFileToTmpDir "web/lib/angular-material/modules/closure/select/select.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/select/select.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/select"
copyFileToTmpDir "web/lib/angular-material/modules/closure/select/select-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/select/select-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/select"
copyFileToTmpDir "web/lib/angular-material/modules/closure/select/select.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/select/select.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/select"
copyFileToTmpDir "web/lib/angular-material/modules/closure/select/select.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/select/select.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/select"
copyFileToTmpDir "web/lib/angular-material/modules/closure/select/select.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/select/select.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/select"
copyFileToTmpDir "web/lib/angular-material/modules/closure/select/select-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/select/select-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/icon"
copyFileToTmpDir "web/lib/angular-material/modules/closure/icon/icon.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/icon/icon.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/icon"
copyFileToTmpDir "web/lib/angular-material/modules/closure/icon/icon-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/icon/icon-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/icon"
copyFileToTmpDir "web/lib/angular-material/modules/closure/icon/icon.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/icon/icon.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/icon"
copyFileToTmpDir "web/lib/angular-material/modules/closure/icon/icon.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/icon/icon.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/icon"
copyFileToTmpDir "web/lib/angular-material/modules/closure/icon/icon-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/icon/icon-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/icon"
copyFileToTmpDir "web/lib/angular-material/modules/closure/icon/icon.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/icon/icon.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/textField"
copyFileToTmpDir "web/lib/angular-material/modules/closure/textField/textField.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/textField/textField.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/textField"
copyFileToTmpDir "web/lib/angular-material/modules/closure/textField/textField.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/textField/textField.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/textField"
copyFileToTmpDir "web/lib/angular-material/modules/closure/textField/textField-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/textField/textField-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/virtualRepeat"
copyFileToTmpDir "web/lib/angular-material/modules/closure/virtualRepeat/virtualRepeat.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/virtualRepeat/virtualRepeat.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/virtualRepeat"
copyFileToTmpDir "web/lib/angular-material/modules/closure/virtualRepeat/virtualRepeat.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/virtualRepeat/virtualRepeat.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/virtualRepeat"
copyFileToTmpDir "web/lib/angular-material/modules/closure/virtualRepeat/virtualRepeat.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/virtualRepeat/virtualRepeat.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/virtualRepeat"
copyFileToTmpDir "web/lib/angular-material/modules/closure/virtualRepeat/virtualRepeat.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/virtualRepeat/virtualRepeat.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/sticky"
copyFileToTmpDir "web/lib/angular-material/modules/closure/sticky/sticky.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/sticky/sticky.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/sticky"
copyFileToTmpDir "web/lib/angular-material/modules/closure/sticky/sticky.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/sticky/sticky.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/sticky"
copyFileToTmpDir "web/lib/angular-material/modules/closure/sticky/sticky.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/sticky/sticky.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/sticky"
copyFileToTmpDir "web/lib/angular-material/modules/closure/sticky/sticky.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/sticky/sticky.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/showHide"
copyFileToTmpDir "web/lib/angular-material/modules/closure/showHide/showHide.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/showHide/showHide.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/showHide"
copyFileToTmpDir "web/lib/angular-material/modules/closure/showHide/showHide.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/showHide/showHide.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/menuBar/menuBar.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/menuBar/menuBar.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/menuBar/menuBar.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/menuBar/menuBar.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/menuBar/menuBar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/menuBar/menuBar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/menuBar/menuBar-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/menuBar/menuBar-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/menuBar/menuBar-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/menuBar/menuBar-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/menuBar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/menuBar/menuBar.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/menuBar/menuBar.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/input"
copyFileToTmpDir "web/lib/angular-material/modules/closure/input/input-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/input/input-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/input"
copyFileToTmpDir "web/lib/angular-material/modules/closure/input/input-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/input/input-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/input"
copyFileToTmpDir "web/lib/angular-material/modules/closure/input/input.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/input/input.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/input"
copyFileToTmpDir "web/lib/angular-material/modules/closure/input/input.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/input/input.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/input"
copyFileToTmpDir "web/lib/angular-material/modules/closure/input/input.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/input/input.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/input"
copyFileToTmpDir "web/lib/angular-material/modules/closure/input/input.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/input/input.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/core"
copyFileToTmpDir "web/lib/angular-material/modules/closure/core/core.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/core/core.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/core"
copyFileToTmpDir "web/lib/angular-material/modules/closure/core/core.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/core/core.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/core"
copyFileToTmpDir "web/lib/angular-material/modules/closure/core/core.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/core/core.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/core"
copyFileToTmpDir "web/lib/angular-material/modules/closure/core/default-theme.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/core/default-theme.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/core"
copyFileToTmpDir "web/lib/angular-material/modules/closure/core/core.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/core/core.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/card"
copyFileToTmpDir "web/lib/angular-material/modules/closure/card/card.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/card/card.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/card"
copyFileToTmpDir "web/lib/angular-material/modules/closure/card/card-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/card/card-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/card"
copyFileToTmpDir "web/lib/angular-material/modules/closure/card/card-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/card/card-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/card"
copyFileToTmpDir "web/lib/angular-material/modules/closure/card/card.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/card/card.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/card"
copyFileToTmpDir "web/lib/angular-material/modules/closure/card/card.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/card/card.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/card"
copyFileToTmpDir "web/lib/angular-material/modules/closure/card/card.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/card/card.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/closure/bottomSheet/bottomSheet.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/bottomSheet/bottomSheet.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/closure/bottomSheet/bottomSheet.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/bottomSheet/bottomSheet.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/closure/bottomSheet/bottomSheet-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/bottomSheet/bottomSheet-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/closure/bottomSheet/bottomSheet-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/bottomSheet/bottomSheet-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/closure/bottomSheet/bottomSheet.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/bottomSheet/bottomSheet.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/bottomSheet"
copyFileToTmpDir "web/lib/angular-material/modules/closure/bottomSheet/bottomSheet.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/bottomSheet/bottomSheet.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/toolbar/toolbar.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/toolbar/toolbar.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/toolbar/toolbar.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/toolbar/toolbar.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/toolbar/toolbar.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/toolbar/toolbar.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/toolbar/toolbar-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/toolbar/toolbar-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/toolbar/toolbar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/toolbar/toolbar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/toolbar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/toolbar/toolbar-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/toolbar/toolbar-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/list"
copyFileToTmpDir "web/lib/angular-material/modules/closure/list/list.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/list/list.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/list"
copyFileToTmpDir "web/lib/angular-material/modules/closure/list/list.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/list/list.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/list"
copyFileToTmpDir "web/lib/angular-material/modules/closure/list/list.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/list/list.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/list"
copyFileToTmpDir "web/lib/angular-material/modules/closure/list/list-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/list/list-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/list"
copyFileToTmpDir "web/lib/angular-material/modules/closure/list/list.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/list/list.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/list"
copyFileToTmpDir "web/lib/angular-material/modules/closure/list/list-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/list/list-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/gridList"
copyFileToTmpDir "web/lib/angular-material/modules/closure/gridList/gridList.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/gridList/gridList.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/gridList"
copyFileToTmpDir "web/lib/angular-material/modules/closure/gridList/gridList-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/gridList/gridList-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/gridList"
copyFileToTmpDir "web/lib/angular-material/modules/closure/gridList/gridList.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/gridList/gridList.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/gridList"
copyFileToTmpDir "web/lib/angular-material/modules/closure/gridList/gridList.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/gridList/gridList.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/gridList"
copyFileToTmpDir "web/lib/angular-material/modules/closure/gridList/gridList.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/gridList/gridList.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/closure/autocomplete/autocomplete.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/autocomplete/autocomplete.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/closure/autocomplete/autocomplete.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/autocomplete/autocomplete.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/closure/autocomplete/autocomplete.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/autocomplete/autocomplete.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/closure/autocomplete/autocomplete-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/autocomplete/autocomplete-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/closure/autocomplete/autocomplete.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/autocomplete/autocomplete.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/autocomplete"
copyFileToTmpDir "web/lib/angular-material/modules/closure/autocomplete/autocomplete-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/autocomplete/autocomplete-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/panel"
copyFileToTmpDir "web/lib/angular-material/modules/closure/panel/panel-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/panel/panel-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/panel"
copyFileToTmpDir "web/lib/angular-material/modules/closure/panel/panel.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/panel/panel.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/panel"
copyFileToTmpDir "web/lib/angular-material/modules/closure/panel/panel.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/panel/panel.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/panel"
copyFileToTmpDir "web/lib/angular-material/modules/closure/panel/panel.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/panel/panel.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/panel"
copyFileToTmpDir "web/lib/angular-material/modules/closure/panel/panel.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/panel/panel.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/panel"
copyFileToTmpDir "web/lib/angular-material/modules/closure/panel/panel-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/panel/panel-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/slider"
copyFileToTmpDir "web/lib/angular-material/modules/closure/slider/slider.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/slider/slider.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/slider"
copyFileToTmpDir "web/lib/angular-material/modules/closure/slider/slider.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/slider/slider.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/slider"
copyFileToTmpDir "web/lib/angular-material/modules/closure/slider/slider-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/slider/slider-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/slider"
copyFileToTmpDir "web/lib/angular-material/modules/closure/slider/slider.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/slider/slider.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/slider"
copyFileToTmpDir "web/lib/angular-material/modules/closure/slider/slider.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/slider/slider.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/slider"
copyFileToTmpDir "web/lib/angular-material/modules/closure/slider/slider-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/slider/slider-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/divider"
copyFileToTmpDir "web/lib/angular-material/modules/closure/divider/divider.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/divider/divider.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/divider"
copyFileToTmpDir "web/lib/angular-material/modules/closure/divider/divider.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/divider/divider.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/divider"
copyFileToTmpDir "web/lib/angular-material/modules/closure/divider/divider.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/divider/divider.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/divider"
copyFileToTmpDir "web/lib/angular-material/modules/closure/divider/divider-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/divider/divider-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/divider"
copyFileToTmpDir "web/lib/angular-material/modules/closure/divider/divider.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/divider/divider.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/divider"
copyFileToTmpDir "web/lib/angular-material/modules/closure/divider/divider-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/divider/divider-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/content"
copyFileToTmpDir "web/lib/angular-material/modules/closure/content/content-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/content/content-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/content"
copyFileToTmpDir "web/lib/angular-material/modules/closure/content/content.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/content/content.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/content"
copyFileToTmpDir "web/lib/angular-material/modules/closure/content/content-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/content/content-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/content"
copyFileToTmpDir "web/lib/angular-material/modules/closure/content/content.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/content/content.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/content"
copyFileToTmpDir "web/lib/angular-material/modules/closure/content/content.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/content/content.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/content"
copyFileToTmpDir "web/lib/angular-material/modules/closure/content/content.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/content/content.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/toast"
copyFileToTmpDir "web/lib/angular-material/modules/closure/toast/toast-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/toast/toast-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/toast"
copyFileToTmpDir "web/lib/angular-material/modules/closure/toast/toast.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/toast/toast.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/toast"
copyFileToTmpDir "web/lib/angular-material/modules/closure/toast/toast.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/toast/toast.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/toast"
copyFileToTmpDir "web/lib/angular-material/modules/closure/toast/toast.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/toast/toast.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/toast"
copyFileToTmpDir "web/lib/angular-material/modules/closure/toast/toast-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/toast/toast-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/toast"
copyFileToTmpDir "web/lib/angular-material/modules/closure/toast/toast.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/toast/toast.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/colors"
copyFileToTmpDir "web/lib/angular-material/modules/closure/colors/colors.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/colors/colors.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/colors"
copyFileToTmpDir "web/lib/angular-material/modules/closure/colors/colors.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/colors/colors.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tooltip/tooltip.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tooltip/tooltip.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tooltip/tooltip.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tooltip/tooltip.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tooltip/tooltip.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tooltip/tooltip.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tooltip/tooltip-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tooltip/tooltip-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tooltip/tooltip-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tooltip/tooltip-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tooltip"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tooltip/tooltip.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tooltip/tooltip.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/menu"
copyFileToTmpDir "web/lib/angular-material/modules/closure/menu/menu.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/menu/menu.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/menu"
copyFileToTmpDir "web/lib/angular-material/modules/closure/menu/menu-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/menu/menu-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/menu"
copyFileToTmpDir "web/lib/angular-material/modules/closure/menu/menu.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/menu/menu.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/menu"
copyFileToTmpDir "web/lib/angular-material/modules/closure/menu/menu.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/menu/menu.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/menu"
copyFileToTmpDir "web/lib/angular-material/modules/closure/menu/menu-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/menu/menu-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/menu"
copyFileToTmpDir "web/lib/angular-material/modules/closure/menu/menu.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/menu/menu.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/closure/subheader/subheader-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/subheader/subheader-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/closure/subheader/subheader.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/subheader/subheader.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/closure/subheader/subheader.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/subheader/subheader.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/closure/subheader/subheader.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/subheader/subheader.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/closure/subheader/subheader-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/subheader/subheader-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/subheader"
copyFileToTmpDir "web/lib/angular-material/modules/closure/subheader/subheader.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/subheader/subheader.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/closure/datepicker/datepicker.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/datepicker/datepicker.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/closure/datepicker/datepicker.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/datepicker/datepicker.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/closure/datepicker/datepicker.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/datepicker/datepicker.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/closure/datepicker/datepicker.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/datepicker/datepicker.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/closure/datepicker/datepicker-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/datepicker/datepicker-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/datepicker"
copyFileToTmpDir "web/lib/angular-material/modules/closure/datepicker/datepicker-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/datepicker/datepicker-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/swipe"
copyFileToTmpDir "web/lib/angular-material/modules/closure/swipe/swipe.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/swipe/swipe.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/swipe"
copyFileToTmpDir "web/lib/angular-material/modules/closure/swipe/swipe.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/swipe/swipe.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/chips"
copyFileToTmpDir "web/lib/angular-material/modules/closure/chips/chips.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/chips/chips.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/chips"
copyFileToTmpDir "web/lib/angular-material/modules/closure/chips/chips.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/chips/chips.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/chips"
copyFileToTmpDir "web/lib/angular-material/modules/closure/chips/chips-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/chips/chips-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/chips"
copyFileToTmpDir "web/lib/angular-material/modules/closure/chips/chips-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/chips/chips-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/chips"
copyFileToTmpDir "web/lib/angular-material/modules/closure/chips/chips.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/chips/chips.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/chips"
copyFileToTmpDir "web/lib/angular-material/modules/closure/chips/chips.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/chips/chips.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/closure/radioButton/radioButton-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/radioButton/radioButton-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/closure/radioButton/radioButton.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/radioButton/radioButton.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/closure/radioButton/radioButton.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/radioButton/radioButton.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/closure/radioButton/radioButton.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/radioButton/radioButton.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/closure/radioButton/radioButton-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/radioButton/radioButton-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/radioButton"
copyFileToTmpDir "web/lib/angular-material/modules/closure/radioButton/radioButton.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/radioButton/radioButton.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tabs/tabs-arrow.svg" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tabs/tabs-arrow.svg" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tabs/tabs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tabs/tabs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tabs/tabs-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tabs/tabs-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tabs/tabs.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tabs/tabs.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tabs/tabs.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tabs/tabs.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tabs/tabs-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tabs/tabs-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/tabs"
copyFileToTmpDir "web/lib/angular-material/modules/closure/tabs/tabs.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/tabs/tabs.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/fabActions"
copyFileToTmpDir "web/lib/angular-material/modules/closure/fabActions/fabActions.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/fabActions/fabActions.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/fabActions"
copyFileToTmpDir "web/lib/angular-material/modules/closure/fabActions/fabActions.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/fabActions/fabActions.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/fabSpeedDial"
copyFileToTmpDir "web/lib/angular-material/modules/closure/fabSpeedDial/fabSpeedDial.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/fabSpeedDial/fabSpeedDial.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/fabSpeedDial"
copyFileToTmpDir "web/lib/angular-material/modules/closure/fabSpeedDial/fabSpeedDial.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/fabSpeedDial/fabSpeedDial.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/fabSpeedDial"
copyFileToTmpDir "web/lib/angular-material/modules/closure/fabSpeedDial/fabSpeedDial.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/fabSpeedDial/fabSpeedDial.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/fabSpeedDial"
copyFileToTmpDir "web/lib/angular-material/modules/closure/fabSpeedDial/fabSpeedDial.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/fabSpeedDial/fabSpeedDial.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/closure/sidenav/sidenav.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/sidenav/sidenav.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/closure/sidenav/sidenav.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/sidenav/sidenav.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/closure/sidenav/sidenav-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/sidenav/sidenav-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/closure/sidenav/sidenav.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/sidenav/sidenav.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/closure/sidenav/sidenav-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/sidenav/sidenav-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/sidenav"
copyFileToTmpDir "web/lib/angular-material/modules/closure/sidenav/sidenav.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/sidenav/sidenav.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/button"
copyFileToTmpDir "web/lib/angular-material/modules/closure/button/button.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/button/button.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/button"
copyFileToTmpDir "web/lib/angular-material/modules/closure/button/button.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/button/button.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/button"
copyFileToTmpDir "web/lib/angular-material/modules/closure/button/button.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/button/button.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/button"
copyFileToTmpDir "web/lib/angular-material/modules/closure/button/button-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/button/button-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/button"
copyFileToTmpDir "web/lib/angular-material/modules/closure/button/button.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/button/button.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/button"
copyFileToTmpDir "web/lib/angular-material/modules/closure/button/button-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/button/button-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/navBar/navBar.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/navBar/navBar.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/navBar/navBar.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/navBar/navBar.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/navBar/navBar-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/navBar/navBar-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/navBar/navBar.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/navBar/navBar.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/navBar/navBar-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/navBar/navBar-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/navBar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/navBar/navBar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/navBar/navBar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/fabTrigger"
copyFileToTmpDir "web/lib/angular-material/modules/closure/fabTrigger/fabTrigger.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/fabTrigger/fabTrigger.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/fabTrigger"
copyFileToTmpDir "web/lib/angular-material/modules/closure/fabTrigger/fabTrigger.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/fabTrigger/fabTrigger.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/whiteframe"
copyFileToTmpDir "web/lib/angular-material/modules/closure/whiteframe/whiteframe.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/whiteframe/whiteframe.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/whiteframe"
copyFileToTmpDir "web/lib/angular-material/modules/closure/whiteframe/whiteframe.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/whiteframe/whiteframe.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/whiteframe"
copyFileToTmpDir "web/lib/angular-material/modules/closure/whiteframe/whiteframe.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/whiteframe/whiteframe.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/whiteframe"
copyFileToTmpDir "web/lib/angular-material/modules/closure/whiteframe/whiteframe.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/whiteframe/whiteframe.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/closure/backdrop/backdrop-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/backdrop/backdrop-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/closure/backdrop/backdrop-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/backdrop/backdrop-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/closure/backdrop/backdrop.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/backdrop/backdrop.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/closure/backdrop/backdrop.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/backdrop/backdrop.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/closure/backdrop/backdrop.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/backdrop/backdrop.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/backdrop"
copyFileToTmpDir "web/lib/angular-material/modules/closure/backdrop/backdrop.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/backdrop/backdrop.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/closure/progressCircular/progressCircular.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/progressCircular/progressCircular.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/closure/progressCircular/progressCircular.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/progressCircular/progressCircular.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/closure/progressCircular/progressCircular.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/progressCircular/progressCircular.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/closure/progressCircular/progressCircular-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/progressCircular/progressCircular-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/closure/progressCircular/progressCircular.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/progressCircular/progressCircular.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/progressCircular"
copyFileToTmpDir "web/lib/angular-material/modules/closure/progressCircular/progressCircular-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/progressCircular/progressCircular-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/closure/dialog/dialog-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/dialog/dialog-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/closure/dialog/dialog.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/dialog/dialog.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/closure/dialog/dialog.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/dialog/dialog.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/closure/dialog/dialog.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/dialog/dialog.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/closure/dialog/dialog-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/dialog/dialog-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/dialog"
copyFileToTmpDir "web/lib/angular-material/modules/closure/dialog/dialog.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/dialog/dialog.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/closure/progressLinear/progressLinear-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/progressLinear/progressLinear-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/closure/progressLinear/progressLinear.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/progressLinear/progressLinear.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/closure/progressLinear/progressLinear.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/progressLinear/progressLinear.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/closure/progressLinear/progressLinear.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/progressLinear/progressLinear.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/closure/progressLinear/progressLinear-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/progressLinear/progressLinear-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/progressLinear"
copyFileToTmpDir "web/lib/angular-material/modules/closure/progressLinear/progressLinear.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/progressLinear/progressLinear.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/fabToolbar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/fabToolbar/fabToolbar.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/fabToolbar/fabToolbar.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/fabToolbar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/fabToolbar/fabToolbar.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/fabToolbar/fabToolbar.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/fabToolbar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/fabToolbar/fabToolbar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/fabToolbar/fabToolbar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/fabToolbar"
copyFileToTmpDir "web/lib/angular-material/modules/closure/fabToolbar/fabToolbar.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/fabToolbar/fabToolbar.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/switch"
copyFileToTmpDir "web/lib/angular-material/modules/closure/switch/switch.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/switch/switch.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/switch"
copyFileToTmpDir "web/lib/angular-material/modules/closure/switch/switch.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/switch/switch.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/switch"
copyFileToTmpDir "web/lib/angular-material/modules/closure/switch/switch-default-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/switch/switch-default-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/switch"
copyFileToTmpDir "web/lib/angular-material/modules/closure/switch/switch.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/switch/switch.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/switch"
copyFileToTmpDir "web/lib/angular-material/modules/closure/switch/switch.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/switch/switch.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/modules/closure/switch"
copyFileToTmpDir "web/lib/angular-material/modules/closure/switch/switch-default-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/modules/closure/switch/switch-default-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/layouts"
copyFileToTmpDir "web/lib/angular-material/layouts/angular-material.layouts.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/layouts/angular-material.layouts.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/layouts"
copyFileToTmpDir "web/lib/angular-material/layouts/angular-material.layout-attributes.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/layouts/angular-material.layout-attributes.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/layouts"
copyFileToTmpDir "web/lib/angular-material/layouts/angular-material.layouts.ie_fixes.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/layouts/angular-material.layouts.ie_fixes.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/layouts"
copyFileToTmpDir "web/lib/angular-material/layouts/angular-material.layouts.scss" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/layouts/angular-material.layouts.scss" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/layouts"
copyFileToTmpDir "web/lib/angular-material/layouts/angular-material.layouts.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/layouts/angular-material.layouts.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/layouts"
copyFileToTmpDir "web/lib/angular-material/layouts/angular-material.layout-attributes.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/layouts/angular-material.layout-attributes.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material/layouts"
copyFileToTmpDir "web/lib/angular-material/layouts/angular-material.layout-attributes.scss" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/layouts/angular-material.layout-attributes.scss" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-material"
copyFileToTmpDir "web/lib/angular-material/LICENSE" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-material/LICENSE" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-animate"
copyFileToTmpDir "web/lib/angular-animate/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-animate/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-animate"
copyFileToTmpDir "web/lib/angular-animate/index.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-animate/index.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-animate"
copyFileToTmpDir "web/lib/angular-animate/LICENSE.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-animate/LICENSE.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-animate"
copyFileToTmpDir "web/lib/angular-animate/angular-animate.min.js.map" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-animate/angular-animate.min.js.map" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-animate"
copyFileToTmpDir "web/lib/angular-animate/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-animate/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-animate"
copyFileToTmpDir "web/lib/angular-animate/angular-animate.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-animate/angular-animate.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-animate"
copyFileToTmpDir "web/lib/angular-animate/angular-animate.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-animate/angular-animate.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/angular-animate"
copyFileToTmpDir "web/lib/angular-animate/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/angular-animate/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/js"
copyFileToTmpDir "web/lib/bootstrap/js/bootstrap.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/js/bootstrap.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/js"
copyFileToTmpDir "web/lib/bootstrap/js/angular.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/js/angular.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/js"
copyFileToTmpDir "web/lib/bootstrap/js/npm.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/js/npm.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/js"
copyFileToTmpDir "web/lib/bootstrap/js/bootstrap.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/js/bootstrap.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/js"
copyFileToTmpDir "web/lib/bootstrap/js/jquery.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/js/jquery.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/fonts"
copyFileToTmpDir "web/lib/bootstrap/fonts/glyphicons-halflings-regular.woff" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/fonts/glyphicons-halflings-regular.woff" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/fonts"
copyFileToTmpDir "web/lib/bootstrap/fonts/glyphicons-halflings-regular.eot" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/fonts/glyphicons-halflings-regular.eot" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/fonts"
copyFileToTmpDir "web/lib/bootstrap/fonts/glyphicons-halflings-regular.svg" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/fonts/glyphicons-halflings-regular.svg" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/fonts"
copyFileToTmpDir "web/lib/bootstrap/fonts/glyphicons-halflings-regular.woff2" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/fonts/glyphicons-halflings-regular.woff2" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/fonts"
copyFileToTmpDir "web/lib/bootstrap/fonts/glyphicons-halflings-regular.ttf" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/fonts/glyphicons-halflings-regular.ttf" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/css"
copyFileToTmpDir "web/lib/bootstrap/css/bootstrap-theme.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/css/bootstrap-theme.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/css"
copyFileToTmpDir "web/lib/bootstrap/css/bootstrap-theme.css.map" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/css/bootstrap-theme.css.map" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/css"
copyFileToTmpDir "web/lib/bootstrap/css/bootstrap-theme.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/css/bootstrap-theme.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/css"
copyFileToTmpDir "web/lib/bootstrap/css/bootstrap.css.map" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/css/bootstrap.css.map" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/css"
copyFileToTmpDir "web/lib/bootstrap/css/bootstrap.min.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/css/bootstrap.min.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/css"
copyFileToTmpDir "web/lib/bootstrap/css/bootstrap.min.css.map" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/css/bootstrap.min.css.map" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/css"
copyFileToTmpDir "web/lib/bootstrap/css/bootstrap-theme.min.css.map" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/css/bootstrap-theme.min.css.map" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/bootstrap/css"
copyFileToTmpDir "web/lib/bootstrap/css/bootstrap.css" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/bootstrap/css/bootstrap.css" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/.github"
copyFileToTmpDir "web/lib/chart.js/.github/ISSUE_TEMPLATE.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/.github/ISSUE_TEMPLATE.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/.github"
copyFileToTmpDir "web/lib/chart.js/.github/PULL_REQUEST_TEMPLATE.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/.github/PULL_REQUEST_TEMPLATE.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/karma.coverage.conf.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/karma.coverage.conf.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/LICENSE.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/LICENSE.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/.eslintrc" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/.eslintrc" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/ender.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/ender.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/moment.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/moment.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/CHANGELOG.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/CHANGELOG.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/tlh.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/tlh.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/eu.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/eu.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/cv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/cv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ms-my.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ms-my.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/en-au.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/en-au.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/fr-ch.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/fr-ch.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/be.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/be.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ml.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ml.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/zh-tw.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/zh-tw.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/cy.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/cy.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/hr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/hr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/hy-am.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/hy-am.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/fa.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/fa.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/uz.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/uz.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ar-sa.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ar-sa.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/fo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/fo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/de.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/de.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/is.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/is.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/lo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/lo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/me.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/me.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/et.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/et.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/mr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/mr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/mk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/mk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/az.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/az.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ru.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ru.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/sq.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/sq.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/uk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/uk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/fr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/fr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/lv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/lv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/gd.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/gd.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/es.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/es.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/tzl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/tzl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/vi.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/vi.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/sk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/sk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/af.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/af.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/el.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/el.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/tr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/tr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ka.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ka.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ro.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ro.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/br.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/br.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/nn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/nn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/bn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/bn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/pt-br.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/pt-br.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/sr-cyrl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/sr-cyrl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/eo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/eo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/nb.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/nb.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ms.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ms.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/sv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/sv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/km.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/km.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/en-nz.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/en-nz.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/bo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/bo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/se.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/se.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/hu.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/hu.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/fr-ca.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/fr-ca.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ky.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ky.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ar-ma.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ar-ma.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/en-gb.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/en-gb.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/te.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/te.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/pa-in.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/pa-in.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/x-pseudo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/x-pseudo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ta.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ta.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/pl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/pl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/he.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/he.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/sw.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/sw.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/es-do.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/es-do.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/en-ca.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/en-ca.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/zh-cn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/zh-cn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/tzm-latn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/tzm-latn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/lt.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/lt.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/sl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/sl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/si.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/si.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ko.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ko.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/kk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/kk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/lb.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/lb.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ja.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ja.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ar-tn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ar-tn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/nl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/nl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ne.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ne.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/bs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/bs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/fy.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/fy.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/en-ie.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/en-ie.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/dv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/dv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/my.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/my.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/gl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/gl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/da.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/da.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/bg.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/bg.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/th.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/th.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/tzm.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/tzm.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/id.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/id.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/cs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/cs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/tl-ph.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/tl-ph.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/hi.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/hi.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ss.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ss.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/it.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/it.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/ca.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/ca.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/jv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/jv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/de-at.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/de-at.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/sr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/sr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/fi.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/fi.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/locale/pt.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/locale/pt.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/.npmignore" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/.npmignore" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/moment.d.ts" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/moment.d.ts" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/min"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/min/moment-with-locales.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/min/moment-with-locales.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/min"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/min/locales.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/min/locales.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/min"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/min/locales.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/min/locales.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/min"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/min/moment.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/min/moment.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/min"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/min/moment-with-locales.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/min/moment-with-locales.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/moment.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/moment.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/units.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/units.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/timestamp.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/timestamp.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/day-of-week.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/day-of-week.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/minute.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/minute.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/offset.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/offset.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/day-of-month.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/day-of-month.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/constants.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/constants.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/second.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/second.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/week-calendar-utils.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/week-calendar-utils.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/millisecond.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/millisecond.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/priorities.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/priorities.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/aliases.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/aliases.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/week.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/week.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/day-of-year.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/day-of-year.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/quarter.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/quarter.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/week-year.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/week-year.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/timezone.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/timezone.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/month.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/month.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/hour.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/hour.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/units"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/units/year.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/units/year.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/relative.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/relative.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/constructor.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/constructor.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/en.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/en.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/locale.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/locale.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/locales.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/locales.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/ordinal.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/ordinal.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/invalid.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/invalid.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/set.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/set.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/prototype.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/prototype.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/lists.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/lists.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/formats.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/formats.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/base-config.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/base-config.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/pre-post-format.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/pre-post-format.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/locale/calendar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/locale/calendar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/format"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/format/format.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/format/format.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/constructor.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/constructor.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/now.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/now.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/moment.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/moment.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/compare.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/compare.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/locale.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/locale.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/to.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/to.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/creation-data.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/creation-data.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/start-end-of.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/start-end-of.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/add-subtract.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/add-subtract.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/clone.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/clone.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/format.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/format.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/min-max.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/min-max.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/diff.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/diff.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/to-type.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/to-type.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/prototype.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/prototype.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/from.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/from.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/get-set.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/get-set.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/calendar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/calendar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/moment/valid.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/moment/valid.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/create/from-string.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/create/from-string.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/create/from-string-and-array.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/create/from-string-and-array.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/create/from-anything.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/create/from-anything.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/create/from-object.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/create/from-object.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/create/date-from-array.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/create/date-from-array.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/create/check-overflow.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/create/check-overflow.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/create/utc.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/create/utc.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/create/parsing-flags.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/create/parsing-flags.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/create/valid.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/create/valid.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/create/from-array.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/create/from-array.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/create/local.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/create/local.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/create"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/create/from-string-and-format.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/create/from-string-and-format.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/duration/constructor.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/duration/constructor.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/duration/abs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/duration/abs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/duration/create.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/duration/create.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/duration/add-subtract.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/duration/add-subtract.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/duration/prototype.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/duration/prototype.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/duration/as.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/duration/as.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/duration/iso-string.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/duration/iso-string.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/duration/get.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/duration/get.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/duration/humanize.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/duration/humanize.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/duration/bubble.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/duration/bubble.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/duration"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/duration/duration.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/duration/duration.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/is-function.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/is-function.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/is-object.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/is-object.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/is-date.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/is-date.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/is-object-empty.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/is-object-empty.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/defaults.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/defaults.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/is-array.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/is-array.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/to-int.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/to-int.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/is-undefined.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/is-undefined.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/keys.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/keys.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/abs-round.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/abs-round.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/some.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/some.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/index-of.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/index-of.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/abs-floor.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/abs-floor.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/abs-ceil.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/abs-ceil.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/extend.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/extend.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/zero-fill.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/zero-fill.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/hooks.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/hooks.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/compare-arrays.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/compare-arrays.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/deprecate.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/deprecate.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/map.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/map.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/utils"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/utils/has-own-prop.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/utils/has-own-prop.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/parse"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/parse/token.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/parse/token.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/lib/parse"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/lib/parse/regex.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/lib/parse/regex.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/tlh.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/tlh.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/eu.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/eu.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/cv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/cv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ms-my.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ms-my.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/en-au.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/en-au.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/fr-ch.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/fr-ch.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/be.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/be.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ml.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ml.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/zh-tw.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/zh-tw.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/cy.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/cy.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/hr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/hr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/hy-am.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/hy-am.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/fa.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/fa.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/uz.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/uz.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ar-sa.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ar-sa.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/fo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/fo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/de.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/de.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/is.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/is.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/lo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/lo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/me.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/me.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/et.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/et.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/mr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/mr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/mk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/mk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/az.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/az.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ru.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ru.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/sq.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/sq.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/uk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/uk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/fr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/fr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/lv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/lv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/gd.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/gd.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/es.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/es.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/tzl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/tzl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/vi.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/vi.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/sk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/sk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/af.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/af.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/el.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/el.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/tr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/tr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ka.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ka.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ro.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ro.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/br.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/br.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/nn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/nn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/bn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/bn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/pt-br.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/pt-br.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/sr-cyrl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/sr-cyrl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/eo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/eo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/nb.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/nb.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ms.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ms.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/sv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/sv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/km.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/km.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/en-nz.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/en-nz.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/bo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/bo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/se.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/se.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/hu.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/hu.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/fr-ca.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/fr-ca.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ky.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ky.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ar-ma.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ar-ma.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/en-gb.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/en-gb.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/te.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/te.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/pa-in.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/pa-in.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/x-pseudo.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/x-pseudo.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ta.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ta.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/pl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/pl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/he.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/he.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/sw.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/sw.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/es-do.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/es-do.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/en-ca.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/en-ca.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/zh-cn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/zh-cn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/tzm-latn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/tzm-latn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/lt.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/lt.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/sl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/sl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/si.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/si.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ko.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ko.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/kk.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/kk.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/lb.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/lb.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ja.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ja.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ar-tn.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ar-tn.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/nl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/nl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ne.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ne.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/bs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/bs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/fy.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/fy.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/en-ie.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/en-ie.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/dv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/dv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/my.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/my.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/gl.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/gl.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/da.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/da.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/bg.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/bg.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/th.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/th.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/tzm.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/tzm.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/id.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/id.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/cs.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/cs.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/tl-ph.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/tl-ph.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/hi.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/hi.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ss.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ss.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/it.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/it.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/ca.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/ca.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/jv.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/jv.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/de-at.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/de-at.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/sr.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/sr.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/fi.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/fi.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment/src/locale"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/src/locale/pt.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/src/locale/pt.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/LICENSE" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/LICENSE" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/moment"
copyFileToTmpDir "web/lib/chart.js/node_modules/moment/package.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/moment/package.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/index.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/index.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/CHANGELOG.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/CHANGELOG.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/CHANGELOG.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/CHANGELOG.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/index.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/index.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/LICENSE" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/node_modules/color-name/LICENSE" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/.travis.yml" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/.travis.yml" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/color-string.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/color-string.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/test"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/test/basic.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/test/basic.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/LICENSE" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/chartjs-color-string/LICENSE" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/package.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/package.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/index.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/index.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/conversions.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/conversions.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/component.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/component.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/CHANGELOG.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/CHANGELOG.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/.travis.yml" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/.travis.yml" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/test"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/test/speed.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/test/speed.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/test"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/test/basic.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/test/basic.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/LICENSE" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/node_modules/color-convert/LICENSE" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/node_modules/chartjs-color"
copyFileToTmpDir "web/lib/chart.js/node_modules/chartjs-color/LICENSE" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/node_modules/chartjs-color/LICENSE" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/.codeclimate.yml" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/.codeclimate.yml" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/.npmignore" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/.npmignore" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/README.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/README.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/.eslintignore" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/.eslintignore" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/line-logarithmic.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/line-logarithmic.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/line-multi-axis.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/line-multi-axis.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/line.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/line.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/radar-skip-points.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/radar-skip-points.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/radar.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/radar.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/bar-horizontal.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/bar-horizontal.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/line-legend.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/line-legend.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/line-multiline-labels.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/line-multiline-labels.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples/AnimationCallbacks"
copyFileToTmpDir "web/lib/chart.js/samples/AnimationCallbacks/progress-bar.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/AnimationCallbacks/progress-bar.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/line-stacked-area.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/line-stacked-area.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/line-x-axis-filter.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/line-x-axis-filter.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/data_label_combo-bar-line.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/data_label_combo-bar-line.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/bar.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/bar.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/scatter-logX.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/scatter-logX.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/bar-multi-axis.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/bar-multi-axis.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/bubble.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/bubble.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/line-skip-points.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/line-skip-points.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples/timeScale"
copyFileToTmpDir "web/lib/chart.js/samples/timeScale/line-time-scale.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/timeScale/line-time-scale.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples/timeScale"
copyFileToTmpDir "web/lib/chart.js/samples/timeScale/combo-time-scale.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/timeScale/combo-time-scale.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples/timeScale"
copyFileToTmpDir "web/lib/chart.js/samples/timeScale/line-time-point-data.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/timeScale/line-time-point-data.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/combo-bar-line.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/combo-bar-line.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/scatter.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/scatter.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/scatter-multi-axis.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/scatter-multi-axis.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/bar-stacked.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/bar-stacked.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/doughnut.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/doughnut.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/different-point-sizes.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/different-point-sizes.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/pie-customTooltips.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/pie-customTooltips.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/polar-area.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/polar-area.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/line-customTooltips.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/line-customTooltips.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/pie.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/pie.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/samples"
copyFileToTmpDir "web/lib/chart.js/samples/tooltip-hooks.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/samples/tooltip-hooks.html" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/karma.conf.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/karma.conf.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/karma.conf.ci.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/karma.conf.ci.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/CONTRIBUTING.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/CONTRIBUTING.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/.travis.yml" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/.travis.yml" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/docs"
copyFileToTmpDir "web/lib/chart.js/docs/07-Pie-Doughnut-Chart.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/docs/07-Pie-Doughnut-Chart.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/docs"
copyFileToTmpDir "web/lib/chart.js/docs/04-Bar-Chart.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/docs/04-Bar-Chart.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/docs"
copyFileToTmpDir "web/lib/chart.js/docs/06-Polar-Area-Chart.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/docs/06-Polar-Area-Chart.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/docs"
copyFileToTmpDir "web/lib/chart.js/docs/03-Line-Chart.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/docs/03-Line-Chart.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/docs"
copyFileToTmpDir "web/lib/chart.js/docs/10-Notes.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/docs/10-Notes.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/docs"
copyFileToTmpDir "web/lib/chart.js/docs/08-Bubble-Chart.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/docs/08-Bubble-Chart.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/docs"
copyFileToTmpDir "web/lib/chart.js/docs/01-Chart-Configuration.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/docs/01-Chart-Configuration.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/docs"
copyFileToTmpDir "web/lib/chart.js/docs/00-Getting-Started.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/docs/00-Getting-Started.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/docs"
copyFileToTmpDir "web/lib/chart.js/docs/05-Radar-Chart.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/docs/05-Radar-Chart.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/docs"
copyFileToTmpDir "web/lib/chart.js/docs/02-Scales.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/docs/02-Scales.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/docs"
copyFileToTmpDir "web/lib/chart.js/docs/09-Advanced.md" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/docs/09-Advanced.md" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/gulpfile.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/gulpfile.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/controller.doughnut.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/controller.doughnut.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/core.helpers.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/core.helpers.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/core.layoutService.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/core.layoutService.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/controller.radar.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/controller.radar.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/controller.polarArea.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/controller.polarArea.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/core.scaleService.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/core.scaleService.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/core.title.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/core.title.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/scale.linear.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/scale.linear.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/controller.bubble.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/controller.bubble.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/core.plugin.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/core.plugin.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/element.point.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/element.point.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/mockContext.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/mockContext.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/element.line.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/element.line.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/controller.line.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/controller.line.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/defaultConfig.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/defaultConfig.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/controller.bar.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/controller.bar.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/scale.logarithmic.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/scale.logarithmic.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/core.tooltip.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/core.tooltip.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/element.rectangle.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/element.rectangle.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/scale.category.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/scale.category.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/element.arc.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/element.arc.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/core.element.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/core.element.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/core.legend.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/core.legend.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/scale.radialLinear.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/scale.radialLinear.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/test"
copyFileToTmpDir "web/lib/chart.js/test/scale.time.tests.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/test/scale.time.tests.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/bower.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/bower.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/scales"
copyFileToTmpDir "web/lib/chart.js/src/scales/scale.category.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/scales/scale.category.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/scales"
copyFileToTmpDir "web/lib/chart.js/src/scales/scale.logarithmic.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/scales/scale.logarithmic.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/scales"
copyFileToTmpDir "web/lib/chart.js/src/scales/scale.radialLinear.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/scales/scale.radialLinear.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/scales"
copyFileToTmpDir "web/lib/chart.js/src/scales/scale.time.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/scales/scale.time.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/scales"
copyFileToTmpDir "web/lib/chart.js/src/scales/scale.linear.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/scales/scale.linear.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/scales"
copyFileToTmpDir "web/lib/chart.js/src/scales/scale.linearbase.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/scales/scale.linearbase.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.scaleService.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.scaleService.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.element.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.element.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.datasetController.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.datasetController.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.tooltip.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.tooltip.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.controller.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.controller.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.scale.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.scale.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.legend.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.legend.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.title.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.title.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.plugin.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.plugin.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.helpers.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.helpers.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.animation.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.animation.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/core"
copyFileToTmpDir "web/lib/chart.js/src/core/core.layoutService.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/core/core.layoutService.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/controllers"
copyFileToTmpDir "web/lib/chart.js/src/controllers/controller.bubble.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/controllers/controller.bubble.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/controllers"
copyFileToTmpDir "web/lib/chart.js/src/controllers/controller.polarArea.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/controllers/controller.polarArea.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/controllers"
copyFileToTmpDir "web/lib/chart.js/src/controllers/controller.line.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/controllers/controller.line.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/controllers"
copyFileToTmpDir "web/lib/chart.js/src/controllers/controller.doughnut.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/controllers/controller.doughnut.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/controllers"
copyFileToTmpDir "web/lib/chart.js/src/controllers/controller.radar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/controllers/controller.radar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/controllers"
copyFileToTmpDir "web/lib/chart.js/src/controllers/controller.bar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/controllers/controller.bar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/charts"
copyFileToTmpDir "web/lib/chart.js/src/charts/Chart.Scatter.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/charts/Chart.Scatter.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/charts"
copyFileToTmpDir "web/lib/chart.js/src/charts/Chart.PolarArea.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/charts/Chart.PolarArea.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/charts"
copyFileToTmpDir "web/lib/chart.js/src/charts/Chart.Radar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/charts/Chart.Radar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/charts"
copyFileToTmpDir "web/lib/chart.js/src/charts/Chart.Doughnut.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/charts/Chart.Doughnut.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/charts"
copyFileToTmpDir "web/lib/chart.js/src/charts/Chart.Line.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/charts/Chart.Line.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/charts"
copyFileToTmpDir "web/lib/chart.js/src/charts/Chart.Bubble.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/charts/Chart.Bubble.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/charts"
copyFileToTmpDir "web/lib/chart.js/src/charts/Chart.Bar.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/charts/Chart.Bar.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/elements"
copyFileToTmpDir "web/lib/chart.js/src/elements/element.arc.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/elements/element.arc.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/elements"
copyFileToTmpDir "web/lib/chart.js/src/elements/element.line.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/elements/element.line.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/elements"
copyFileToTmpDir "web/lib/chart.js/src/elements/element.rectangle.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/elements/element.rectangle.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src/elements"
copyFileToTmpDir "web/lib/chart.js/src/elements/element.point.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/elements/element.point.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/src"
copyFileToTmpDir "web/lib/chart.js/src/chart.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/src/chart.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/.editorconfig" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/.editorconfig" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/config.jshintrc" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/config.jshintrc" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/dist"
copyFileToTmpDir "web/lib/chart.js/dist/Chart.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/dist/Chart.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/dist"
copyFileToTmpDir "web/lib/chart.js/dist/Chart.bundle.min.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/dist/Chart.bundle.min.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/dist"
copyFileToTmpDir "web/lib/chart.js/dist/Chart.bundle.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/dist/Chart.bundle.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js/dist"
copyFileToTmpDir "web/lib/chart.js/dist/Chart.js" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/dist/Chart.js" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web/lib/chart.js"
copyFileToTmpDir "web/lib/chart.js/composer.json" "${NBTMPDIR}/${PACKAGE_TOP_DIR}lib/chart.js/composer.json" 0777

cd "${TOP}"
makeDirectory "${NBTMPDIR}//bin/netdebug/web"
copyFileToTmpDir "web/index.html" "${NBTMPDIR}/${PACKAGE_TOP_DIR}index.html" 0777


# Generate tar file
cd "${TOP}"
rm -f ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/package/mgetdata.tar
cd ${NBTMPDIR}
tar -vcf ../../../../${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/package/mgetdata.tar *
checkReturnCode

# Cleanup
cd "${TOP}"
rm -rf ${NBTMPDIR}
