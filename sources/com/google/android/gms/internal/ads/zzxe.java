package com.google.android.gms.internal.ads;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzxe extends zzxs implements Comparable {
    private final int zze;
    private final boolean zzf;

    @Nullable
    private final String zzg;
    private final zzxk zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;
    private final int zzn;
    private final int zzo;
    private final boolean zzp;
    private final int zzq;
    private final int zzr;
    private final int zzs;
    private final int zzt;
    private final boolean zzu;
    private final boolean zzv;

    /* JADX WARN: Multi-variable type inference failed */
    public zzxe(int i, zzdc zzdcVar, int i2, zzxk zzxkVar, int i3, boolean z, zzftz zzftzVar, int i4) {
        int i5;
        int iZza;
        int iZza2;
        boolean z2;
        super(i, zzdcVar, i2);
        this.zzh = zzxkVar;
        int i6 = 1;
        int i7 = true != zzxkVar.zzQ ? 16 : 24;
        this.zzg = zzxw.zzg(this.zzd.zzd);
        this.zzi = zzxw.zzn(i3, false);
        int i8 = 0;
        while (true) {
            i5 = Integer.MAX_VALUE;
            if (i8 >= zzxkVar.zzq.size()) {
                i8 = Integer.MAX_VALUE;
                iZza = 0;
                break;
            } else {
                iZza = zzxw.zza(this.zzd, (String) zzxkVar.zzq.get(i8), false);
                if (iZza > 0) {
                    break;
                } else {
                    i8++;
                }
            }
        }
        this.zzk = i8;
        this.zzj = iZza;
        int i9 = this.zzd.zzf;
        this.zzl = Integer.bitCount(0);
        zzam zzamVar = this.zzd;
        int i10 = zzamVar.zzf;
        this.zzm = true;
        this.zzp = 1 == (zzamVar.zze & 1);
        this.zzq = zzamVar.zzz;
        this.zzr = zzamVar.zzA;
        this.zzs = zzamVar.zzi;
        this.zzf = zzftzVar.zza(zzamVar);
        Configuration configuration = Resources.getSystem().getConfiguration();
        String[] strArrSplit = zzfs.zza >= 24 ? configuration.getLocales().toLanguageTags().split(",", -1) : new String[]{zzfs.zzA(configuration.locale)};
        for (int i11 = 0; i11 < strArrSplit.length; i11++) {
            strArrSplit[i11] = zzfs.zzC(strArrSplit[i11]);
        }
        int i12 = 0;
        while (true) {
            if (i12 >= strArrSplit.length) {
                i12 = Integer.MAX_VALUE;
                iZza2 = 0;
                break;
            } else {
                iZza2 = zzxw.zza(this.zzd, strArrSplit[i12], false);
                if (iZza2 > 0) {
                    break;
                } else {
                    i12++;
                }
            }
        }
        this.zzn = i12;
        this.zzo = iZza2;
        int i13 = 0;
        while (true) {
            if (i13 >= zzxkVar.zzu.size()) {
                break;
            }
            String str = this.zzd.zzm;
            if (str != null && str.equals(zzxkVar.zzu.get(i13))) {
                i5 = i13;
                break;
            }
            i13++;
        }
        this.zzt = i5;
        this.zzu = (i3 & 384) == 128;
        this.zzv = (i3 & 64) == 64;
        zzxk zzxkVar2 = this.zzh;
        if (!zzxw.zzn(i3, zzxkVar2.zzS) || (!(z2 = this.zzf) && !zzxkVar2.zzL)) {
            i6 = 0;
        } else if (zzxw.zzn(i3, false) && z2 && this.zzd.zzi != -1 && ((zzxkVar2.zzU || !z) && (i7 & i3) != 0)) {
            i6 = 2;
        }
        this.zze = i6;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzxe zzxeVar) {
        zzfyd zzfydVarZza = (this.zzf && this.zzi) ? zzxw.zzc : zzxw.zzc.zza();
        zzfwj zzfwjVarZzc = zzfwj.zzj().zzd(this.zzi, zzxeVar.zzi).zzc(Integer.valueOf(this.zzk), Integer.valueOf(zzxeVar.zzk), zzfyd.zzc().zza()).zzb(this.zzj, zzxeVar.zzj).zzb(this.zzl, zzxeVar.zzl).zzd(this.zzp, zzxeVar.zzp).zzd(true, true).zzc(Integer.valueOf(this.zzn), Integer.valueOf(zzxeVar.zzn), zzfyd.zzc().zza()).zzb(this.zzo, zzxeVar.zzo).zzd(this.zzf, zzxeVar.zzf).zzc(Integer.valueOf(this.zzt), Integer.valueOf(zzxeVar.zzt), zzfyd.zzc().zza());
        Integer numValueOf = Integer.valueOf(this.zzs);
        Integer numValueOf2 = Integer.valueOf(zzxeVar.zzs);
        boolean z = this.zzh.zzA;
        zzfwj zzfwjVarZzc2 = zzfwjVarZzc.zzc(numValueOf, numValueOf2, zzxw.zzd).zzd(this.zzu, zzxeVar.zzu).zzd(this.zzv, zzxeVar.zzv).zzc(Integer.valueOf(this.zzq), Integer.valueOf(zzxeVar.zzq), zzfydVarZza).zzc(Integer.valueOf(this.zzr), Integer.valueOf(zzxeVar.zzr), zzfydVarZza);
        Integer numValueOf3 = Integer.valueOf(this.zzs);
        Integer numValueOf4 = Integer.valueOf(zzxeVar.zzs);
        if (!zzfs.zzF(this.zzg, zzxeVar.zzg)) {
            zzfydVarZza = zzxw.zzd;
        }
        return zzfwjVarZzc2.zzc(numValueOf3, numValueOf4, zzfydVarZza).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    public final /* bridge */ /* synthetic */ boolean zzc(zzxs zzxsVar) {
        String str;
        zzxe zzxeVar = (zzxe) zzxsVar;
        boolean z = this.zzh.zzO;
        zzam zzamVar = this.zzd;
        int i = zzamVar.zzz;
        if (i == -1) {
            return false;
        }
        zzam zzamVar2 = zzxeVar.zzd;
        if (i != zzamVar2.zzz || (str = zzamVar.zzm) == null || !TextUtils.equals(str, zzamVar2.zzm)) {
            return false;
        }
        boolean z2 = this.zzh.zzN;
        int i2 = this.zzd.zzA;
        return i2 != -1 && i2 == zzxeVar.zzd.zzA && this.zzu == zzxeVar.zzu && this.zzv == zzxeVar.zzv;
    }
}
