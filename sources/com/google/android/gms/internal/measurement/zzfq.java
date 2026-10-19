package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfq extends zzkc implements zzlk {
    private static final zzfq zza;
    private int zze;
    private int zzf;
    private long zzg;

    static {
        zzfq zzfqVar = new zzfq();
        zza = zzfqVar;
        zzkc.zzbM(zzfq.class, zzfqVar);
    }

    private zzfq() {
    }

    public static zzfp zzc() {
        return (zzfp) zza.zzbA();
    }

    static /* synthetic */ void zze(zzfq zzfqVar, int i) {
        zzfqVar.zze |= 1;
        zzfqVar.zzf = i;
    }

    static /* synthetic */ void zzf(zzfq zzfqVar, long j) {
        zzfqVar.zze |= 2;
        zzfqVar.zzg = j;
    }

    public final int zza() {
        return this.zzf;
    }

    public final long zzb() {
        return this.zzg;
    }

    public final boolean zzg() {
        return (this.zze & 2) != 0;
    }

    public final boolean zzh() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzkc.zzbL(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzfq();
        }
        zzfj zzfjVar = null;
        if (i2 == 4) {
            return new zzfp(zzfjVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }
}
