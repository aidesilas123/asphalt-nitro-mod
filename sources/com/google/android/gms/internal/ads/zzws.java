package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzws extends zzwu {
    private final zzym zzd;
    private final zzfwu zze;
    private final zzeg zzf;

    protected zzws(zzdc zzdcVar, int[] iArr, int i, zzym zzymVar, long j, long j2, long j3, int i2, int i3, float f2, float f3, List list, zzeg zzegVar) {
        super(zzdcVar, iArr, 0);
        this.zzd = zzymVar;
        this.zze = zzfwu.zzj(list);
        this.zzf = zzegVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* bridge */ /* synthetic */ zzfwu zzf(zzxx[] zzxxVarArr) {
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        char c = 0;
        int i3 = 0;
        while (true) {
            i = 2;
            i2 = 1;
            if (i3 >= 2) {
                break;
            }
            zzxx zzxxVar = zzxxVarArr[i3];
            if (zzxxVar == null || zzxxVar.zzb.length <= 1) {
                arrayList.add(null);
            } else {
                zzfwr zzfwrVar = new zzfwr();
                zzfwrVar.zzf(new zzwq(0L, 0L));
                arrayList.add(zzfwrVar);
            }
            i3++;
        }
        long[][] jArr = new long[2][];
        for (int i4 = 0; i4 < 2; i4++) {
            zzxx zzxxVar2 = zzxxVarArr[i4];
            if (zzxxVar2 == null) {
                jArr[i4] = new long[0];
            } else {
                jArr[i4] = new long[zzxxVar2.zzb.length];
                int i5 = 0;
                while (true) {
                    int[] iArr = zzxxVar2.zzb;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    long j = zzxxVar2.zza.zzb(iArr[i5]).zzi;
                    long[] jArr2 = jArr[i4];
                    if (j == -1) {
                        j = 0;
                    }
                    jArr2[i5] = j;
                    i5++;
                }
                Arrays.sort(jArr[i4]);
            }
        }
        int[] iArr2 = new int[2];
        long[] jArr3 = new long[2];
        for (int i6 = 0; i6 < 2; i6++) {
            long[] jArr4 = jArr[i6];
            jArr3[i6] = jArr4.length == 0 ? 0L : jArr4[0];
        }
        zzg(arrayList, jArr3);
        zzfxf zzfxfVarZza = zzfxy.zzc(zzfyd.zzc()).zzb(2).zza();
        int i7 = 0;
        while (i7 < i) {
            int length = jArr[i7].length;
            if (length > i2) {
                double[] dArr = new double[length];
                int i8 = 0;
                while (true) {
                    long[] jArr5 = jArr[i7];
                    double dLog = 0.0d;
                    if (i8 >= jArr5.length) {
                        break;
                    }
                    long j2 = jArr5[i8];
                    if (j2 != -1) {
                        dLog = Math.log(j2);
                    }
                    dArr[i8] = dLog;
                    i8++;
                }
                int i9 = length - 1;
                double d2 = dArr[i9] - dArr[c];
                int i10 = 0;
                while (i10 < i9) {
                    double d3 = dArr[i10];
                    i10++;
                    zzfxfVarZza.zzq(Double.valueOf(d2 == 0.0d ? 1.0d : (((d3 + dArr[i10]) * 0.5d) - dArr[c]) / d2), Integer.valueOf(i7));
                    c = 0;
                }
            }
            i7++;
            c = 0;
            i = 2;
            i2 = 1;
        }
        zzfwu zzfwuVarZzj = zzfwu.zzj(zzfxfVarZza.zzr());
        for (int i11 = 0; i11 < zzfwuVarZzj.size(); i11++) {
            int iIntValue = ((Integer) zzfwuVarZzj.get(i11)).intValue();
            int i12 = iArr2[iIntValue] + 1;
            iArr2[iIntValue] = i12;
            jArr3[iIntValue] = jArr[iIntValue][i12];
            zzg(arrayList, jArr3);
        }
        for (int i13 = 0; i13 < 2; i13++) {
            if (arrayList.get(i13) != null) {
                long j3 = jArr3[i13];
                jArr3[i13] = j3 + j3;
            }
        }
        zzg(arrayList, jArr3);
        zzfwr zzfwrVar2 = new zzfwr();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            zzfwr zzfwrVar3 = (zzfwr) arrayList.get(i14);
            zzfwrVar2.zzf(zzfwrVar3 == null ? zzfwu.zzl() : zzfwrVar3.zzi());
        }
        return zzfwrVar2.zzi();
    }

    private static void zzg(List list, long[] jArr) {
        long j = 0;
        for (int i = 0; i < 2; i++) {
            j += jArr[i];
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzfwr zzfwrVar = (zzfwr) list.get(i2);
            if (zzfwrVar != null) {
                zzfwrVar.zzf(new zzwq(j, jArr[i2]));
            }
        }
    }
}
