package com.bytedance.sdk.component.g;

/* JADX INFO: compiled from: TTBaseExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    private static j a = new j() { // from class: com.bytedance.sdk.component.g.e.1
        @Override // com.bytedance.sdk.component.g.j
        public i createThreadFactory(int i, String str) {
            return new i(i, str);
        }
    };

    public static j a() {
        return a;
    }

    public static void a(j jVar) {
        a = jVar;
    }
}
