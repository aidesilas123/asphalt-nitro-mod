package com.kidoz.sdk.api.server_connect;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Point;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.kidoz.events.EventBulk;
import com.kidoz.sdk.api.KidozSDK;
import com.kidoz.sdk.api.general.assets_handling.StyleParser;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.kidoz.sdk.api.general.utils.EncoderUtils;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.kidoz.sdk.api.general.utils.PropertiesObj;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.general.utils.TestUtils;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.server_connect.BaseConnectionClient;
import com.kidoz.sdk.api.structure.ContentData;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class SdkAPIManager extends BaseAPIManager {
    private static final String GET_CONTENT = "getContent";
    private static final String INIT_SDK_CONFIGURATION = "initSDK";
    private static final String JSON = "JSON";
    public static final String METHOD_NAME = "method_name";
    private static final String REQUEST_FORMAT = "resFormat";
    private static final String SEND_KIDOZ_EVENTS_TO_SERVER = "SendKidozEventsToServer";
    private static final String TAG = "com.kidoz.sdk.api.server_connect.SdkAPIManager";
    private static final String WATERFALL = "waterfall";
    private static SdkAPIManager mSdkInstnace;
    private final Context mContext;
    private boolean mDeveloperLogging;
    private String mPackageName;
    private String mSessionId = null;

    public interface GetParamsCallback {
        void onResult(ContentValues contentValues);
    }

    public SdkAPIManager(Context context) {
        BaseConnectionClient.initConnectionClient(context);
        this.mPackageName = KidozSDK.getAppId() != null ? KidozSDK.getAppId() : context.getPackageName();
        this.mContext = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String generateRequestHash(ContentValues contentValues, long j, String str) {
        Set<String> setKeySet = contentValues.keySet();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(setKeySet);
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arrayList.size(); i++) {
            sb.append(contentValues.getAsString((String) arrayList.get(i)));
        }
        sb.append(j);
        sb.append(str);
        return EncoderUtils.SHA1(sb.toString());
    }

    public static SdkAPIManager getSdkApiInstance(Context context) {
        if (mSdkInstnace == null) {
            mSdkInstnace = new SdkAPIManager(context);
        }
        return mSdkInstnace;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSessionId() {
        if (this.mSessionId == null) {
            this.mSessionId = Utils.getSessionId(this.mContext);
        }
        return this.mSessionId;
    }

    public static void init(Context context, String str, String str2, boolean z) {
        getSdkApiInstance(context).setProperties(str, str2, z);
    }

    private void setProperties(String str, String str2, boolean z) {
        BaseConnectionClient.mPublicherId = str;
        BaseConnectionClient.mSecurityToken = str2;
        this.mDeveloperLogging = z;
    }

    public void callGetURL(Context context, String str, ApiResultCallback<String> apiResultCallback) {
        startServerConnection(context, str, BaseConnectionClient.CONNECTION_TYPE.GET, SdkRequestType.SEND_EVENT, null, 0, apiResultCallback, this.mDeveloperLogging, false);
    }

    public void getCountryCode(Context context, ApiResultCallback<String> apiResultCallback) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("key", "Xg4VFb!7P$_p87Eq+7-t&X=VPHw3P&yL");
        startServerConnection(context, "http://accounts.kidoz.net/api/cc", BaseConnectionClient.CONNECTION_TYPE.POST, SdkRequestType.GET_COUNTRY_CODE, contentValues, 0, apiResultCallback, this.mDeveloperLogging, false);
    }

    public void initSdk(final Context context, final ApiResultCallback<PropertiesObj> apiResultCallback) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(METHOD_NAME, INIT_SDK_CONFIGURATION);
        setGeneralParams(context, contentValues, new GetParamsCallback() { // from class: com.kidoz.sdk.api.server_connect.SdkAPIManager.3
            @Override // com.kidoz.sdk.api.server_connect.SdkAPIManager.GetParamsCallback
            public void onResult(ContentValues contentValues2) {
                try {
                    if (TestUtils.isMultiEnv()) {
                        String envApiUrl = TestUtils.getEnvApiUrl(context, TestUtils.Environments.production.getEnvUrl());
                        SdkAPIManager.this.startServerConnection(context, envApiUrl + "/api/" + SdkAPIManager.INIT_SDK_CONFIGURATION, BaseConnectionClient.CONNECTION_TYPE.GET, SdkRequestType.VALIDATE_SDK, contentValues2, 1, apiResultCallback, SdkAPIManager.this.mDeveloperLogging, false);
                    } else {
                        SdkAPIManager sdkAPIManager = SdkAPIManager.this;
                        sdkAPIManager.startServerConnection(context, "https://sdk-api.kidoz.net/api/initSDK", BaseConnectionClient.CONNECTION_TYPE.GET, SdkRequestType.VALIDATE_SDK, contentValues2, 1, apiResultCallback, sdkAPIManager.mDeveloperLogging, false);
                    }
                } catch (Exception e2) {
                    SDKLogger.printErrorLog(SdkAPIManager.TAG, "Error when trying to validateSDK: " + e2.getMessage());
                    apiResultCallback.onFailed();
                }
            }
        });
    }

    public void loadContent(final Context context, final String str, final String str2, final ApiResultCallback<ContentData> apiResultCallback) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(METHOD_NAME, GET_CONTENT);
        setGeneralParams(context, contentValues, new GetParamsCallback() { // from class: com.kidoz.sdk.api.server_connect.SdkAPIManager.1
            @Override // com.kidoz.sdk.api.server_connect.SdkAPIManager.GetParamsCallback
            public void onResult(ContentValues contentValues2) {
                contentValues2.put(StyleParser.STYLE_ID, str);
                contentValues2.put("widget_type", str2);
                long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                contentValues2.put("ts", Long.valueOf(jCurrentTimeMillis));
                contentValues2.put("hash", SdkAPIManager.this.generateRequestHash(contentValues2, jCurrentTimeMillis, BaseConnectionClient.mSecurityToken));
                SdkAPIManager.this.startServerConnection(context, "https://" + BaseConnectionClient.DOMAIN + "/api/sdk", BaseConnectionClient.CONNECTION_TYPE.GET, SdkRequestType.LOAD_SDK_CONTENT, contentValues2, 1, apiResultCallback, SdkAPIManager.this.mDeveloperLogging, false);
            }
        });
    }

    public void loadWaterfall(final Context context, final String str, final String str2, final String str3, final ApiResultCallback<ContentData> apiResultCallback) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(METHOD_NAME, "waterfall");
        setGeneralParams(context, contentValues, new GetParamsCallback() { // from class: com.kidoz.sdk.api.server_connect.SdkAPIManager.2
            @Override // com.kidoz.sdk.api.server_connect.SdkAPIManager.GetParamsCallback
            public void onResult(ContentValues contentValues2) {
                contentValues2.put(StyleParser.STYLE_ID, str);
                contentValues2.put("widget_type", str2);
                contentValues2.put("is_rewarded", str3);
                long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                contentValues2.put("ts", Long.valueOf(jCurrentTimeMillis));
                contentValues2.put("hash", SdkAPIManager.this.generateRequestHash(contentValues2, jCurrentTimeMillis, BaseConnectionClient.mSecurityToken));
                contentValues2.put(Command.HTTP_HEADER_USER_AGENT, Utils.getDefaultUserAgent());
                String overrideWaterfallUrl = TestUtils.getOverrideWaterfallUrl(context, null);
                if (TestUtils.isTestApp() && !TextUtils.isEmpty(overrideWaterfallUrl)) {
                    SdkAPIManager sdkAPIManager = SdkAPIManager.this;
                    sdkAPIManager.startServerConnection(context, overrideWaterfallUrl, BaseConnectionClient.CONNECTION_TYPE.GET, SdkRequestType.LOAD_WATERFALL, contentValues2, 1, apiResultCallback, sdkAPIManager.mDeveloperLogging, false);
                    return;
                }
                SdkAPIManager.this.startServerConnection(context, "https://" + BaseConnectionClient.WATERFALL_DOMAIN + BaseConnectionClient.WATERFALL_URL, BaseConnectionClient.CONNECTION_TYPE.GET, SdkRequestType.LOAD_WATERFALL, contentValues2, 1, apiResultCallback, SdkAPIManager.this.mDeveloperLogging, false);
            }
        });
    }

    public ResultData<Boolean> sendKidozEventsToServerNotAsync(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("methodName", SEND_KIDOZ_EVENTS_TO_SERVER);
        try {
            contentValues.put("KidozEventsLogAsJson", URLEncoder.encode(str, C.UTF8_NAME));
            contentValues.put(REQUEST_FORMAT, JSON);
            String strMakePostConnection = BaseConnectionClient.makePostConnection("https://analytics.kidoz.net/parents/KidozRestMobile.php", contentValues);
            if (strMakePostConnection != null) {
                return EventBulk.parseResultSuccsessStatus(strMakePostConnection);
            }
            return null;
        } catch (Exception e2) {
            SDKLogger.printErrorLog(" \n IO Exception On Event send request! \n" + e2.getMessage());
            return null;
        }
    }

    public void setGeneralParams(final Context context, final ContentValues contentValues, final GetParamsCallback getParamsCallback) {
        final boolean zIsUiThread = Utils.isUiThread();
        new Thread() { // from class: com.kidoz.sdk.api.server_connect.SdkAPIManager.4
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String str;
                String strValueOf;
                PackageInfo packageInfo;
                String[] strArrSplit;
                String[] strArrSplit2;
                String str2 = "";
                contentValues.put("publisher_id", BaseConnectionClient.mPublicherId);
                contentValues.put("package_id", SdkAPIManager.this.mPackageName);
                contentValues.put("device_lang", Locale.getDefault().getLanguage());
                contentValues.put("device_type", ScreenUtils.getIsTablet(context) ? MBridgeConstans.API_REUQEST_CATEGORY_APP : "1");
                contentValues.put("device_hash", SdkAPIManager.this.getSessionId());
                contentValues.put("omidpn", ConstantDef.OM_PARTNER_NAME);
                contentValues.put("omidpv", KidozSDK.getSDKVersion());
                contentValues.put("version", ConstantDef.SDK_CONTENT_VERSION);
                contentValues.put("sdk_version", ConstantDef.SDK_CONTENT_VERSION);
                contentValues.put("actual_sdk_version", KidozSDK.getSDKVersion());
                contentValues.put("os_type", "android");
                contentValues.put("os_version", String.valueOf(Build.VERSION.SDK_INT));
                contentValues.put(KidozParams.EXTENSION_TYPE, ConstantDef.EXTENSION_TYPE);
                contentValues.put(KidozParams.EXTENSION_VERSION, ConstantDef.EXTENSION_VERSION);
                contentValues.put("access_token", BaseConnectionClient.mSecurityToken);
                String defaultUserAgent = Utils.getDefaultUserAgent();
                if (defaultUserAgent == null || !defaultUserAgent.contains("Chrome") || (strArrSplit = defaultUserAgent.substring(defaultUserAgent.indexOf("Chrome"), defaultUserAgent.length()).split(" ")) == null || strArrSplit.length <= 0 || (strArrSplit2 = strArrSplit[0].split("/")) == null || strArrSplit2.length <= 1) {
                    str = "w";
                } else {
                    str = "c_" + strArrSplit2[1];
                }
                contentValues.put("webview_version", str);
                try {
                    Point screenSize = ScreenUtils.getScreenSize(context);
                    contentValues.put("resolution_height", Integer.valueOf(screenSize.y));
                    contentValues.put("resolution_width", Integer.valueOf(screenSize.x));
                    contentValues.put("screen_size", Double.valueOf(ScreenUtils.getDeviceScreenSizeInInches(context)));
                    contentValues.put("dpi", Float.valueOf(context.getResources().getDisplayMetrics().density));
                    contentValues.put("screen_category", Integer.valueOf(context.getResources().getConfiguration().screenLayout & 15));
                } catch (Exception unused) {
                }
                try {
                    packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                    strValueOf = String.valueOf(packageInfo.versionCode);
                } catch (Exception e2) {
                    e = e2;
                    strValueOf = "";
                }
                try {
                    str2 = packageInfo.versionName;
                } catch (Exception e3) {
                    e = e3;
                    SDKLogger.printErrorLog(SdkAPIManager.TAG, "Error when trying to get app version name and code: " + e.getMessage());
                }
                contentValues.put("app_version_code", strValueOf);
                contentValues.put("app_version_name", str2);
                try {
                    contentValues.put("manufacturer", Build.MANUFACTURER);
                    contentValues.put("model", Build.MODEL);
                } catch (Exception e4) {
                    Log.d("KIDOZ", e4.getMessage());
                }
                contentValues.put(KidozParams.CARRIER_NAME, Utils.getCarrierName(context));
                contentValues.put(KidozParams.NETWORK_TYPE, Utils.getNetworkType(context));
                if (zIsUiThread) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.kidoz.sdk.api.server_connect.SdkAPIManager.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                            GetParamsCallback getParamsCallback2 = getParamsCallback;
                            if (getParamsCallback2 != null) {
                                getParamsCallback2.onResult(contentValues);
                            }
                        }
                    });
                    return;
                }
                GetParamsCallback getParamsCallback2 = getParamsCallback;
                if (getParamsCallback2 != null) {
                    getParamsCallback2.onResult(contentValues);
                }
            }
        }.start();
    }
}
