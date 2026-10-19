package com.pgl.ssdk;

import android.content.Context;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: com.pgl.ssdk.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C1646d {
    private static double a = -1.0d;

    public static String a(Context context) {
        int i;
        double d2 = a;
        double dDoubleValue = 0.0d;
        if (d2 >= 0.0d) {
            i = (int) d2;
        } else {
            try {
                Class<?> cls = Class.forName("com.android.internal.os.PowerProfile");
                Object objNewInstance = cls.getConstructor(Context.class).newInstance(context);
                Method declaredMethod = cls.getDeclaredMethod("getAveragePower", String.class);
                declaredMethod.setAccessible(true);
                dDoubleValue = ((Double) declaredMethod.invoke(objNewInstance, "battery.capacity")).doubleValue();
            } catch (Throwable unused) {
            }
            a = dDoubleValue;
            i = (int) dDoubleValue;
        }
        return Integer.toString(i);
    }
}
