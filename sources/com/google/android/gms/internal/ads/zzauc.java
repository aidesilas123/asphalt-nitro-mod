package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzauc implements Callable {
    private final zzatj zza;
    private final zzapg zzb;

    public zzauc(zzatj zzatjVar, zzapg zzapgVar) {
        this.zza = zzatjVar;
        this.zzb = zzapgVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        if (this.zza.zzl() != null) {
            this.zza.zzl().get();
        }
        zzaqd zzaqdVarZzc = this.zza.zzc();
        if (zzaqdVarZzc == null) {
            return null;
        }
        try {
            synchronized (this.zzb) {
                zzapg zzapgVar = this.zzb;
                byte[] bArrZzax = zzaqdVarZzc.zzax();
                zzapgVar.zzak(bArrZzax, 0, bArrZzax.length, zzgvy.zza());
            }
            return null;
        } catch (zzgwy | NullPointerException unused) {
            return null;
        }
    }
}
