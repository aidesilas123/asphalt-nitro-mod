package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzacv {
    public final List zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final float zzh;

    @Nullable
    public final String zzi;

    private zzacv(List list, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f2, @Nullable String str) {
        this.zza = list;
        this.zzb = i;
        this.zzc = i4;
        this.zzd = i5;
        this.zze = i6;
        this.zzf = i7;
        this.zzg = i8;
        this.zzh = f2;
        this.zzi = str;
    }

    public static zzacv zza(zzfj zzfjVar) throws zzcf {
        int i;
        int i2;
        int i3;
        try {
            zzfjVar.zzH(21);
            int iZzl = zzfjVar.zzl() & 3;
            int iZzl2 = zzfjVar.zzl();
            int iZzc = zzfjVar.zzc();
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < iZzl2; i6++) {
                zzfjVar.zzH(1);
                int iZzp = zzfjVar.zzp();
                for (int i7 = 0; i7 < iZzp; i7++) {
                    int iZzp2 = zzfjVar.zzp();
                    i5 += iZzp2 + 4;
                    zzfjVar.zzH(iZzp2);
                }
            }
            zzfjVar.zzG(iZzc);
            byte[] bArr = new byte[i5];
            String strZzb = null;
            int i8 = 0;
            int i9 = 0;
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            float f2 = 1.0f;
            while (i8 < iZzl2) {
                int iZzl3 = zzfjVar.zzl() & 63;
                int iZzp3 = zzfjVar.zzp();
                int i17 = 0;
                while (i17 < iZzp3) {
                    int iZzp4 = zzfjVar.zzp();
                    int i18 = iZzl2;
                    System.arraycopy(zzgg.zza, i4, bArr, i9, 4);
                    int i19 = i9 + 4;
                    System.arraycopy(zzfjVar.zzI(), zzfjVar.zzc(), bArr, i19, iZzp4);
                    int i20 = i19 + iZzp4;
                    if (iZzl3 == 33 && i17 == 0) {
                        zzgd zzgdVarZzc = zzgg.zzc(bArr, i19 + 2, i20);
                        i10 = zzgdVarZzc.zzi;
                        i11 = zzgdVarZzc.zzj;
                        i12 = zzgdVarZzc.zze + 8;
                        i13 = zzgdVarZzc.zzf + 8;
                        int i21 = zzgdVarZzc.zzl;
                        int i22 = zzgdVarZzc.zzm;
                        int i23 = zzgdVarZzc.zzn;
                        i = i20;
                        float f3 = zzgdVarZzc.zzk;
                        i2 = iZzl3;
                        i3 = iZzp3;
                        strZzb = zzeh.zzb(zzgdVarZzc.zza, zzgdVarZzc.zzb, zzgdVarZzc.zzc, zzgdVarZzc.zzd, zzgdVarZzc.zzg, zzgdVarZzc.zzh);
                        f2 = f3;
                        i14 = i21;
                        i16 = i23;
                        i15 = i22;
                        i17 = 0;
                    } else {
                        i = i20;
                        i2 = iZzl3;
                        i3 = iZzp3;
                    }
                    zzfjVar.zzH(iZzp4);
                    i17++;
                    iZzl2 = i18;
                    i9 = i;
                    iZzl3 = i2;
                    iZzp3 = i3;
                    i4 = 0;
                }
                i8++;
                i4 = 0;
            }
            return new zzacv(i5 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iZzl + 1, i10, i11, i12, i13, i14, i15, i16, f2, strZzb);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw zzcf.zza("Error parsing HEVC config", e2);
        }
    }
}
