package com.applovin.exoplayer2.m;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(17)
public final class d extends Surface {
    private static int ado;
    private static boolean adp;
    public final boolean Hu;
    private final a adq;
    private boolean adr;

    private static class a extends HandlerThread implements Handler.Callback {
        private com.applovin.exoplayer2.l.j ads;

        @Nullable
        private Error adt;

        @Nullable
        private RuntimeException adu;

        @Nullable
        private d adv;
        private Handler jS;

        public a() {
            super("ExoPlayer:DummySurface");
        }

        private void bt() {
            com.applovin.exoplayer2.l.a.checkNotNull(this.ads);
            this.ads.release();
        }

        private void fQ(int i) {
            com.applovin.exoplayer2.l.a.checkNotNull(this.ads);
            this.ads.fm(i);
            this.adv = new d(this, this.ads.oR(), i != 0);
        }

        public d fP(int i) {
            boolean z;
            start();
            this.jS = new Handler(getLooper(), this);
            this.ads = new com.applovin.exoplayer2.l.j(this.jS);
            synchronized (this) {
                z = false;
                this.jS.obtainMessage(1, i, 0).sendToTarget();
                while (this.adv == null && this.adu == null && this.adt == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.adu;
            if (runtimeException != null) {
                throw runtimeException;
            }
            Error error = this.adt;
            if (error == null) {
                return (d) com.applovin.exoplayer2.l.a.checkNotNull(this.adv);
            }
            throw error;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            try {
                if (i != 1) {
                    if (i != 2) {
                        return true;
                    }
                    try {
                        bt();
                    } finally {
                        try {
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    fQ(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e2) {
                    com.applovin.exoplayer2.l.q.c("DummySurface", "Failed to initialize dummy surface", e2);
                    this.adt = e2;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e3) {
                    com.applovin.exoplayer2.l.q.c("DummySurface", "Failed to initialize dummy surface", e3);
                    this.adu = e3;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th) {
                synchronized (this) {
                    notify();
                    throw th;
                }
            }
        }

        public void release() {
            com.applovin.exoplayer2.l.a.checkNotNull(this.jS);
            this.jS.sendEmptyMessage(2);
        }
    }

    private d(a aVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.adq = aVar;
        this.Hu = z;
    }

    public static d c(Context context, boolean z) {
        com.applovin.exoplayer2.l.a.checkState(!z || p(context));
        return new a().fP(z ? ado : 0);
    }

    public static synchronized boolean p(Context context) {
        if (!adp) {
            ado = q(context);
            adp = true;
        }
        return ado != 0;
    }

    private static int q(Context context) {
        if (com.applovin.exoplayer2.l.n.j(context)) {
            return com.applovin.exoplayer2.l.n.oW() ? 1 : 2;
        }
        return 0;
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.adq) {
            if (!this.adr) {
                this.adq.release();
                this.adr = true;
            }
        }
    }
}
