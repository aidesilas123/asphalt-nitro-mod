package com.fyber.inneractive.sdk.metrics;

import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public final String a;

    public a(String str) {
        this.a = str;
    }

    public static boolean a(int i, int i2, JSONArray jSONArray, List<Long> list) {
        if (i <= 0 || i2 <= 0) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - TimeUnit.HOURS.toMillis(i);
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= jSONArray.length()) {
                break;
            }
            long jOptLong = jSONArray.optLong(i3, 0L);
            if (jOptLong > jCurrentTimeMillis) {
                i4++;
                list.add(Long.valueOf(jOptLong));
            }
            i3++;
        }
        return i4 >= i2;
    }
}
