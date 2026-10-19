package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzajj extends zzajh {

    @Nullable
    private zzaji zza;
    private int zzb;
    private boolean zzc;

    @Nullable
    private zzadp zzd;

    @Nullable
    private zzadn zze;

    zzajj() {
    }

    @Override // com.google.android.gms.internal.ads.zzajh
    protected final long zza(zzfj zzfjVar) {
        if ((zzfjVar.zzI()[0] & 1) == 1) {
            return -1L;
        }
        byte b = zzfjVar.zzI()[0];
        zzaji zzajiVar = this.zza;
        zzef.zzb(zzajiVar);
        int i = !zzajiVar.zzd[(b >> 1) & (255 >>> (8 - zzajiVar.zze))].zza ? zzajiVar.zza.zze : zzajiVar.zza.zzf;
        int i2 = this.zzc ? (this.zzb + i) / 4 : 0;
        if (zzfjVar.zzb() < zzfjVar.zzd() + 4) {
            byte[] bArrCopyOf = Arrays.copyOf(zzfjVar.zzI(), zzfjVar.zzd() + 4);
            zzfjVar.zzE(bArrCopyOf, bArrCopyOf.length);
        } else {
            zzfjVar.zzF(zzfjVar.zzd() + 4);
        }
        long j = i2;
        byte[] bArrZzI = zzfjVar.zzI();
        bArrZzI[zzfjVar.zzd() - 4] = (byte) (j & 255);
        bArrZzI[zzfjVar.zzd() - 3] = (byte) ((j >>> 8) & 255);
        bArrZzI[zzfjVar.zzd() - 2] = (byte) ((j >>> 16) & 255);
        bArrZzI[zzfjVar.zzd() - 1] = (byte) ((j >>> 24) & 255);
        this.zzc = true;
        this.zzb = i;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzajh
    protected final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zza = null;
            this.zzd = null;
            this.zze = null;
        }
        this.zzb = 0;
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzajh
    protected final boolean zzc(zzfj zzfjVar, long j, zzaje zzajeVar) throws IOException {
        zzaji zzajiVar;
        int i;
        int iZzb;
        int i2;
        int i3;
        zzadp zzadpVar;
        long jFloor;
        if (this.zza != null) {
            Objects.requireNonNull(zzajeVar.zza);
            return false;
        }
        zzadp zzadpVar2 = this.zzd;
        int i4 = 4;
        if (zzadpVar2 == null) {
            zzadq.zzd(1, zzfjVar, false);
            int iZzi = zzfjVar.zzi();
            int iZzl = zzfjVar.zzl();
            int iZzi2 = zzfjVar.zzi();
            int iZzh = zzfjVar.zzh();
            int i5 = iZzh <= 0 ? -1 : iZzh;
            int iZzh2 = zzfjVar.zzh();
            int i6 = iZzh2 <= 0 ? -1 : iZzh2;
            int iZzh3 = zzfjVar.zzh();
            int i7 = iZzh3 <= 0 ? -1 : iZzh3;
            int iZzl2 = zzfjVar.zzl();
            this.zzd = new zzadp(iZzi, iZzl, iZzi2, i5, i6, i7, (int) Math.pow(2.0d, iZzl2 & 15), (int) Math.pow(2.0d, (iZzl2 & PsExtractor.VIDEO_STREAM_MASK) >> 4), 1 == (zzfjVar.zzl() & 1), Arrays.copyOf(zzfjVar.zzI(), zzfjVar.zzd()));
        } else {
            zzadn zzadnVar = this.zze;
            if (zzadnVar == null) {
                this.zze = zzadq.zzc(zzfjVar, true, true);
            } else {
                byte[] bArr = new byte[zzfjVar.zzd()];
                System.arraycopy(zzfjVar.zzI(), 0, bArr, 0, zzfjVar.zzd());
                int i8 = zzadpVar2.zza;
                int i9 = 5;
                zzadq.zzd(5, zzfjVar, false);
                int iZzl3 = zzfjVar.zzl() + 1;
                zzadm zzadmVar = new zzadm(zzfjVar.zzI());
                zzadmVar.zzc(zzfjVar.zzc() * 8);
                int i10 = 0;
                while (true) {
                    int i11 = 2;
                    int i12 = 16;
                    if (i10 >= iZzl3) {
                        zzadp zzadpVar3 = zzadpVar2;
                        int i13 = 6;
                        int iZzb2 = zzadmVar.zzb(6) + 1;
                        for (int i14 = 0; i14 < iZzb2; i14++) {
                            if (zzadmVar.zzb(16) != 0) {
                                throw zzcf.zza("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int i15 = 1;
                        int iZzb3 = zzadmVar.zzb(6) + 1;
                        int i16 = 0;
                        while (true) {
                            int i17 = 3;
                            if (i16 < iZzb3) {
                                int iZzb4 = zzadmVar.zzb(i12);
                                if (iZzb4 == 0) {
                                    i2 = iZzb3;
                                    int i18 = 8;
                                    zzadmVar.zzc(8);
                                    zzadmVar.zzc(16);
                                    zzadmVar.zzc(16);
                                    zzadmVar.zzc(6);
                                    zzadmVar.zzc(8);
                                    int iZzb5 = zzadmVar.zzb(4) + 1;
                                    int i19 = 0;
                                    while (i19 < iZzb5) {
                                        zzadmVar.zzc(i18);
                                        i19++;
                                        i18 = 8;
                                    }
                                } else {
                                    if (iZzb4 != i15) {
                                        throw zzcf.zza("floor type greater than 1 not decodable: " + iZzb4, null);
                                    }
                                    int iZzb6 = zzadmVar.zzb(i9);
                                    int[] iArr = new int[iZzb6];
                                    int i20 = -1;
                                    for (int i21 = 0; i21 < iZzb6; i21++) {
                                        int iZzb7 = zzadmVar.zzb(4);
                                        iArr[i21] = iZzb7;
                                        if (iZzb7 > i20) {
                                            i20 = iZzb7;
                                        }
                                    }
                                    int i22 = i20 + 1;
                                    int[] iArr2 = new int[i22];
                                    int i23 = 0;
                                    while (i23 < i22) {
                                        iArr2[i23] = zzadmVar.zzb(i17) + 1;
                                        int iZzb8 = zzadmVar.zzb(i11);
                                        if (iZzb8 > 0) {
                                            i3 = 8;
                                            zzadmVar.zzc(8);
                                        } else {
                                            i3 = 8;
                                        }
                                        int i24 = iZzb3;
                                        int i25 = 0;
                                        for (int i26 = 1; i25 < (i26 << iZzb8); i26 = 1) {
                                            zzadmVar.zzc(i3);
                                            i25++;
                                            i3 = 8;
                                        }
                                        i23++;
                                        iZzb3 = i24;
                                        i11 = 2;
                                        i17 = 3;
                                    }
                                    i2 = iZzb3;
                                    zzadmVar.zzc(2);
                                    int iZzb9 = zzadmVar.zzb(4);
                                    int i27 = 0;
                                    int i28 = 0;
                                    for (int i29 = 0; i29 < iZzb6; i29++) {
                                        i27 += iArr2[iArr[i29]];
                                        while (i28 < i27) {
                                            zzadmVar.zzc(iZzb9);
                                            i28++;
                                        }
                                    }
                                }
                                i16++;
                                iZzb3 = i2;
                                i13 = 6;
                                i12 = 16;
                                i11 = 2;
                                i15 = 1;
                                i9 = 5;
                            } else {
                                int i30 = 1;
                                int iZzb10 = zzadmVar.zzb(i13) + 1;
                                int i31 = 0;
                                while (i31 < iZzb10) {
                                    if (zzadmVar.zzb(16) > 2) {
                                        throw zzcf.zza("residueType greater than 2 is not decodable", null);
                                    }
                                    zzadmVar.zzc(24);
                                    zzadmVar.zzc(24);
                                    zzadmVar.zzc(24);
                                    int iZzb11 = zzadmVar.zzb(i13) + i30;
                                    int i32 = 8;
                                    zzadmVar.zzc(8);
                                    int[] iArr3 = new int[iZzb11];
                                    for (int i33 = 0; i33 < iZzb11; i33++) {
                                        iArr3[i33] = ((zzadmVar.zzd() ? zzadmVar.zzb(5) : 0) * 8) + zzadmVar.zzb(3);
                                    }
                                    int i34 = 0;
                                    while (i34 < iZzb11) {
                                        int i35 = 0;
                                        while (i35 < i32) {
                                            if ((iArr3[i34] & (1 << i35)) != 0) {
                                                zzadmVar.zzc(i32);
                                            }
                                            i35++;
                                            i32 = 8;
                                        }
                                        i34++;
                                        i32 = 8;
                                    }
                                    i31++;
                                    i13 = 6;
                                    i30 = 1;
                                }
                                int iZzb12 = zzadmVar.zzb(i13) + 1;
                                for (int i36 = 0; i36 < iZzb12; i36++) {
                                    int iZzb13 = zzadmVar.zzb(16);
                                    if (iZzb13 != 0) {
                                        zzez.zzc("VorbisUtil", "mapping type other than 0 not supported: " + iZzb13);
                                    } else {
                                        if (zzadmVar.zzd()) {
                                            i = 1;
                                            iZzb = zzadmVar.zzb(4) + 1;
                                        } else {
                                            i = 1;
                                            iZzb = 1;
                                        }
                                        if (zzadmVar.zzd()) {
                                            int iZzb14 = zzadmVar.zzb(8) + i;
                                            for (int i37 = 0; i37 < iZzb14; i37++) {
                                                int i38 = i8 - 1;
                                                zzadmVar.zzc(zzadq.zza(i38));
                                                zzadmVar.zzc(zzadq.zza(i38));
                                            }
                                        }
                                        if (zzadmVar.zzb(2) != 0) {
                                            throw zzcf.zza("to reserved bits must be zero after mapping coupling steps", null);
                                        }
                                        if (iZzb > 1) {
                                            for (int i39 = 0; i39 < i8; i39++) {
                                                zzadmVar.zzc(4);
                                            }
                                        }
                                        for (int i40 = 0; i40 < iZzb; i40++) {
                                            zzadmVar.zzc(8);
                                            zzadmVar.zzc(8);
                                            zzadmVar.zzc(8);
                                        }
                                    }
                                }
                                int iZzb15 = zzadmVar.zzb(6) + 1;
                                zzado[] zzadoVarArr = new zzado[iZzb15];
                                for (int i41 = 0; i41 < iZzb15; i41++) {
                                    zzadoVarArr[i41] = new zzado(zzadmVar.zzd(), zzadmVar.zzb(16), zzadmVar.zzb(16), zzadmVar.zzb(8));
                                }
                                if (!zzadmVar.zzd()) {
                                    throw zzcf.zza("framing bit after modes not set as expected", null);
                                }
                                zzajiVar = new zzaji(zzadpVar3, zzadnVar, bArr, zzadoVarArr, zzadq.zza(iZzb15 - 1));
                            }
                        }
                    } else {
                        if (zzadmVar.zzb(24) != 5653314) {
                            throw zzcf.zza("expected code book to start with [0x56, 0x43, 0x42] at " + zzadmVar.zza(), null);
                        }
                        int iZzb16 = zzadmVar.zzb(16);
                        int iZzb17 = zzadmVar.zzb(24);
                        if (zzadmVar.zzd()) {
                            zzadmVar.zzc(5);
                            for (int iZzb18 = 0; iZzb18 < iZzb17; iZzb18 += zzadmVar.zzb(zzadq.zza(iZzb17 - iZzb18))) {
                            }
                        } else {
                            boolean zZzd = zzadmVar.zzd();
                            for (int i42 = 0; i42 < iZzb17; i42++) {
                                if (!zZzd) {
                                    zzadmVar.zzc(5);
                                } else if (zzadmVar.zzd()) {
                                    zzadmVar.zzc(5);
                                }
                            }
                        }
                        int iZzb19 = zzadmVar.zzb(i4);
                        if (iZzb19 > 2) {
                            throw zzcf.zza("lookup type greater than 2 not decodable: " + iZzb19, null);
                        }
                        if (iZzb19 != 1) {
                            if (iZzb19 != 2) {
                                zzadpVar = zzadpVar2;
                            }
                            i10++;
                            zzadpVar2 = zzadpVar;
                            i4 = 4;
                        } else {
                            i11 = iZzb19;
                        }
                        zzadmVar.zzc(32);
                        zzadmVar.zzc(32);
                        int iZzb20 = zzadmVar.zzb(i4) + 1;
                        zzadmVar.zzc(1);
                        if (i11 != 1) {
                            zzadpVar = zzadpVar2;
                            jFloor = ((long) iZzb16) * ((long) iZzb17);
                        } else if (iZzb16 != 0) {
                            zzadpVar = zzadpVar2;
                            jFloor = (long) Math.floor(Math.pow(iZzb17, 1.0d / ((double) iZzb16)));
                        } else {
                            zzadpVar = zzadpVar2;
                            jFloor = 0;
                        }
                        zzadmVar.zzc((int) (jFloor * ((long) iZzb20)));
                        i10++;
                        zzadpVar2 = zzadpVar;
                        i4 = 4;
                    }
                }
            }
        }
        zzajiVar = null;
        this.zza = zzajiVar;
        if (zzajiVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        zzadp zzadpVar4 = zzajiVar.zza;
        arrayList.add(zzadpVar4.zzg);
        arrayList.add(zzajiVar.zzc);
        zzcb zzcbVarZzb = zzadq.zzb(zzfwu.zzk(zzajiVar.zzb.zzb));
        zzak zzakVar = new zzak();
        zzakVar.zzU(MimeTypes.AUDIO_VORBIS);
        zzakVar.zzx(zzadpVar4.zzd);
        zzakVar.zzQ(zzadpVar4.zzc);
        zzakVar.zzy(zzadpVar4.zza);
        zzakVar.zzV(zzadpVar4.zzb);
        zzakVar.zzK(arrayList);
        zzakVar.zzO(zzcbVarZzb);
        zzajeVar.zza = zzakVar.zzac();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzajh
    protected final void zzi(long j) {
        super.zzi(j);
        this.zzc = j != 0;
        zzadp zzadpVar = this.zzd;
        this.zzb = zzadpVar != null ? zzadpVar.zze : 0;
    }
}
