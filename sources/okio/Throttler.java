package okio;

import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: compiled from: Throttler.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class Throttler {
    private long a;
    private long b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f10858d;

    public Throttler() {
        this(System.nanoTime());
    }

    public Throttler(long j) {
        this.a = j;
        this.c = PlaybackStateCompat.ACTION_PLAY_FROM_URI;
        this.f10858d = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
    }

    public static /* synthetic */ void bytesPerSecond$default(Throttler throttler, long j, long j2, long j3, int i, Object obj) {
        if ((i & 2) != 0) {
            j2 = throttler.c;
        }
        long j4 = j2;
        if ((i & 4) != 0) {
            j3 = throttler.f10858d;
        }
        throttler.a(j, j4, j3);
    }

    public final void a(long j, long j2, long j3) {
        synchronized (this) {
            if (!(j >= 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(j2 > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(j3 >= j2)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            this.b = j;
            this.c = j2;
            this.f10858d = j3;
            notifyAll();
            kotlin.v vVar = kotlin.v.a;
        }
    }
}
