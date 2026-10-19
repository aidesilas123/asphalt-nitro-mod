package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import com.json.o2;
import java.util.Objects;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
abstract class zzfzn extends zzgar implements Runnable {
    h0 zza;
    Class zzb;
    Object zzc;

    zzfzn(h0 h0Var, Class cls, Object obj) {
        Objects.requireNonNull(h0Var);
        this.zza = h0Var;
        this.zzb = cls;
        this.zzc = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Throwable e2;
        h0 h0Var = this.zza;
        Class cls = this.zzb;
        Object obj = this.zzc;
        if (((obj == null) || ((h0Var == 0) | (cls == null))) || isCancelled()) {
            return;
        }
        this.zza = null;
        try {
            e2 = h0Var instanceof zzgcd ? ((zzgcd) h0Var).zzl() : null;
        } catch (Error e3) {
            e2 = e3;
        } catch (RuntimeException e4) {
            e2 = e4;
        } catch (ExecutionException e5) {
            Throwable cause = e5.getCause();
            if (cause == null) {
                cause = new NullPointerException("Future type " + String.valueOf(h0Var.getClass()) + " threw " + String.valueOf(e5.getClass()) + " without a cause");
            }
            e2 = cause;
        }
        Object objZzp = e2 == null ? zzgbb.zzp(h0Var) : null;
        if (e2 == null) {
            zzc(objZzp);
            return;
        }
        if (!cls.isInstance(e2)) {
            zzs(h0Var);
            return;
        }
        try {
            Object objZze = zze(obj, e2);
            this.zzb = null;
            this.zzc = null;
            zzf(objZze);
        } catch (Throwable th) {
            try {
                zzgbs.zza(th);
                zzd(th);
            } finally {
                this.zzb = null;
                this.zzc = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfzp
    protected final String zza() {
        String str;
        h0 h0Var = this.zza;
        Class cls = this.zzb;
        Object obj = this.zzc;
        String strZza = super.zza();
        if (h0Var != null) {
            str = "inputFuture=[" + h0Var.toString() + "], ";
        } else {
            str = "";
        }
        if (cls == null || obj == null) {
            if (strZza != null) {
                return str.concat(strZza);
            }
            return null;
        }
        return str + "exceptionType=[" + cls.toString() + "], fallback=[" + obj.toString() + o2.i.f6491e;
    }

    @Override // com.google.android.gms.internal.ads.zzfzp
    protected final void zzb() {
        zzr(this.zza);
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
    }

    abstract Object zze(Object obj, Throwable th) throws Exception;

    abstract void zzf(Object obj);
}
