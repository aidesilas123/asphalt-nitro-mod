package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfud extends zzftu {
    private final Object zza;

    zzfud(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzfud) {
            return this.zza.equals(((zzfud) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.zza.toString() + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzftu zza(zzftn zzftnVar) {
        Object objApply = zzftnVar.apply(this.zza);
        zzfty.zzc(objApply, "the Function passed to Optional.transform() must not return null.");
        return new zzfud(objApply);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final Object zzb(Object obj) {
        return this.zza;
    }
}
