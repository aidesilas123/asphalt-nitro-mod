package com.bytedance.sdk.openadsdk.b.a;

/* JADX INFO: compiled from: NetResponseWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
class i implements com.bytedance.sdk.component.e.a.e.d {
    private final com.bytedance.sdk.component.f.b a;

    public i(com.bytedance.sdk.component.f.b bVar) {
        this.a = bVar;
    }

    @Override // com.bytedance.sdk.component.e.a.e.d
    public boolean a() {
        com.bytedance.sdk.component.f.b bVar = this.a;
        if (bVar != null) {
            return bVar.f();
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.e.a.e.d
    public int b() {
        com.bytedance.sdk.component.f.b bVar = this.a;
        if (bVar != null) {
            return bVar.a();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.component.e.a.e.d
    public String c() {
        com.bytedance.sdk.component.f.b bVar = this.a;
        return bVar != null ? bVar.b() : "";
    }
}
