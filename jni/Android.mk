# see http://mobile.tutsplus.com/tutorials/android/ndk-tutorial/

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)  
LOCAL_LDLIBS := -llog
LOCAL_MODULE    := sqlc-native-driver
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../sqlite-amalgamation
LOCAL_CFLAGS += -DSQLITE_TEMP_STORE=2 -DSQLITE_THREADSAFE=2
LOCAL_CFLAGS += -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4
LOCAL_CFLAGS += -DSQLITE_ENABLE_RTREE
LOCAL_CFLAGS += -DSQLITE_ENABLE_FTS5
LOCAL_CFLAGS += -DSQLITE_ENABLE_JSON1
LOCAL_SRC_FILES := ../native/sqlc_all.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../sqlite3-pcre
# Included by sqlc_all.c (FUTURE TBD build separately):
#LOCAL_SRC_FILES += ../sqlite-amalgamation/sqlite3.c
include $(BUILD_SHARED_LIBRARY)

