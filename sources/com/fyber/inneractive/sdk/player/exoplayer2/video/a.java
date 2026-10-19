package com.fyber.inneractive.sdk.player.exoplayer2.video;

import com.fyber.inneractive.sdk.player.exoplayer2.l;
import com.fyber.inneractive.sdk.player.exoplayer2.util.i;
import com.fyber.inneractive.sdk.player.exoplayer2.util.k;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public final List<byte[]> a;
    public final int b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2622d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f2623e;

    public a(List<byte[]> list, int i, int i2, int i3, float f2) {
        this.a = list;
        this.b = i;
        this.c = i2;
        this.f2622d = i3;
        this.f2623e = f2;
    }

    public static byte[] a(k kVar) {
        int iQ = kVar.q();
        int i = kVar.b;
        kVar.f(iQ);
        byte[] bArr = kVar.a;
        byte[] bArr2 = com.fyber.inneractive.sdk.player.exoplayer2.util.c.a;
        byte[] bArr3 = new byte[bArr2.length + iQ];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, iQ);
        return bArr3;
    }

    public static a b(k kVar) throws l {
        int i;
        int i2;
        float f2;
        try {
            kVar.f(4);
            int iL = (kVar.l() & 3) + 1;
            if (iL == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iL2 = kVar.l() & 31;
            for (int i3 = 0; i3 < iL2; i3++) {
                arrayList.add(a(kVar));
            }
            int iL3 = kVar.l();
            for (int i4 = 0; i4 < iL3; i4++) {
                arrayList.add(a(kVar));
            }
            if (iL2 > 0) {
                i.b bVarB = i.b((byte[]) arrayList.get(0), iL, ((byte[]) arrayList.get(0)).length);
                int i5 = bVarB.b;
                int i6 = bVarB.c;
                f2 = bVarB.f2604d;
                i = i5;
                i2 = i6;
            } else {
                i = -1;
                i2 = -1;
                f2 = 1.0f;
            }
            return new a(arrayList, iL, i, i2, f2);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new l("Error parsing AVC config", e2);
        }
    }
}
