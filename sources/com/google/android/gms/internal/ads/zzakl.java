package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzakl implements zzajy {

    @Nullable
    private final String zza;
    private final zzfj zzb;
    private final zzfi zzc;
    private zzadk zzd;
    private String zze;
    private zzam zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private long zzk;
    private boolean zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private boolean zzp;
    private long zzq;
    private int zzr;
    private long zzs;
    private int zzt;

    @Nullable
    private String zzu;

    public zzakl(@Nullable String str) {
        this.zza = str;
        zzfj zzfjVar = new zzfj(1024);
        this.zzb = zzfjVar;
        byte[] bArrZzI = zzfjVar.zzI();
        this.zzc = new zzfi(bArrZzI, bArrZzI.length);
        this.zzk = C.TIME_UNSET;
    }

    private final int zzf(zzfi zzfiVar) throws zzcf {
        int iZza = zzfiVar.zza();
        zzabb zzabbVarZzb = zzabc.zzb(zzfiVar, true);
        this.zzu = zzabbVarZzb.zzc;
        this.zzr = zzabbVarZzb.zza;
        this.zzt = zzabbVarZzb.zzb;
        return iZza - zzfiVar.zza();
    }

    private static long zzg(zzfi zzfiVar) {
        return zzfiVar.zzd((zzfiVar.zzd(2) + 1) * 8);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(zzfj zzfjVar) throws zzcf {
        int i;
        int i2;
        int iZzd;
        boolean zZzn;
        zzef.zzb(this.zzd);
        while (zzfjVar.zza() > 0) {
            int i3 = this.zzg;
            if (i3 != 0) {
                if (i3 == 1) {
                    int iZzl = zzfjVar.zzl();
                    if ((iZzl & 224) == 224) {
                        this.zzj = iZzl;
                        this.zzg = 2;
                    } else if (iZzl != 86) {
                        this.zzg = 0;
                    }
                } else if (i3 != 2) {
                    int iMin = Math.min(zzfjVar.zza(), this.zzi - this.zzh);
                    zzfjVar.zzC(this.zzc.zza, this.zzh, iMin);
                    int i4 = this.zzh + iMin;
                    this.zzh = i4;
                    if (i4 == this.zzi) {
                        this.zzc.zzj(0);
                        zzfi zzfiVar = this.zzc;
                        if (zzfiVar.zzn()) {
                            if (this.zzl) {
                            }
                            this.zzg = 0;
                        } else {
                            this.zzl = true;
                            int iZzd2 = zzfiVar.zzd(1);
                            if (iZzd2 == 1) {
                                iZzd = zzfiVar.zzd(1);
                                i2 = 1;
                            } else {
                                i2 = iZzd2;
                                iZzd = 0;
                            }
                            this.zzm = iZzd;
                            if (iZzd != 0) {
                                throw zzcf.zza(null, null);
                            }
                            if (i2 == 1) {
                                zzg(zzfiVar);
                                i2 = 1;
                            }
                            if (!zzfiVar.zzn()) {
                                throw zzcf.zza(null, null);
                            }
                            this.zzn = zzfiVar.zzd(6);
                            int iZzd3 = zzfiVar.zzd(4);
                            int iZzd4 = zzfiVar.zzd(3);
                            if (iZzd3 != 0 || iZzd4 != 0) {
                                throw zzcf.zza(null, null);
                            }
                            if (i2 == 0) {
                                int iZzc = zzfiVar.zzc();
                                int iZzf = zzf(zzfiVar);
                                zzfiVar.zzj(iZzc);
                                byte[] bArr = new byte[(iZzf + 7) / 8];
                                zzfiVar.zzg(bArr, 0, iZzf);
                                zzak zzakVar = new zzak();
                                zzakVar.zzJ(this.zze);
                                zzakVar.zzU(MimeTypes.AUDIO_AAC);
                                zzakVar.zzz(this.zzu);
                                zzakVar.zzy(this.zzt);
                                zzakVar.zzV(this.zzr);
                                zzakVar.zzK(Collections.singletonList(bArr));
                                zzakVar.zzM(this.zza);
                                zzam zzamVarZzac = zzakVar.zzac();
                                if (!zzamVarZzac.equals(this.zzf)) {
                                    this.zzf = zzamVarZzac;
                                    this.zzs = 1024000000 / ((long) zzamVarZzac.zzA);
                                    this.zzd.zzl(zzamVarZzac);
                                }
                            } else {
                                zzfiVar.zzl(((int) zzg(zzfiVar)) - zzf(zzfiVar));
                            }
                            int iZzd5 = zzfiVar.zzd(3);
                            this.zzo = iZzd5;
                            if (iZzd5 == 0) {
                                zzfiVar.zzl(8);
                            } else if (iZzd5 == 1) {
                                zzfiVar.zzl(9);
                            } else if (iZzd5 == 3 || iZzd5 == 4 || iZzd5 == 5) {
                                zzfiVar.zzl(6);
                            } else {
                                if (iZzd5 != 6 && iZzd5 != 7) {
                                    throw new IllegalStateException();
                                }
                                zzfiVar.zzl(1);
                            }
                            boolean zZzn2 = zzfiVar.zzn();
                            this.zzp = zZzn2;
                            this.zzq = 0L;
                            if (zZzn2) {
                                if (i2 != 1) {
                                    do {
                                        zZzn = zzfiVar.zzn();
                                        this.zzq = (this.zzq << 8) + ((long) zzfiVar.zzd(8));
                                    } while (zZzn);
                                } else {
                                    this.zzq = zzg(zzfiVar);
                                }
                            }
                            if (zzfiVar.zzn()) {
                                zzfiVar.zzl(8);
                            }
                        }
                        if (this.zzm != 0) {
                            throw zzcf.zza(null, null);
                        }
                        if (this.zzn != 0) {
                            throw zzcf.zza(null, null);
                        }
                        if (this.zzo != 0) {
                            throw zzcf.zza(null, null);
                        }
                        int i5 = 0;
                        while (true) {
                            int iZzd6 = zzfiVar.zzd(8);
                            i = i5 + iZzd6;
                            if (iZzd6 != 255) {
                                break;
                            } else {
                                i5 = i;
                            }
                        }
                        int iZzc2 = zzfiVar.zzc();
                        if ((iZzc2 & 7) == 0) {
                            this.zzb.zzG(iZzc2 >> 3);
                        } else {
                            zzfiVar.zzg(this.zzb.zzI(), 0, i * 8);
                            this.zzb.zzG(0);
                        }
                        this.zzd.zzr(this.zzb, i);
                        long j = this.zzk;
                        if (j != C.TIME_UNSET) {
                            this.zzd.zzt(j, 1, i, 0, null);
                            this.zzk += this.zzs;
                        }
                        if (this.zzp) {
                            zzfiVar.zzl((int) this.zzq);
                        }
                        this.zzg = 0;
                    } else {
                        continue;
                    }
                } else {
                    int iZzl2 = ((this.zzj & (-225)) << 8) | zzfjVar.zzl();
                    this.zzi = iZzl2;
                    zzfj zzfjVar2 = this.zzb;
                    if (iZzl2 > zzfjVar2.zzI().length) {
                        zzfjVar2.zzD(iZzl2);
                        zzfi zzfiVar2 = this.zzc;
                        byte[] bArrZzI = this.zzb.zzI();
                        zzfiVar2.zzi(bArrZzI, bArrZzI.length);
                    }
                    this.zzh = 0;
                    this.zzg = 3;
                }
            } else if (zzfjVar.zzl() == 86) {
                this.zzg = 1;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzb(zzach zzachVar, zzalk zzalkVar) {
        zzalkVar.zzc();
        this.zzd = zzachVar.zzw(zzalkVar.zza(), 1);
        this.zze = zzalkVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzd(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.zzk = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zze() {
        this.zzg = 0;
        this.zzk = C.TIME_UNSET;
        this.zzl = false;
    }
}
