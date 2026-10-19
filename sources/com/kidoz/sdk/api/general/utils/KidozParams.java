package com.kidoz.sdk.api.general.utils;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class KidozParams {
    private static final String ACTUAL_SDK_VERSION = "actual_sdk_version";
    private static final String APP_SESSION_ID = "appSessionID";
    private static final String APP_VERSION_CODE = "app_version_code";
    private static final String APP_VERSION_NAME = "app_version_name";
    private static final String AUTH_TOKEN = "auth_token";
    private static final String CACHE_BUSTER = "cb";
    public static final String CARRIER_NAME = "carrier_name";
    private static final String DEVICE_HASH = "device_hash";
    private static final String DEVICE_LANG = "device_lang";
    private static final String DEVICE_TYPE = "device_type";
    private static final String DPI = "dpi";
    public static final String EXTENSION_TYPE = "ext";
    public static final String EXTENSION_VERSION = "ext_version";
    private static final String MANUFACTURER = "manufacturer";
    private static final String MODEL = "model";
    public static final String NETWORK_TYPE = "network_type";
    private static final String OS_TYPE = "os_type";
    private static final String OS_VERSION = "os_version";
    private static final String OVERRIDE_WATERFALL_URL = "waterfall_url";
    private static final String PACKAGE_ID = "package_id";
    private static final String PUBLISHER_ID = "publisher_id";
    private static final String RESOLUTION_HEIGHT = "resolution_height";
    private static final String RESOLUTION_WIDTH = "resolution_width";
    private static final String SCREEN_CATEGORY = "screen_category";
    private static final String SCREEN_SIZE = "screen_size";
    private static final String SDK_VERSION = "sdk_version";
    private static final String STYLE_ID = "style_id";
    private static final String WEBVIEW_VERSION = "webview_version";
    private static final String WIDGET_TYPE = "widget_type";
    private String mActualSdkVersion;
    private String mAppSessionId;
    private String mAppVersionCode;
    private String mAppVersionName;
    private String mAuthToken;
    private String mCachBuster;
    private String mCarrierName;
    private String mDeviceHash;
    private String mDeviceLang;
    private String mDeviceType;
    private String mDpi;
    private String mExtensionType;
    private String mExtensionVersion;
    private String mGid;
    private String mManufacturer;
    private String mModel;
    private String mNetworkType;
    private String mOsType;
    private String mOsVersion;
    private String mOverrideWaterfallUrl;
    private String mPackageId;
    private Map<String, String> mParamsMap;
    private String mPublisherId;
    private String mResolutionHeight;
    private String mResolutionWidth;
    private String mScreenCategory;
    private String mScreenSize;
    private String mSdkVersion;
    private String mStyleId;
    private String mWebviewVersion;
    private String mWidgetType;

    public static class ParamBuilder {
        private String mActualSdkVersion;
        private String mAppSessionId;
        private String mAppVersionCode;
        private String mAppVersionName;
        private String mAuthToken;
        private String mCachBuster;
        private String mCarrierName;
        private String mDeviceHash;
        private String mDeviceLang;
        private String mDeviceType;
        private String mDpi;
        private String mExtensionType;
        private String mExtensionVersion;
        private String mManufacturer;
        private String mModel;
        private String mNetworkType;
        private String mOsType;
        private String mOsVersion;
        private String mOverrideWaterfallUrl;
        private String mPackageId;
        private String mPublisherId;
        private String mResolutionHeight;
        private String mResolutionWidth;
        private String mScreenCategory;
        private String mScreenSize;
        private String mSdkVersion;
        private String mStyleId;
        private String mWebviewVersion;
        private String mWidgetType;
        private String mWifiMode;

        public KidozParams build() {
            return new KidozParams(this);
        }

        public ParamBuilder setActualSdkVersion(String str) {
            this.mActualSdkVersion = str;
            return this;
        }

        public ParamBuilder setAppSessionId(long j) {
            this.mAppSessionId = String.valueOf(j);
            return this;
        }

        public ParamBuilder setAppVersionCode(String str) {
            this.mAppVersionCode = str;
            return this;
        }

        public ParamBuilder setAppVersionName(String str) {
            this.mAppVersionName = str;
            return this;
        }

        public ParamBuilder setAuthToken(String str) {
            this.mAuthToken = str;
            return this;
        }

        public ParamBuilder setCacheBuster(String str) {
            this.mCachBuster = str;
            return this;
        }

        public ParamBuilder setCarrierName(String str) {
            this.mCarrierName = str;
            return this;
        }

        public ParamBuilder setDeviceHash(String str) {
            this.mDeviceHash = str;
            return this;
        }

        public ParamBuilder setDeviceLang(String str) {
            this.mDeviceLang = str;
            return this;
        }

        public ParamBuilder setDeviceType(String str) {
            this.mDeviceType = str;
            return this;
        }

        public ParamBuilder setDpi(float f2) {
            this.mDpi = String.valueOf(f2);
            return this;
        }

        public ParamBuilder setExtensionType(String str) {
            this.mExtensionType = str;
            return this;
        }

        public ParamBuilder setExtensionVersion(String str) {
            this.mExtensionVersion = str;
            return this;
        }

        public ParamBuilder setManufacturer(String str) {
            this.mManufacturer = str;
            return this;
        }

        public ParamBuilder setModel(String str) {
            this.mModel = str;
            return this;
        }

        public ParamBuilder setNetworkType(String str) {
            this.mNetworkType = str;
            return this;
        }

        public ParamBuilder setOsType(String str) {
            this.mOsType = str;
            return this;
        }

        public ParamBuilder setOsVersion(int i) {
            this.mOsVersion = String.valueOf(i);
            return this;
        }

        public void setOverrideWaterfallUrl(String str) {
            this.mOverrideWaterfallUrl = str;
        }

        public ParamBuilder setPackageId(String str) {
            this.mPackageId = str;
            return this;
        }

        public ParamBuilder setPublisherId(String str) {
            this.mPublisherId = str;
            return this;
        }

        public ParamBuilder setResolutionHeight(int i) {
            this.mResolutionHeight = String.valueOf(i);
            return this;
        }

        public ParamBuilder setResolutionWidth(int i) {
            this.mResolutionWidth = String.valueOf(i);
            return this;
        }

        public ParamBuilder setScreenCategory(int i) {
            this.mScreenCategory = String.valueOf(i);
            return this;
        }

        public ParamBuilder setScreenSize(double d2) {
            this.mScreenSize = String.valueOf(d2);
            return this;
        }

        public ParamBuilder setSdkVersion(String str) {
            this.mSdkVersion = str;
            return this;
        }

        public ParamBuilder setStyleId(int i) {
            this.mStyleId = String.valueOf(i);
            return this;
        }

        public ParamBuilder setWebviewVersion(String str) {
            this.mWebviewVersion = str;
            return this;
        }

        public ParamBuilder setWidgetType(String str) {
            this.mWidgetType = str;
            return this;
        }
    }

    private KidozParams(ParamBuilder paramBuilder) {
        this.mPublisherId = paramBuilder.mPublisherId;
        this.mAuthToken = paramBuilder.mAuthToken;
        this.mPackageId = paramBuilder.mPackageId;
        this.mSdkVersion = paramBuilder.mSdkVersion;
        this.mActualSdkVersion = paramBuilder.mActualSdkVersion;
        this.mOsVersion = paramBuilder.mOsVersion;
        this.mOsType = paramBuilder.mOsType;
        this.mExtensionType = paramBuilder.mExtensionType;
        this.mExtensionVersion = paramBuilder.mExtensionVersion;
        this.mNetworkType = paramBuilder.mNetworkType;
        this.mAppVersionCode = paramBuilder.mAppVersionCode;
        this.mAppVersionName = paramBuilder.mAppVersionName;
        this.mDeviceType = paramBuilder.mDeviceType;
        this.mDeviceLang = paramBuilder.mDeviceLang;
        this.mWebviewVersion = paramBuilder.mWebviewVersion;
        this.mDeviceHash = paramBuilder.mDeviceHash;
        this.mResolutionHeight = paramBuilder.mResolutionHeight;
        this.mResolutionWidth = paramBuilder.mResolutionWidth;
        this.mScreenSize = paramBuilder.mScreenSize;
        this.mDpi = paramBuilder.mDpi;
        this.mScreenCategory = paramBuilder.mScreenCategory;
        this.mManufacturer = paramBuilder.mManufacturer;
        this.mModel = paramBuilder.mModel;
        this.mCarrierName = paramBuilder.mCarrierName;
        this.mWidgetType = paramBuilder.mWidgetType;
        this.mCachBuster = paramBuilder.mCachBuster;
        this.mStyleId = paramBuilder.mStyleId;
        this.mAppSessionId = paramBuilder.mAppSessionId;
        this.mOverrideWaterfallUrl = paramBuilder.mOverrideWaterfallUrl;
        buildParamsMap();
    }

    private void buildParamsMap() {
        HashMap map = new HashMap();
        this.mParamsMap = map;
        map.put(PUBLISHER_ID, this.mPublisherId);
        this.mParamsMap.put(AUTH_TOKEN, this.mAuthToken);
        this.mParamsMap.put(PACKAGE_ID, this.mPackageId);
        this.mParamsMap.put(SDK_VERSION, this.mSdkVersion);
        this.mParamsMap.put(ACTUAL_SDK_VERSION, this.mActualSdkVersion);
        this.mParamsMap.put(OS_VERSION, this.mOsVersion);
        this.mParamsMap.put(OS_TYPE, this.mOsType);
        this.mParamsMap.put(EXTENSION_TYPE, this.mExtensionType);
        this.mParamsMap.put(EXTENSION_VERSION, this.mExtensionVersion);
        this.mParamsMap.put(NETWORK_TYPE, this.mNetworkType);
        this.mParamsMap.put(APP_VERSION_CODE, this.mAppVersionCode);
        this.mParamsMap.put(APP_VERSION_NAME, this.mAppVersionName);
        this.mParamsMap.put(DEVICE_TYPE, this.mDeviceType);
        this.mParamsMap.put(DEVICE_LANG, this.mDeviceLang);
        this.mParamsMap.put(WEBVIEW_VERSION, this.mWebviewVersion);
        this.mParamsMap.put(DEVICE_HASH, this.mDeviceHash);
        this.mParamsMap.put(RESOLUTION_HEIGHT, this.mResolutionHeight);
        this.mParamsMap.put(RESOLUTION_WIDTH, this.mResolutionWidth);
        this.mParamsMap.put(SCREEN_SIZE, this.mScreenSize);
        this.mParamsMap.put(DPI, this.mDpi);
        this.mParamsMap.put(SCREEN_CATEGORY, this.mScreenCategory);
        this.mParamsMap.put(MANUFACTURER, this.mManufacturer);
        this.mParamsMap.put("model", this.mModel);
        this.mParamsMap.put(CARRIER_NAME, this.mCarrierName);
        this.mParamsMap.put(WIDGET_TYPE, this.mWidgetType);
        this.mParamsMap.put(CACHE_BUSTER, this.mCachBuster);
        this.mParamsMap.put("style_id", this.mStyleId);
        this.mParamsMap.put(APP_SESSION_ID, this.mAppSessionId);
        if (!TestUtils.isTestApp() || TextUtils.isEmpty(this.mOverrideWaterfallUrl)) {
            return;
        }
        this.mParamsMap.put(OVERRIDE_WATERFALL_URL, this.mOverrideWaterfallUrl);
    }

    public Map<String, String> getParams() {
        return this.mParamsMap;
    }

    public String toString() {
        return new JSONObject(this.mParamsMap).toString();
    }
}
