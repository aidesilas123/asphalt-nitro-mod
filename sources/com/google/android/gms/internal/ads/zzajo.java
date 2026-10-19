package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzajo implements zzajy {
    private final zzfi zza;
    private final zzfj zzb;

    @Nullable
    private final String zzc;
    private String zzd;
    private zzadk zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private long zzi;
    private zzam zzj;
    private int zzk;
    private long zzl;

    public zzajo() {
        this(null);
    }

    public zzajo(@Nullable String str) {
        zzfi zzfiVar = new zzfi(new byte[128], 128);
        this.zza = zzfiVar;
        this.zzb = new zzfj(zzfiVar.zza);
        this.zzf = 0;
        this.zzl = C.TIME_UNSET;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(zzfj zzfjVar) {
        zzef.zzb(this.zze);
        while (zzfjVar.zza() > 0) {
            int i = this.zzf;
            if (i == 0) {
                while (true) {
                    if (zzfjVar.zza() <= 0) {
                        break;
                    }
                    if (this.zzh) {
                        int iZzl = zzfjVar.zzl();
                        if (iZzl == 119) {
                            this.zzh = false;
                            this.zzf = 1;
                            zzfj zzfjVar2 = this.zzb;
                            zzfjVar2.zzI()[0] = Ascii.VT;
                            zzfjVar2.zzI()[1] = 119;
                            this.zzg = 2;
                            break;
                        }
                        this.zzh = iZzl == 11;
                    } else {
                        this.zzh = zzfjVar.zzl() == 11;
                    }
                }
            } else if (i != 1) {
                int iMin = Math.min(zzfjVar.zza(), this.zzk - this.zzg);
                this.zze.zzr(zzfjVar, iMin);
                int i2 = this.zzg + iMin;
                this.zzg = i2;
                int i3 = this.zzk;
                if (i2 == i3) {
                    long j = this.zzl;
                    if (j != C.TIME_UNSET) {
                        this.zze.zzt(j, 1, i3, 0, null);
                        this.zzl += this.zzi;
                    }
                    this.zzf = 0;
                }
            } else {
                byte[] bArrZzI = this.zzb.zzI();
                int iMin2 = Math.min(zzfjVar.zza(), 128 - this.zzg);
                zzfjVar.zzC(bArrZzI, this.zzg, iMin2);
                int i4 = this.zzg + iMin2;
                this.zzg = i4;
                if (i4 == 128) {
                    this.zza.zzj(0);
                    zzabe zzabeVarZze = zzabf.zze(this.zza);
                    zzam zzamVar = this.zzj;
                    if (zzamVar == null || zzabeVarZze.zzc != zzamVar.zzz || zzabeVarZze.zzb != zzamVar.zzA || !zzfs.zzF(zzabeVarZze.zza, zzamVar.zzm)) {
                        zzak zzakVar = new zzak();
                        zzakVar.zzJ(this.zzd);
                        zzakVar.zzU(zzabeVarZze.zza);
                        zzakVar.zzy(zzabeVarZze.zzc);
                        zzakVar.zzV(zzabeVarZze.zzb);
                        zzakVar.zzM(this.zzc);
                        zzakVar.zzQ(zzabeVarZze.zzf);
                        if (MimeTypes.AUDIO_AC3.equals(zzabeVarZze.zza)) {
                            zzakVar.zzx(zzabeVarZze.zzf);
                        }
                        zzam zzamVarZzac = zzakVar.zzac();
                        this.zzj = zzamVarZzac;
                        this.zze.zzl(zzamVarZzac);
                    }
                    this.zzk = zzabeVarZze.zzd;
                    this.zzi = (((long) zzabeVarZze.zze) * 1000000) / ((long) this.zzj.zzA);
                    this.zzb.zzG(0);
                    this.zze.zzr(this.zzb, 128);
                    this.zzf = 2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzb(zzach zzachVar, zzalk zzalkVar) {
        zzalkVar.zzc();
        this.zzd = zzalkVar.zzb();
        this.zze = zzachVar.zzw(zzalkVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzd(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.zzl = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zze() {
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = false;
        this.zzl = C.TIME_UNSET;
    }
}
