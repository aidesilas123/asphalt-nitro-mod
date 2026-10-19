package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfil {
    final /* synthetic */ zzfim zza;
    private final Object zzb;

    @Nullable
    private final String zzc;
    private final h0 zzd;
    private final List zze;
    private final h0 zzf;

    private zzfil(zzfim zzfimVar, Object obj, String str, h0 h0Var, List list, h0 h0Var2) {
        this.zza = zzfimVar;
        this.zzb = obj;
        this.zzc = str;
        this.zzd = h0Var;
        this.zze = list;
        this.zzf = h0Var2;
    }

    public final zzfhz zza() {
        Object obj = this.zzb;
        String strZzf = this.zzc;
        if (strZzf == null) {
            strZzf = this.zza.zzf(obj);
        }
        final zzfhz zzfhzVar = new zzfhz(obj, strZzf, this.zzf);
        this.zza.zzd.zza(zzfhzVar);
        h0 h0Var = this.zzd;
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzfii
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza.zzd.zzc(zzfhzVar);
            }
        };
        zzgbl zzgblVar = zzcca.zzf;
        h0Var.addListener(runnable, zzgblVar);
        zzgbb.zzr(zzfhzVar, new zzfij(this, zzfhzVar), zzgblVar);
        return zzfhzVar;
    }

    public final zzfil zzb(Object obj) {
        return this.zza.zzb(obj, zza());
    }

    public final zzfil zzc(Class cls, zzgai zzgaiVar) {
        return new zzfil(this.zza, this.zzb, this.zzc, this.zzd, this.zze, zzgbb.zzf(this.zzf, cls, zzgaiVar, this.zza.zzb));
    }

    public final zzfil zzd(final h0 h0Var) {
        return zzg(new zzgai() { // from class: com.google.android.gms.internal.ads.zzfih
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return h0Var;
            }
        }, zzcca.zzf);
    }

    public final zzfil zze(final zzfhx zzfhxVar) {
        return zzf(new zzgai() { // from class: com.google.android.gms.internal.ads.zzfig
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzgbb.zzh(zzfhxVar.zza(obj));
            }
        });
    }

    public final zzfil zzf(zzgai zzgaiVar) {
        return zzg(zzgaiVar, this.zza.zzb);
    }

    public final zzfil zzg(zzgai zzgaiVar, Executor executor) {
        return new zzfil(this.zza, this.zzb, this.zzc, this.zzd, this.zze, zzgbb.zzn(this.zzf, zzgaiVar, executor));
    }

    public final zzfil zzh(String str) {
        return new zzfil(this.zza, this.zzb, str, this.zzd, this.zze, this.zzf);
    }

    public final zzfil zzi(long j, TimeUnit timeUnit) {
        return new zzfil(this.zza, this.zzb, this.zzc, this.zzd, this.zze, zzgbb.zzo(this.zzf, j, timeUnit, this.zza.zzc));
    }
}
