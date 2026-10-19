package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes2.dex */
public final class Prefs {
    public static SharedPreferences get(Context context) {
        return context.getSharedPreferences("GLPN", 0);
    }

    public static int getDontDisturbEndTime(Context context) {
        return get(context).getInt("pn_dont_disturbe_end", 480);
    }

    public static int getDontDisturbStartTime(Context context) {
        return get(context).getInt("pn_dont_disturbe_start", 1380);
    }

    public static void init(Context context) {
        SharedPreferences sharedPreferences = get(context);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (!sharedPreferences.contains("enablePushNotification")) {
            editorEdit.putBoolean("enablePushNotification", true);
        }
        if (!sharedPreferences.contains("pn_local_enable")) {
            editorEdit.putBoolean("pn_local_enable", true);
        }
        if (!sharedPreferences.contains("pn_remote_enable")) {
            editorEdit.putBoolean("pn_remote_enable", true);
        }
        if (!sharedPreferences.contains("pn_dont_disturbe_enable")) {
            editorEdit.putBoolean("pn_dont_disturbe_enable", true);
            editorEdit.putInt("pn_dont_disturbe_start", 1380);
            editorEdit.putInt("pn_dont_disturbe_end", 480);
        }
        editorEdit.commit();
    }

    public static boolean isDontDisturbEnable(Context context) {
        return get(context).getBoolean("pn_dont_disturbe_enable", true);
    }

    public static boolean isEnableLocal(Context context) {
        return get(context).getBoolean("pn_local_enable", true);
    }

    public static boolean isEnableRemote(Context context) {
        return get(context).getBoolean("pn_remote_enable", true);
    }

    public static boolean isEnabled(Context context) {
        return get(context).getBoolean("enablePushNotification", true);
    }

    public static void setDontDisturbEnable(Context context, boolean z) {
        SharedPreferences.Editor editorEdit = get(context).edit();
        editorEdit.putBoolean("pn_dont_disturbe_enable", z);
        editorEdit.commit();
    }

    public static void setEnabled(Context context, boolean z) {
        SharedPreferences.Editor editorEdit = get(context).edit();
        editorEdit.putBoolean("enablePushNotification", z);
        editorEdit.commit();
    }

    public static void setEnabledLocal(Context context, boolean z) {
        SharedPreferences.Editor editorEdit = get(context).edit();
        editorEdit.putBoolean("pn_local_enable", z);
        editorEdit.commit();
    }

    public static void setEnabledRemote(Context context, boolean z) {
        SharedPreferences.Editor editorEdit = get(context).edit();
        editorEdit.putBoolean("pn_remote_enable", z);
        editorEdit.commit();
    }
}
