package com.kidoz.sdk.api.general.utils;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class SDKLogger {
    private static final String EMPTY_LOG_MSG = "Empty log message";
    public static final String GENERAL_TAG = "[KIDOZ SDK]";
    protected static boolean IS_DEBUG_MODE = ConstantDef.DGM;
    public static final boolean IS_PICASSO_DEBUG_MODE = false;

    public static void printDebugLog(String str) {
        printDebugLog(GENERAL_TAG, str);
    }

    public static void printDebugLog(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = EMPTY_LOG_MSG;
        }
        if (IS_DEBUG_MODE) {
            Log.d(str, str2);
        }
    }

    public static void printDebugToast(Context context, String str) {
        if (IS_DEBUG_MODE) {
            Toast.makeText(context, str, 0).show();
        }
    }

    public static void printErrorLog(String str) {
        printErrorLog(GENERAL_TAG, str);
    }

    public static void printErrorLog(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = EMPTY_LOG_MSG;
        }
        if (IS_DEBUG_MODE) {
            Log.e(str, str2);
        }
    }

    public static void printGetRequestDebugLog(String str, ContentValues contentValues, String str2) {
        if (!IS_DEBUG_MODE || contentValues == null) {
            return;
        }
        Log.d(GENERAL_TAG, "|\n|");
        Log.d(GENERAL_TAG, "| \n <<<<< |KIDOZ SDK| **[REQUEST]** API : [GET] , RequestType :  [" + str2 + "] >>>>>\n");
        Log.d(GENERAL_TAG, "[WEBSITE_URL] :" + str + "\n");
        Log.d(GENERAL_TAG, "[PARAMETERS] : \n");
        Set<String> setKeySet = contentValues.keySet();
        if (setKeySet.size() > 0) {
            for (String str3 : setKeySet) {
                Log.d(GENERAL_TAG, "-- " + str3 + " = " + contentValues.getAsString(str3));
                Log.d(GENERAL_TAG, "\n");
            }
        }
        Log.d(GENERAL_TAG, "|\n|");
    }

    public static void printInfoLog(String str) {
        printInfoLog(GENERAL_TAG, str);
    }

    public static void printInfoLog(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = EMPTY_LOG_MSG;
        }
        if (IS_DEBUG_MODE) {
            Log.i(str, str2);
        }
    }

    public static void printPostRequestDebugLog(String str, ContentValues contentValues, String str2) {
        if (!IS_DEBUG_MODE || contentValues == null) {
            return;
        }
        Log.d(GENERAL_TAG, "|\n|");
        Log.d(GENERAL_TAG, "\n<<<<< |KIDOZ SDK| **[REQUEST]** API : [POST] , RequestType :  [" + str2 + "] >>>>>\n\n");
        Log.d(GENERAL_TAG, "[WEBSITE_URL] :\n");
        Log.d(GENERAL_TAG, "[PARAMETERS] : \n");
        Set<String> setKeySet = contentValues.keySet();
        if (setKeySet.size() > 0) {
            for (String str3 : setKeySet) {
                Log.d(GENERAL_TAG, "\n");
                Log.d(GENERAL_TAG, "-- " + str3 + " = " + contentValues.getAsString(str3));
            }
        }
        Log.d(GENERAL_TAG, "|\n|");
    }

    public static void printResponse(String str, String str2, String str3) {
        if (IS_DEBUG_MODE) {
            Log.d(GENERAL_TAG, "|\n|");
            Log.d(GENERAL_TAG, "<<<<< |KIDOZ SDK| **[RESPONSE]** API : [" + str2 + "] , RequestType :  [" + str3 + "] >>>>>\n");
            Log.d(GENERAL_TAG, "[RESPONSE STRING] : \n");
            if (str != null) {
                Log.d(GENERAL_TAG, str + "");
            }
            Log.d(GENERAL_TAG, "|\n|");
        }
    }

    public static void printToast(Context context, String str) {
        if (IS_DEBUG_MODE) {
            Toast.makeText(context, str, 0).show();
        }
    }

    public static void printWarningLog(String str) {
        printWarningLog(GENERAL_TAG, str);
    }

    public static void printWarningLog(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = EMPTY_LOG_MSG;
        }
        if (IS_DEBUG_MODE) {
            Log.w(str, str2);
        }
    }
}
