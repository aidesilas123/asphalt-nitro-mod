package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgry extends zzgwm implements zzgxx {
    private static final zzgry zzb;
    private int zzd;
    private zzgrm zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzgry zzgryVar = new zzgry();
        zzb = zzgryVar;
        zzgwm.zzaU(zzgry.class, zzgryVar);
    }

    private zzgry() {
    }

    public static zzgrx zzd() {
        return (zzgrx) zzb.zzaA();
    }

    static /* synthetic */ void zzg(zzgry zzgryVar, zzgrm zzgrmVar) {
        zzgrmVar.getClass();
        zzgryVar.zze = zzgrmVar;
        zzgryVar.zzd |= 1;
    }

    public final int zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzgwm
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzgwm.zzaR(zzb, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzgry();
        }
        zzgrv zzgrvVar = null;
        if (i2 == 4) {
            return new zzgrx(zzgrvVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzgrm zzc() {
        zzgrm zzgrmVar = this.zze;
        return zzgrmVar == null ? zzgrm.zze() : zzgrmVar;
    }

    public final zzgss zzf() {
        zzgss zzgssVarZzb = zzgss.zzb(this.zzh);
        return zzgssVarZzb == null ? zzgss.UNRECOGNIZED : zzgssVarZzb;
    }

    public final boolean zzj() {
        return (this.zzd & 1) != 0;
    }

    public final int zzk() {
        int i = this.zzf;
        int i2 = 3;
        if (i == 0) {
            i2 = 2;
        } else if (i != 1) {
            i2 = i != 2 ? i != 3 ? 0 : 5 : 4;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
