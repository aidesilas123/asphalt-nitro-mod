package com.bytedance.sdk.component.d.a;

import com.bytedance.sdk.component.d.i;
import com.bytedance.sdk.component.d.l;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: KeyGeneratorFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static l a() {
        return new l() { // from class: com.bytedance.sdk.component.d.a.b.1
            private WeakHashMap<String, String> a = new WeakHashMap<>();

            private String a(String str) {
                String str2 = this.a.get(str);
                if (str2 != null) {
                    return str2;
                }
                String strA = com.bytedance.sdk.component.d.c.c.c.a(str);
                this.a.put(str, strA);
                return strA;
            }

            @Override // com.bytedance.sdk.component.d.l
            public String a(i iVar) {
                return a(iVar.a() + "#width=" + iVar.b() + "#height=" + iVar.c() + "#scaletype=" + iVar.d() + "#bitmapConfig=" + iVar.f());
            }

            @Override // com.bytedance.sdk.component.d.l
            public String b(i iVar) {
                return a(iVar.a());
            }
        };
    }
}
