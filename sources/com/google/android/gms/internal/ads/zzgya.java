package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgya implements zzgyp {
    private final zzgxw zza;
    private final zzgzg zzb;
    private final boolean zzc;
    private final zzgvz zzd;

    private zzgya(zzgzg zzgzgVar, zzgvz zzgvzVar, zzgxw zzgxwVar) {
        this.zzb = zzgzgVar;
        this.zzc = zzgvzVar.zzh(zzgxwVar);
        this.zzd = zzgvzVar;
        this.zza = zzgxwVar;
    }

    static zzgya zzc(zzgzg zzgzgVar, zzgvz zzgvzVar, zzgxw zzgxwVar) {
        return new zzgya(zzgzgVar, zzgvzVar, zzgxwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final int zza(Object obj) {
        zzgzg zzgzgVar = this.zzb;
        int iZzb = zzgzgVar.zzb(zzgzgVar.zzd(obj));
        if (!this.zzc) {
            return iZzb;
        }
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final int zzb(Object obj) {
        int iHashCode = this.zzb.zzd(obj).hashCode();
        if (!this.zzc) {
            return iHashCode;
        }
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final Object zze() {
        zzgxw zzgxwVar = this.zza;
        return zzgxwVar instanceof zzgwm ? ((zzgwm) zzgxwVar).zzaD() : zzgxwVar.zzaP().zzan();
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final void zzf(Object obj) {
        this.zzb.zzm(obj);
        this.zzd.zze(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final void zzg(Object obj, Object obj2) {
        zzgyr.zzq(this.zzb, obj, obj2);
        if (this.zzc) {
            this.zzd.zza(obj2);
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final void zzh(Object obj, zzgyh zzgyhVar, zzgvy zzgvyVar) throws IOException {
        boolean zZzO;
        zzgzg zzgzgVar = this.zzb;
        Object objZzc = zzgzgVar.zzc(obj);
        zzgvz zzgvzVar = this.zzd;
        zzgwd zzgwdVarZzb = zzgvzVar.zzb(obj);
        while (zzgyhVar.zzc() != Integer.MAX_VALUE) {
            try {
                int iZzd = zzgyhVar.zzd();
                if (iZzd != 11) {
                    if ((iZzd & 7) == 2) {
                        Object objZzc2 = zzgvzVar.zzc(zzgvyVar, this.zza, iZzd >>> 3);
                        if (objZzc2 != null) {
                            zzgvzVar.zzf(zzgyhVar, objZzc2, zzgvyVar, zzgwdVarZzb);
                        } else {
                            zZzO = zzgzgVar.zzp(objZzc, zzgyhVar);
                        }
                    } else {
                        zZzO = zzgyhVar.zzO();
                    }
                    if (!zZzO) {
                        break;
                    }
                } else {
                    int iZzj = 0;
                    Object objZzc3 = null;
                    zzgve zzgveVarZzp = null;
                    while (zzgyhVar.zzc() != Integer.MAX_VALUE) {
                        int iZzd2 = zzgyhVar.zzd();
                        if (iZzd2 == 16) {
                            iZzj = zzgyhVar.zzj();
                            objZzc3 = zzgvzVar.zzc(zzgvyVar, this.zza, iZzj);
                        } else if (iZzd2 == 26) {
                            if (objZzc3 != null) {
                                zzgvzVar.zzf(zzgyhVar, objZzc3, zzgvyVar, zzgwdVarZzb);
                            } else {
                                zzgveVarZzp = zzgyhVar.zzp();
                            }
                        } else if (!zzgyhVar.zzO()) {
                            break;
                        }
                    }
                    if (zzgyhVar.zzd() != 12) {
                        throw zzgwy.zzb();
                    }
                    if (zzgveVarZzp != null) {
                        if (objZzc3 != null) {
                            zzgvzVar.zzg(zzgveVarZzp, objZzc3, zzgvyVar, zzgwdVarZzb);
                        } else {
                            zzgzgVar.zzk(objZzc, iZzj, zzgveVarZzp);
                        }
                    }
                }
            } finally {
                zzgzgVar.zzn(obj, objZzc);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzguq zzguqVar) throws IOException {
        zzgwm zzgwmVar = (zzgwm) obj;
        if (zzgwmVar.zzc == zzgzh.zzc()) {
            zzgwmVar.zzc = zzgzh.zzf();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final boolean zzj(Object obj, Object obj2) {
        zzgzg zzgzgVar = this.zzb;
        if (!zzgzgVar.zzd(obj).equals(zzgzgVar.zzd(obj2))) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        this.zzd.zza(obj);
        this.zzd.zza(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final boolean zzk(Object obj) {
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final void zzm(Object obj, zzgvu zzgvuVar) throws IOException {
        this.zzd.zza(obj);
        throw null;
    }
}
