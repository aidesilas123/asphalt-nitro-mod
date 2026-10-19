package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;
import com.json.o2;
import io.didomi.drawable.config.app.SyncConfiguration;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class LocalPushManager {
    public static void CancelAlarm(Context context, String str) {
        ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(PendingIntent.getBroadcast(context, Integer.parseInt(str.substring(7)), new Intent(context, (Class<?>) LocalPushReceiver.class), 67108864));
        SharedPreferences.Editor editorEdit = Prefs.get(context).edit();
        editorEdit.remove(str);
        editorEdit.commit();
    }

    public static void CancelAll() {
        Context applicationContext = SUtils.getApplicationContext();
        SharedPreferences sharedPreferences = Prefs.get(applicationContext);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        Intent intent = new Intent(applicationContext, (Class<?>) LocalPushReceiver.class);
        for (int i = 100; i >= 0; i--) {
            String str = "PN_LID_" + i;
            if (sharedPreferences.contains(str)) {
                ((AlarmManager) applicationContext.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(PendingIntent.getBroadcast(SUtils.getActivity(), i, intent, 67108864));
                editorEdit.remove(str);
            }
        }
        editorEdit.putInt("PN_AID", 0);
        editorEdit.commit();
    }

    static String GetExpirationTime(String str) {
        try {
            return new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(new Date(System.currentTimeMillis() + (Long.parseLong(str) * 1000)));
        } catch (Exception unused) {
            return "";
        }
    }

    static void Init() {
        Context applicationContext = SUtils.getApplicationContext();
        if (applicationContext != null) {
            Prefs.get(applicationContext);
        }
    }

    public static void LoadAlarmInfo(Context context) {
        SharedPreferences sharedPreferences = Prefs.get(context);
        String str = "";
        String str2 = "";
        int iIndexOf = 0;
        for (int i = sharedPreferences.getInt("PN_AID", 0); i >= 0; i--) {
            if (sharedPreferences.contains("PN_LID_" + i)) {
                String string = sharedPreferences.getString("PN_LID_" + i, null);
                Bundle bundle = new Bundle();
                int i2 = 0;
                while (iIndexOf < string.length()) {
                    int iIndexOf2 = string.indexOf("|key|");
                    int iIndexOf3 = string.indexOf(o2.i.b, iIndexOf2);
                    String strSubstring = string.substring(iIndexOf2 + 5, iIndexOf3);
                    string = string.substring(iIndexOf3 + 1);
                    iIndexOf = string.contains("|key|") ? string.indexOf("|key|") : string.length();
                    String strSubstring2 = string.substring(0, iIndexOf);
                    if ("delay".equals(strSubstring)) {
                        i2 = Integer.parseInt(strSubstring2);
                    } else if ("schedule_time".equals(strSubstring)) {
                        str = strSubstring2;
                    } else if ("lID".equals(strSubstring)) {
                        str2 = strSubstring2;
                    }
                    bundle.putString(strSubstring, strSubstring2);
                }
                if (!isExpired(str)) {
                    SetRestoredAlarm(context, str2, i, bundle, i2);
                }
            }
        }
    }

    public static void SaveAlarmInfo(String str, String str2, Bundle bundle) {
        String str3 = "";
        for (String str4 : bundle.keySet()) {
            if (str4 != null && bundle.getString(str4) != null && bundle.getString(str4).length() > 0) {
                str3 = str3 + "|key|" + str4 + o2.i.b + bundle.getString(str4);
            }
        }
        SharedPreferences.Editor editorEdit = Prefs.get(SUtils.getApplicationContext()).edit();
        editorEdit.putString(str, str3 + "|key|delay=" + str2);
        editorEdit.commit();
    }

    static String SecondsToHours(int i) {
        long j = i / SyncConfiguration.DEFAULT_FREQUENCY;
        long j2 = i % SyncConfiguration.DEFAULT_FREQUENCY;
        long j3 = j2 / 3600;
        long j4 = j2 % 3600;
        return j + " Days " + j3 + " Hours " + (j4 / 60) + " Minutes " + (j4 % 60) + " Seconds";
    }

    static String SetAlarm(Bundle bundle, int i) {
        int slot = getSlot();
        Context applicationContext = SUtils.getApplicationContext();
        SharedPreferences.Editor editorEdit = Prefs.get(applicationContext).edit();
        editorEdit.putInt("PN_AID", slot);
        editorEdit.commit();
        Calendar.getInstance().add(13, i);
        String packageName = applicationContext.getPackageName();
        bundle.putString("lID", "PN_LID_" + slot);
        Intent intent = new Intent(applicationContext, (Class<?>) LocalPushReceiver.class);
        intent.putExtra(packageName + ".alarm_content", bundle);
        ((AlarmManager) applicationContext.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(2, SystemClock.elapsedRealtime() + ((long) (i * 1000)), SUtils.getActivity() != null ? PendingIntent.getBroadcast(SUtils.getActivity(), slot, intent, 67108864) : PendingIntent.getBroadcast(applicationContext, slot, intent, 67108864));
        SaveAlarmInfo("PN_LID_" + slot, Integer.toString(i), bundle);
        return "PN_LID_" + slot;
    }

    static void SetRestoredAlarm(Context context, String str, int i, Bundle bundle, int i2) {
        getSlot();
        Calendar.getInstance().add(13, i2);
        String packageName = context.getPackageName();
        bundle.putString("lID", str);
        Intent intent = new Intent(context, (Class<?>) LocalPushReceiver.class);
        intent.putExtra(packageName + ".alarm_content", bundle);
        ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(2, SystemClock.elapsedRealtime() + ((long) (i2 * 1000)), PendingIntent.getBroadcast(context, i, intent, 67108864));
        SaveAlarmInfo(str, Integer.toString(i2), bundle);
    }

    public static void TriggerAlarm(Context context, String str) {
        if (context != null) {
            try {
                SharedPreferences sharedPreferences = Prefs.get(context);
                String str2 = "";
                if (sharedPreferences.contains(str)) {
                    String string = sharedPreferences.getString(str, null);
                    Bundle bundle = new Bundle();
                    int i = 0;
                    while (i < string.length()) {
                        int iIndexOf = string.indexOf("|key|");
                        int iIndexOf2 = string.indexOf(o2.i.b, iIndexOf);
                        String strSubstring = string.substring(iIndexOf + 5, iIndexOf2);
                        string = string.substring(iIndexOf2 + 1);
                        int iIndexOf3 = string.contains("|key|") ? string.indexOf("|key|") : string.length();
                        String strSubstring2 = string.substring(0, iIndexOf3);
                        if ("schedule_time".equals(strSubstring)) {
                            str2 = strSubstring2;
                        } else {
                            "lID".equals(strSubstring);
                        }
                        bundle.putString(strSubstring, strSubstring2);
                        i = iIndexOf3;
                    }
                    if (isExpired(str2)) {
                        CancelAlarm(context, str);
                        if (SimplifiedAndroidUtils.k == null) {
                            a aVar = new a(context);
                            SimplifiedAndroidUtils.k = aVar;
                            aVar.c();
                        }
                        SimplifiedAndroidUtils.k.b("pn_alarm_id", str);
                        SimplifiedAndroidUtils.BackupDatabase();
                        return;
                    }
                    String packageName = context.getPackageName();
                    int i2 = Integer.parseInt(str.substring(7));
                    Intent intent = new Intent(context, (Class<?>) LocalPushReceiver.class);
                    intent.putExtra(packageName + ".alarm_content", bundle);
                    ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(2, SystemClock.elapsedRealtime(), PendingIntent.getBroadcast(context, i2, intent, 67108864));
                }
            } catch (Exception unused) {
            }
        }
    }

    static int getSlot() {
        int i = 0;
        while (true) {
            if (!Prefs.get(SUtils.getApplicationContext()).contains("PN_LID_" + i)) {
                return i;
            }
            i++;
        }
    }

    static boolean isExpired(String str) {
        try {
            return new SimpleDateFormat("EEE MMM dd kk:mm:ss yyyy", Locale.US).parse(str).before(new Date());
        } catch (Exception unused) {
            return true;
        }
    }
}
