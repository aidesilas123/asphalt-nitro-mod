package com.bytedance.sdk.component.d.c.a.b;

import com.bytedance.sdk.component.d.r;

/* JADX INFO: compiled from: LruCountRawCache.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements r {
    private int a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.d.c.a.c<String, byte[]> f951d;

    public c(int i, int i2) {
        this.c = i;
        this.a = i2;
        this.f951d = new com.bytedance.sdk.component.d.c.a.c<String, byte[]>(i) { // from class: com.bytedance.sdk.component.d.c.a.b.c.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bytedance.sdk.component.d.c.a.c
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int b(String str, byte[] bArr) {
                if (bArr == null) {
                    return 0;
                }
                return bArr.length;
            }
        };
    }

    @Override // com.bytedance.sdk.component.d.a
    public boolean a(String str, byte[] bArr) {
        if (str == null || bArr == null) {
            return false;
        }
        this.f951d.a(str, bArr);
        return true;
    }

    @Override // com.bytedance.sdk.component.d.a
    public byte[] a(String str) {
        return this.f951d.a(str);
    }

    @Override // com.bytedance.sdk.component.d.a
    public boolean b(String str) {
        return this.f951d.a(str) != null;
    }
}
