package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgwh implements zzgxu {
    private static final zzgwh zza = new zzgwh();

    private zzgwh() {
    }

    public static zzgwh zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final zzgxt zzb(Class cls) {
        if (!zzgwm.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (zzgxt) zzgwm.zzaC(cls.asSubclass(zzgwm.class)).zzb(3, null, null);
        } catch (Exception e2) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final boolean zzc(Class cls) {
        return zzgwm.class.isAssignableFrom(cls);
    }
}
