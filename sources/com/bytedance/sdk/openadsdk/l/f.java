package com.bytedance.sdk.openadsdk.l;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import androidx.core.app.NotificationCompat;
import com.json.o2;
import com.json.v4;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: PlayableJsBridge.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    private Context a;
    private WeakReference<h> b;
    private Map<String, a> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SensorEventListener f1818d = new SensorEventListener() { // from class: com.bytedance.sdk.openadsdk.l.f.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            h hVarD;
            if (sensorEvent.sensor.getType() != 1 || (hVarD = f.this.d()) == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", f2);
                jSONObject.put("y", f3);
                jSONObject.put("z", f4);
                hVarD.a("accelerometer_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SensorEventListener f1819e = new SensorEventListener() { // from class: com.bytedance.sdk.openadsdk.l.f.12
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            h hVarD;
            if (sensorEvent.sensor.getType() != 4 || (hVarD = f.this.d()) == null) {
                return;
            }
            float degrees = (float) Math.toDegrees(sensorEvent.values[0]);
            float degrees2 = (float) Math.toDegrees(sensorEvent.values[1]);
            float degrees3 = (float) Math.toDegrees(sensorEvent.values[2]);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", degrees);
                jSONObject.put("y", degrees2);
                jSONObject.put("z", degrees3);
                hVarD.a("gyro_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SensorEventListener f1820f = new SensorEventListener() { // from class: com.bytedance.sdk.openadsdk.l.f.23
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            h hVarD;
            if (sensorEvent.sensor.getType() != 10 || (hVarD = f.this.d()) == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", f2);
                jSONObject.put("y", f3);
                jSONObject.put("z", f4);
                hVarD.a("accelerometer_grativityless_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SensorEventListener f1821g = new SensorEventListener() { // from class: com.bytedance.sdk.openadsdk.l.f.34
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor.getType() == 1) {
                float[] fArr = sensorEvent.values;
                float[] fArr2 = j.b;
                System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            } else if (sensorEvent.sensor.getType() == 2) {
                float[] fArr3 = sensorEvent.values;
                float[] fArr4 = j.c;
                System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
            }
            float[] fArr5 = j.f1828d;
            SensorManager.getRotationMatrix(fArr5, null, j.b, j.c);
            float[] fArr6 = j.f1829e;
            SensorManager.getOrientation(fArr5, fArr6);
            h hVarD = f.this.d();
            if (hVarD == null) {
                return;
            }
            float f2 = fArr6[0];
            float f3 = fArr6[1];
            float f4 = fArr6[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("alpha", f2);
                jSONObject.put("beta", f3);
                jSONObject.put("gamma", f4);
                hVarD.a("rotation_vector_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }
    };

    /* JADX INFO: compiled from: PlayableJsBridge.java */
    interface a {
        JSONObject a(JSONObject jSONObject) throws Throwable;
    }

    public f(h hVar) {
        this.a = hVar.a();
        this.b = new WeakReference<>(hVar);
        c();
    }

    private void c() {
        this.c.put("adInfo", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.45
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                if (hVarD == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectS = hVarD.s();
                if (jSONObjectS != null) {
                    jSONObjectS.put("code", 1);
                    return jSONObjectS;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("code", -1);
                return jSONObject3;
            }
        });
        this.c.put("appInfo", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.56
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", 1);
                jSONObject2.put("appName", "playable_sdk");
                jSONObject2.put("playableSdkEdition", "6.6.0");
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = f.this.a().iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                jSONObject2.put("supportList", jSONArray);
                h hVarD = f.this.d();
                if (hVarD != null) {
                    jSONObject2.put("deviceId", hVarD.g());
                    jSONObject2.put("netType", hVarD.p());
                    jSONObject2.put("innerAppName", hVarD.d());
                    jSONObject2.put("appName", hVarD.e());
                    jSONObject2.put("appVersion", hVarD.f());
                    Map<String, String> mapB = hVarD.b();
                    for (String str : mapB.keySet()) {
                        jSONObject2.put(str, mapB.get(str));
                    }
                }
                return jSONObject2;
            }
        });
        this.c.put("playableSDKInfo", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.61
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", 1);
                jSONObject2.put("appName", "playable_sdk");
                jSONObject2.put("playableSdkEdition", "6.6.0");
                jSONObject2.put(v4.x, "android");
                return jSONObject2;
            }
        });
        this.c.put("subscribe_app_ad", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.62
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.l.a aVarE = f.this.e();
                JSONObject jSONObject2 = new JSONObject();
                if (aVarE == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                aVarE.b(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("download_app_ad", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.63
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.l.a aVarE = f.this.e();
                JSONObject jSONObject2 = new JSONObject();
                if (aVarE == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                aVarE.c(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put(o2.h.o, new a() { // from class: com.bytedance.sdk.openadsdk.l.f.2
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                if (hVarD == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("code", 1);
                jSONObject3.put("viewStatus", hVarD.i());
                return jSONObject3;
            }
        });
        this.c.put("getVolume", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.3
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                if (hVarD == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("code", 1);
                jSONObject3.put("endcard_mute", hVarD.h());
                return jSONObject3;
            }
        });
        this.c.put("getScreenSize", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.4
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                if (hVarD == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectR = hVarD.r();
                jSONObjectR.put("code", 1);
                return jSONObjectR;
            }
        });
        this.c.put("start_accelerometer_observer", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.5
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int iOptInt = 2;
                if (jSONObject != null) {
                    try {
                        iOptInt = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th) {
                        g.a("PlayableJsBridge", "invoke start_accelerometer_observer error", th);
                        jSONObject2.put("code", -1);
                        jSONObject2.put("codeMsg", th.toString());
                        return jSONObject2;
                    }
                }
                j.a(f.this.a, f.this.f1818d, iOptInt);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("close_accelerometer_observer", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.6
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    j.a(f.this.a, f.this.f1818d);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    g.a("PlayableJsBridge", "invoke close_accelerometer_observer error", th);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.c.put("start_gyro_observer", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.7
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int iOptInt = 2;
                if (jSONObject != null) {
                    try {
                        iOptInt = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th) {
                        g.a("PlayableJsBridge", "invoke start_gyro_observer error", th);
                        jSONObject2.put("code", -1);
                        jSONObject2.put("codeMsg", th.toString());
                        return jSONObject2;
                    }
                }
                j.b(f.this.a, f.this.f1819e, iOptInt);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("close_gyro_observer", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.8
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    j.a(f.this.a, f.this.f1819e);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    g.a("PlayableJsBridge", "invoke close_gyro_observer error", th);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.c.put("start_accelerometer_grativityless_observer", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.9
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int iOptInt = 2;
                if (jSONObject != null) {
                    try {
                        iOptInt = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th) {
                        g.a("PlayableJsBridge", "invoke start_accelerometer_grativityless_observer error", th);
                        jSONObject2.put("code", -1);
                        jSONObject2.put("codeMsg", th.toString());
                        return jSONObject2;
                    }
                }
                j.c(f.this.a, f.this.f1820f, iOptInt);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("close_accelerometer_grativityless_observer", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.10
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    j.a(f.this.a, f.this.f1820f);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    g.a("PlayableJsBridge", "invoke close_accelerometer_grativityless_observer error", th);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.c.put("start_rotation_vector_observer", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.11
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int iOptInt = 2;
                if (jSONObject != null) {
                    try {
                        iOptInt = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th) {
                        g.a("PlayableJsBridge", "invoke start_rotation_vector_observer error", th);
                        jSONObject2.put("code", -1);
                        jSONObject2.put("codeMsg", th.toString());
                        return jSONObject2;
                    }
                }
                j.d(f.this.a, f.this.f1821g, iOptInt);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("close_rotation_vector_observer", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.13
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    j.a(f.this.a, f.this.f1821g);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    g.a("PlayableJsBridge", "invoke close_rotation_vector_observer error", th);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.c.put("device_shake", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.14
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    j.a(f.this.a, 300L);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    g.a("PlayableJsBridge", "invoke device_shake error", th);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.c.put("device_shake_short", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.15
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    j.a(f.this.a, 150L);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th) {
                    g.a("PlayableJsBridge", "invoke device_shake error", th);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th.toString());
                    return jSONObject2;
                }
            }
        });
        this.c.put("playable_style", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.16
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectC = hVarD.c();
                jSONObjectC.put("code", 1);
                return jSONObjectC;
            }
        });
        this.c.put("sendReward", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.17
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.u();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("webview_time_track", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.18
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                return new JSONObject();
            }
        });
        this.c.put("playable_event", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.19
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null || jSONObject == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.b(jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null), jSONObject.optJSONObject("params"));
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("reportAd", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.20
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.o(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("close", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.21
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.p(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("openAdLandPageLinks", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.22
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.q(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("get_viewport", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.24
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectT = hVarD.t();
                jSONObjectT.put("code", 1);
                return jSONObjectT;
            }
        });
        this.c.put("jssdk_load_finish", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.25
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.H();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_material_render_result", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.26
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.n(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("detect_change_playable_click", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.27
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectJ = hVarD.j();
                jSONObjectJ.put("code", 1);
                return jSONObjectJ;
            }
        });
        this.c.put("check_camera_permission", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.28
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectM = hVarD.m();
                jSONObjectM.put("code", 1);
                return jSONObjectM;
            }
        });
        this.c.put("check_external_storage", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.29
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectN = hVarD.n();
                if (jSONObjectN.isNull("result")) {
                    jSONObjectN.put("code", -1);
                } else {
                    jSONObjectN.put("code", 1);
                }
                return jSONObjectN;
            }
        });
        this.c.put("playable_open_camera", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.30
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.a(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_pick_photo", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.31
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.b(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_download_media_in_photos", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.32
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.c(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_preventTouchEvent", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.33
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.d(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_settings_info", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.35
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectO = hVarD.o();
                jSONObjectO.put("code", 1);
                return jSONObjectO;
            }
        });
        this.c.put("playable_load_main_scene", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.36
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.v();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_enter_section", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.37
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.f(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_end", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.38
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.w();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_finish_play_playable", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.39
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.x();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_transfrom_module_show", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.40
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.y();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_transfrom_module_change_color", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.41
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.z();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_set_scroll_rect", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.42
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.g(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_click_area", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.43
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.h(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_real_play_start", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.44
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.A();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_material_first_frame_show", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.46
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.B();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_stuck_check_pong", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.47
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.E();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_material_adnormal_mask", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.48
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.i(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_long_press_panel", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.49
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.C();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_alpha_player_play", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.50
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.j(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_transfrom_module_highlight", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.51
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.D();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_send_click_event", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.52
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                hVarD.k(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_query_media_permission_declare", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.53
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectL = hVarD.l(jSONObject);
                jSONObjectL.put("code", 1);
                return jSONObjectL;
            }
        });
        this.c.put("playable_query_media_permission_enable", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.54
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                h hVarD = f.this.d();
                JSONObject jSONObject2 = new JSONObject();
                if (hVarD == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectM = hVarD.m(jSONObject);
                jSONObjectM.put("code", 1);
                return jSONObjectM;
            }
        });
        this.c.put("playable_apply_media_permission", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.55
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.l.a aVarE = f.this.e();
                JSONObject jSONObject2 = new JSONObject();
                if (aVarE == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                aVarE.n(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_start_kws", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.57
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.l.a aVarE = f.this.e();
                JSONObject jSONObject2 = new JSONObject();
                if (aVarE == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                aVarE.o(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_close_kws", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.58
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.l.a aVarE = f.this.e();
                JSONObject jSONObject2 = new JSONObject();
                if (aVarE == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                aVarE.k();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_video_preload_task_add", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.59
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.l.a aVarE = f.this.e();
                JSONObject jSONObject2 = new JSONObject();
                if (aVarE == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                aVarE.p(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.c.put("playable_video_preload_task_cancel", new a() { // from class: com.bytedance.sdk.openadsdk.l.f.60
            @Override // com.bytedance.sdk.openadsdk.l.f.a
            public JSONObject a(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.l.a aVarE = f.this.e();
                JSONObject jSONObject2 = new JSONObject();
                if (aVarE == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                aVarE.q(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public h d() {
        WeakReference<h> weakReference = this.b;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bytedance.sdk.openadsdk.l.a e() {
        h hVarD = d();
        if (hVarD == null) {
            return null;
        }
        return hVarD.q();
    }

    public Set<String> a() {
        return this.c.keySet();
    }

    public JSONObject a(String str, JSONObject jSONObject) {
        try {
            a aVar = this.c.get(str);
            if (aVar != null) {
                return aVar.a(jSONObject);
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("code", -1);
            return jSONObject2;
        } catch (Throwable th) {
            g.a("PlayableJsBridge", "invoke error", th);
            return null;
        }
    }

    public void b() {
        j.a(this.a, this.f1818d);
        j.a(this.a, this.f1819e);
        j.a(this.a, this.f1820f);
        j.a(this.a, this.f1821g);
    }
}
