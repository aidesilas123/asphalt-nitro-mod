package com.mbridge.msdk.shake;

import android.content.Context;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import com.json.o2;
import com.mbridge.msdk.foundation.same.report.k;
import com.mbridge.msdk.foundation.same.report.q;

/* JADX INFO: compiled from: NativeShakeManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private SensorManager a;

    /* JADX INFO: renamed from: com.mbridge.msdk.shake.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: NativeShakeManager.java */
    private static class C0426a {
        static a a = new a();
    }

    private a() {
    }

    public static a a() {
        return C0426a.a;
    }

    public final void a(SensorEventListener sensorEventListener) {
        Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
        if (contextG != null) {
            try {
                if (this.a == null) {
                    this.a = (SensorManager) contextG.getSystemService("sensor");
                }
                this.a.registerListener(sensorEventListener, this.a.getDefaultSensor(1), 2);
            } catch (Exception e2) {
                e2.printStackTrace();
                String message = e2.getMessage();
                try {
                    if (TextUtils.isEmpty(message)) {
                        return;
                    }
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("key=2000106&");
                    if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.l)) {
                        stringBuffer.append("b=" + com.mbridge.msdk.foundation.same.a.l + o2.i.c);
                    }
                    if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.m)) {
                        stringBuffer.append("c=" + com.mbridge.msdk.foundation.same.a.m + o2.i.c);
                    }
                    stringBuffer.append("reason=" + message);
                    if (k.a().c()) {
                        k.a().a(stringBuffer.toString());
                    } else {
                        q.b(contextG, stringBuffer.toString());
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public final void b(SensorEventListener sensorEventListener) {
        SensorManager sensorManager = this.a;
        if (sensorManager != null) {
            try {
                sensorManager.unregisterListener(sensorEventListener);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
