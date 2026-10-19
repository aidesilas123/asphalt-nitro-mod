package com.bytedance.sdk.openadsdk.l;

import android.content.Context;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Vibrator;

/* JADX INFO: compiled from: SensorHub.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {
    public static a a;
    protected static final float[] b = new float[3];
    protected static final float[] c = new float[3];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static final float[] f1828d = new float[9];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final float[] f1829e = new float[3];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static SensorManager f1830f;

    private static int a(int i) {
        if (i == 0 || i == 1 || i == 2 || i == 3) {
            return i;
        }
        return 2;
    }

    private static SensorManager a(Context context) {
        if (f1830f == null) {
            synchronized (j.class) {
                if (f1830f == null) {
                    f1830f = (SensorManager) context.getSystemService("sensor");
                }
            }
        }
        return f1830f;
    }

    public static void a(Context context, long j) {
        if (context == null) {
            return;
        }
        ((Vibrator) context.getSystemService("vibrator")).vibrate(j);
    }

    public static void a(Context context, SensorEventListener sensorEventListener) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            a(context).unregisterListener(sensorEventListener);
        } catch (Throwable th) {
            g.a("SensorHub", "stopListen error", th);
        }
    }

    public static void a(Context context, SensorEventListener sensorEventListener, int i) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            a aVar = a;
            if (aVar == null || !aVar.h()) {
                return;
            }
            a.a(context, sensorEventListener, 1, a(i));
        } catch (Throwable th) {
            g.a("SensorHub", "startListenAccelerometer error", th);
        }
    }

    public static void a(a aVar) {
        a = aVar;
    }

    public static void b(Context context, SensorEventListener sensorEventListener, int i) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            a aVar = a;
            if (aVar == null || !aVar.h()) {
                return;
            }
            a.a(context, sensorEventListener, 4, a(i));
        } catch (Throwable th) {
            g.a("SensorHub", "startListenGyroscope error", th);
        }
    }

    public static void c(Context context, SensorEventListener sensorEventListener, int i) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            a aVar = a;
            if (aVar == null || !aVar.h()) {
                return;
            }
            a.a(context, sensorEventListener, 10, a(i));
        } catch (Throwable th) {
            g.a("SensorHub", "startListenLinearAcceleration error", th);
        }
    }

    public static void d(Context context, SensorEventListener sensorEventListener, int i) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            a aVar = a;
            if (aVar == null || !aVar.h()) {
                return;
            }
            a.a(context, sensorEventListener, 1, a(i));
            a.a(context, sensorEventListener, 2, a(i));
        } catch (Throwable th) {
            g.a("SensorHub", "startListenRotationVector err", th);
        }
    }
}
