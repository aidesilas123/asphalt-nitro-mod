package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaek implements zzace {
    public static final zzacl zza = new zzacl() { // from class: com.google.android.gms.internal.ads.zzaej
        @Override // com.google.android.gms.internal.ads.zzacl
        public final /* synthetic */ zzace[] zza(Uri uri, Map map) {
            int i = zzack.zza;
            zzacl zzaclVar = zzaek.zza;
            return new zzace[]{new zzaek(0)};
        }
    };
    private final byte[] zzb;
    private final zzfj zzc;
    private final zzacm zzd;
    private zzach zze;
    private zzadk zzf;
    private int zzg;

    @Nullable
    private zzcb zzh;
    private zzacr zzi;
    private int zzj;
    private int zzk;
    private zzaei zzl;
    private int zzm;
    private long zzn;

    public zzaek() {
        this(0);
    }

    public zzaek(int i) {
        this.zzb = new byte[42];
        this.zzc = new zzfj(new byte[32768], 0);
        this.zzd = new zzacm();
        this.zzg = 0;
    }

    private final long zza(zzfj zzfjVar, boolean z) {
        boolean zZzc;
        Objects.requireNonNull(this.zzi);
        int iZzc = zzfjVar.zzc();
        while (iZzc <= zzfjVar.zzd() - 16) {
            zzfjVar.zzG(iZzc);
            if (zzacn.zzc(zzfjVar, this.zzi, this.zzk, this.zzd)) {
                zzfjVar.zzG(iZzc);
                return this.zzd.zza;
            }
            iZzc++;
        }
        if (!z) {
            zzfjVar.zzG(iZzc);
            return -1L;
        }
        while (iZzc <= zzfjVar.zzd() - this.zzj) {
            zzfjVar.zzG(iZzc);
            try {
                zZzc = zzacn.zzc(zzfjVar, this.zzi, this.zzk, this.zzd);
            } catch (IndexOutOfBoundsException unused) {
                zZzc = false;
            }
            if (zzfjVar.zzc() <= zzfjVar.zzd() && zZzc) {
                zzfjVar.zzG(iZzc);
                return this.zzd.zza;
            }
            iZzc++;
        }
        zzfjVar.zzG(zzfjVar.zzd());
        return -1L;
    }

    private final void zzf() {
        long j = this.zzn * 1000000;
        zzacr zzacrVar = this.zzi;
        int i = zzfs.zza;
        this.zzf.zzt(j / ((long) zzacrVar.zze), 1, this.zzm, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final int zzb(zzacf zzacfVar, zzadb zzadbVar) throws Throwable {
        boolean zZzn;
        zzade zzaddVar;
        boolean z;
        int i = this.zzg;
        if (i == 0) {
            zzacfVar.zzj();
            long jZze = zzacfVar.zze();
            zzcb zzcbVarZza = zzaco.zza(zzacfVar, true);
            ((zzabu) zzacfVar).zzo((int) (zzacfVar.zze() - jZze), false);
            this.zzh = zzcbVarZza;
            this.zzg = 1;
            return 0;
        }
        if (i == 1) {
            ((zzabu) zzacfVar).zzm(this.zzb, 0, 42, false);
            zzacfVar.zzj();
            this.zzg = 2;
            return 0;
        }
        if (i == 2) {
            zzfj zzfjVar = new zzfj(4);
            ((zzabu) zzacfVar).zzn(zzfjVar.zzI(), 0, 4, false);
            if (zzfjVar.zzt() != 1716281667) {
                throw zzcf.zza("Failed to read FLAC stream marker.", null);
            }
            this.zzg = 3;
            return 0;
        }
        if (i == 3) {
            zzacr zzacrVarZze = this.zzi;
            do {
                zzacfVar.zzj();
                zzfi zzfiVar = new zzfi(new byte[4], 4);
                zzabu zzabuVar = (zzabu) zzacfVar;
                zzabuVar.zzm(zzfiVar.zza, 0, 4, false);
                zZzn = zzfiVar.zzn();
                int iZzd = zzfiVar.zzd(7);
                int iZzd2 = zzfiVar.zzd(24) + 4;
                if (iZzd == 0) {
                    byte[] bArr = new byte[38];
                    zzabuVar.zzn(bArr, 0, 38, false);
                    zzacrVarZze = new zzacr(bArr, 4);
                } else {
                    if (zzacrVarZze == null) {
                        throw new IllegalArgumentException();
                    }
                    if (iZzd == 3) {
                        zzfj zzfjVar2 = new zzfj(iZzd2);
                        zzabuVar.zzn(zzfjVar2.zzI(), 0, iZzd2, false);
                        zzacrVarZze = zzacrVarZze.zzf(zzaco.zzb(zzfjVar2));
                    } else if (iZzd == 4) {
                        zzfj zzfjVar3 = new zzfj(iZzd2);
                        zzabuVar.zzn(zzfjVar3.zzI(), 0, iZzd2, false);
                        zzfjVar3.zzH(4);
                        zzacrVarZze = zzacrVarZze.zzg(Arrays.asList(zzadq.zzc(zzfjVar3, false, false).zzb));
                    } else if (iZzd == 6) {
                        zzfj zzfjVar4 = new zzfj(iZzd2);
                        zzabuVar.zzn(zzfjVar4.zzI(), 0, iZzd2, false);
                        zzfjVar4.zzH(4);
                        zzacrVarZze = zzacrVarZze.zze(zzfwu.zzm(zzafg.zzb(zzfjVar4)));
                    } else {
                        zzabuVar.zzo(iZzd2, false);
                    }
                }
                int i2 = zzfs.zza;
                this.zzi = zzacrVarZze;
            } while (!zZzn);
            Objects.requireNonNull(zzacrVarZze);
            this.zzj = Math.max(zzacrVarZze.zzc, 6);
            this.zzf.zzl(this.zzi.zzc(this.zzb, this.zzh));
            this.zzg = 4;
            return 0;
        }
        if (i == 4) {
            zzacfVar.zzj();
            zzfj zzfjVar5 = new zzfj(2);
            ((zzabu) zzacfVar).zzm(zzfjVar5.zzI(), 0, 2, false);
            int iZzp = zzfjVar5.zzp();
            if ((iZzp >> 2) != 16382) {
                zzacfVar.zzj();
                throw zzcf.zza("First frame does not start with sync code.", null);
            }
            zzacfVar.zzj();
            this.zzk = iZzp;
            zzach zzachVar = this.zze;
            int i3 = zzfs.zza;
            long jZzf = zzacfVar.zzf();
            long jZzd = zzacfVar.zzd();
            zzacr zzacrVar = this.zzi;
            Objects.requireNonNull(zzacrVar);
            if (zzacrVar.zzk != null) {
                zzaddVar = new zzacp(zzacrVar, jZzf);
            } else if (jZzd == -1 || zzacrVar.zzj <= 0) {
                zzaddVar = new zzadd(zzacrVar.zza(), 0L);
            } else {
                zzaei zzaeiVar = new zzaei(zzacrVar, this.zzk, jZzf, jZzd);
                this.zzl = zzaeiVar;
                zzaddVar = zzaeiVar.zzb();
            }
            zzachVar.zzO(zzaddVar);
            this.zzg = 5;
            return 0;
        }
        Objects.requireNonNull(this.zzf);
        zzacr zzacrVar2 = this.zzi;
        Objects.requireNonNull(zzacrVar2);
        zzaei zzaeiVar2 = this.zzl;
        if (zzaeiVar2 != null && zzaeiVar2.zze()) {
            return zzaeiVar2.zza(zzacfVar, zzadbVar);
        }
        if (this.zzn == -1) {
            this.zzn = zzacn.zzb(zzacfVar, zzacrVar2);
            return 0;
        }
        zzfj zzfjVar6 = this.zzc;
        int iZzd3 = zzfjVar6.zzd();
        if (iZzd3 < 32768) {
            int iZza = zzacfVar.zza(zzfjVar6.zzI(), iZzd3, 32768 - iZzd3);
            z = iZza == -1;
            if (!z) {
                this.zzc.zzF(iZzd3 + iZza);
            } else if (this.zzc.zza() == 0) {
                zzf();
                return -1;
            }
        } else {
            z = false;
        }
        zzfj zzfjVar7 = this.zzc;
        int iZzc = zzfjVar7.zzc();
        int i4 = this.zzm;
        int i5 = this.zzj;
        if (i4 < i5) {
            zzfjVar7.zzH(Math.min(i5 - i4, zzfjVar7.zza()));
        }
        long jZza = zza(this.zzc, z);
        zzfj zzfjVar8 = this.zzc;
        int iZzc2 = zzfjVar8.zzc() - iZzc;
        zzfjVar8.zzG(iZzc);
        zzadi.zzb(this.zzf, this.zzc, iZzc2);
        this.zzm += iZzc2;
        if (jZza != -1) {
            zzf();
            this.zzm = 0;
            this.zzn = jZza;
        }
        zzfj zzfjVar9 = this.zzc;
        if (zzfjVar9.zza() >= 16) {
            return 0;
        }
        int iZza2 = zzfjVar9.zza();
        System.arraycopy(zzfjVar9.zzI(), zzfjVar9.zzc(), zzfjVar9.zzI(), 0, iZza2);
        this.zzc.zzG(0);
        this.zzc.zzF(iZza2);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzc(zzach zzachVar) {
        this.zze = zzachVar;
        this.zzf = zzachVar.zzw(0, 1);
        zzachVar.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzd(long j, long j2) {
        if (j == 0) {
            this.zzg = 0;
        } else {
            zzaei zzaeiVar = this.zzl;
            if (zzaeiVar != null) {
                zzaeiVar.zzd(j2);
            }
        }
        this.zzn = j2 != 0 ? -1L : 0L;
        this.zzm = 0;
        this.zzc.zzD(0);
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final boolean zze(zzacf zzacfVar) throws Throwable {
        zzaco.zza(zzacfVar, false);
        zzfj zzfjVar = new zzfj(4);
        ((zzabu) zzacfVar).zzm(zzfjVar.zzI(), 0, 4, false);
        return zzfjVar.zzt() == 1716281667;
    }
}
