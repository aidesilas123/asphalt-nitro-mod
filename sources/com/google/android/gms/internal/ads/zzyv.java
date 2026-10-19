package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"HandlerLeak"})
final class zzyv extends Handler implements Runnable {
    final /* synthetic */ zzza zza;
    private final zzyw zzb;
    private final long zzc;

    @Nullable
    private zzys zzd;

    @Nullable
    private IOException zze;
    private int zzf;

    @Nullable
    private Thread zzg;
    private boolean zzh;
    private volatile boolean zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzyv(zzza zzzaVar, Looper looper, zzyw zzywVar, zzys zzysVar, int i, long j) {
        super(looper);
        this.zza = zzzaVar;
        this.zzb = zzywVar;
        this.zzd = zzysVar;
        this.zzc = j;
    }

    private final void zzd() {
        this.zze = null;
        zzza zzzaVar = this.zza;
        ExecutorService executorService = zzzaVar.zze;
        zzyv zzyvVar = zzzaVar.zzf;
        Objects.requireNonNull(zzyvVar);
        executorService.execute(zzyvVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.zzi) {
            return;
        }
        int i = message.what;
        if (i == 0) {
            zzd();
            return;
        }
        if (i == 3) {
            throw ((Error) message.obj);
        }
        this.zza.zzf = null;
        long j = this.zzc;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = jElapsedRealtime - j;
        zzys zzysVar = this.zzd;
        Objects.requireNonNull(zzysVar);
        if (this.zzh) {
            zzysVar.zzJ(this.zzb, jElapsedRealtime, j2, false);
            return;
        }
        int i2 = message.what;
        if (i2 == 1) {
            try {
                zzysVar.zzK(this.zzb, jElapsedRealtime, j2);
                return;
            } catch (RuntimeException e2) {
                zzez.zzd("LoadTask", "Unexpected exception handling load completed", e2);
                this.zza.zzg = new zzyz(e2);
                return;
            }
        }
        if (i2 != 2) {
            return;
        }
        IOException iOException = (IOException) message.obj;
        this.zze = iOException;
        int i3 = this.zzf + 1;
        this.zzf = i3;
        zzyu zzyuVarZzu = zzysVar.zzu(this.zzb, jElapsedRealtime, j2, iOException, i3);
        if (zzyuVarZzu.zza == 3) {
            this.zza.zzg = this.zze;
        } else if (zzyuVarZzu.zza != 2) {
            if (zzyuVarZzu.zza == 1) {
                this.zzf = 1;
            }
            zzc(zzyuVarZzu.zzb != C.TIME_UNSET ? zzyuVarZzu.zzb : Math.min((this.zzf - 1) * 1000, 5000));
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            synchronized (this) {
                z = !this.zzh;
                this.zzg = Thread.currentThread();
            }
            if (z) {
                String str = "load:" + this.zzb.getClass().getSimpleName();
                int i = zzfs.zza;
                Trace.beginSection(str);
                try {
                    this.zzb.zzh();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            synchronized (this) {
                this.zzg = null;
                Thread.interrupted();
            }
            if (this.zzi) {
                return;
            }
            sendEmptyMessage(1);
        } catch (IOException e2) {
            if (this.zzi) {
                return;
            }
            obtainMessage(2, e2).sendToTarget();
        } catch (Error e3) {
            if (!this.zzi) {
                zzez.zzd("LoadTask", "Unexpected error loading stream", e3);
                obtainMessage(3, e3).sendToTarget();
            }
            throw e3;
        } catch (Exception e4) {
            if (this.zzi) {
                return;
            }
            zzez.zzd("LoadTask", "Unexpected exception loading stream", e4);
            obtainMessage(2, new zzyz(e4)).sendToTarget();
        } catch (OutOfMemoryError e5) {
            if (this.zzi) {
                return;
            }
            zzez.zzd("LoadTask", "OutOfMemory error loading stream", e5);
            obtainMessage(2, new zzyz(e5)).sendToTarget();
        }
    }

    public final void zza(boolean z) {
        this.zzi = z;
        this.zze = null;
        if (hasMessages(0)) {
            this.zzh = true;
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            synchronized (this) {
                this.zzh = true;
                this.zzb.zzg();
                Thread thread = this.zzg;
                if (thread != null) {
                    thread.interrupt();
                }
            }
        }
        if (z) {
            this.zza.zzf = null;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            zzys zzysVar = this.zzd;
            Objects.requireNonNull(zzysVar);
            zzysVar.zzJ(this.zzb, jElapsedRealtime, jElapsedRealtime - this.zzc, true);
            this.zzd = null;
        }
    }

    public final void zzb(int i) throws IOException {
        IOException iOException = this.zze;
        if (iOException != null && this.zzf > i) {
            throw iOException;
        }
    }

    public final void zzc(long j) {
        zzef.zzf(this.zza.zzf == null);
        this.zza.zzf = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            zzd();
        }
    }
}
