package com.mbridge.msdk.dycreator.b;

/* JADX INFO: compiled from: DyError.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private int a;
    private String b;

    public a(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public a(b bVar) {
        if (bVar != null) {
            this.a = bVar.a();
            this.b = bVar.b();
        }
    }

    public final String toString() {
        return "DyError{errorCode=" + this.a + '}';
    }
}
