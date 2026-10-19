package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import com.json.o2;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
abstract class zzfzx extends zzgar implements Runnable {
    public static final /* synthetic */ int zzc = 0;
    h0 zza;
    Object zzb;

    zzfzx(h0 h0Var, Object obj) {
        Objects.requireNonNull(h0Var);
        this.zza = h0Var;
        this.zzb = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h0 h0Var = this.zza;
        Object obj = this.zzb;
        if ((isCancelled() | (h0Var == null)) || (obj == null)) {
            return;
        }
        this.zza = null;
        if (h0Var.isCancelled()) {
            zzs(h0Var);
            return;
        }
        try {
            try {
                Object objZze = zze(obj, zzgbb.zzp(h0Var));
                this.zzb = null;
                zzf(objZze);
            } catch (Throwable th) {
                try {
                    zzgbs.zza(th);
                    zzd(th);
                } finally {
                    this.zzb = null;
                }
            }
        } catch (Error e2) {
            zzd(e2);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e3) {
            zzd(e3);
        } catch (ExecutionException e4) {
            zzd(e4.getCause());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfzp
    protected final String zza() {
        String str;
        h0 h0Var = this.zza;
        Object obj = this.zzb;
        String strZza = super.zza();
        if (h0Var != null) {
            str = "inputFuture=[" + h0Var.toString() + "], ";
        } else {
            str = "";
        }
        if (obj == null) {
            if (strZza != null) {
                return str.concat(strZza);
            }
            return null;
        }
        return str + "function=[" + obj.toString() + o2.i.f6491e;
    }

    @Override // com.google.android.gms.internal.ads.zzfzp
    protected final void zzb() {
        zzr(this.zza);
        this.zza = null;
        this.zzb = null;
    }

    abstract Object zze(Object obj, Object obj2) throws Exception;

    abstract void zzf(Object obj);
}
