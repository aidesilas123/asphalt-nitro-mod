package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.json.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzam {
    public final int zzA;
    public final int zzB;
    public final int zzC;
    public final int zzD;
    public final int zzE;
    public final int zzF;
    public final int zzG;
    public final int zzH;
    private int zzap;

    @Nullable
    public final String zzb;

    @Nullable
    public final String zzc;

    @Nullable
    public final String zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;

    @Nullable
    public final String zzj;

    @Nullable
    public final zzcb zzk;

    @Nullable
    public final String zzl;

    @Nullable
    public final String zzm;
    public final int zzn;
    public final List zzo;

    @Nullable
    public final zzad zzp;
    public final long zzq;
    public final int zzr;
    public final int zzs;
    public final float zzt;
    public final int zzu;
    public final float zzv;

    @Nullable
    public final byte[] zzw;
    public final int zzx;

    @Nullable
    public final zzs zzy;
    public final int zzz;
    private static final zzam zzI = new zzam(new zzak());
    private static final String zzJ = Integer.toString(0, 36);
    private static final String zzK = Integer.toString(1, 36);
    private static final String zzL = Integer.toString(2, 36);
    private static final String zzM = Integer.toString(3, 36);
    private static final String zzN = Integer.toString(4, 36);
    private static final String zzO = Integer.toString(5, 36);
    private static final String zzP = Integer.toString(6, 36);
    private static final String zzQ = Integer.toString(7, 36);
    private static final String zzR = Integer.toString(8, 36);
    private static final String zzS = Integer.toString(9, 36);
    private static final String zzT = Integer.toString(10, 36);
    private static final String zzU = Integer.toString(11, 36);
    private static final String zzV = Integer.toString(12, 36);
    private static final String zzW = Integer.toString(13, 36);
    private static final String zzX = Integer.toString(14, 36);
    private static final String zzY = Integer.toString(15, 36);
    private static final String zzZ = Integer.toString(16, 36);
    private static final String zzaa = Integer.toString(17, 36);
    private static final String zzab = Integer.toString(18, 36);
    private static final String zzac = Integer.toString(19, 36);
    private static final String zzad = Integer.toString(20, 36);
    private static final String zzae = Integer.toString(21, 36);
    private static final String zzaf = Integer.toString(22, 36);
    private static final String zzag = Integer.toString(23, 36);
    private static final String zzah = Integer.toString(24, 36);
    private static final String zzai = Integer.toString(25, 36);
    private static final String zzaj = Integer.toString(26, 36);
    private static final String zzak = Integer.toString(27, 36);
    private static final String zzal = Integer.toString(28, 36);
    private static final String zzam = Integer.toString(29, 36);
    private static final String zzan = Integer.toString(30, 36);
    private static final String zzao = Integer.toString(31, 36);
    public static final zzn zza = new zzn() { // from class: com.google.android.gms.internal.ads.zzai
    };

    private zzam(zzak zzakVar) {
        this.zzb = zzakVar.zza;
        this.zzc = zzakVar.zzb;
        this.zzd = zzfs.zzC(zzakVar.zzc);
        this.zze = zzakVar.zzd;
        this.zzf = 0;
        int i = zzakVar.zze;
        this.zzg = i;
        int i2 = zzakVar.zzf;
        this.zzh = i2;
        this.zzi = i2 != -1 ? i2 : i;
        this.zzj = zzakVar.zzg;
        this.zzk = zzakVar.zzh;
        this.zzl = zzakVar.zzi;
        this.zzm = zzakVar.zzj;
        this.zzn = zzakVar.zzk;
        this.zzo = zzakVar.zzl == null ? Collections.emptyList() : zzakVar.zzl;
        zzad zzadVar = zzakVar.zzm;
        this.zzp = zzadVar;
        this.zzq = zzakVar.zzn;
        this.zzr = zzakVar.zzo;
        this.zzs = zzakVar.zzp;
        this.zzt = zzakVar.zzq;
        this.zzu = zzakVar.zzr == -1 ? 0 : zzakVar.zzr;
        this.zzv = zzakVar.zzs == -1.0f ? 1.0f : zzakVar.zzs;
        this.zzw = zzakVar.zzt;
        this.zzx = zzakVar.zzu;
        this.zzy = zzakVar.zzv;
        this.zzz = zzakVar.zzw;
        this.zzA = zzakVar.zzx;
        this.zzB = zzakVar.zzy;
        this.zzC = zzakVar.zzz == -1 ? 0 : zzakVar.zzz;
        this.zzD = zzakVar.zzA != -1 ? zzakVar.zzA : 0;
        this.zzE = zzakVar.zzB;
        this.zzF = zzakVar.zzC;
        this.zzG = zzakVar.zzD;
        this.zzH = (zzakVar.zzE != 0 || zzadVar == null) ? zzakVar.zzE : 1;
    }

    public final boolean equals(@Nullable Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj != null && zzam.class == obj.getClass()) {
            zzam zzamVar = (zzam) obj;
            int i2 = this.zzap;
            if ((i2 == 0 || (i = zzamVar.zzap) == 0 || i2 == i) && this.zze == zzamVar.zze && this.zzg == zzamVar.zzg && this.zzh == zzamVar.zzh && this.zzn == zzamVar.zzn && this.zzq == zzamVar.zzq && this.zzr == zzamVar.zzr && this.zzs == zzamVar.zzs && this.zzu == zzamVar.zzu && this.zzx == zzamVar.zzx && this.zzz == zzamVar.zzz && this.zzA == zzamVar.zzA && this.zzB == zzamVar.zzB && this.zzC == zzamVar.zzC && this.zzD == zzamVar.zzD && this.zzE == zzamVar.zzE && this.zzF == zzamVar.zzF && this.zzG == zzamVar.zzG && this.zzH == zzamVar.zzH && Float.compare(this.zzt, zzamVar.zzt) == 0 && Float.compare(this.zzv, zzamVar.zzv) == 0 && zzfs.zzF(this.zzb, zzamVar.zzb) && zzfs.zzF(this.zzc, zzamVar.zzc) && zzfs.zzF(this.zzj, zzamVar.zzj) && zzfs.zzF(this.zzl, zzamVar.zzl) && zzfs.zzF(this.zzm, zzamVar.zzm) && zzfs.zzF(this.zzd, zzamVar.zzd) && Arrays.equals(this.zzw, zzamVar.zzw) && zzfs.zzF(this.zzk, zzamVar.zzk) && zzfs.zzF(this.zzy, zzamVar.zzy) && zzfs.zzF(this.zzp, zzamVar.zzp) && zzd(zzamVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzap;
        if (i != 0) {
            return i;
        }
        String str = this.zzb;
        int iHashCode = str == null ? 0 : str.hashCode();
        String str2 = this.zzc;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        int i2 = iHashCode + IronSourceError.ERROR_NON_EXISTENT_INSTANCE;
        String str3 = this.zzd;
        int iHashCode3 = str3 == null ? 0 : str3.hashCode();
        int i3 = (i2 * 31) + iHashCode2;
        int i4 = this.zze;
        int i5 = this.zzg;
        int i6 = this.zzh;
        String str4 = this.zzj;
        int iHashCode4 = ((((((((((i3 * 31) + iHashCode3) * 31) + i4) * 961) + i5) * 31) + i6) * 31) + (str4 == null ? 0 : str4.hashCode())) * 31;
        zzcb zzcbVar = this.zzk;
        int iHashCode5 = (iHashCode4 + (zzcbVar == null ? 0 : zzcbVar.hashCode())) * 31;
        String str5 = this.zzl;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.zzm;
        int iHashCode7 = ((((((((((((((((((((((((((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.zzn) * 31) + ((int) this.zzq)) * 31) + this.zzr) * 31) + this.zzs) * 31) + Float.floatToIntBits(this.zzt)) * 31) + this.zzu) * 31) + Float.floatToIntBits(this.zzv)) * 31) + this.zzx) * 31) + this.zzz) * 31) + this.zzA) * 31) + this.zzB) * 31) + this.zzC) * 31) + this.zzD) * 31) + this.zzE) * 31) + this.zzF) * 31) + this.zzG) * 31) + this.zzH;
        this.zzap = iHashCode7;
        return iHashCode7;
    }

    public final String toString() {
        return "Format(" + this.zzb + ", " + this.zzc + ", " + this.zzl + ", " + this.zzm + ", " + this.zzj + ", " + this.zzi + ", " + this.zzd + ", [" + this.zzr + ", " + this.zzs + ", " + this.zzt + ", " + String.valueOf(this.zzy) + "], [" + this.zzz + ", " + this.zzA + "])";
    }

    public final int zza() {
        int i;
        int i2 = this.zzr;
        if (i2 == -1 || (i = this.zzs) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final zzak zzb() {
        return new zzak(this, null);
    }

    public final zzam zzc(int i) {
        zzak zzakVar = new zzak(this, null);
        zzakVar.zzC(i);
        return new zzam(zzakVar);
    }

    public final boolean zzd(zzam zzamVar) {
        if (this.zzo.size() != zzamVar.zzo.size()) {
            return false;
        }
        for (int i = 0; i < this.zzo.size(); i++) {
            if (!Arrays.equals((byte[]) this.zzo.get(i), (byte[]) zzamVar.zzo.get(i))) {
                return false;
            }
        }
        return true;
    }
}
