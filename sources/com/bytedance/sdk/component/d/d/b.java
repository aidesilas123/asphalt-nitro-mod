package com.bytedance.sdk.component.d.d;

import com.bytedance.sdk.component.d.u;

/* JADX INFO: compiled from: BytesVisitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements i {
    private byte[] a;
    private com.bytedance.sdk.component.d.f b;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.d.d.b$1, reason: invalid class name */
    /* JADX INFO: compiled from: BytesVisitor.java */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[u.values().length];
            a = iArr;
            try {
                iArr[u.RAW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[u.AUTO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[u.BITMAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public b(byte[] bArr, com.bytedance.sdk.component.d.f fVar) {
        this.a = bArr;
        this.b = fVar;
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public String a() {
        return "image_type";
    }

    @Override // com.bytedance.sdk.component.d.d.i
    public void a(com.bytedance.sdk.component.d.c.c cVar) {
        i mVar;
        u uVarL = cVar.l();
        cVar.a(this.a.length);
        int i = AnonymousClass1.a[uVarL.ordinal()];
        if (i == 1) {
            byte[] bArr = this.a;
            mVar = new m(bArr, this.b, com.bytedance.sdk.component.d.c.c.a.b(bArr));
        } else if (i != 3) {
            boolean zB = com.bytedance.sdk.component.d.c.c.a.b(this.a);
            mVar = (!zB && com.bytedance.sdk.component.d.c.c.a.a(this.a)) ? new e(this.a, this.b) : new m(this.a, this.b, zB);
        } else {
            mVar = com.bytedance.sdk.component.d.c.c.a.a(this.a) ? new e(this.a, this.b) : this.b == null ? new k() : new h(1001, "not image format", null);
        }
        cVar.a(mVar);
    }
}
