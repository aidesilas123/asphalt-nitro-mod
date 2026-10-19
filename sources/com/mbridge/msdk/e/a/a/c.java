package com.mbridge.msdk.e.a.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: compiled from: ByteArrayPool.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    protected static final Comparator<byte[]> a = new Comparator<byte[]>() { // from class: com.mbridge.msdk.e.a.a.c.1
        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };
    private final List<byte[]> b = new ArrayList();
    private final List<byte[]> c = new ArrayList(64);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6940d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f6941e;

    public c(int i) {
        this.f6941e = i;
    }

    private synchronized void a() {
        while (this.f6940d > this.f6941e) {
            byte[] bArrRemove = this.b.remove(0);
            this.c.remove(bArrRemove);
            this.f6940d -= bArrRemove.length;
        }
    }

    public final synchronized void a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f6941e) {
                this.b.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.c, bArr, a);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.c.add(iBinarySearch, bArr);
                this.f6940d += bArr.length;
                a();
            }
        }
    }

    public final synchronized byte[] a(int i) {
        for (int i2 = 0; i2 < this.c.size(); i2++) {
            byte[] bArr = this.c.get(i2);
            if (bArr.length >= i) {
                this.f6940d -= bArr.length;
                this.c.remove(i2);
                this.b.remove(bArr);
                return bArr;
            }
        }
        return new byte[i];
    }
}
