add-prebuilt-app:
	@echo To add prebuilt apps
	$(hide) mkdir -p $(ZIP_DIR)/data/media
	$(hide) cp -rf $(DATAOUT_DIR)/media/preinstall_apps/ $(ZIP_DIR)/data/media/

add-prebuilt-binaries:
	@echo To add prebuilt binaries
	$(hide) cp -f $(SYSOUT_DIR)/bin/su0 $(ZIP_DIR)/system/bin/
	$(hide) cp -f $(SYSOUT_DIR)/xbin/busybox $(ZIP_DIR)/system/xbin/
	$(hide) cp -f $(SYSOUT_DIR)/xbin/su $(ZIP_DIR)/system/xbin/
	$(hide) cp -f $(SYSOUT_DIR)/usr/share/phoneloc.dat $(ZIP_DIR)/system/usr/share/

add-prebuilt-libraries:
	@echo To add prebuilt libraries
	$(hide) cp -f $(SYSOUT_DIR)/framework/lewa-framework.jar $(ZIP_DIR)/system/framework/
	$(hide) cp -f $(SYSOUT_DIR)/lib/libams-1.1.0.so $(ZIP_DIR)/system/lib/
	$(hide) cp -f $(SYSOUT_DIR)/lib/libapollo-1.1.2.so $(ZIP_DIR)/system/lib/
	$(hide) cp -f $(SYSOUT_DIR)/lib/libcryptor-1.0.0.so $(ZIP_DIR)/system/lib/
	$(hide) cp -f $(SYSOUT_DIR)/lib/liblbs.so $(ZIP_DIR)/system/lib/
	$(hide) cp -f $(SYSOUT_DIR)/lib/liblocation-1.0.0.so $(ZIP_DIR)/system/lib/
	$(hide) cp -f $(SYSOUT_DIR)/lib/libnative-1.0.0.so $(ZIP_DIR)/system/lib/
	$(hide) cp -f $(SYSOUT_DIR)/lib/libphoneloc_jni.so $(ZIP_DIR)/system/lib/
	$(hide) cp -f $(SYSOUT_DIR)/lib/libsmschecker-1.0.1.so $(ZIP_DIR)/system/lib/
	$(hide) cp -f $(SYSOUT_DIR)/lib/libsmsparser-1.0.0.so $(ZIP_DIR)/system/lib/

add-prebuilt-media:
	@echo To add prebuilt media files
	$(hide) cp -rf $(SYSOUT_DIR)/media $(ZIP_DIR)/system

add-prebuilt-etc-files:
	@echo To add prebuilt files under etc
	$(hide) cp -f $(SYSOUT_DIR)/etc/apns-conf.xml $(ZIP_DIR)/system/etc/
	$(hide) cp -f $(SYSOUT_DIR)/etc/icons_alias.xml $(ZIP_DIR)/system/etc/
	$(hide) cp -f $(SYSOUT_DIR)/etc/permissions/com.lewa.software.themes.xml $(ZIP_DIR)/system/etc/permissions/
	
add-prebuilt-google-files:
	@echo To add prebuilt google files
	$(hide) cp -f $(SYSOUT_DIR)/app/OneTimeInitializer.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/app/NetworkLocation.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/app/MediaUploader.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/app/ChromeBookmarksSyncAdapter.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/app/GoogleBackupTransport.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/app/GoogleCalendarSyncAdapter.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/app/GoogleContactsSyncAdapter.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/app/GoogleFeedback.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/app/GoogleLoginService.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/app/GooglePartnerSetup.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/app/GoogleServicesFramework.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/app/GoogleTTS.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/app/Microbes.apk $(ZIP_DIR)/system/app/
	$(hide) cp -f $(SYSOUT_DIR)/etc/permissions/com.google.android.maps.xml $(ZIP_DIR)/system/etc/permissions/
	$(hide) cp -f $(SYSOUT_DIR)/etc/permissions/com.google.android.media.effects.xml $(ZIP_DIR)/system/etc/permissions/
	$(hide) cp -f $(SYSOUT_DIR)/etc/permissions/com.google.widevine.software.drm.xml $(ZIP_DIR)/system/etc/permissions/
	$(hide) cp -f $(SYSOUT_DIR)/etc/permissions/com.google.android.maps.xml $(ZIP_DIR)/system/etc/permissions/
	$(hide) cp -f $(SYSOUT_DIR)/etc/permissions/com.google.android.media.effects.xml $(ZIP_DIR)/system/etc/permissions/
	$(hide) cp -f $(SYSOUT_DIR)/etc/permissions/com.google.widevine.software.drm.xml $(ZIP_DIR)/system/etc/permissions/
	$(hide) cp -f $(SYSOUT_DIR)/etc/permissions/features.xml $(ZIP_DIR)/system/etc/permissions/
	$(hide) cp -f $(SYSOUT_DIR)/etc/g.prop $(ZIP_DIR)/system/etc/
	$(hide) cp -f $(SYSOUT_DIR)/framework/com.google.android.maps.jar $(ZIP_DIR)/system/framework/
	$(hide) cp -f $(SYSOUT_DIR)/framework/com.google.android.media.effects.jar $(ZIP_DIR)/system/framework/
	$(hide) cp -f $(SYSOUT_DIR)/framework/com.google.widevine.software.drm.jar $(ZIP_DIR)/system/framework/

add-lewa-prebuilt: add-prebuilt-app add-prebuilt-binaries add-prebuilt-libraries add-prebuilt-media add-prebuilt-etc-files
	@echo Add lewa prebuilt completed!
