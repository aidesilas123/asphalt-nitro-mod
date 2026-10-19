package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.content.Context;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public class DontDisturbPolicy {
    static boolean isDontDisturbEnable(Context context) {
        return Prefs.isDontDisturbEnable(context);
    }

    public static boolean isDontDisturbeTime(Context context) {
        if (!Prefs.isDontDisturbEnable(context)) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        int i = (calendar.get(11) * 60) + calendar.get(12);
        return i <= 480 || i >= 1380;
    }

    static void setDontDisturbEnable(Context context, boolean z) {
        Prefs.setDontDisturbEnable(context, z);
    }
}
