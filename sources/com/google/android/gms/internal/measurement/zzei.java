package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzei extends zzjy implements zzlk {
    private zzei() {
        super(zzej.zza);
    }

    /* synthetic */ zzei(zzef zzefVar) {
        super(zzej.zza);
    }

    public final int zza() {
        return ((zzej) this.zza).zza();
    }

    public final zzei zzb(String str) {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        zzej.zzi((zzej) this.zza, str);
        return this;
    }

    public final zzei zzc(int i, zzel zzelVar) {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        zzej.zzj((zzej) this.zza, i, zzelVar);
        return this;
    }

    public final zzel zzd(int i) {
        return ((zzej) this.zza).zze(i);
    }

    public final String zze() {
        return ((zzej) this.zza).zzg();
    }
}
