package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfn extends zzjy implements zzlk {
    private zzfn() {
        super(zzfo.zza);
    }

    /* synthetic */ zzfn(zzfj zzfjVar) {
        super(zzfo.zza);
    }

    public final zzfn zza(int i) {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        zzfo.zzf((zzfo) this.zza, i);
        return this;
    }

    public final zzfn zzb(zzgg zzggVar) {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        zzfo.zzg((zzfo) this.zza, (zzgh) zzggVar.zzaE());
        return this;
    }

    public final zzfn zzc(boolean z) {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        zzfo.zzi((zzfo) this.zza, z);
        return this;
    }

    public final zzfn zzd(zzgh zzghVar) {
        if (this.zzb) {
            zzaI();
            this.zzb = false;
        }
        zzfo.zzh((zzfo) this.zza, zzghVar);
        return this;
    }
}
