package com.hyprmx.android.sdk.api.data;

import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.i0;
import com.hyprmx.android.sdk.utility.m0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class f {
    public final String a;
    public final short b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final short[] f4482d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final short[] f4483e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final short[] f4484f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final short[] f4485g;

    public static final class a {
        public static m0 a(String str) {
            if (str == null) {
                return new m0.a("Calendar repeat rule JSON is null", 0, null);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                String strA = i0.a("frequency", jSONObject);
                short sOptDouble = (short) jSONObject.optDouble("interval");
                String strA2 = i0.a("expires", jSONObject);
                i0.a("exceptionDates", jSONObject);
                return new m0.b(new f(strA, sOptDouble, strA2, a(jSONObject.optJSONArray("daysInWeek")), a(jSONObject.optJSONArray("daysInMonth")), a(jSONObject.optJSONArray("daysInYear")), a(jSONObject.optJSONArray("weeksInMonth")), a(jSONObject.optJSONArray("monthsInYear"))));
            } catch (JSONException e2) {
                return new m0.a("Exception parsing calendar repeat rule.", 0, e2);
            }
        }

        public static short[] a(JSONArray jSONArray) {
            if (jSONArray == null) {
                return new short[0];
            }
            try {
                int length = jSONArray.length();
                short[] sArr = new short[length];
                for (int i = 0; i < length; i++) {
                    sArr[i] = (short) jSONArray.getDouble(i);
                }
                return sArr;
            } catch (JSONException unused) {
                HyprMXLog.e("Exception parsing JSON array");
                return new short[0];
            }
        }
    }

    public f(String str, short s, String str2, short[] daysInWeek, short[] daysInMonth, short[] daysInYear, short[] weeksInMonth, short[] monthsInYear) {
        Intrinsics.checkNotNullParameter(daysInWeek, "daysInWeek");
        Intrinsics.checkNotNullParameter(daysInMonth, "daysInMonth");
        Intrinsics.checkNotNullParameter(daysInYear, "daysInYear");
        Intrinsics.checkNotNullParameter(weeksInMonth, "weeksInMonth");
        Intrinsics.checkNotNullParameter(monthsInYear, "monthsInYear");
        this.a = str;
        this.b = s;
        this.c = str2;
        this.f4482d = daysInWeek;
        this.f4483e = daysInMonth;
        this.f4484f = daysInYear;
        this.f4485g = monthsInYear;
    }
}
