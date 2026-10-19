package com.kidoz.events;

import com.kidoz.sdk.api.general.utils.SDKLogger;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONObject;

/* JADX INFO: compiled from: Event.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    private final String a = a.class.getName();
    private JSONObject b = new JSONObject();
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f6755d;

    public a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yy-MM-dd HH:mm:ss", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f6755d = jCurrentTimeMillis;
        String strValueOf = String.valueOf(jCurrentTimeMillis);
        String str = simpleDateFormat.format(new Date(System.currentTimeMillis()));
        try {
            this.b.put("LogTimeUTC", strValueOf);
            this.b.put("LogTimeLocal", str);
        } catch (Exception e2) {
            SDKLogger.printErrorLog(this.a, "Error when trying to add parameters to JsonObject: " + e2.getMessage());
        }
    }

    public void a(String str) {
        if (str != null) {
            try {
                if (this.b == null) {
                    this.b = new JSONObject(str);
                    return;
                }
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    try {
                        this.b.put(next, jSONObject.get(next));
                    } catch (Exception e2) {
                        SDKLogger.printErrorLog(this.a, "Error when trying to add iterate JsonObject: " + e2.getMessage());
                    }
                }
            } catch (Exception e3) {
                SDKLogger.printErrorLog(this.a, "Error when trying to add jsonAsString to JsonObject: " + e3.getMessage());
            }
        }
    }

    public void b(String str, int i) {
        try {
            this.b.put(str, i);
        } catch (Exception e2) {
            SDKLogger.printErrorLog(this.a, "Error when trying to add parameter to JsonObject: " + e2.getMessage());
        }
    }

    public void c(String str, long j) {
        try {
            this.b.put(str, j);
        } catch (Exception e2) {
            SDKLogger.printErrorLog(this.a, "Error when trying to add parameter to JsonObject: " + e2.getMessage());
        }
    }

    public void d(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        try {
            this.b.put(str, str2);
        } catch (Exception e2) {
            SDKLogger.printErrorLog(this.a, "Error when trying to add parameter to JsonObject: " + e2.getMessage());
        }
    }

    public long e() {
        return this.f6755d;
    }

    public JSONObject f() {
        return this.b;
    }

    public int g() {
        return this.c;
    }

    public void h(int i) {
        this.c = i;
    }
}
