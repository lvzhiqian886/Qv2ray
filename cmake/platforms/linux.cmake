install(TARGETS qv2ray RUNTIME DESTINATION bin)
install(FILES assets/qv2ray.metainfo.xml DESTINATION share/metainfo)
install(FILES assets/qv2ray.desktop DESTINATION share/applications)
install(FILES assets/icons/qv2ray.svg DESTINATION share/icons/hicolor/scalable/apps)

set(QV2RAY_ICON_DIMENSIONS 16 22 32 48 64 128 256 512 1024)

foreach(ICON_DIMENSION ${QV2RAY_ICON_DIMENSIONS})
    install(FILES assets/icons/qv2ray.${ICON_DIMENSION}.png DESTINATION share/icons/hicolor/${ICON_DIMENSION}x${ICON_DIMENSION}/apps RENAME qv2ray.png)
endforeach(ICON_DIMENSION)

if(NOT QV2RAY_EMBED_TRANSLATIONS)
    install(FILES ${QV2RAY_QM_FILES} DESTINATION share/qv2ray/lang)
endif()
