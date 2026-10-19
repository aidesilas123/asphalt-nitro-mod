package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzacr {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final long zzj;

    @Nullable
    public final zzacq zzk;

    @Nullable
    private final zzcb zzl;

    private zzacr(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, @Nullable zzacq zzacqVar, @Nullable zzcb zzcbVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = i5;
        this.zzf = zzi(i5);
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = zzh(i7);
        this.zzj = j;
        this.zzk = zzacqVar;
        this.zzl = zzcbVar;
    }

    public zzacr(byte[] bArr, int i) {
        zzfi zzfiVar = new zzfi(bArr, bArr.length);
        zzfiVar.zzj(i * 8);
        this.zza = zzfiVar.zzd(16);
        this.zzb = zzfiVar.zzd(16);
        this.zzc = zzfiVar.zzd(24);
        this.zzd = zzfiVar.zzd(24);
        int iZzd = zzfiVar.zzd(20);
        this.zze = iZzd;
        this.zzf = zzi(iZzd);
        this.zzg = zzfiVar.zzd(3) + 1;
        int iZzd2 = zzfiVar.zzd(5) + 1;
        this.zzh = iZzd2;
        this.zzi = zzh(iZzd2);
        int iZzd3 = zzfiVar.zzd(4);
        int iZzd4 = zzfiVar.zzd(32);
        int i2 = zzfs.zza;
        this.zzj = ((((long) iZzd3) & 4294967295L) << 32) | (((long) iZzd4) & 4294967295L);
        this.zzk = null;
        this.zzl = null;
    }

    private static int zzh(int i) {
        if (i == 8) {
            return 1;
        }
        if (i == 12) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i != 20) {
            return i != 24 ? -1 : 6;
        }
        return 5;
    }

    private static int zzi(int i) {
        switch (i) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public final long zza() {
        long j = this.zzj;
        return j == 0 ? C.TIME_UNSET : (j * 1000000) / ((long) this.zze);
    }

    public final long zzb(long j) {
        return Math.max(0L, Math.min((j * ((long) this.zze)) / 1000000, this.zzj - 1));
    }

    public final zzam zzc(byte[] bArr, @Nullable zzcb zzcbVar) {
        bArr[4] = -128;
        zzcb zzcbVarZzd = zzd(zzcbVar);
        zzak zzakVar = new zzak();
        zzakVar.zzU(MimeTypes.AUDIO_FLAC);
        int i = this.zzd;
        if (i <= 0) {
            i = -1;
        }
        zzakVar.zzN(i);
        zzakVar.zzy(this.zzg);
        zzakVar.zzV(this.zze);
        zzakVar.zzK(Collections.singletonList(bArr));
        zzakVar.zzO(zzcbVarZzd);
        return zzakVar.zzac();
    }

    @Nullable
    public final zzcb zzd(@Nullable zzcb zzcbVar) {
        zzcb zzcbVar2 = this.zzl;
        return zzcbVar2 == null ? zzcbVar : zzcbVar2.zzd(zzcbVar);
    }

    public final zzacr zze(List list) {
        return new zzacr(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(new zzcb(list)));
    }

    public final zzacr zzf(@Nullable zzacq zzacqVar) {
        return new zzacr(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, zzacqVar, this.zzl);
    }

    public final zzacr zzg(List list) {
        return new zzacr(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(zzadq.zzb(list)));
    }
}
