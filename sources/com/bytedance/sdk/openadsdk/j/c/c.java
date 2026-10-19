package com.bytedance.sdk.openadsdk.j.c;

/* JADX INFO: compiled from: LogUploaderImplEmpty.java */
/* JADX INFO: loaded from: classes2.dex */
class c implements a {
    private static volatile c a;

    private c() {
    }

    public static c b() {
        if (a == null) {
            synchronized (c.class) {
                if (a == null) {
                    a = new c();
                }
            }
        }
        return a;
    }

    @Override // com.bytedance.sdk.openadsdk.j.c.a
    public void a() {
    }

    @Override // com.bytedance.sdk.openadsdk.j.c.a
    public void a(com.bytedance.sdk.openadsdk.j.a aVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.j.c.a
    public void a(com.bytedance.sdk.openadsdk.j.a aVar, boolean z) {
    }
}
