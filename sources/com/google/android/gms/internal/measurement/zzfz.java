package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfz extends zzjy implements zzlk {
    private zzfz() {
        super(zzga.zza);
    }

    /* synthetic */ zzfz(zzfj zzfjVar) {
        super(zzga.zza);
    }

    public final zzfz zza(zzgb zzgbVar) {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        zzga.zze((zzga) this.zza, (zzgc) zzgbVar.zzaE());
        return this;
    }

    public final zzgc zzb(int i) {
        return ((zzga) this.zza).zzc(0);
    }
}
