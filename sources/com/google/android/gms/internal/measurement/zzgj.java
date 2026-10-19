package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgj extends zzkc implements zzlk {
    private static final zzgj zza;
    private int zze;
    private int zzf;
    private zzki zzg = zzkc.zzbE();

    static {
        zzgj zzgjVar = new zzgj();
        zza = zzgjVar;
        zzkc.zzbM(zzgj.class, zzgjVar);
    }

    private zzgj() {
    }

    public static zzgi zzd() {
        return (zzgi) zza.zzbA();
    }

    static /* synthetic */ void zzg(zzgj zzgjVar, int i) {
        zzgjVar.zze |= 1;
        zzgjVar.zzf = i;
    }

    static /* synthetic */ void zzh(zzgj zzgjVar, Iterable iterable) {
        zzki zzkiVar = zzgjVar.zzg;
        if (!zzkiVar.zzc()) {
            zzgjVar.zzg = zzkc.zzbF(zzkiVar);
        }
        zzil.zzbw(iterable, zzgjVar.zzg);
    }

    public final int zza() {
        return this.zzg.size();
    }

    public final int zzb() {
        return this.zzf;
    }

    public final long zzc(int i) {
        return this.zzg.zza(i);
    }

    public final List zzf() {
        return this.zzg;
    }

    public final boolean zzi() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzkc.zzbL(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzgj();
        }
        zzfj zzfjVar = null;
        if (i2 == 4) {
            return new zzgi(zzfjVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }
}
