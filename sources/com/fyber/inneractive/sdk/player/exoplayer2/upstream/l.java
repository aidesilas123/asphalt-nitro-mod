package com.fyber.inneractive.sdk.player.exoplayer2.upstream;

import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import com.fyber.inneractive.sdk.player.exoplayer2.util.p;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements a0<Object> {
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.p a;
    public int b;
    public long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2580d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f2581e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2582f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f2583g;

    public l(Handler handler, d dVar) {
        this(null, null, 2000);
    }

    public l(Handler handler, d dVar, int i) {
        this.a = new com.fyber.inneractive.sdk.player.exoplayer2.util.p(i);
        this.f2583g = -1L;
    }

    public synchronized void a(Object obj) {
        p.c cVar;
        float f2;
        int i = 0;
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(this.b > 0);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i2 = (int) (jElapsedRealtime - this.c);
        long j = i2;
        this.f2581e += j;
        long j2 = this.f2582f;
        long j3 = this.f2580d;
        this.f2582f = j2 + j3;
        if (i2 > 0) {
            float f3 = (8000 * j3) / j;
            com.fyber.inneractive.sdk.player.exoplayer2.util.p pVar = this.a;
            int iSqrt = (int) Math.sqrt(j3);
            if (pVar.f2610d != 1) {
                Collections.sort(pVar.b, com.fyber.inneractive.sdk.player.exoplayer2.util.p.h);
                pVar.f2610d = 1;
            }
            int i3 = pVar.f2613g;
            if (i3 > 0) {
                p.c[] cVarArr = pVar.c;
                int i4 = i3 - 1;
                pVar.f2613g = i4;
                cVar = cVarArr[i4];
            } else {
                cVar = new p.c();
            }
            int i5 = pVar.f2611e;
            pVar.f2611e = i5 + 1;
            cVar.a = i5;
            cVar.b = iSqrt;
            cVar.c = f3;
            pVar.b.add(cVar);
            pVar.f2612f += iSqrt;
            while (true) {
                int i6 = pVar.f2612f;
                int i7 = pVar.a;
                if (i6 <= i7) {
                    break;
                }
                int i8 = i6 - i7;
                p.c cVar2 = pVar.b.get(0);
                int i9 = cVar2.b;
                if (i9 <= i8) {
                    pVar.f2612f -= i9;
                    pVar.b.remove(0);
                    int i10 = pVar.f2613g;
                    if (i10 < 5) {
                        p.c[] cVarArr2 = pVar.c;
                        pVar.f2613g = i10 + 1;
                        cVarArr2[i10] = cVar2;
                    }
                } else {
                    cVar2.b = i9 - i8;
                    pVar.f2612f -= i8;
                }
            }
            if (this.f2581e >= AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS || this.f2582f >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                com.fyber.inneractive.sdk.player.exoplayer2.util.p pVar2 = this.a;
                if (pVar2.f2610d != 0) {
                    Collections.sort(pVar2.b, com.fyber.inneractive.sdk.player.exoplayer2.util.p.i);
                    pVar2.f2610d = 0;
                }
                float f4 = 0.5f * pVar2.f2612f;
                int i11 = 0;
                while (true) {
                    if (i < pVar2.b.size()) {
                        p.c cVar3 = pVar2.b.get(i);
                        i11 += cVar3.b;
                        if (i11 >= f4) {
                            f2 = cVar3.c;
                            break;
                        }
                        i++;
                    } else if (pVar2.b.isEmpty()) {
                        f2 = Float.NaN;
                    } else {
                        ArrayList<p.c> arrayList = pVar2.b;
                        f2 = arrayList.get(arrayList.size() - 1).c;
                    }
                }
                this.f2583g = Float.isNaN(f2) ? -1L : (long) f2;
            }
        }
        int i12 = this.b - 1;
        this.b = i12;
        if (i12 > 0) {
            this.c = jElapsedRealtime;
        }
        this.f2580d = 0L;
    }

    public synchronized void a(Object obj, j jVar) {
        if (this.b == 0) {
            this.c = SystemClock.elapsedRealtime();
        }
        this.b++;
    }
}
