package com.fyber.inneractive.sdk.player.exoplayer2.extractor.wav;

import android.util.Log;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.g;
import com.fyber.inneractive.sdk.player.exoplayer2.l;
import com.fyber.inneractive.sdk.player.exoplayer2.util.k;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    public static final class a {
        public final int a;
        public final long b;

        public a(int i, long j) {
            this.a = i;
            this.b = j;
        }

        public static a a(g gVar, k kVar) throws InterruptedException, IOException {
            ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).a(kVar.a, 0, 8, false);
            kVar.e(0);
            return new a(kVar.c(), kVar.f());
        }
    }

    public static b a(g gVar) throws InterruptedException, IOException {
        gVar.getClass();
        k kVar = new k(16);
        if (a.a(gVar, kVar).a != u.a("RIFF")) {
            return null;
        }
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.b bVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar;
        bVar.a(kVar.a, 0, 4, false);
        kVar.e(0);
        int iC = kVar.c();
        if (iC != u.a("WAVE")) {
            Log.e("WavHeaderReader", "Unsupported RIFF format: " + iC);
            return null;
        }
        a aVarA = a.a(gVar, kVar);
        while (aVarA.a != u.a("fmt ")) {
            bVar.a((int) aVarA.b, false);
            aVarA = a.a(gVar, kVar);
        }
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(aVarA.b >= 16);
        bVar.a(kVar.a, 0, 16, false);
        kVar.e(0);
        int iH = kVar.h();
        int iH2 = kVar.h();
        int iG = kVar.g();
        int iG2 = kVar.g();
        int iH3 = kVar.h();
        int iH4 = kVar.h();
        int i = (iH2 * iH4) / 8;
        if (iH3 != i) {
            throw new l("Expected block alignment: " + i + "; got: " + iH3);
        }
        int iA = u.a(iH4);
        if (iA == 0) {
            Log.e("WavHeaderReader", "Unsupported WAV bit depth: " + iH4);
            return null;
        }
        if (iH == 1 || iH == 65534) {
            bVar.a(((int) aVarA.b) - 16, false);
            return new b(iH2, iG, iG2, iH3, iH4, iA);
        }
        Log.e("WavHeaderReader", "Unsupported WAV format type: " + iH);
        return null;
    }
}
