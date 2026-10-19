package com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.n;
import com.fyber.inneractive.sdk.player.exoplayer2.util.r;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements com.fyber.inneractive.sdk.player.exoplayer2.extractor.f {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Pattern f2265g = Pattern.compile("LOCAL:([^,]+)");
    public static final Pattern h = Pattern.compile("MPEGTS:(\\d+)");
    public final String a;
    public final r b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.h f2266d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2268f;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k c = new com.fyber.inneractive.sdk.player.exoplayer2.util.k();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f2267e = new byte[1024];

    public l(String str, r rVar) {
        this.a = str;
        this.b = rVar;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public int a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l lVar) throws InterruptedException, IOException {
        Matcher matcher;
        String strD;
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
        int i = (int) bVar.b;
        int i2 = this.f2268f;
        byte[] bArr = this.f2267e;
        if (i2 == bArr.length) {
            this.f2267e = Arrays.copyOf(bArr, ((i != -1 ? i : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f2267e;
        int i3 = this.f2268f;
        int iA = bVar.a(bArr2, i3, bArr2.length - i3);
        if (iA != -1) {
            int i4 = this.f2268f + iA;
            this.f2268f = i4;
            if (i == -1 || i4 != i) {
                return 0;
            }
        }
        com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(this.f2267e);
        try {
            Pattern pattern = com.fyber.inneractive.sdk.player.exoplayer2.text.webvtt.b.a;
            String strD2 = kVar.d();
            if (strD2 == null || !com.fyber.inneractive.sdk.player.exoplayer2.text.webvtt.b.b.matcher(strD2).matches()) {
                throw new com.fyber.inneractive.sdk.player.exoplayer2.text.a("Expected WEBVTT. Got " + strD2);
            }
            long jA = 0;
            long j = 0;
            while (true) {
                String strD3 = kVar.d();
                if (TextUtils.isEmpty(strD3)) {
                    while (true) {
                        String strD4 = kVar.d();
                        if (strD4 == null) {
                            matcher = null;
                            break;
                        }
                        if (com.fyber.inneractive.sdk.player.exoplayer2.text.webvtt.b.a.matcher(strD4).matches()) {
                            do {
                                strD = kVar.d();
                                if (strD != null) {
                                }
                            } while (!strD.isEmpty());
                        } else {
                            matcher = com.fyber.inneractive.sdk.player.exoplayer2.text.webvtt.a.a.matcher(strD4);
                            if (matcher.matches()) {
                                break;
                            }
                        }
                    }
                    if (matcher == null) {
                        a(0L);
                    } else {
                        long jA2 = com.fyber.inneractive.sdk.player.exoplayer2.text.webvtt.b.a(matcher.group(1));
                        long jA3 = this.b.a((j + jA2) - jA);
                        n nVarA = a(jA3 - jA2);
                        this.c.a(this.f2267e, this.f2268f);
                        nVarA.a(this.c, this.f2268f);
                        nVarA.a(jA3, 1, this.f2268f, 0, null);
                    }
                    return -1;
                }
                if (strD3.startsWith("X-TIMESTAMP-MAP")) {
                    Matcher matcher2 = f2265g.matcher(strD3);
                    if (!matcher2.find()) {
                        throw new com.fyber.inneractive.sdk.player.exoplayer2.l("X-TIMESTAMP-MAP doesn't contain local timestamp: " + strD3);
                    }
                    Matcher matcher3 = h.matcher(strD3);
                    if (!matcher3.find()) {
                        throw new com.fyber.inneractive.sdk.player.exoplayer2.l("X-TIMESTAMP-MAP doesn't contain media timestamp: " + strD3);
                    }
                    jA = com.fyber.inneractive.sdk.player.exoplayer2.text.webvtt.b.a(matcher2.group(1));
                    j = (Long.parseLong(matcher3.group(1)) * 1000000) / 90000;
                }
            }
        } catch (com.fyber.inneractive.sdk.player.exoplayer2.text.a e2) {
            throw new com.fyber.inneractive.sdk.player.exoplayer2.l(e2);
        }
    }

    public final n a(long j) {
        n nVarA = this.f2266d.a(0, 3);
        nVarA.a(com.fyber.inneractive.sdk.player.exoplayer2.i.a(null, MimeTypes.TEXT_VTT, null, -1, 0, this.a, -1, null, j, Collections.emptyList()));
        this.f2266d.c();
        return nVarA;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(long j, long j2) {
        throw new IllegalStateException();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar) {
        this.f2266d = hVar;
        hVar.a(new m.a(C.TIME_UNSET));
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar) throws InterruptedException, IOException {
        throw new IllegalStateException();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void b() {
    }
}
