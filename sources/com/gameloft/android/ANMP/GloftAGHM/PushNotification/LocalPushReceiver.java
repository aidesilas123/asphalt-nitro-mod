package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.applovin.sdk.AppLovinErrorCodes;
import com.gameloft.android.ANMP.GloftAGHM.R;
import java.util.Calendar;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LocalPushReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int i;
        String str;
        try {
            LocalPushManager.Init();
            if (!"android.intent.action.BOOT_COMPLETED".equals(intent.getAction()) && !"android.intent.action.ACTION_BOOT_COMPLETED".equals(intent.getAction())) {
                Bundle extras = intent.getExtras();
                JSONObject jSONObject = new JSONObject();
                if (extras != null) {
                    Bundle bundle = extras.getBundle(context.getPackageName() + ".alarm_content");
                    if (bundle != null) {
                        Iterator<String> it = bundle.keySet().iterator();
                        String string = null;
                        String string2 = null;
                        String string3 = null;
                        String string4 = null;
                        String string5 = null;
                        String string6 = null;
                        while (it.hasNext()) {
                            Iterator<String> it2 = it;
                            String next = it.next();
                            if (next.equals("body")) {
                                string4 = bundle.getString("body");
                            } else if (next.equals("subject")) {
                                string5 = bundle.getString("subject");
                            } else if (next.equals("type")) {
                                string2 = bundle.getString("type");
                            } else if (next.equals("url")) {
                                string6 = bundle.getString("url");
                            } else if (next.equals("lID")) {
                                string3 = bundle.getString("lID");
                            } else if (next.equals("limit_time")) {
                                string = bundle.getString("limit_time");
                            }
                            if (bundle.getString(next) != null) {
                                str = string;
                                try {
                                    jSONObject.put(next, bundle.getString(next));
                                } catch (Exception unused) {
                                }
                            } else {
                                str = string;
                            }
                            string = str;
                            it = it2;
                        }
                        if (string != null && string.equals("1")) {
                            Calendar calendar = Calendar.getInstance();
                            int i2 = calendar.get(11);
                            int i3 = calendar.get(12);
                            int i4 = calendar.get(13);
                            if (i2 < 9 || i2 > 13) {
                                long j = i2 > 12 ? (32400 - (((((i2 - 12) * 60) * 60) + (i3 * 60)) + i4)) + 43200 : 32400 - ((((i2 * 60) * 60) + (i3 * 60)) + i4);
                                String string7 = bundle.getString("pn_group_ID");
                                if (string7 == null || string7.length() <= 0) {
                                    i = -1;
                                } else {
                                    try {
                                        i = Integer.parseInt(string7);
                                    } catch (Exception unused2) {
                                        i = -1;
                                    }
                                }
                                if (i != -1) {
                                    i = (string2 == null || !string2.equals("launch")) ? i + AppLovinErrorCodes.UNABLE_TO_PRECACHE_IMAGE_RESOURCES : i - 101;
                                }
                                if (string3 != null && string3.length() > 0) {
                                    LocalPushManager.CancelAlarm(context, string3);
                                    if (SimplifiedAndroidUtils.k == null) {
                                        a aVar = new a(context);
                                        SimplifiedAndroidUtils.k = aVar;
                                        aVar.c();
                                    }
                                    SimplifiedAndroidUtils.k.b("pn_alarm_id", string3);
                                    SimplifiedAndroidUtils.BackupDatabase();
                                }
                                SimplifiedAndroidUtils.SendMessage(bundle, "" + j, i);
                                return;
                            }
                        }
                        if (string2 == null || string4 == null || SimplifiedAndroidUtils.isTypeBlock(string2)) {
                            return;
                        }
                        String string8 = (string5 == null || string5.length() == 0) ? context.getString(R.string.app_name) : string5;
                        if (bundle.containsKey("customIcon")) {
                            SimplifiedAndroidUtils.f2849d = true;
                            SimplifiedAndroidUtils.f2852g = bundle.getString("customIcon");
                        } else {
                            SimplifiedAndroidUtils.f2849d = false;
                            SimplifiedAndroidUtils.f2852g = null;
                        }
                        if (bundle.containsKey("image")) {
                            SimplifiedAndroidUtils.f2851f = true;
                            SimplifiedAndroidUtils.i = bundle.getString("image");
                            RemoteImageManager.GetLocalAsset(context);
                        } else {
                            SimplifiedAndroidUtils.f2851f = false;
                            SimplifiedAndroidUtils.i = null;
                        }
                        if (bundle.containsKey("sound")) {
                            SimplifiedAndroidUtils.f2850e = true;
                            SimplifiedAndroidUtils.h = bundle.getString("sound");
                        } else {
                            SimplifiedAndroidUtils.f2850e = false;
                            SimplifiedAndroidUtils.h = null;
                        }
                        Intent launchIntent = SimplifiedAndroidUtils.getLaunchIntent(context, string4, string2, string6, bundle);
                        String str2 = string4;
                        String str3 = string3;
                        SimplifiedAndroidUtils.generateNotification(context, str2, string8, string2, launchIntent, bundle);
                        if (str3 != null && str3.length() > 0) {
                            LocalPushManager.CancelAlarm(context, str3);
                            if (SimplifiedAndroidUtils.k == null) {
                                a aVar2 = new a(context);
                                SimplifiedAndroidUtils.k = aVar2;
                                aVar2.c();
                            }
                            SimplifiedAndroidUtils.k.b("pn_alarm_id", str3);
                            SimplifiedAndroidUtils.BackupDatabase();
                        }
                        Intent intent2 = new Intent("com.gameloft.android.ANMP.GloftAGHM_pushbroadcast");
                        intent2.putExtra("get_broadcast_push", jSONObject.toString());
                        context.sendBroadcast(intent2);
                        return;
                    }
                    return;
                }
                return;
            }
            Boolean bool = Boolean.FALSE;
            try {
                Bundle extras2 = intent.getExtras();
                if (extras2 != null && extras2.containsKey("pn_ddms_flag") && extras2.getString("pn_ddms_flag").equals("1")) {
                    bool = Boolean.TRUE;
                    LocalPushManager.TriggerAlarm(context, extras2.getString("pn_alarm_id"));
                    return;
                }
            } catch (Exception unused3) {
                if (bool.booleanValue()) {
                    return;
                }
            }
            LocalPushManager.LoadAlarmInfo(context);
        } catch (Exception unused4) {
        }
    }
}
