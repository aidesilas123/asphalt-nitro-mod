package com.pgl.ssdk;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class h implements SensorEventListener {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static h f7714f;
    private SensorManager a;
    private int b;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float[] f7715d = new float[3];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f7716e = new ArrayList();

    private h(Context context) {
        this.a = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            try {
                this.a = (SensorManager) applicationContext.getSystemService("sensor");
            } catch (Throwable unused) {
            }
        }
    }

    public static h a(Context context) {
        if (f7714f == null) {
            synchronized (h.class) {
                if (f7714f == null) {
                    f7714f = new h(context);
                }
            }
        }
        return f7714f;
    }

    private synchronized void c() {
        try {
            SensorManager sensorManager = this.a;
            if (sensorManager != null) {
                int i = this.b - 1;
                this.b = i;
                if (i == 0) {
                    sensorManager.unregisterListener(this);
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001a A[Catch: all -> 0x0020, Exception -> 0x0023, TRY_LEAVE, TryCatch #6 {Exception -> 0x0023, blocks: (B:4:0x0004, B:6:0x0008, B:8:0x000c, B:11:0x001a), top: B:50:0x0004, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a() {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.h.a():void");
    }

    public synchronized String b() {
        String strSubstring = "";
        int size = this.f7716e.size();
        if (size <= 0) {
            return "";
        }
        if (size == 1) {
            return (String) this.f7716e.get(0);
        }
        try {
            List list = this.f7716e;
            int i = size - 10;
            if (i <= 0) {
                i = 0;
            }
            List listSubList = list.subList(i, size);
            for (int i2 = 0; i2 < listSubList.size(); i2++) {
                strSubstring = strSubstring + ((String) listSubList.get(i2)) + "|";
            }
            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
        } catch (Throwable unused) {
        }
        return strSubstring;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        this.f7715d = sensorEvent.values;
        this.c = 1;
    }
}
