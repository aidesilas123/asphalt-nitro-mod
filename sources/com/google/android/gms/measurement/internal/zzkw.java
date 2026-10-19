package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
abstract class zzkw extends zzkv {
    private boolean zza;

    zzkw(zzli zzliVar) {
        super(zzliVar);
        this.zzf.zzL();
    }

    protected final void zzW() {
        if (!zzY()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzX() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzb();
        this.zzf.zzG();
        this.zza = true;
    }

    final boolean zzY() {
        return this.zza;
    }

    protected abstract boolean zzb();
}
