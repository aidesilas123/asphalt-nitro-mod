package com.google.android.gms.internal.ads;

import androidx.core.view.InputDeviceCompat;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaky implements zzall {
    private final zzakx zza;
    private final zzfj zzb = new zzfj(32);
    private int zzc;
    private int zzd;
    private boolean zze;
    private boolean zzf;

    public zzaky(zzakx zzakxVar) {
        this.zza = zzakxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final void zza(zzfj zzfjVar, int i) {
        int i2 = i & 1;
        int iZzc = i2 != 0 ? zzfjVar.zzc() + zzfjVar.zzl() : -1;
        if (this.zzf) {
            if (i2 == 0) {
                return;
            }
            this.zzf = false;
            zzfjVar.zzG(iZzc);
            this.zzd = 0;
        }
        while (zzfjVar.zza() > 0) {
            int i3 = this.zzd;
            if (i3 < 3) {
                if (i3 == 0) {
                    int iZzl = zzfjVar.zzl();
                    zzfjVar.zzG(zzfjVar.zzc() - 1);
                    if (iZzl == 255) {
                        this.zzf = true;
                        return;
                    }
                }
                int iMin = Math.min(zzfjVar.zza(), 3 - this.zzd);
                zzfjVar.zzC(this.zzb.zzI(), this.zzd, iMin);
                int i4 = this.zzd + iMin;
                this.zzd = i4;
                if (i4 == 3) {
                    this.zzb.zzG(0);
                    this.zzb.zzF(3);
                    this.zzb.zzH(1);
                    zzfj zzfjVar2 = this.zzb;
                    int iZzl2 = zzfjVar2.zzl();
                    boolean z = (iZzl2 & 128) != 0;
                    int iZzl3 = zzfjVar2.zzl();
                    this.zze = z;
                    this.zzc = (iZzl3 | ((iZzl2 & 15) << 8)) + 3;
                    int iZzb = this.zzb.zzb();
                    int i5 = this.zzc;
                    if (iZzb < i5) {
                        int iZzb2 = this.zzb.zzb();
                        this.zzb.zzA(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i5, iZzb2 + iZzb2)));
                    }
                }
            } else {
                int iMin2 = Math.min(zzfjVar.zza(), this.zzc - i3);
                zzfjVar.zzC(this.zzb.zzI(), this.zzd, iMin2);
                int i6 = this.zzd + iMin2;
                this.zzd = i6;
                int i7 = this.zzc;
                if (i6 != i7) {
                    continue;
                } else {
                    if (!this.zze) {
                        this.zzb.zzF(i7);
                    } else {
                        if (zzfs.zzd(this.zzb.zzI(), 0, i7, -1) != 0) {
                            this.zzf = true;
                            return;
                        }
                        this.zzb.zzF(this.zzc - 4);
                    }
                    this.zzb.zzG(0);
                    this.zza.zza(this.zzb);
                    this.zzd = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final void zzb(zzfq zzfqVar, zzach zzachVar, zzalk zzalkVar) {
        this.zza.zzb(zzfqVar, zzachVar, zzalkVar);
        this.zzf = true;
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final void zzc() {
        this.zzf = true;
    }
}
