package com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface a {

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a$a, reason: collision with other inner class name */
    public static class C0191a extends IOException {
        public C0191a(IOException iOException) {
            super(iOException);
        }

        public C0191a(String str) {
            super(str);
        }
    }

    public interface b {
        void a(a aVar, g gVar);

        void a(a aVar, g gVar, g gVar2);

        void b(a aVar, g gVar);
    }

    long a();

    long a(String str);

    File a(String str, long j, long j2) throws C0191a;

    void a(g gVar) throws C0191a;

    void a(File file) throws C0191a;

    void a(String str, long j) throws C0191a;

    g b(String str, long j) throws C0191a, InterruptedException;

    void b(g gVar);

    g c(String str, long j) throws C0191a;
}
