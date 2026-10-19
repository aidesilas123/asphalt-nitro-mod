package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfla {
    private final Context zza;
    private final Executor zzb;
    private final zzcbs zzc;
    private final zzfkk zzd;

    zzfla(Context context, Executor executor, zzcbs zzcbsVar, zzfkk zzfkkVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcbsVar;
        this.zzd = zzfkkVar;
    }

    final /* synthetic */ void zza(String str) {
        this.zzc.zza(str);
    }

    final /* synthetic */ void zzb(String str, zzfkh zzfkhVar) {
        zzfjw zzfjwVarZza = zzfjv.zza(this.zza, 14);
        zzfjwVarZza.zzh();
        zzfjwVarZza.zzf(this.zzc.zza(str));
        if (zzfkhVar == null) {
            this.zzd.zzb(zzfjwVarZza.zzl());
        } else {
            zzfkhVar.zza(zzfjwVarZza);
            zzfkhVar.zzg();
        }
    }

    public final void zzc(final String str, @Nullable final zzfkh zzfkhVar) {
        if (zzfkk.zza() && ((Boolean) zzbeo.zzd.zze()).booleanValue()) {
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfkz
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzb(str, zzfkhVar);
                }
            });
        } else {
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfky
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zza(str);
                }
            });
        }
    }

    public final void zzd(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzc((String) it.next(), null);
        }
    }
}
