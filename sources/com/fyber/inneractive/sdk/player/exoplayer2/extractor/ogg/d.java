package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggPageHeader;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    public final e a = new e();
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k b = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);
    public int c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2364e;

    public final int a(int i) {
        int i2;
        int i3 = 0;
        this.f2363d = 0;
        do {
            int i4 = this.f2363d;
            int i5 = i + i4;
            e eVar = this.a;
            if (i5 >= eVar.c) {
                break;
            }
            int[] iArr = eVar.f2367f;
            this.f2363d = i4 + 1;
            i2 = iArr[i5];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }

    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar) throws InterruptedException, IOException {
        int i;
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(gVar != null);
        if (this.f2364e) {
            this.f2364e = false;
            this.b.r();
        }
        while (!this.f2364e) {
            if (this.c < 0) {
                if (!this.a.a(gVar, true)) {
                    return false;
                }
                e eVar = this.a;
                int iA = eVar.f2365d;
                if ((eVar.a & 1) == 1 && this.b.c == 0) {
                    iA += a(0);
                    i = this.f2363d + 0;
                } else {
                    i = 0;
                }
                ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).c(iA);
                this.c = i;
            }
            int iA2 = a(this.c);
            int i2 = this.c + this.f2363d;
            if (iA2 > 0) {
                int iB = this.b.b();
                com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar = this.b;
                int i3 = kVar.c + iA2;
                if (iB < i3) {
                    kVar.a = Arrays.copyOf(kVar.a, i3);
                }
                com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar2 = this.b;
                ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(kVar2.a, kVar2.c, iA2, false);
                com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar3 = this.b;
                kVar3.d(kVar3.c + iA2);
                this.f2364e = this.a.f2367f[i2 + (-1)] != 255;
            }
            if (i2 == this.a.c) {
                i2 = -1;
            }
            this.c = i2;
        }
        return true;
    }
}
