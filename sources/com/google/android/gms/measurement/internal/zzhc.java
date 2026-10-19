package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
abstract class zzhc extends zzhb {
    private boolean zza;

    zzhc(zzgi zzgiVar) {
        super(zzgiVar);
        this.zzs.zzD();
    }

    protected void zzaB() {
    }

    protected abstract boolean zzf();

    protected final void zzu() {
        if (!zzx()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzv() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (zzf()) {
            return;
        }
        this.zzs.zzB();
        this.zza = true;
    }

    public final void zzw() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzaB();
        this.zzs.zzB();
        this.zza = true;
    }

    final boolean zzx() {
        return this.zza;
    }
}
