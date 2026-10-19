package com.fyber.inneractive.sdk.player.exoplayer2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p {
    public static final p a = new a();

    public class a extends p {
        @Override // com.fyber.inneractive.sdk.player.exoplayer2.p
        public int a() {
            return 0;
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.p
        public int a(Object obj) {
            return -1;
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.p
        public b a(int i, b bVar, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.p
        public c a(int i, c cVar, boolean z, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.fyber.inneractive.sdk.player.exoplayer2.p
        public int b() {
            return 0;
        }
    }

    public static final class b {
        public Object a;
        public Object b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f2497d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f2498e;
    }

    public static final class c {
        public Object a;
        public boolean b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2499d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f2500e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f2501f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f2502g;
    }

    public abstract int a();

    public abstract int a(Object obj);

    public abstract b a(int i, b bVar, boolean z);

    public final c a(int i, c cVar) {
        return a(i, cVar, false, 0L);
    }

    public abstract c a(int i, c cVar, boolean z, long j);

    public abstract int b();

    public final boolean c() {
        return b() == 0;
    }
}
