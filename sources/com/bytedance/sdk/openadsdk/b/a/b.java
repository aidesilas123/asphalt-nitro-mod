package com.bytedance.sdk.openadsdk.b.a;

import com.json.o2;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdEvenRecord.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1170d;
    public AtomicInteger a = new AtomicInteger(0);
    public AtomicInteger b = new AtomicInteger(0);
    public AtomicLong c = new AtomicLong(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AtomicInteger f1171e = new AtomicInteger(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Map<Integer, Integer> f1172f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AtomicBoolean f1173g = new AtomicBoolean(false);

    public b(int i) {
        this.f1170d = i;
    }

    JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("success", this.a.get());
            jSONObject.put(o2.f.f6481e, this.b.get());
            jSONObject.put("type", this.f1170d);
            jSONObject.put("duration", this.c.get() / ((long) this.a.get()));
            JSONObject jSONObject2 = new JSONObject();
            if (this.f1172f.size() > 0) {
                for (Map.Entry<Integer, Integer> entry : this.f1172f.entrySet()) {
                    jSONObject2.put(String.valueOf(entry.getKey()), entry.getValue());
                }
            }
            jSONObject.put("fail_error_code", jSONObject2);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    JSONObject b() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("success", this.a.get());
            jSONObject.put(o2.f.f6481e, this.b.get());
            jSONObject.put("type", this.f1170d);
            jSONObject.put("time", this.f1171e.get());
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }
}
