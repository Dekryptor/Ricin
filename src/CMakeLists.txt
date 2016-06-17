### CMakeLists automatically created with AutoVala
### Do not edit

set (DATADIR "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_DATAROOTDIR}")
set (PKGDATADIR "${DATADIR}/Ricin")
set (GETTEXT_PACKAGE "Ricin")
set (RELEASE_NAME "Ricin")
set (CMAKE_C_FLAGS "")
set (PREFIX ${CMAKE_INSTALL_PREFIX})
set (VERSION "1.0.0")
set (TESTSRCDIR "${CMAKE_SOURCE_DIR}")
set (DOLLAR "$")

configure_file (${CMAKE_SOURCE_DIR}/src/Config.vala.cmake ${CMAKE_BINARY_DIR}/src/Config.vala)
add_definitions(-DGETTEXT_PACKAGE=\"${GETTEXT_PACKAGE}\")
set (VERSION "1.0.0")
add_definitions (${DEPS_CFLAGS})
link_libraries ( ${DEPS_LIBRARIES} )
link_directories ( ${DEPS_LIBRARY_DIRS} )
find_package (Vala REQUIRED)
include (ValaVersion)
ensure_vala_version ("0.30" MINIMUM)
include (ValaPrecompile)

set (VALA_PACKAGES ${VALA_PACKAGES} gio-2.0)
set (VALA_PACKAGES ${VALA_PACKAGES} glib-2.0)

set (APP_SOURCES ${APP_SOURCES} ${CMAKE_CURRENT_BINARY_DIR}/Config.vala)
set (APP_SOURCES ${APP_SOURCES} Ricin.vala)
set (APP_SOURCES ${APP_SOURCES} core/ActionMessage.vala)
set (APP_SOURCES ${APP_SOURCES} core/AvatarTransfer.vala)
set (APP_SOURCES ${APP_SOURCES} core/Contact.vala)
set (APP_SOURCES ${APP_SOURCES} core/DhtManager.vala)
set (APP_SOURCES ${APP_SOURCES} core/DhtNode.vala)
set (APP_SOURCES ${APP_SOURCES} core/FileTransfer.vala)
set (APP_SOURCES ${APP_SOURCES} core/GroupActionMessage.vala)
set (APP_SOURCES ${APP_SOURCES} core/GroupMessage.vala)
set (APP_SOURCES ${APP_SOURCES} core/IFileTransfer.vala)
set (APP_SOURCES ${APP_SOURCES} core/IMessage.vala)
set (APP_SOURCES ${APP_SOURCES} core/IPlugin.vala)
set (APP_SOURCES ${APP_SOURCES} core/Message.vala)
set (APP_SOURCES ${APP_SOURCES} core/PluginLoader.vala)
set (APP_SOURCES ${APP_SOURCES} core/Profile.vala)
set (APP_SOURCES ${APP_SOURCES} core/persistence/ChatHistory.vala)
set (APP_SOURCES ${APP_SOURCES} core/persistence/GeneralSettings.vala)
set (APP_SOURCES ${APP_SOURCES} core/persistence/ProfileSettings.vala)
set (APP_SOURCES ${APP_SOURCES} interface/ITheme.vala)
set (APP_SOURCES ${APP_SOURCES} interface/ThemesManager.vala)

set (CUSTOM_VAPIS_LIST ${CUSTOM_VAPIS_LIST} ${CMAKE_SOURCE_DIR}/src/vapis/libtoxav.vapi)
set (CUSTOM_VAPIS_LIST ${CUSTOM_VAPIS_LIST} ${CMAKE_SOURCE_DIR}/src/vapis/libtoxcore.vapi)
set (CUSTOM_VAPIS_LIST ${CUSTOM_VAPIS_LIST} ${CMAKE_SOURCE_DIR}/src/vapis/libtoxencryptsave.vapi)

vala_precompile(VALA_C Ricin
	${APP_SOURCES}
PACKAGES
	${VALA_PACKAGES}
CUSTOM_VAPIS
	${CUSTOM_VAPIS_LIST}
)

add_executable(Ricin ${VALA_C})


install(TARGETS
	Ricin
RUNTIME DESTINATION
	${CMAKE_INSTALL_BINDIR}
)
if(HAVE_VALADOC)
	valadoc(Ricin
		${CMAKE_BINARY_DIR}/valadoc/Ricin
		${APP_SOURCES}
	PACKAGES
		${VALA_PACKAGES}
	CUSTOM_VAPIS
		${CUSTOM_VAPIS_LIST}
	)
	install(DIRECTORY
		${CMAKE_BINARY_DIR}/valadoc
	DESTINATION
		${CMAKE_INSTALL_DATAROOTDIR}/doc/Ricin
	)
endif()
