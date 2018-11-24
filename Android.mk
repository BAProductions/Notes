# Copyright (C) 2014 The MoKee OpenSource Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(call all-subdir-java-files) \

LOCAL_PACKAGE_NAME := Notes

LOCAL_STATIC_JAVA_LIBRARIES := \ 
    activation \ 
    additionnal \
    android-support \
    commons-io \
    javamaildir \
    mail

LOCAL_JAVA_LIBRARIES += \
    com.android.support:support-v4:21.0.3

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libs/activation.jar
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libs/additionnal.jar
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libs/android-support-v4.jar
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libs/commons-io-2.4.jar
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libs/javamaildir-0.6.jar
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libs/mail.jar

include $(BUILD_MULTI_PREBUILT)