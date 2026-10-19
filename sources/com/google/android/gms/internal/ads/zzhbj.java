package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzhbj extends zzgwm implements zzgxx {
    private static final zzhbj zzb;
    private int zzd;
    private int zze;
    private zzgve zzf;
    private zzgve zzg;

    static {
        zzhbj zzhbjVar = new zzhbj();
        zzb = zzhbjVar;
        zzgwm.zzaU(zzhbj.class, zzhbjVar);
    }

    private zzhbj() {
        zzgve zzgveVar = zzgve.zzb;
        this.zzf = zzgveVar;
        this.zzg = zzgveVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgwm
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzgwm.zzaR(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzhbj();
        }
        zzhag zzhagVar = null;
        if (i2 == 4) {
            return new zzhbi(zzhagVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
