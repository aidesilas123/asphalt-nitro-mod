package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeiz {
    private final Executor zza;
    private final ScheduledExecutorService zzb;
    private final zzctu zzc;
    private final zzejp zzd;
    private final zzfkw zze;
    private final zzgbt zzf = zzgbt.zze();
    private final AtomicBoolean zzg = new AtomicBoolean();
    private zzeja zzh;
    private zzfeh zzi;

    zzeiz(Executor executor, ScheduledExecutorService scheduledExecutorService, zzctu zzctuVar, zzejp zzejpVar, zzfkw zzfkwVar) {
        this.zza = executor;
        this.zzb = scheduledExecutorService;
        this.zzc = zzctuVar;
        this.zzd = zzejpVar;
        this.zze = zzfkwVar;
    }

    private final synchronized h0 zzd(zzfdu zzfduVar) {
        Iterator it = zzfduVar.zza.iterator();
        while (it.hasNext()) {
            zzefv zzefvVarZza = this.zzc.zza(zzfduVar.zzb, (String) it.next());
            if (zzefvVarZza != null && zzefvVarZza.zzb(this.zzi, zzfduVar)) {
                return zzgbb.zzo(zzefvVarZza.zza(this.zzi, zzfduVar), zzfduVar.zzS, TimeUnit.MILLISECONDS, this.zzb);
            }
        }
        return zzgbb.zzg(new zzdxn(3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zze(@Nullable zzfdu zzfduVar) {
        if (zzfduVar == null) {
            return;
        }
        h0 h0VarZzd = zzd(zzfduVar);
        this.zzd.zzf(this.zzi, zzfduVar, h0VarZzd, this.zze);
        zzgbb.zzr(h0VarZzd, new zzeiy(this, zzfduVar), this.zza);
    }

    public final synchronized h0 zzb(zzfeh zzfehVar) {
        if (!this.zzg.getAndSet(true)) {
            if (zzfehVar.zzb.zza.isEmpty()) {
                this.zzf.zzd(new zzejt(3, zzejw.zzc(zzfehVar)));
            } else {
                this.zzi = zzfehVar;
                this.zzh = new zzeja(zzfehVar, this.zzd, this.zzf);
                this.zzd.zzk(zzfehVar.zzb.zza);
                while (this.zzh.zze()) {
                    zze(this.zzh.zza());
                }
            }
        }
        return this.zzf;
    }
}
