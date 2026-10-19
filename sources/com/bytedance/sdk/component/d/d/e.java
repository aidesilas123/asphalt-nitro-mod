package com.bytedance.sdk.component.d.d;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: DecoderVisitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends a {
    private byte[] a;
    private com.bytedance.sdk.component.d.f b;

    public e(byte[] bArr, com.bytedance.sdk.component.d.f fVar) {
        this.a = bArr;
        this.b = fVar;
    }

    private void a(int i, String str, Throwable th, com.bytedance.sdk.component.d.c.c cVar) {
        if (this.b == null) {
            cVar.a(new k());
        } else {
            cVar.a(new h(i, str, th));
        }
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public String a() {
        return "decode";
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public void a(com.bytedance.sdk.component.d.c.c cVar) {
        com.bytedance.sdk.component.d.c.f fVarS = cVar.s();
        try {
            Bitmap bitmapA = fVarS.a(cVar).a(this.a);
            if (bitmapA != null) {
                cVar.a(new m(bitmapA, this.b, false));
                fVarS.a(cVar.t()).a(cVar.e(), bitmapA);
            } else {
                a(1002, "decode failed bitmap null", null, cVar);
            }
        } catch (Throwable th) {
            a(1002, "decode failed:" + th.getMessage(), th, cVar);
        }
    }
}
