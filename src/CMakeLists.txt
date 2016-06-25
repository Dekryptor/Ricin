### CMakeLists automatically created with AutoVala
### Do not edit

set (DATADIR "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_DATAROOTDIR}")
set (PKGDATADIR "${DATADIR}/Ricin")
set (GETTEXT_PACKAGE "Ricin")
set (RELEASE_NAME "Ricin")
set (CMAKE_C_FLAGS "")
set (PREFIX ${CMAKE_INSTALL_PREFIX})
set (VERSION "1.0.1")
set (TESTSRCDIR "${CMAKE_SOURCE_DIR}")
set (DOLLAR "$")

configure_file (${CMAKE_SOURCE_DIR}/src/Config.vala.cmake ${CMAKE_BINARY_DIR}/src/Config.vala)
add_definitions(-DGETTEXT_PACKAGE=\"${GETTEXT_PACKAGE}\")
set (VERSION "1.0.1")
add_definitions (${DEPS_CFLAGS})
link_libraries ( ${DEPS_LIBRARIES} )
link_directories ( ${DEPS_LIBRARY_DIRS} )
find_package (Vala REQUIRED)
include (ValaVersion)
ensure_vala_version ("0.30" MINIMUM)
include (ValaPrecompile)

set (VALA_PACKAGES ${VALA_PACKAGES} atk)
set (VALA_PACKAGES ${VALA_PACKAGES} cairo)
set (VALA_PACKAGES ${VALA_PACKAGES} gdk-3.0)
set (VALA_PACKAGES ${VALA_PACKAGES} gdk-pixbuf-2.0)
set (VALA_PACKAGES ${VALA_PACKAGES} gio-2.0)
set (VALA_PACKAGES ${VALA_PACKAGES} glib-2.0)
set (VALA_PACKAGES ${VALA_PACKAGES} gobject-2.0)
set (VALA_PACKAGES ${VALA_PACKAGES} gtk+-3.0)
set (VALA_PACKAGES ${VALA_PACKAGES} pango)
set (VALA_PACKAGES ${VALA_PACKAGES} x11)

set (APP_SOURCES ${APP_SOURCES} ${CMAKE_CURRENT_BINARY_DIR}/Config.vala)
set (APP_SOURCES ${APP_SOURCES} Ricin.vala)
set (APP_SOURCES ${APP_SOURCES} core/Action.vala)
set (APP_SOURCES ${APP_SOURCES} core/AvatarTransfer.vala)
set (APP_SOURCES ${APP_SOURCES} core/Contact.vala)
set (APP_SOURCES ${APP_SOURCES} core/DhtManager.vala)
set (APP_SOURCES ${APP_SOURCES} core/DhtNode.vala)
set (APP_SOURCES ${APP_SOURCES} core/FileTransfer.vala)
set (APP_SOURCES ${APP_SOURCES} core/GroupAction.vala)
set (APP_SOURCES ${APP_SOURCES} core/GroupMessage.vala)
set (APP_SOURCES ${APP_SOURCES} core/InlineTransfer.vala)
set (APP_SOURCES ${APP_SOURCES} core/Message.vala)
set (APP_SOURCES ${APP_SOURCES} core/PluginLoader.vala)
set (APP_SOURCES ${APP_SOURCES} core/Profile.vala)
set (APP_SOURCES ${APP_SOURCES} core/PubKey.vala)
set (APP_SOURCES ${APP_SOURCES} core/Status.vala)
set (APP_SOURCES ${APP_SOURCES} core/Theme.vala)
set (APP_SOURCES ${APP_SOURCES} core/ThemesManager.vala)
set (APP_SOURCES ${APP_SOURCES} core/interfaces/IFileTransfers.vala)
set (APP_SOURCES ${APP_SOURCES} core/interfaces/IMessages.vala)
set (APP_SOURCES ${APP_SOURCES} core/interfaces/IPlugins.vala)
set (APP_SOURCES ${APP_SOURCES} core/persistence/ChatHistory.vala)
set (APP_SOURCES ${APP_SOURCES} core/persistence/GeneralSettings.vala)
set (APP_SOURCES ${APP_SOURCES} core/persistence/ProfileSettings.vala)
set (APP_SOURCES ${APP_SOURCES} core/utils/Consts.vala)
set (APP_SOURCES ${APP_SOURCES} core/utils/Markup.vala)
set (APP_SOURCES ${APP_SOURCES} core/utils/Re.vala)

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
