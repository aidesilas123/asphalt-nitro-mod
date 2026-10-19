package com.bykv.vk.openvk.component.video.a.b.e;

import android.text.TextUtils;
import com.bytedance.sdk.component.b.a.k;
import com.bytedance.sdk.component.b.a.m;
import com.bytedance.sdk.component.b.a.o;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: NetworkSoureVolleyImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements b {
    private k a;

    public d() {
        this.a = null;
        this.a = com.bykv.vk.openvk.component.video.api.c.d();
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.e.b
    public a a(e eVar) throws IOException {
        m.a aVar = new m.a();
        try {
            Map<String, String> map = eVar.f436e;
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (!TextUtils.isEmpty(key)) {
                        String value = entry.getValue();
                        if (value == null) {
                            value = "";
                        }
                        aVar.b(key, value);
                    }
                }
            }
            o oVarA = this.a.a(aVar.a(eVar.b).a().b()).a();
            com.bykv.vk.openvk.component.video.api.f.c.b("NetworkSoureVolleyImpl", "response code = ", Integer.valueOf(oVarA.c()));
            return new f(oVarA, eVar);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
