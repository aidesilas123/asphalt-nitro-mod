package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfa extends zzkc implements zzlk {
    private static final zzfa zza;
    private int zze;
    private String zzf = "";
    private zzkj zzg = zzkc.zzbG();
    private boolean zzh;

    static {
        zzfa zzfaVar = new zzfa();
        zza = zzfaVar;
        zzkc.zzbM(zzfa.class, zzfaVar);
    }

    private zzfa() {
    }

    public final String zzb() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzkc.zzbL(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဇ\u0001", new Object[]{"zze", "zzf", "zzg", zzfg.class, "zzh"});
        }
        if (i2 == 3) {
            return new zzfa();
        }
        zzey zzeyVar = null;
        if (i2 == 4) {
            return new zzez(zzeyVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }
}
