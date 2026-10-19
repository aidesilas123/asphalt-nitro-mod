package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzakm implements zzajy {
    private final zzfj zza;
    private final zzacy zzb;

    @Nullable
    private final String zzc;
    private zzadk zzd;
    private String zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private boolean zzi;
    private long zzj;
    private int zzk;
    private long zzl;

    public zzakm() {
        this(null);
    }

    public zzakm(@Nullable String str) {
        this.zzf = 0;
        zzfj zzfjVar = new zzfj(4);
        this.zza = zzfjVar;
        zzfjVar.zzI()[0] = -1;
        this.zzb = new zzacy();
        this.zzl = C.TIME_UNSET;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(zzfj zzfjVar) {
        zzef.zzb(this.zzd);
        while (zzfjVar.zza() > 0) {
            int i = this.zzf;
            if (i == 0) {
                byte[] bArrZzI = zzfjVar.zzI();
                int iZzc = zzfjVar.zzc();
                int iZzd = zzfjVar.zzd();
                while (true) {
                    if (iZzc >= iZzd) {
                        zzfjVar.zzG(iZzd);
                        break;
                    }
                    int i2 = iZzc + 1;
                    byte b = bArrZzI[iZzc];
                    boolean z = (b & 255) == 255;
                    boolean z2 = this.zzi && (b & 224) == 224;
                    this.zzi = z;
                    if (z2) {
                        zzfjVar.zzG(i2);
                        this.zzi = false;
                        this.zza.zzI()[1] = bArrZzI[iZzc];
                        this.zzg = 2;
                        this.zzf = 1;
                        break;
                    }
                    iZzc = i2;
                }
            } else if (i != 1) {
                int iMin = Math.min(zzfjVar.zza(), this.zzk - this.zzg);
                this.zzd.zzr(zzfjVar, iMin);
                int i3 = this.zzg + iMin;
                this.zzg = i3;
                int i4 = this.zzk;
                if (i3 >= i4) {
                    long j = this.zzl;
                    if (j != C.TIME_UNSET) {
                        this.zzd.zzt(j, 1, i4, 0, null);
                        this.zzl += this.zzj;
                    }
                    this.zzg = 0;
                    this.zzf = 0;
                }
            } else {
                int iMin2 = Math.min(zzfjVar.zza(), 4 - this.zzg);
                zzfjVar.zzC(this.zza.zzI(), this.zzg, iMin2);
                int i5 = this.zzg + iMin2;
                this.zzg = i5;
                if (i5 >= 4) {
                    this.zza.zzG(0);
                    if (this.zzb.zza(this.zza.zzf())) {
                        zzacy zzacyVar = this.zzb;
                        this.zzk = zzacyVar.zzc;
                        if (!this.zzh) {
                            this.zzj = (((long) zzacyVar.zzg) * 1000000) / ((long) zzacyVar.zzd);
                            zzak zzakVar = new zzak();
                            zzakVar.zzJ(this.zze);
                            zzakVar.zzU(this.zzb.zzb);
                            zzakVar.zzN(4096);
                            zzakVar.zzy(this.zzb.zze);
                            zzakVar.zzV(this.zzb.zzd);
                            zzakVar.zzM(this.zzc);
                            this.zzd.zzl(zzakVar.zzac());
                            this.zzh = true;
                        }
                        this.zza.zzG(0);
                        this.zzd.zzr(this.zza, 4);
                        this.zzf = 2;
                    } else {
                        this.zzg = 0;
                        this.zzf = 1;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzb(zzach zzachVar, zzalk zzalkVar) {
        zzalkVar.zzc();
        this.zze = zzalkVar.zzb();
        this.zzd = zzachVar.zzw(zzalkVar.zza(), 1);
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
        this.zzi = false;
        this.zzl = C.TIME_UNSET;
    }
}
