package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzail implements zzace, zzade {
    public static final zzacl zza = new zzacl() { // from class: com.google.android.gms.internal.ads.zzaij
        @Override // com.google.android.gms.internal.ads.zzacl
        public final /* synthetic */ zzace[] zza(Uri uri, Map map) {
            int i = zzack.zza;
            zzacl zzaclVar = zzail.zza;
            return new zzace[]{new zzail(0)};
        }
    };
    private final zzfj zzb;
    private final zzfj zzc;
    private final zzfj zzd;
    private final zzfj zze;
    private final ArrayDeque zzf;
    private final zzain zzg;
    private final List zzh;
    private int zzi;
    private int zzj;
    private long zzk;
    private int zzl;

    @Nullable
    private zzfj zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private boolean zzr;
    private zzach zzs;
    private zzaik[] zzt;
    private long[][] zzu;
    private int zzv;
    private long zzw;
    private int zzx;

    @Nullable
    private zzago zzy;

    public zzail() {
        this(0);
    }

    public zzail(int i) {
        this.zzi = 0;
        this.zzg = new zzain();
        this.zzh = new ArrayList();
        this.zze = new zzfj(16);
        this.zzf = new ArrayDeque();
        this.zzb = new zzfj(zzgg.zza);
        this.zzc = new zzfj(4);
        this.zzd = new zzfj();
        this.zzn = -1;
        this.zzs = zzach.zza;
        this.zzt = new zzaik[0];
    }

    private static int zzf(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static int zzi(zzais zzaisVar, long j) {
        int iZza = zzaisVar.zza(j);
        return iZza == -1 ? zzaisVar.zzb(j) : iZza;
    }

    private static long zzj(zzais zzaisVar, long j, long j2) {
        int iZzi = zzi(zzaisVar, j);
        return iZzi == -1 ? j2 : Math.min(zzaisVar.zzc[iZzi], j2);
    }

    private final void zzk() {
        this.zzi = 0;
        this.zzl = 0;
    }

    private final void zzl(long j) throws zzcf {
        zzcb zzcbVar;
        long j2;
        List list;
        int i;
        int i2;
        zzcb zzcbVar2;
        int i3;
        zzacu zzacuVar;
        while (!this.zzf.isEmpty() && ((zzahq) this.zzf.peek()).zza == j) {
            zzahq zzahqVar = (zzahq) this.zzf.pop();
            if (zzahqVar.zzd == 1836019574) {
                ArrayList arrayList = new ArrayList();
                int i4 = this.zzx;
                zzacu zzacuVar2 = new zzacu();
                zzahr zzahrVarZzb = zzahqVar.zzb(1969517665);
                if (zzahrVarZzb != null) {
                    zzcb zzcbVarZzb = zzaia.zzb(zzahrVarZzb);
                    zzacuVar2.zzb(zzcbVarZzb);
                    zzcbVar = zzcbVarZzb;
                } else {
                    zzcbVar = null;
                }
                zzahq zzahqVarZza = zzahqVar.zza(1835365473);
                zzcb zzcbVarZza = zzahqVarZza != null ? zzaia.zza(zzahqVarZza) : null;
                zzca[] zzcaVarArr = new zzca[1];
                zzahr zzahrVarZzb2 = zzahqVar.zzb(1836476516);
                Objects.requireNonNull(zzahrVarZzb2);
                boolean z = i4 == 1;
                zzcaVarArr[0] = zzaia.zzc(zzahrVarZzb2.zza);
                zzcb zzcbVar3 = new zzcb(C.TIME_UNSET, zzcaVarArr);
                zzcb zzcbVar4 = zzcbVar;
                long j3 = -9223372036854775807L;
                List listZzd = zzaia.zzd(zzahqVar, zzacuVar2, C.TIME_UNSET, null, false, z, new zzftn() { // from class: com.google.android.gms.internal.ads.zzaii
                    @Override // com.google.android.gms.internal.ads.zzftn
                    public final Object apply(Object obj) {
                        zzaip zzaipVar = (zzaip) obj;
                        zzacl zzaclVar = zzail.zza;
                        return zzaipVar;
                    }
                });
                int size = listZzd.size();
                long j4 = -9223372036854775807L;
                int size2 = -1;
                int i5 = 0;
                while (true) {
                    j2 = 0;
                    if (i5 >= size) {
                        break;
                    }
                    zzais zzaisVar = (zzais) listZzd.get(i5);
                    if (zzaisVar.zzb == 0) {
                        list = listZzd;
                        i = size;
                        zzacuVar = zzacuVar2;
                    } else {
                        zzaip zzaipVar = zzaisVar.zza;
                        list = listZzd;
                        long j5 = zzaipVar.zze;
                        if (j5 == j3) {
                            j5 = zzaisVar.zzh;
                        }
                        long jMax = Math.max(j4, j5);
                        i = size;
                        zzaik zzaikVar = new zzaik(zzaipVar, zzaisVar, this.zzs.zzw(i5, zzaipVar.zzb));
                        int i6 = MimeTypes.AUDIO_TRUEHD.equals(zzaipVar.zzf.zzm) ? zzaisVar.zze * 16 : zzaisVar.zze + 30;
                        zzak zzakVarZzb = zzaipVar.zzf.zzb();
                        zzakVarZzb.zzN(i6);
                        if (zzaipVar.zzb != 2 || j5 <= 0) {
                            i2 = 1;
                        } else {
                            int i7 = zzaisVar.zzb;
                            i2 = 1;
                            if (i7 > 1) {
                                zzakVarZzb.zzG(i7 / (j5 / 1000000.0f));
                            }
                        }
                        int i8 = zzaipVar.zzb;
                        int i9 = zzaih.zzb;
                        if (i8 == i2 && zzacuVar2.zza()) {
                            zzakVarZzb.zzE(zzacuVar2.zza);
                            zzakVarZzb.zzF(zzacuVar2.zzb);
                        }
                        int i10 = zzaipVar.zzb;
                        zzcb[] zzcbVarArr = new zzcb[3];
                        if (this.zzh.isEmpty()) {
                            i3 = 0;
                            zzcbVar2 = null;
                        } else {
                            zzcbVar2 = new zzcb(this.zzh);
                            i3 = 0;
                        }
                        zzcbVarArr[i3] = zzcbVar2;
                        zzcbVarArr[i2] = zzcbVar4;
                        zzcbVarArr[2] = zzcbVar3;
                        zzacuVar = zzacuVar2;
                        zzcb zzcbVar5 = new zzcb(C.TIME_UNSET, new zzca[i3]);
                        if (zzcbVarZza != null) {
                            for (int i11 = 0; i11 < zzcbVarZza.zza(); i11++) {
                                zzca zzcaVarZzb = zzcbVarZza.zzb(i11);
                                if (zzcaVarZzb instanceof zzfw) {
                                    zzfw zzfwVar = (zzfw) zzcaVarZzb;
                                    if (!zzfwVar.zza.equals("com.android.capture.fps")) {
                                        zzcbVar5 = zzcbVar5.zzc(zzfwVar);
                                    } else if (i10 == 2) {
                                        zzcbVar5 = zzcbVar5.zzc(zzfwVar);
                                    }
                                }
                            }
                        }
                        for (int i12 = 0; i12 < 3; i12++) {
                            zzcbVar5 = zzcbVar5.zzd(zzcbVarArr[i12]);
                        }
                        if (zzcbVar5.zza() > 0) {
                            zzakVarZzb.zzO(zzcbVar5);
                        }
                        zzaikVar.zzc.zzl(zzakVarZzb.zzac());
                        if (zzaipVar.zzb == 2 && size2 == -1) {
                            size2 = arrayList.size();
                        }
                        arrayList.add(zzaikVar);
                        j4 = jMax;
                    }
                    i5++;
                    zzacuVar2 = zzacuVar;
                    listZzd = list;
                    size = i;
                    j3 = C.TIME_UNSET;
                }
                this.zzv = size2;
                this.zzw = j4;
                zzaik[] zzaikVarArr = (zzaik[]) arrayList.toArray(new zzaik[0]);
                this.zzt = zzaikVarArr;
                int length = zzaikVarArr.length;
                long[][] jArr = new long[length][];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i13 = 0; i13 < zzaikVarArr.length; i13++) {
                    jArr[i13] = new long[zzaikVarArr[i13].zzb.zzb];
                    jArr2[i13] = zzaikVarArr[i13].zzb.zzf[0];
                }
                int i14 = 0;
                while (i14 < zzaikVarArr.length) {
                    long j6 = Long.MAX_VALUE;
                    int i15 = -1;
                    for (int i16 = 0; i16 < zzaikVarArr.length; i16++) {
                        if (!zArr[i16]) {
                            long j7 = jArr2[i16];
                            if (j7 <= j6) {
                                i15 = i16;
                                j6 = j7;
                            }
                        }
                    }
                    int i17 = iArr[i15];
                    long[] jArr3 = jArr[i15];
                    jArr3[i17] = j2;
                    zzais zzaisVar2 = zzaikVarArr[i15].zzb;
                    j2 += (long) zzaisVar2.zzd[i17];
                    int i18 = i17 + 1;
                    iArr[i15] = i18;
                    if (i18 < jArr3.length) {
                        jArr2[i15] = zzaisVar2.zzf[i18];
                    } else {
                        zArr[i15] = true;
                        i14++;
                    }
                }
                this.zzu = jArr;
                this.zzs.zzD();
                this.zzs.zzO(this);
                this.zzf.clear();
                this.zzi = 2;
            } else if (!this.zzf.isEmpty()) {
                ((zzahq) this.zzf.peek()).zzc(zzahqVar);
            }
        }
        if (this.zzi != 2) {
            zzk();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final long zza() {
        return this.zzw;
    }

    /* JADX WARN: Removed duplicated region for block: B:264:0x0081 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007b  */
    @Override // com.google.android.gms.internal.ads.zzace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zzb(com.google.android.gms.internal.ads.zzacf r33, com.google.android.gms.internal.ads.zzadb r34) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1045
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzail.zzb(com.google.android.gms.internal.ads.zzacf, com.google.android.gms.internal.ads.zzadb):int");
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzc(zzach zzachVar) {
        this.zzs = zzachVar;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzd(long j, long j2) {
        this.zzf.clear();
        this.zzl = 0;
        this.zzn = -1;
        this.zzo = 0;
        this.zzp = 0;
        this.zzq = 0;
        if (j == 0) {
            zzk();
            return;
        }
        for (zzaik zzaikVar : this.zzt) {
            zzais zzaisVar = zzaikVar.zzb;
            int iZza = zzaisVar.zza(j2);
            if (iZza == -1) {
                iZza = zzaisVar.zzb(j2);
            }
            zzaikVar.zze = iZza;
            zzadl zzadlVar = zzaikVar.zzd;
            if (zzadlVar != null) {
                zzadlVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final boolean zze(zzacf zzacfVar) throws IOException {
        return zzaio.zzb(zzacfVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final zzadc zzg(long j) {
        long j2;
        long j3;
        int iZzb;
        zzaik[] zzaikVarArr = this.zzt;
        if (zzaikVarArr.length == 0) {
            zzadf zzadfVar = zzadf.zza;
            return new zzadc(zzadfVar, zzadfVar);
        }
        int i = this.zzv;
        long jZzj = -1;
        if (i != -1) {
            zzais zzaisVar = zzaikVarArr[i].zzb;
            int iZzi = zzi(zzaisVar, j);
            if (iZzi == -1) {
                zzadf zzadfVar2 = zzadf.zza;
                return new zzadc(zzadfVar2, zzadfVar2);
            }
            long j4 = zzaisVar.zzf[iZzi];
            j2 = zzaisVar.zzc[iZzi];
            if (j4 >= j || iZzi >= zzaisVar.zzb - 1 || (iZzb = zzaisVar.zzb(j)) == -1 || iZzb == iZzi) {
                j3 = -9223372036854775807L;
            } else {
                j3 = zzaisVar.zzf[iZzb];
                jZzj = zzaisVar.zzc[iZzb];
            }
            j = j4;
        } else {
            j2 = Long.MAX_VALUE;
            j3 = -9223372036854775807L;
        }
        int i2 = 0;
        while (true) {
            zzaik[] zzaikVarArr2 = this.zzt;
            if (i2 >= zzaikVarArr2.length) {
                break;
            }
            if (i2 != this.zzv) {
                zzais zzaisVar2 = zzaikVarArr2[i2].zzb;
                long jZzj2 = zzj(zzaisVar2, j, j2);
                if (j3 != C.TIME_UNSET) {
                    jZzj = zzj(zzaisVar2, j3, jZzj);
                }
                j2 = jZzj2;
            }
            i2++;
        }
        zzadf zzadfVar3 = new zzadf(j, j2);
        return j3 == C.TIME_UNSET ? new zzadc(zzadfVar3, zzadfVar3) : new zzadc(zzadfVar3, new zzadf(j3, jZzj));
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzh() {
        return true;
    }
}
