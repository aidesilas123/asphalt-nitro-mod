package com.google.android.gms.measurement.internal;

import android.os.Process;
import androidx.annotation.GuardedBy;
import androidx.work.WorkRequest;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzge extends Thread {
    final /* synthetic */ zzgf zza;
    private final Object zzb;
    private final BlockingQueue zzc;

    @GuardedBy("threadLifeCycleLock")
    private boolean zzd = false;

    public zzge(zzgf zzgfVar, String str, BlockingQueue blockingQueue) {
        this.zza = zzgfVar;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.zzb = new Object();
        this.zzc = blockingQueue;
        setName(str);
    }

    private final void zzb() {
        synchronized (this.zza.zzh) {
            if (!this.zzd) {
                this.zza.zzi.release();
                this.zza.zzh.notifyAll();
                zzgf zzgfVar = this.zza;
                if (this == zzgfVar.zzb) {
                    zzgfVar.zzb = null;
                } else if (this == zzgfVar.zzc) {
                    zzgfVar.zzc = null;
                } else {
                    zzgfVar.zzs.zzaz().zzd().zza("Current scheduler thread is neither worker nor network");
                }
                this.zzd = true;
            }
        }
    }

    private final void zzc(InterruptedException interruptedException) {
        this.zza.zzs.zzaz().zzk().zzb(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                this.zza.zzi.acquire();
                z = true;
            } catch (InterruptedException e2) {
                zzc(e2);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                zzgd zzgdVar = (zzgd) this.zzc.poll();
                if (zzgdVar == null) {
                    synchronized (this.zzb) {
                        if (this.zzc.peek() == null) {
                            zzgf.zzr(this.zza);
                            try {
                                this.zzb.wait(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
                            } catch (InterruptedException e3) {
                                zzc(e3);
                            }
                        }
                    }
                    synchronized (this.zza.zzh) {
                        if (this.zzc.peek() == null) {
                            break;
                        }
                    }
                } else {
                    Process.setThreadPriority(true != zzgdVar.zza ? 10 : threadPriority);
                    zzgdVar.run();
                }
            }
            if (this.zza.zzs.zzf().zzs(null, zzel.zzaf)) {
                zzb();
            }
        } finally {
            zzb();
        }
    }

    public final void zza() {
        synchronized (this.zzb) {
            this.zzb.notifyAll();
        }
    }
}
