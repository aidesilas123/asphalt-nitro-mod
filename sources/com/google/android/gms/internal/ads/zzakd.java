package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzakd implements zzajy {
    private static final float[] zza = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    @Nullable
    private final zzaln zzb;

    @Nullable
    private final zzfj zzc;
    private final boolean[] zzd;
    private final zzakb zze;

    @Nullable
    private final zzakn zzf;
    private zzakc zzg;
    private long zzh;
    private String zzi;
    private zzadk zzj;
    private boolean zzk;
    private long zzl;

    public zzakd() {
        this(null);
    }

    zzakd(@Nullable zzaln zzalnVar) {
        this.zzb = zzalnVar;
        this.zzd = new boolean[4];
        this.zze = new zzakb(128);
        this.zzl = C.TIME_UNSET;
        this.zzf = new zzakn(178, 128);
        this.zzc = new zzfj();
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(zzfj zzfjVar) {
        int i;
        float f2;
        float f3;
        zzef.zzb(this.zzg);
        zzef.zzb(this.zzj);
        int iZzc = zzfjVar.zzc();
        int iZzd = zzfjVar.zzd();
        byte[] bArrZzI = zzfjVar.zzI();
        this.zzh += (long) zzfjVar.zza();
        this.zzj.zzr(zzfjVar, zzfjVar.zza());
        while (true) {
            int iZza = zzgg.zza(bArrZzI, iZzc, iZzd, this.zzd);
            if (iZza == iZzd) {
                break;
            }
            int i2 = iZza + 3;
            int i3 = zzfjVar.zzI()[i2] & 255;
            int i4 = iZza - iZzc;
            if (!this.zzk) {
                if (i4 > 0) {
                    this.zze.zza(bArrZzI, iZzc, iZza);
                }
                if (this.zze.zzc(i3, i4 < 0 ? -i4 : 0)) {
                    zzadk zzadkVar = this.zzj;
                    zzakb zzakbVar = this.zze;
                    int i5 = zzakbVar.zzb;
                    String str = this.zzi;
                    Objects.requireNonNull(str);
                    byte[] bArrCopyOf = Arrays.copyOf(zzakbVar.zzc, zzakbVar.zza);
                    zzfi zzfiVar = new zzfi(bArrCopyOf, bArrCopyOf.length);
                    zzfiVar.zzm(i5);
                    zzfiVar.zzm(4);
                    zzfiVar.zzk();
                    zzfiVar.zzl(8);
                    if (zzfiVar.zzn()) {
                        zzfiVar.zzl(4);
                        zzfiVar.zzl(3);
                    }
                    int iZzd2 = zzfiVar.zzd(4);
                    if (iZzd2 == 15) {
                        int iZzd3 = zzfiVar.zzd(8);
                        int iZzd4 = zzfiVar.zzd(8);
                        if (iZzd4 == 0) {
                            zzez.zzf("H263Reader", "Invalid aspect ratio");
                            f3 = 1.0f;
                        } else {
                            f2 = iZzd3 / iZzd4;
                            f3 = f2;
                        }
                    } else if (iZzd2 < 7) {
                        f2 = zza[iZzd2];
                        f3 = f2;
                    } else {
                        zzez.zzf("H263Reader", "Invalid aspect ratio");
                        f3 = 1.0f;
                    }
                    if (zzfiVar.zzn()) {
                        zzfiVar.zzl(2);
                        zzfiVar.zzl(1);
                        if (zzfiVar.zzn()) {
                            zzfiVar.zzl(15);
                            zzfiVar.zzk();
                            zzfiVar.zzl(15);
                            zzfiVar.zzk();
                            zzfiVar.zzl(15);
                            zzfiVar.zzk();
                            zzfiVar.zzl(3);
                            zzfiVar.zzl(11);
                            zzfiVar.zzk();
                            zzfiVar.zzl(15);
                            zzfiVar.zzk();
                        }
                    }
                    if (zzfiVar.zzd(2) != 0) {
                        zzez.zzf("H263Reader", "Unhandled video object layer shape");
                    }
                    zzfiVar.zzk();
                    int iZzd5 = zzfiVar.zzd(16);
                    zzfiVar.zzk();
                    if (zzfiVar.zzn()) {
                        if (iZzd5 == 0) {
                            zzez.zzf("H263Reader", "Invalid vop_increment_time_resolution");
                        } else {
                            int i6 = iZzd5 - 1;
                            int i7 = 0;
                            while (i6 > 0) {
                                i6 >>= 1;
                                i7++;
                            }
                            zzfiVar.zzl(i7);
                        }
                    }
                    zzfiVar.zzk();
                    int iZzd6 = zzfiVar.zzd(13);
                    zzfiVar.zzk();
                    int iZzd7 = zzfiVar.zzd(13);
                    zzfiVar.zzk();
                    zzfiVar.zzk();
                    zzak zzakVar = new zzak();
                    zzakVar.zzJ(str);
                    zzakVar.zzU(MimeTypes.VIDEO_MP4V);
                    zzakVar.zzab(iZzd6);
                    zzakVar.zzH(iZzd7);
                    zzakVar.zzR(f3);
                    zzakVar.zzK(Collections.singletonList(bArrCopyOf));
                    zzadkVar.zzl(zzakVar.zzac());
                    this.zzk = true;
                }
            }
            this.zzg.zza(bArrZzI, iZzc, iZza);
            zzakn zzaknVar = this.zzf;
            if (i4 > 0) {
                zzaknVar.zza(bArrZzI, iZzc, iZza);
                i = 0;
            } else {
                i = -i4;
            }
            if (this.zzf.zzd(i)) {
                zzakn zzaknVar2 = this.zzf;
                int iZzb = zzgg.zzb(zzaknVar2.zza, zzaknVar2.zzb);
                zzfj zzfjVar2 = this.zzc;
                int i8 = zzfs.zza;
                zzfjVar2.zzE(this.zzf.zza, iZzb);
                this.zzb.zza(this.zzl, this.zzc);
            }
            if (i3 == 178) {
                if (zzfjVar.zzI()[iZza + 2] == 1) {
                    this.zzf.zzc(178);
                }
                i3 = 178;
            }
            int i9 = iZzd - iZza;
            this.zzg.zzb(this.zzh - ((long) i9), i9, this.zzk);
            this.zzg.zzc(i3, this.zzl);
            iZzc = i2;
        }
        if (!this.zzk) {
            this.zze.zza(bArrZzI, iZzc, iZzd);
        }
        this.zzg.zza(bArrZzI, iZzc, iZzd);
        this.zzf.zza(bArrZzI, iZzc, iZzd);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzb(zzach zzachVar, zzalk zzalkVar) {
        zzalkVar.zzc();
        this.zzi = zzalkVar.zzb();
        zzadk zzadkVarZzw = zzachVar.zzw(zzalkVar.zza(), 2);
        this.zzj = zzadkVarZzw;
        this.zzg = new zzakc(zzadkVarZzw);
        this.zzb.zzb(zzachVar, zzalkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzc(boolean z) {
        zzef.zzb(this.zzg);
        if (z) {
            this.zzg.zzb(this.zzh, 0, this.zzk);
            this.zzg.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzd(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.zzl = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zze() {
        zzgg.zzf(this.zzd);
        this.zze.zzb();
        zzakc zzakcVar = this.zzg;
        if (zzakcVar != null) {
            zzakcVar.zzd();
        }
        this.zzf.zzb();
        this.zzh = 0L;
        this.zzl = C.TIME_UNSET;
    }
}
