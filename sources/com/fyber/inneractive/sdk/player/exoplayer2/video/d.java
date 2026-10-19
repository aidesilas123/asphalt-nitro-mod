package com.fyber.inneractive.sdk.player.exoplayer2.video;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.WindowManager;
import com.fyber.inneractive.sdk.config.IAConfigManager;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public final class d {
    public final a a;
    public final long b;
    public final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f2627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2628f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2629g;
    public long h;
    public long i;
    public long j;

    public static final class a implements Choreographer.FrameCallback, Handler.Callback {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f2630e = new a();
        public volatile long a;
        public final Handler b;
        public Choreographer c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2631d;

        public a() {
            HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
            handlerThread.start();
            Handler handler = new Handler(handlerThread.getLooper(), this);
            this.b = handler;
            handler.sendEmptyMessage(0);
        }

        public static a a() {
            return f2630e;
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.a = j;
            this.c.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.c = Choreographer.getInstance();
                return true;
            }
            if (i == 1) {
                int i2 = this.f2631d + 1;
                this.f2631d = i2;
                if (i2 == 1) {
                    this.c.postFrameCallback(this);
                }
                return true;
            }
            if (i != 2) {
                return false;
            }
            int i3 = this.f2631d - 1;
            this.f2631d = i3;
            if (i3 == 0) {
                this.c.removeFrameCallback(this);
                this.a = 0L;
            }
            return true;
        }
    }

    public d(double d2, boolean z) {
        if (!z) {
            this.a = null;
            this.b = -1L;
            this.c = -1L;
        } else {
            this.a = a.a();
            long j = (long) (1.0E9d / d2);
            this.b = j;
            this.c = (j * 80) / 100;
        }
    }

    public d(Context context) {
        this(a(), true);
    }

    public static float a() {
        return ((WindowManager) IAConfigManager.M.v.a().getSystemService("window")).getDefaultDisplay().getRefreshRate();
    }

    public final boolean a(long j, long j2) {
        return Math.abs((j2 - this.h) - (j - this.i)) > 20000000;
    }
}
