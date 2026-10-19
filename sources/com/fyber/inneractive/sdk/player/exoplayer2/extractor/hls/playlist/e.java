package com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.work.WorkRequest;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.h;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.a;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b;
import com.fyber.inneractive.sdk.player.exoplayer2.i;
import com.fyber.inneractive.sdk.player.exoplayer2.l;
import com.fyber.inneractive.sdk.player.exoplayer2.source.f;
import com.fyber.inneractive.sdk.player.exoplayer2.source.q;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.x;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.y;
import com.fyber.inneractive.sdk.player.exoplayer2.util.t;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements x.a<y<com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.c>> {
    public final Uri a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.d b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2284d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final InterfaceC0181e f2287g;
    public final f.a j;
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.a k;
    public a.C0180a l;
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b m;
    public boolean n;
    public final List<b> h = new ArrayList();
    public final x i = new x("HlsPlaylistTracker:MasterPlaylist");
    public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.d c = new com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.d();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final IdentityHashMap<a.C0180a, a> f2285e = new IdentityHashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Handler f2286f = new Handler();

    public final class a implements x.a<y<com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.c>>, Runnable {
        public final a.C0180a a;
        public final x b = new x("HlsPlaylistTracker:MediaPlaylist");
        public final y<com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.c> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b f2288d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f2289e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f2290f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f2291g;
        public long h;
        public boolean i;
        public IOException j;

        public a(a.C0180a c0180a, long j) {
            this.a = c0180a;
            this.f2291g = j;
            this.c = new y<>(((com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.b) e.this.b).a(4), t.a(e.this.k.a, c0180a.a), 4, e.this.c);
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.a
        public int a(x.c cVar, long j, long j2, IOException iOException) {
            y yVar = (y) cVar;
            boolean z = iOException instanceof l;
            e.this.j.a(yVar.a, 4, j, j2, yVar.f2601f, iOException, z);
            if (z) {
                return 3;
            }
            boolean z2 = true;
            if (com.fyber.inneractive.sdk.player.exoplayer2.source.chunk.b.a(iOException)) {
                a();
                e eVar = e.this;
                if (eVar.l != this.a || e.a(eVar)) {
                    z2 = false;
                }
            }
            return z2 ? 0 : 2;
        }

        public final void a() {
            this.h = SystemClock.elapsedRealtime() + ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
            e eVar = e.this;
            a.C0180a c0180a = this.a;
            int size = eVar.h.size();
            for (int i = 0; i < size; i++) {
                eVar.h.get(i).a(c0180a, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:72:0x0177  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b r28) {
            /*
                Method dump skipped, instruction units count: 395
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e.a.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.a
        public void a(x.c cVar, long j, long j2) {
            y yVar = (y) cVar;
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.c cVar2 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.c) yVar.f2599d;
            if (!(cVar2 instanceof com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b)) {
                this.j = new l("Loaded playlist has unexpected type.");
            } else {
                a((com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b) cVar2);
                e.this.j.b(yVar.a, 4, j, j2, yVar.f2601f);
            }
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.a
        public void a(x.c cVar, long j, long j2, boolean z) {
            y yVar = (y) cVar;
            e.this.j.a(yVar.a, 4, j, j2, yVar.f2601f);
        }

        public void b() {
            this.h = 0L;
            if (this.i || this.b.b()) {
                return;
            }
            this.b.a(this.c, this, e.this.f2284d);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.i = false;
            b();
        }
    }

    public interface b {
        void a(a.C0180a c0180a, long j);

        void c();
    }

    public static final class c extends IOException {
        public c(String str) {
        }
    }

    public static final class d extends IOException {
        public d(String str) {
        }
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.e$e, reason: collision with other inner class name */
    public interface InterfaceC0181e {
    }

    public e(Uri uri, com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.d dVar, f.a aVar, int i, InterfaceC0181e interfaceC0181e) {
        this.a = uri;
        this.b = dVar;
        this.j = aVar;
        this.f2284d = i;
        this.f2287g = interfaceC0181e;
    }

    public static b.a a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b bVar, com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b bVar2) {
        int i = bVar2.f2275g - bVar.f2275g;
        List<b.a> list = bVar.m;
        if (i < list.size()) {
            return list.get(i);
        }
        return null;
    }

    public static boolean a(e eVar) {
        List<a.C0180a> list = eVar.k.b;
        int size = list.size();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            a aVar = eVar.f2285e.get(list.get(i));
            if (jElapsedRealtime > aVar.h) {
                eVar.l = aVar.a;
                aVar.b();
                return true;
            }
        }
        return false;
    }

    public static boolean a(e eVar, a.C0180a c0180a, com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b bVar) {
        q qVar;
        long j;
        if (c0180a == eVar.l) {
            if (eVar.m == null) {
                eVar.n = !bVar.j;
            }
            eVar.m = bVar;
            h hVar = (h) eVar.f2287g;
            hVar.getClass();
            long j2 = bVar.c;
            if (hVar.f2259d.n) {
                long j3 = bVar.j ? bVar.f2272d + bVar.o : -9223372036854775807L;
                List<b.a> list = bVar.m;
                if (j2 != C.TIME_UNSET) {
                    j = j2;
                    qVar = new q(j3, bVar.o, bVar.f2272d, j, true, !bVar.j);
                } else if (list.isEmpty()) {
                    j = 0;
                    qVar = new q(j3, bVar.o, bVar.f2272d, j, true, !bVar.j);
                } else {
                    j2 = list.get(Math.max(0, list.size() - 3)).f2276d;
                    j = j2;
                    qVar = new q(j3, bVar.o, bVar.f2272d, j, true, !bVar.j);
                }
            } else {
                long j4 = j2 == C.TIME_UNSET ? 0L : j2;
                long j5 = bVar.f2272d;
                long j6 = bVar.o;
                qVar = new q(j5 + j6, j6, j5, j4, true, false);
            }
            hVar.f2260e.a(qVar, new com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.e(hVar.f2259d.k, bVar));
        }
        int size = eVar.h.size();
        for (int i = 0; i < size; i++) {
            eVar.h.get(i).c();
        }
        return c0180a == eVar.l && !bVar.j;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.a
    public int a(x.c cVar, long j, long j2, IOException iOException) {
        y yVar = (y) cVar;
        boolean z = iOException instanceof l;
        this.j.a(yVar.a, 4, j, j2, yVar.f2601f, iOException, z);
        return z ? 3 : 0;
    }

    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b a(a.C0180a c0180a) {
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b bVar;
        a aVar = this.f2285e.get(c0180a);
        aVar.getClass();
        aVar.f2291g = SystemClock.elapsedRealtime();
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b bVar2 = aVar.f2288d;
        if (bVar2 != null && this.k.b.contains(c0180a) && (((bVar = this.m) == null || !bVar.j) && this.f2285e.get(this.l).f2291g - SystemClock.elapsedRealtime() > 15000)) {
            this.l = c0180a;
            this.f2285e.get(c0180a).b();
        }
        return bVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.a
    public void a(x.c cVar, long j, long j2) {
        y yVar;
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.a aVar;
        y yVar2 = (y) cVar;
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.c cVar2 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.c) yVar2.f2599d;
        boolean z = cVar2 instanceof com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b;
        if (z) {
            yVar = yVar2;
            List listSingletonList = Collections.singletonList(new a.C0180a(cVar2.a, new i("0", MimeTypes.APPLICATION_M3U8, null, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, null, null)));
            List listEmptyList = Collections.emptyList();
            aVar = new com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.a(null, listSingletonList, listEmptyList, listEmptyList, null, null);
        } else {
            yVar = yVar2;
            aVar = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.a) cVar2;
        }
        this.k = aVar;
        this.l = aVar.b.get(0);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(aVar.b);
        arrayList.addAll(aVar.c);
        arrayList.addAll(aVar.f2269d);
        int size = arrayList.size();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            a.C0180a c0180a = (a.C0180a) arrayList.get(i);
            this.f2285e.put(c0180a, new a(c0180a, jElapsedRealtime));
        }
        a aVar2 = this.f2285e.get(this.l);
        if (z) {
            aVar2.a((com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b) cVar2);
        } else {
            aVar2.b();
        }
        y yVar3 = yVar;
        this.j.b(yVar3.a, 4, j, j2, yVar3.f2601f);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.a
    public void a(x.c cVar, long j, long j2, boolean z) {
        y yVar = (y) cVar;
        this.j.a(yVar.a, 4, j, j2, yVar.f2601f);
    }

    public boolean b(a.C0180a c0180a) {
        int i;
        a aVar = this.f2285e.get(c0180a);
        if (aVar.f2288d != null) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long jMax = Math.max(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, com.fyber.inneractive.sdk.player.exoplayer2.b.b(aVar.f2288d.o));
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.b bVar = aVar.f2288d;
            if (bVar.j || (i = bVar.b) == 2 || i == 1 || aVar.f2289e + jMax > jElapsedRealtime) {
                return true;
            }
        }
        return false;
    }
}
