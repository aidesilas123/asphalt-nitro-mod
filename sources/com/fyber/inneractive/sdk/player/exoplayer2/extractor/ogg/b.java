package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg;

import com.applovin.exoplayer2.common.base.Ascii;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.h;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends h {
    public com.fyber.inneractive.sdk.player.exoplayer2.util.e n;
    public a o;

    public class a implements f, m {
        public long[] a;
        public long[] b;
        public long c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f2361d = -1;

        public a() {
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
        public long a(long j) {
            return this.c + this.b[u.b(this.a, (((long) b.this.i) * j) / 1000000, true, true)];
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.f
        public long a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar) throws InterruptedException, IOException {
            long j = this.f2361d;
            if (j < 0) {
                return -1L;
            }
            long j2 = -(j + 2);
            this.f2361d = -1L;
            return j2;
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
        public boolean a() {
            return true;
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.f
        public m b() {
            return this;
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
        public long c() {
            com.fyber.inneractive.sdk.player.exoplayer2.util.e eVar = b.this.n;
            return (eVar.f2602d * 1000000) / ((long) eVar.a);
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.f
        public long c(long j) {
            long j2 = (((long) b.this.i) * j) / 1000000;
            this.f2361d = this.a[u.b(this.a, j2, true, true)];
            return j2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.h
    public long a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        int i;
        int i2;
        int i3;
        byte[] bArr = kVar.a;
        int i4 = -1;
        if (!(bArr[0] == -1)) {
            return -1L;
        }
        int i5 = (bArr[2] & 255) >> 4;
        switch (i5) {
            case 1:
                i4 = PsExtractor.AUDIO_STREAM;
                return i4;
            case 2:
            case 3:
            case 4:
            case 5:
                i = i5 - 2;
                i2 = 576;
                i4 = i2 << i;
                return i4;
            case 6:
            case 7:
                kVar.f(4);
                long j = kVar.a[kVar.b];
                int i6 = 7;
                while (true) {
                    if (i6 >= 0) {
                        int i7 = 1 << i6;
                        if ((((long) i7) & j) != 0) {
                            i6--;
                        } else if (i6 < 6) {
                            j &= (long) (i7 - 1);
                            i3 = 7 - i6;
                        } else if (i6 == 7) {
                            i3 = 1;
                        }
                    }
                }
                i3 = 0;
                if (i3 == 0) {
                    throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j);
                }
                for (int i8 = 1; i8 < i3; i8++) {
                    byte b = kVar.a[kVar.b + i8];
                    if ((b & 192) != 128) {
                        throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j);
                    }
                    j = (j << 6) | ((long) (b & 63));
                }
                kVar.b += i3;
                int iL = i5 == 6 ? kVar.l() : kVar.q();
                kVar.e(0);
                i4 = iL + 1;
                return i4;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                i = i5 - 8;
                i2 = 256;
                i4 = i2 << i;
                return i4;
            default:
                return i4;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.h
    public void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = null;
            this.o = null;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.h
    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, long j, h.a aVar) throws InterruptedException, IOException {
        byte[] bArr = kVar.a;
        if (this.n == null) {
            this.n = new com.fyber.inneractive.sdk.player.exoplayer2.util.e(bArr, 17);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 9, kVar.c);
            bArrCopyOfRange[4] = -128;
            List listSingletonList = Collections.singletonList(bArrCopyOfRange);
            com.fyber.inneractive.sdk.player.exoplayer2.util.e eVar = this.n;
            int i = eVar.c;
            int i2 = eVar.a;
            aVar.a = com.fyber.inneractive.sdk.player.exoplayer2.i.a((String) null, MimeTypes.AUDIO_FLAC, (String) null, -1, i * i2, eVar.b, i2, -1, (List<byte[]>) listSingletonList, (com.fyber.inneractive.sdk.player.exoplayer2.drm.a) null, 0, (String) null);
        } else {
            if ((bArr[0] & Ascii.DEL) == 3) {
                a aVar2 = new a();
                this.o = aVar2;
                kVar.f(1);
                int iN = kVar.n() / 18;
                aVar2.a = new long[iN];
                aVar2.b = new long[iN];
                for (int i3 = 0; i3 < iN; i3++) {
                    aVar2.a[i3] = kVar.i();
                    aVar2.b[i3] = kVar.i();
                    kVar.f(2);
                }
            } else if (bArr[0] == -1) {
                a aVar3 = this.o;
                if (aVar3 != null) {
                    aVar3.c = j;
                    aVar.b = aVar3;
                }
                return false;
            }
        }
        return true;
    }
}
