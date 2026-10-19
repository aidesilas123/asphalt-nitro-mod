package com.kidoz.sdk.api.general.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TestUtils {
    public static final String API_URL_KEY = "API_URL_KEY";
    public static final String MULTI_ENV_PREFS = "MULTI_ENV_SHARED_PREFS_NAME";
    public static final String OFFER_IDS_PLACEHOLDER = "{offer_id_placeholder}";
    public static final String TEST_WATERFALL_URL_KEY = "TEST_WATERFALL_URL_KEY";
    public static final String WATERFALL_URL_KEY = "WATERFALL_URL_KEY";

    public enum Environments {
        production("Prod", "https://sdk-api.kidoz.net", "https://vast.kidoz.net", "https://prebid-adapter.kidoz.net/api/test-waterfall?offer_id={offer_id_placeholder}&"),
        qa("QA", "https://sdk-api-test.kidoz.net", "https://vast-test.kidoz.net", "https://prebid-adapter-test.kidoz.net/api/test-waterfall?offer_id={offer_id_placeholder}&"),
        ext_qa("Ext. QA", "https://sdk-api-utest.kidoz.net", "https://vast-utest.kidoz.net", "https://prebid-adapter-utest.kidoz.net/api/test-waterfall?offer_id={offer_id_placeholder}&"),
        dev("Dev", "https://sdk-api.devenv.kidoz.net", "https://devenv.kidoz.net/", "https://prebid-adapter.devenv.kidoz.net/api/test-waterfall?offer_id={offer_id_placeholder}&");

        String envUrl;
        String label;
        String testWaterfallUrl;
        String waterfallUrl;

        Environments(String str, String str2, String str3, String str4) {
            this.label = str;
            this.envUrl = str2;
            this.waterfallUrl = str3;
            this.testWaterfallUrl = str4;
        }

        public static Environments fromString(String str) {
            try {
                return valueOf(str);
            } catch (Exception unused) {
                return production;
            }
        }

        public static List<String> getEnvLabels() {
            ArrayList arrayList = new ArrayList();
            for (Environments environments : values()) {
                arrayList.add(environments.getLabel());
            }
            return arrayList;
        }

        public String getEnvUrl() {
            return this.envUrl;
        }

        public String getLabel() {
            return this.label;
        }

        public String getTestWaterfallUrl() {
            return this.testWaterfallUrl;
        }
    }

    public static String getEnvApiUrl(Context context, String str) {
        return getSharedPreference(context).getString(API_URL_KEY, str);
    }

    public static String getOverrideWaterfallUrl(Context context, String str) {
        return getSharedPreference(context).getString(WATERFALL_URL_KEY, str);
    }

    private static SharedPreferences getSharedPreference(Context context) {
        return context.getSharedPreferences(MULTI_ENV_PREFS, 0);
    }

    public static String getTestWaterfallUrl(Context context, String str) {
        return getSharedPreference(context).getString(TEST_WATERFALL_URL_KEY, str);
    }

    public static boolean isMultiEnv() {
        return ConstantDef.isMultiEnv();
    }

    public static boolean isTestApp() {
        return isMultiEnv() || ConstantDef.isTestApp();
    }

    public static void setCampaignIds(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            setOverrideWaterfallUrl(context, null);
        } else {
            setOverrideWaterfallUrl(context, getTestWaterfallUrl(context, Environments.production.testWaterfallUrl).replace(OFFER_IDS_PLACEHOLDER, str));
        }
    }

    public static void setEnvApiUrl(Context context, String str) {
        getSharedPreference(context).edit().putString(API_URL_KEY, str).commit();
    }

    public static void setEnvironment(Context context, Environments environments) {
        setEnvApiUrl(context, environments.envUrl);
        setTestWaterfallUrl(context, environments.testWaterfallUrl);
    }

    public static void setEnvironment(Context context, String str) {
        setEnvironment(context, Environments.fromString(str));
    }

    public static void setOverrideWaterfallUrl(Context context, String str) {
        getSharedPreference(context).edit().putString(WATERFALL_URL_KEY, str).commit();
    }

    public static void setTestWaterfallUrl(Context context, String str) {
        getSharedPreference(context).edit().putString(TEST_WATERFALL_URL_KEY, str).commit();
    }
}
