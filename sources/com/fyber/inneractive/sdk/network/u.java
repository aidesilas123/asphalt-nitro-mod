package com.fyber.inneractive.sdk.network;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.Calendar;
import java.util.TimeZone;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class u {
    public SharedPreferences a = null;

    public static final class a {
        public static u a = new u();
    }

    public static void a(Context context, String str, String str2, com.fyber.inneractive.sdk.flow.q<? extends com.fyber.inneractive.sdk.response.e> qVar) {
        if (context == null || str == null || qVar.d() == null) {
            IAlog.a("Invalid report request parameters!", new Object[0]);
            return;
        }
        u uVar = a.a;
        if (uVar.a == null) {
            uVar.a = context.getSharedPreferences("AutoWebActionPrefs", 0);
        }
        IAConfigManager iAConfigManager = IAConfigManager.M;
        if (!iAConfigManager.i.c) {
            IAlog.a("IAautoWebActionReporter: Report of Non user web actions disabled!", new Object[0]);
            return;
        }
        s.a aVar = new s.a(q.MRAID_AUTO_ACTION_DETECTED, qVar.a, qVar.d(), qVar.c.c());
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("action", str);
        } catch (Exception unused) {
            IAlog.e("Got exception adding param to json object: %s, %s", "action", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            try {
                jSONObject.put("url", str2);
            } catch (Exception unused2) {
                IAlog.e("Got exception adding param to json object: %s, %s", "url", str2);
            }
        }
        long j = uVar.a.getLong("lastReportTS", 0L);
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        Calendar calendar = Calendar.getInstance(timeZone);
        Calendar calendar2 = Calendar.getInstance(timeZone);
        calendar2.setTimeInMillis(j);
        int i = (j <= 0 || calendar.get(6) != calendar2.get(6)) ? 0 : uVar.a.getInt("numReportsToday", 0);
        int i2 = i + 1;
        if (i < iAConfigManager.i.f1984d) {
            aVar.f2121g = true;
        }
        Integer numValueOf = Integer.valueOf(i2);
        try {
            jSONObject.put("daily_count", numValueOf);
        } catch (Exception unused3) {
            IAlog.e("Got exception adding param to json object: %s, %s", "daily_count", numValueOf);
        }
        aVar.f2120f.put(jSONObject);
        aVar.a((String) null);
        SharedPreferences.Editor editorEdit = uVar.a.edit();
        editorEdit.putLong("lastReportTS", calendar.getTimeInMillis());
        editorEdit.putInt("numReportsToday", i2);
        editorEdit.apply();
    }
}
