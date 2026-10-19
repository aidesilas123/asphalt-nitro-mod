package com.bytedance.sdk.openadsdk.f;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.d.k;
import com.bytedance.sdk.component.d.o;
import com.bytedance.sdk.openadsdk.b.g;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.utils.ac;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ImageLoaderLogListenerWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public class b<T> implements o<T> {
    private final long a = SystemClock.elapsedRealtime();
    private final String b;
    private final o<T> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q f1787d;

    public b(q qVar, String str, o<T> oVar) {
        this.c = oVar;
        this.f1787d = qVar;
        this.b = str;
    }

    @Override // com.bytedance.sdk.component.d.o
    public void a(final int i, final String str, @Nullable Throwable th) {
        o<T> oVar = this.c;
        if (oVar != null) {
            oVar.a(i, str, th);
        }
        q qVar = this.f1787d;
        if (qVar != null) {
            String strA = ac.a(qVar);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            final long jElapsedRealtime = SystemClock.elapsedRealtime() - this.a;
            com.bytedance.sdk.openadsdk.b.c.a(System.currentTimeMillis(), this.f1787d, strA, "load_image_error", (JSONObject) null, (g) null, new com.bytedance.sdk.openadsdk.b.b.a() { // from class: com.bytedance.sdk.openadsdk.f.b.2
                @Override // com.bytedance.sdk.openadsdk.b.b.a
                public void a(JSONObject jSONObject) throws JSONException {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("error_code", i);
                    jSONObject2.put("error_message", str);
                    jSONObject2.put("duration", jElapsedRealtime);
                    jSONObject2.put("url", b.this.b);
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", jElapsedRealtime);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.d.o
    public void a(k<T> kVar) {
        o<T> oVar = this.c;
        if (oVar != null) {
            oVar.a(kVar);
        }
        final long jElapsedRealtime = SystemClock.elapsedRealtime() - this.a;
        String strA = ac.a(this.f1787d);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        final int iF = kVar.f() / 1024;
        boolean zE = kVar.e();
        long jCurrentTimeMillis = System.currentTimeMillis();
        q qVar = this.f1787d;
        final int i = zE ? 1 : 0;
        com.bytedance.sdk.openadsdk.b.c.a(jCurrentTimeMillis, qVar, strA, "load_image_success", (JSONObject) null, (g) null, new com.bytedance.sdk.openadsdk.b.b.a() { // from class: com.bytedance.sdk.openadsdk.f.b.1
            @Override // com.bytedance.sdk.openadsdk.b.b.a
            public void a(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("duration", jElapsedRealtime);
                jSONObject2.put("url", b.this.b);
                jSONObject2.put("preload_size", iF);
                jSONObject2.put("local_cache", i);
                jSONObject.put("ad_extra_data", jSONObject2.toString());
                jSONObject.put("duration", jElapsedRealtime);
            }
        });
    }
}
