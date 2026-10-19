package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgrr extends zzgwm implements zzgxx {
    private static final zzgrr zzb;
    private String zzd = "";
    private zzgve zze = zzgve.zzb;
    private int zzf;

    static {
        zzgrr zzgrrVar = new zzgrr();
        zzb = zzgrrVar;
        zzgwm.zzaU(zzgrr.class, zzgrrVar);
    }

    private zzgrr() {
    }

    public static zzgrq zza() {
        return (zzgrq) zzb.zzaA();
    }

    public static zzgrr zzd() {
        return zzb;
    }

    public static zzgrr zze(byte[] bArr, zzgvy zzgvyVar) throws zzgwy {
        return (zzgrr) zzgwm.zzaI(zzb, bArr, zzgvyVar);
    }

    static /* synthetic */ void zzi(zzgrr zzgrrVar, String str) {
        str.getClass();
        zzgrrVar.zzd = str;
    }

    static /* synthetic */ void zzj(zzgrr zzgrrVar, zzgve zzgveVar) {
        zzgveVar.getClass();
        zzgrrVar.zze = zzgveVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgwm
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzgwm.zzaR(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzgrr();
        }
        zzgrp zzgrpVar = null;
        if (i2 == 4) {
            return new zzgrq(zzgrpVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzgss zzf() {
        zzgss zzgssVarZzb = zzgss.zzb(this.zzf);
        return zzgssVarZzb == null ? zzgss.UNRECOGNIZED : zzgssVarZzb;
    }

    public final zzgve zzg() {
        return this.zze;
    }

    public final String zzh() {
        return this.zzd;
    }
}
