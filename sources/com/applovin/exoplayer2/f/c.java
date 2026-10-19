package com.applovin.exoplayer2.f;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.l.ai;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(23)
final class c extends MediaCodec.Callback {
    private final HandlerThread GP;

    @Nullable
    @GuardedBy("lock")
    private MediaFormat GV;

    @Nullable
    @GuardedBy("lock")
    private MediaFormat GW;

    @Nullable
    @GuardedBy("lock")
    private MediaCodec.CodecException GX;

    @GuardedBy("lock")
    private long GY;

    @GuardedBy("lock")
    private boolean GZ;

    @Nullable
    @GuardedBy("lock")
    private IllegalStateException Ha;
    private Handler jS;
    private final Object rT = new Object();

    @GuardedBy("lock")
    private final f GQ = new f();

    @GuardedBy("lock")
    private final f GR = new f();

    @GuardedBy("lock")
    private final ArrayDeque<MediaCodec.BufferInfo> GT = new ArrayDeque<>();

    @GuardedBy("lock")
    private final ArrayDeque<MediaFormat> GU = new ArrayDeque<>();

    c(HandlerThread handlerThread) {
        this.GP = handlerThread;
    }

    @GuardedBy("lock")
    private void a(MediaFormat mediaFormat) {
        this.GR.cR(-2);
        this.GU.add(mediaFormat);
    }

    private void a(IllegalStateException illegalStateException) {
        synchronized (this.rT) {
            this.Ha = illegalStateException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void d(Runnable runnable) {
        synchronized (this.rT) {
            c(runnable);
        }
    }

    @GuardedBy("lock")
    private void c(Runnable runnable) {
        if (this.GZ) {
            return;
        }
        long j = this.GY - 1;
        this.GY = j;
        if (j > 0) {
            return;
        }
        if (j < 0) {
            a(new IllegalStateException());
            return;
        }
        jM();
        try {
            runnable.run();
        } catch (IllegalStateException e2) {
            a(e2);
        } catch (Exception e3) {
            a(new IllegalStateException(e3));
        }
    }

    @GuardedBy("lock")
    private void hk() {
        jO();
        jP();
    }

    @GuardedBy("lock")
    private void jM() {
        if (!this.GU.isEmpty()) {
            this.GW = this.GU.getLast();
        }
        this.GQ.clear();
        this.GR.clear();
        this.GT.clear();
        this.GU.clear();
        this.GX = null;
    }

    @GuardedBy("lock")
    private boolean jN() {
        return this.GY > 0 || this.GZ;
    }

    @GuardedBy("lock")
    private void jO() {
        IllegalStateException illegalStateException = this.Ha;
        if (illegalStateException == null) {
            return;
        }
        this.Ha = null;
        throw illegalStateException;
    }

    @GuardedBy("lock")
    private void jP() {
        MediaCodec.CodecException codecException = this.GX;
        if (codecException == null) {
            return;
        }
        this.GX = null;
        throw codecException;
    }

    public int a(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.rT) {
            if (jN()) {
                return -1;
            }
            hk();
            if (this.GR.isEmpty()) {
                return -1;
            }
            int iJT = this.GR.jT();
            if (iJT >= 0) {
                com.applovin.exoplayer2.l.a.N(this.GV);
                MediaCodec.BufferInfo bufferInfoRemove = this.GT.remove();
                bufferInfo.set(bufferInfoRemove.offset, bufferInfoRemove.size, bufferInfoRemove.presentationTimeUs, bufferInfoRemove.flags);
            } else if (iJT == -2) {
                this.GV = this.GU.remove();
            }
            return iJT;
        }
    }

    public void a(MediaCodec mediaCodec) {
        com.applovin.exoplayer2.l.a.checkState(this.jS == null);
        this.GP.start();
        Handler handler = new Handler(this.GP.getLooper());
        mediaCodec.setCallback(this, handler);
        this.jS = handler;
    }

    public void a(final Runnable runnable) {
        synchronized (this.rT) {
            this.GY++;
            ((Handler) ai.R(this.jS)).post(new Runnable() { // from class: com.applovin.exoplayer2.f.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.d(runnable);
                }
            });
        }
    }

    public int jD() {
        synchronized (this.rT) {
            int iJT = -1;
            if (jN()) {
                return -1;
            }
            hk();
            if (!this.GQ.isEmpty()) {
                iJT = this.GQ.jT();
            }
            return iJT;
        }
    }

    public MediaFormat jE() {
        MediaFormat mediaFormat;
        synchronized (this.rT) {
            mediaFormat = this.GV;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    public void jG() {
        synchronized (this.rT) {
            this.GZ = true;
            this.GP.quit();
            jM();
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onError(@NonNull MediaCodec mediaCodec, @NonNull MediaCodec.CodecException codecException) {
        synchronized (this.rT) {
            this.GX = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onInputBufferAvailable(@NonNull MediaCodec mediaCodec, int i) {
        synchronized (this.rT) {
            this.GQ.cR(i);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputBufferAvailable(@NonNull MediaCodec mediaCodec, int i, @NonNull MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.rT) {
            MediaFormat mediaFormat = this.GW;
            if (mediaFormat != null) {
                a(mediaFormat);
                this.GW = null;
            }
            this.GR.cR(i);
            this.GT.add(bufferInfo);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputFormatChanged(@NonNull MediaCodec mediaCodec, @NonNull MediaFormat mediaFormat) {
        synchronized (this.rT) {
            a(mediaFormat);
            this.GW = null;
        }
    }
}
