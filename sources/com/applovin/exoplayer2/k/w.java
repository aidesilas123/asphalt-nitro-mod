package com.applovin.exoplayer2.k;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ah;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class w {
    public static final b aaV;
    public static final b aaW;
    public static final b aaX;
    public static final b aaY;
    private final ExecutorService aaZ;

    @Nullable
    private c<? extends d> aba;

    @Nullable
    private IOException abb;

    public interface a<T extends d> {
        b a(T t, long j, long j2, IOException iOException, int i);

        void a(T t, long j, long j2);

        void a(T t, long j, long j2, boolean z);
    }

    public static final class b {
        private final long abc;
        private final int bs;

        private b(int i, long j) {
            this.bs = i;
            this.abc = j;
        }

        public boolean oC() {
            int i = this.bs;
            return i == 0 || i == 1;
        }
    }

    @SuppressLint({"HandlerLeak"})
    private final class c<T extends d> extends Handler implements Runnable {
        public final int abd;
        private final T abe;

        @Nullable
        private a<T> abf;

        @Nullable
        private IOException abg;

        @Nullable
        private Thread abh;
        private boolean abi;
        private volatile boolean cw;
        private final long sC;
        private int sE;

        public c(Looper looper, T t, a<T> aVar, int i, long j) {
            super(looper);
            this.abe = t;
            this.abf = aVar;
            this.abd = i;
            this.sC = j;
        }

        private void finish() {
            w.this.aba = null;
        }

        private void oD() {
            this.abg = null;
            w.this.aaZ.execute((Runnable) com.applovin.exoplayer2.l.a.checkNotNull(w.this.aba));
        }

        private long oE() {
            return Math.min((this.sE - 1) * 1000, 5000);
        }

        public void ar(boolean z) {
            this.cw = z;
            this.abg = null;
            if (hasMessages(0)) {
                this.abi = true;
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    this.abi = true;
                    this.abe.lq();
                    Thread thread = this.abh;
                    if (thread != null) {
                        thread.interrupt();
                    }
                }
            }
            if (z) {
                finish();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                ((a) com.applovin.exoplayer2.l.a.checkNotNull(this.abf)).a(this.abe, jElapsedRealtime, jElapsedRealtime - this.sC, true);
                this.abf = null;
            }
        }

        public void bn(long j) {
            com.applovin.exoplayer2.l.a.checkState(w.this.aba == null);
            w.this.aba = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                oD();
            }
        }

        public void dK(int i) throws IOException {
            IOException iOException = this.abg;
            if (iOException != null && this.sE > i) {
                throw iOException;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.cw) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                oD();
                return;
            }
            if (i == 3) {
                throw ((Error) message.obj);
            }
            finish();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = jElapsedRealtime - this.sC;
            a aVar = (a) com.applovin.exoplayer2.l.a.checkNotNull(this.abf);
            if (this.abi) {
                aVar.a(this.abe, jElapsedRealtime, j, false);
                return;
            }
            int i2 = message.what;
            if (i2 == 1) {
                try {
                    aVar.a(this.abe, jElapsedRealtime, j);
                    return;
                } catch (RuntimeException e2) {
                    com.applovin.exoplayer2.l.q.c("LoadTask", "Unexpected exception handling load completed", e2);
                    w.this.abb = new g(e2);
                    return;
                }
            }
            if (i2 != 2) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.abg = iOException;
            int i3 = this.sE + 1;
            this.sE = i3;
            b bVarA = aVar.a(this.abe, jElapsedRealtime, j, iOException, i3);
            if (bVarA.bs == 3) {
                w.this.abb = this.abg;
            } else if (bVarA.bs != 2) {
                if (bVarA.bs == 1) {
                    this.sE = 1;
                }
                bn(bVarA.abc != C.TIME_UNSET ? bVarA.abc : oE());
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            try {
                synchronized (this) {
                    z = !this.abi;
                    this.abh = Thread.currentThread();
                }
                if (z) {
                    ah.bg("load:" + this.abe.getClass().getSimpleName());
                    try {
                        this.abe.lr();
                        ah.pV();
                    } catch (Throwable th) {
                        ah.pV();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.abh = null;
                    Thread.interrupted();
                }
                if (this.cw) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (IOException e2) {
                if (this.cw) {
                    return;
                }
                obtainMessage(2, e2).sendToTarget();
            } catch (Error e3) {
                if (!this.cw) {
                    com.applovin.exoplayer2.l.q.c("LoadTask", "Unexpected error loading stream", e3);
                    obtainMessage(3, e3).sendToTarget();
                }
                throw e3;
            } catch (Exception e4) {
                if (this.cw) {
                    return;
                }
                com.applovin.exoplayer2.l.q.c("LoadTask", "Unexpected exception loading stream", e4);
                obtainMessage(2, new g(e4)).sendToTarget();
            } catch (OutOfMemoryError e5) {
                if (this.cw) {
                    return;
                }
                com.applovin.exoplayer2.l.q.c("LoadTask", "OutOfMemory error loading stream", e5);
                obtainMessage(2, new g(e5)).sendToTarget();
            }
        }
    }

    public interface d {
        void lq();

        void lr() throws IOException;
    }

    public interface e {
        void ld();
    }

    private static final class f implements Runnable {
        private final e abk;

        public f(e eVar) {
            this.abk = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.abk.ld();
        }
    }

    public static final class g extends IOException {
        public g(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    static {
        long j = C.TIME_UNSET;
        aaV = c(false, C.TIME_UNSET);
        aaW = c(true, C.TIME_UNSET);
        aaX = new b(2, j);
        aaY = new b(3, j);
    }

    public w(String str) {
        this.aaZ = ai.bi("ExoPlayer:Loader:" + str);
    }

    public static b c(boolean z, long j) {
        return new b(z ? 1 : 0, j);
    }

    public <T extends d> long a(T t, a<T> aVar, int i) {
        Looper looper = (Looper) com.applovin.exoplayer2.l.a.N(Looper.myLooper());
        this.abb = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new c(looper, t, aVar, i, jElapsedRealtime).bn(0L);
        return jElapsedRealtime;
    }

    public void a(@Nullable e eVar) {
        c<? extends d> cVar = this.aba;
        if (cVar != null) {
            cVar.ar(true);
        }
        if (eVar != null) {
            this.aaZ.execute(new f(eVar));
        }
        this.aaZ.shutdown();
    }

    public void dK(int i) throws IOException {
        IOException iOException = this.abb;
        if (iOException != null) {
            throw iOException;
        }
        c<? extends d> cVar = this.aba;
        if (cVar != null) {
            if (i == Integer.MIN_VALUE) {
                i = cVar.abd;
            }
            cVar.dK(i);
        }
    }

    public boolean kO() {
        return this.aba != null;
    }

    public void oA() {
        this.abb = null;
    }

    public void oB() {
        ((c) com.applovin.exoplayer2.l.a.N(this.aba)).ar(false);
    }

    public boolean oz() {
        return this.abb != null;
    }
}
