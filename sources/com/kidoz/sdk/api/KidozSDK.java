package com.kidoz.sdk.api;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.Toast;
import com.hyprmx.android.sdk.core.HyprMXMediationProvider;
import com.json.t9;
import com.kidoz.events.EventManager;
import com.kidoz.events.c;
import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.MemoryManager;
import com.kidoz.sdk.api.general.assets_handling.AssetUtil;
import com.kidoz.sdk.api.general.database.ServerConfigStorage;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.kidoz.sdk.api.general.utils.PropertiesObj;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.SdkCookieManager;
import com.kidoz.sdk.api.general.utils.SharedPreferencesUtils;
import com.kidoz.sdk.api.general.utils.StorageLife;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.interfaces.SDKEventListener;
import com.kidoz.sdk.api.server_connect.ApiResultCallback;
import com.kidoz.sdk.api.server_connect.BaseConnectionClient;
import com.kidoz.sdk.api.server_connect.ResultData;
import com.kidoz.sdk.api.server_connect.SdkAPIManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class KidozSDK {
    public static final String TAG = "KidozSDK";
    private static boolean isDeveloperLoggingON = false;
    private static boolean isInitialized = false;
    private static String mAppId = null;
    private static Context mContext = null;
    private static String mMediationType = "none";
    private static String mPublisherId;
    private static String mSecurityKey;
    private static c sGeneralSDKEventObj;

    private static SdkAPIManager getApiManager(Context context) {
        SdkAPIManager.init(context, mPublisherId, mSecurityKey, isDeveloperLoggingON);
        return SdkAPIManager.getSdkApiInstance(context);
    }

    public static String getAppId() {
        return mAppId;
    }

    public static String getAuthToken() {
        return mSecurityKey;
    }

    public static String getPublisherID() {
        return mPublisherId;
    }

    public static String getSDKVersion() {
        return "9.0.1";
    }

    public static void initialize(Activity activity, String str, String str2, String str3) {
        mAppId = str3;
        initialize(activity, str, str2);
    }

    public static void initialize(Context context, String str, String str2) {
        Context applicationContext = context.getApplicationContext();
        mContext = applicationContext;
        registerActivityLifecycleCallbacks((Application) applicationContext);
        SharedPreferencesUtils.saveStringValue(context, "PUBLISHER_ID", str);
        mPublisherId = str;
        mSecurityKey = str2;
        String str3 = TAG;
        SDKLogger.printDebugLog(str3, "initialize : " + isInitialized);
        long jCurrentTimeMillis = System.currentTimeMillis();
        validateParameters(context, str, str2);
        SDKLogger.printDebugLog(str3, "CT validateParameters time = " + ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0d) + " seconds");
        notifyUserUsingDemoPublisherID(context, str);
        SDKLogger.printDebugLog(str3, "CT notifyUserUsingDemoPublisherID time = " + (((double) (System.currentTimeMillis() - jCurrentTimeMillis)) / 1000.0d) + " seconds");
        SDKLogger.printDebugLog(str3, "CT checkManifestDeclarations time = " + (((double) (System.currentTimeMillis() - jCurrentTimeMillis)) / 1000.0d) + " seconds");
        try {
            SDKLogger.printDebugLog(str3, "CT getGoogleAdvertisingID time = " + ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0d) + " seconds");
            Utils.preInitiate(context);
            SDKLogger.printDebugLog(str3, "CT preInitiate time = " + (((double) (System.currentTimeMillis() - jCurrentTimeMillis)) / 1000.0d) + " seconds");
            SharedPreferences sharedPreferences = context.getSharedPreferences("events_shared_preferences", 0);
            long j = sharedPreferences.getLong("last_session_id", 0L) + 1;
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putLong("last_session_id", j);
            editorEdit.apply();
            SDKLogger.printDebugLog(str3, "CT SharedPreferences time = " + ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0d) + " seconds");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("DeveloperID", str);
            jSONObject.put("log_level", EventManager.b);
            jSONObject.put("SessionID", j);
            EventManager.getInstance(context).e(context, jSONObject);
            EventManager.getInstance(context).i(context, null, null, EventManager.a, "Session", "Session Start", str);
            if (isInitialized) {
                EventManager.getInstance(context).i(context, null, null, EventManager.a, "SDK", "SDK Already Initiated", str);
            }
            SDKLogger.printDebugLog(str3, "CT EventManager time = " + ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0d) + " seconds");
            SdkCookieManager.resetStorage(context, null, StorageLife.SESSION);
            SdkAPIManager.init(context, str, str2, isDeveloperLoggingON);
            MemoryManager.init();
            validateSDK(context, str);
            SDKLogger.printDebugLog(str3, "CT initialize time = " + ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0d) + " seconds");
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to init SDK: " + e2.getMessage());
        }
    }

    public static boolean isInitialised() {
        return isInitialized;
    }

    private static void notifyUserUsingDemoPublisherID(final Context context, String str) {
        SDKLogger.printDebugLog(TAG, "notifyUserUsingDemoPublisherID");
        if (str.equals(CampaignEx.CLICKMODE_ON) || str.equals(t9.f6640e) || str.equals("8")) {
            if (context instanceof Activity) {
                ((Activity) context).runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.KidozSDK.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Context context2 = context;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Notice ! You are using Demo PUBLISHER ID ! ");
                        sb.append(KidozSDK.getAppId() != null ? KidozSDK.getAppId() : context.getPackageName());
                        Toast.makeText(context2, sb.toString(), 1).show();
                    }
                });
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Notice ! You are using Demo PUBLISHER ID ! , Package Name :");
            sb.append(getAppId() != null ? getAppId() : context.getPackageName());
            SDKLogger.printErrorLog(sb.toString());
        }
    }

    private static void registerActivityLifecycleCallbacks(Application application) {
        application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.kidoz.sdk.api.KidozSDK.2
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                MemoryManager.onActivityDestroyed(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
            }
        });
    }

    public static void setAppId(String str) {
        mAppId = str;
    }

    public static void setExtension(String str, String str2) {
        if (!HyprMXMediationProvider.UNITY.equals(str)) {
            str = "android_" + str;
        }
        ConstantDef.EXTENSION_TYPE = str;
        ConstantDef.EXTENSION_VERSION = str2;
    }

    public static void setLoggingEnabled(boolean z) {
        isDeveloperLoggingON = z;
    }

    public static void setSDKListener(SDKEventListener sDKEventListener) {
        if (EventBus.getDefault().i(sGeneralSDKEventObj)) {
            return;
        }
        c cVar = new c();
        sGeneralSDKEventObj = cVar;
        cVar.a(sDKEventListener);
        EventBus.getDefault().o(sGeneralSDKEventObj);
    }

    private static void validateParameters(Context context, String str, String str2) {
        SDKLogger.printDebugLog(TAG, "validateParameters");
        if (context == null) {
            throw new RuntimeException("Context can't be null!");
        }
        if (str2 == null || str2.length() > 48) {
            throw new RuntimeException("Invalid Security Token! Please recheck you security token..");
        }
        if (str == null) {
            throw new RuntimeException("Invalid publisher id! Please check you publisher id..");
        }
        try {
            Long.parseLong(str);
        } catch (NumberFormatException unused) {
            throw new RuntimeException("Invalid publisher id! Please check you publisher id..");
        }
    }

    private static void validateSDK(final Context context, final String str) {
        SDKLogger.printDebugLog(TAG, "validateSDK");
        final long jCurrentTimeMillis = System.currentTimeMillis();
        if (context != null) {
            try {
                PropertiesObj propertiesObjLoadAppProperties = ServerConfigStorage.getInstance().loadAppProperties();
                if (propertiesObjLoadAppProperties != null) {
                    EventManager.c = propertiesObjLoadAppProperties.getSdkStyleVersion();
                }
                getApiManager(context).initSdk(context, new ApiResultCallback<PropertiesObj>() { // from class: com.kidoz.sdk.api.KidozSDK.3
                    @Override // com.kidoz.sdk.api.server_connect.ApiResultCallback
                    public void onFailed() {
                        EventBus.getDefault().k(new EventMessage(EventMessage.MessageType.INIT_SDK_FAIL_NO_SERVER_RESULT));
                    }

                    @Override // com.kidoz.sdk.api.server_connect.ApiResultCallback
                    public void onServerResult(ResultData<?> resultData) {
                        if (resultData == null || resultData.getResponseStatus() == null || !resultData.getResponseStatus().getIsSuccessful() || resultData.getData() == null || !(resultData.getData() instanceof PropertiesObj)) {
                            return;
                        }
                        PropertiesObj propertiesObj = (PropertiesObj) resultData.getData();
                        ConstantDef.setDGM(propertiesObj.getShouldEnableChromeDebug());
                        EventManager.c = propertiesObj.getSdkStyleVersion();
                        BaseConnectionClient.updateDomain(propertiesObj.getGPSFeedApiDomain());
                        BaseConnectionClient.updateWaterfallDomain(propertiesObj.getWaterfallDomain());
                        ServerConfigStorage.getInstance().insertAppProperties(propertiesObj);
                        AssetUtil.parseStyleAsync(context, new AssetUtil.ParserAsyncTask.IOnStyleParseListener() { // from class: com.kidoz.sdk.api.KidozSDK.3.1
                            @Override // com.kidoz.sdk.api.general.assets_handling.AssetUtil.ParserAsyncTask.IOnStyleParseListener
                            public void onParseFinished(boolean z) {
                                if (!z) {
                                    EventBus.getDefault().k(new EventMessage(EventMessage.MessageType.INIT_SDK_FAIL_STYLE_PARSER));
                                    return;
                                }
                                boolean unused = KidozSDK.isInitialized = true;
                                EventManager eventManager = EventManager.getInstance(context);
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                eventManager.i(context, null, null, EventManager.a, "SDK", "SDK Init", str);
                                EventBus.getDefault().k(new EventMessage(EventMessage.MessageType.INIT_SDK));
                                SDKLogger.printDebugLog(KidozSDK.TAG, "CT validateSDK time = " + ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0d) + " seconds");
                                if (KidozSDK.isDeveloperLoggingON) {
                                    SDKLogger.printDebugLog("Kidoz SDK has been successfully Initialized !");
                                }
                            }
                        });
                    }
                });
            } catch (Exception e2) {
                SDKLogger.printErrorLog(TAG, "Error when trying to validateSDK: " + e2.getMessage());
                EventBus.getDefault().k(new EventMessage(EventMessage.MessageType.INIT_SDK_FAIL_VALIDATION_EXCEPTION));
            }
        }
    }
}
