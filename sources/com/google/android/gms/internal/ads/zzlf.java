package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzlf {
    private final zzcx zza = new zzcx();
    private final zzcz zzb = new zzcz();
    private final zzmj zzc;
    private final zzeq zzd;
    private long zze;
    private int zzf;
    private boolean zzg;

    @Nullable
    private zzlc zzh;

    @Nullable
    private zzlc zzi;

    @Nullable
    private zzlc zzj;
    private int zzk;

    @Nullable
    private Object zzl;
    private long zzm;

    public zzlf(zzmj zzmjVar, zzeq zzeqVar) {
        this.zzc = zzmjVar;
        this.zzd = zzeqVar;
    }

    private final boolean zzA(zzda zzdaVar, zzuk zzukVar) {
        if (zzC(zzukVar)) {
            return zzdaVar.zze(zzdaVar.zzn(zzukVar.zza, this.zza).zzd, this.zzb, 0L).zzq == zzdaVar.zza(zzukVar.zza);
        }
        return false;
    }

    private final boolean zzB(zzda zzdaVar) {
        zzlc zzlcVarZzg = this.zzh;
        if (zzlcVarZzg == null) {
            return true;
        }
        int iZza = zzdaVar.zza(zzlcVarZzg.zzb);
        while (true) {
            iZza = zzdaVar.zzi(iZza, this.zza, this.zzb, this.zzf, this.zzg);
            while (true) {
                Objects.requireNonNull(zzlcVarZzg);
                if (zzlcVarZzg.zzg() == null || zzlcVarZzg.zzf.zzg) {
                    break;
                }
                zzlcVarZzg = zzlcVarZzg.zzg();
            }
            zzlc zzlcVarZzg2 = zzlcVarZzg.zzg();
            if (iZza == -1 || zzlcVarZzg2 == null || zzdaVar.zza(zzlcVarZzg2.zzb) != iZza) {
                break;
            }
            zzlcVarZzg = zzlcVarZzg2;
        }
        boolean zZzm = zzm(zzlcVarZzg);
        zzlcVarZzg.zzf = zzg(zzdaVar, zzlcVarZzg.zzf);
        return !zZzm;
    }

    private static final boolean zzC(zzuk zzukVar) {
        return !zzukVar.zzb() && zzukVar.zze == -1;
    }

    private final long zzs(zzda zzdaVar, Object obj, int i) {
        zzdaVar.zzn(obj, this.zza);
        this.zza.zzi(i);
        this.zza.zzk(i);
        return 0L;
    }

    @Nullable
    private final zzld zzt(zzda zzdaVar, zzlc zzlcVar, long j) {
        long j2;
        zzld zzldVar = zzlcVar.zzf;
        long jZze = (zzlcVar.zze() + zzldVar.zze) - j;
        if (zzldVar.zzg) {
            long j3 = 0;
            int iZzi = zzdaVar.zzi(zzdaVar.zza(zzldVar.zza.zza), this.zza, this.zzb, this.zzf, this.zzg);
            if (iZzi != -1) {
                int i = zzdaVar.zzd(iZzi, this.zza, true).zzd;
                Object obj = this.zza.zzc;
                Objects.requireNonNull(obj);
                long j4 = zzldVar.zza.zzd;
                if (zzdaVar.zze(i, this.zzb, 0L).zzp == iZzi) {
                    Pair pairZzm = zzdaVar.zzm(this.zzb, this.zza, i, C.TIME_UNSET, Math.max(0L, jZze));
                    if (pairZzm != null) {
                        obj = pairZzm.first;
                        long jLongValue = ((Long) pairZzm.second).longValue();
                        zzlc zzlcVarZzg = zzlcVar.zzg();
                        if (zzlcVarZzg == null || !zzlcVarZzg.zzb.equals(obj)) {
                            j4 = this.zze;
                            this.zze = 1 + j4;
                        } else {
                            j4 = zzlcVarZzg.zzf.zza.zzd;
                        }
                        j2 = jLongValue;
                        j3 = C.TIME_UNSET;
                    }
                } else {
                    j2 = 0;
                }
                zzuk zzukVarZzx = zzx(zzdaVar, obj, j2, j4, this.zzb, this.zza);
                if (j3 != C.TIME_UNSET && zzldVar.zzc != C.TIME_UNSET) {
                    zzdaVar.zzn(zzldVar.zza.zza, this.zza).zzb();
                    this.zza.zzg();
                }
                return zzu(zzdaVar, zzukVarZzx, j3, j2);
            }
        } else {
            zzuk zzukVar = zzldVar.zza;
            zzdaVar.zzn(zzukVar.zza, this.zza);
            if (!zzukVar.zzb()) {
                int i2 = zzukVar.zze;
                if (i2 != -1) {
                    this.zza.zzm(i2);
                }
                zzcx zzcxVar = this.zza;
                int i3 = zzukVar.zze;
                int iZze = zzcxVar.zze(i3);
                zzcxVar.zzn(i3);
                if (iZze != this.zza.zza(zzukVar.zze)) {
                    return zzv(zzdaVar, zzukVar.zza, zzukVar.zze, iZze, zzldVar.zze, zzukVar.zzd);
                }
                zzs(zzdaVar, zzukVar.zza, zzukVar.zze);
                return zzw(zzdaVar, zzukVar.zza, 0L, zzldVar.zze, zzukVar.zzd);
            }
            int i4 = zzukVar.zzb;
            if (this.zza.zza(i4) != -1) {
                int iZzf = this.zza.zzf(i4, zzukVar.zzc);
                if (iZzf < 0) {
                    return zzv(zzdaVar, zzukVar.zza, i4, iZzf, zzldVar.zzc, zzukVar.zzd);
                }
                long jLongValue2 = zzldVar.zzc;
                if (jLongValue2 == C.TIME_UNSET) {
                    zzcz zzczVar = this.zzb;
                    zzcx zzcxVar2 = this.zza;
                    Pair pairZzm2 = zzdaVar.zzm(zzczVar, zzcxVar2, zzcxVar2.zzd, C.TIME_UNSET, Math.max(0L, jZze));
                    if (pairZzm2 != null) {
                        jLongValue2 = ((Long) pairZzm2.second).longValue();
                    }
                }
                zzs(zzdaVar, zzukVar.zza, zzukVar.zzb);
                return zzw(zzdaVar, zzukVar.zza, Math.max(0L, jLongValue2), zzldVar.zzc, zzukVar.zzd);
            }
        }
        return null;
    }

    @Nullable
    private final zzld zzu(zzda zzdaVar, zzuk zzukVar, long j, long j2) {
        zzdaVar.zzn(zzukVar.zza, this.zza);
        return zzukVar.zzb() ? zzv(zzdaVar, zzukVar.zza, zzukVar.zzb, zzukVar.zzc, j, zzukVar.zzd) : zzw(zzdaVar, zzukVar.zza, j2, j, zzukVar.zzd);
    }

    private final zzld zzv(zzda zzdaVar, Object obj, int i, int i2, long j, long j2) {
        zzuk zzukVar = new zzuk(obj, i, i2, j2);
        Object obj2 = zzukVar.zza;
        long jZzh = zzdaVar.zzn(obj2, this.zza).zzh(zzukVar.zzb, zzukVar.zzc);
        if (i2 == this.zza.zze(i)) {
            this.zza.zzj();
        }
        this.zza.zzn(zzukVar.zzb);
        long jMax = 0;
        if (jZzh != C.TIME_UNSET && jZzh <= 0) {
            jMax = Math.max(0L, (-1) + jZzh);
        }
        return new zzld(zzukVar, jMax, j, C.TIME_UNSET, jZzh, false, false, false, false);
    }

    private final zzld zzw(zzda zzdaVar, Object obj, long j, long j2, long j3) {
        long j4;
        long j5;
        long j6;
        long jMax = j;
        zzdaVar.zzn(obj, this.zza);
        int iZzc = this.zza.zzc(jMax);
        if (iZzc != -1) {
            this.zza.zzm(iZzc);
        }
        if (iZzc == -1) {
            this.zza.zzb();
        } else {
            this.zza.zzn(iZzc);
        }
        zzuk zzukVar = new zzuk(obj, j3, iZzc);
        boolean zZzC = zzC(zzukVar);
        boolean zZzA = zzA(zzdaVar, zzukVar);
        boolean zZzz = zzz(zzdaVar, zzukVar, zZzC);
        if (iZzc != -1) {
            this.zza.zzn(iZzc);
        }
        if (iZzc != -1) {
            this.zza.zzi(iZzc);
            j4 = 0;
        } else {
            j4 = -9223372036854775807L;
        }
        if (j4 != C.TIME_UNSET) {
            j5 = 0;
            j6 = 0;
        } else {
            j5 = j4;
            j6 = this.zza.zze;
        }
        if (j6 != C.TIME_UNSET && jMax >= j6) {
            jMax = Math.max(0L, j6 - 1);
        }
        return new zzld(zzukVar, jMax, j2, j5, j6, false, zZzC, zZzA, zZzz);
    }

    private static zzuk zzx(zzda zzdaVar, Object obj, long j, long j2, zzcz zzczVar, zzcx zzcxVar) {
        zzdaVar.zzn(obj, zzcxVar);
        zzdaVar.zze(zzcxVar.zzd, zzczVar, 0L);
        zzdaVar.zza(obj);
        zzcxVar.zzb();
        zzdaVar.zzn(obj, zzcxVar);
        int iZzd = zzcxVar.zzd(j);
        return iZzd == -1 ? new zzuk(obj, j2, zzcxVar.zzc(j)) : new zzuk(obj, iZzd, zzcxVar.zze(iZzd), j2);
    }

    private final void zzy() {
        final zzfwr zzfwrVar = new zzfwr();
        for (zzlc zzlcVarZzg = this.zzh; zzlcVarZzg != null; zzlcVarZzg = zzlcVarZzg.zzg()) {
            zzfwrVar.zzf(zzlcVarZzg.zzf.zza);
        }
        zzlc zzlcVar = this.zzi;
        final zzuk zzukVar = zzlcVar == null ? null : zzlcVar.zzf.zza;
        this.zzd.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzle
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzj(zzfwrVar, zzukVar);
            }
        });
    }

    private final boolean zzz(zzda zzdaVar, zzuk zzukVar, boolean z) {
        int iZza = zzdaVar.zza(zzukVar.zza);
        return !zzdaVar.zze(zzdaVar.zzd(iZza, this.zza, false).zzd, this.zzb, 0L).zzj && zzdaVar.zzi(iZza, this.zza, this.zzb, this.zzf, this.zzg) == -1 && z;
    }

    @Nullable
    public final zzlc zza() {
        zzlc zzlcVar = this.zzh;
        if (zzlcVar == null) {
            return null;
        }
        if (zzlcVar == this.zzi) {
            this.zzi = zzlcVar.zzg();
        }
        zzlcVar.zzn();
        int i = this.zzk - 1;
        this.zzk = i;
        if (i == 0) {
            this.zzj = null;
            zzlc zzlcVar2 = this.zzh;
            this.zzl = zzlcVar2.zzb;
            this.zzm = zzlcVar2.zzf.zza.zzd;
        }
        this.zzh = this.zzh.zzg();
        zzy();
        return this.zzh;
    }

    public final zzlc zzb() {
        zzlc zzlcVar = this.zzi;
        zzef.zzb(zzlcVar);
        this.zzi = zzlcVar.zzg();
        zzy();
        zzlc zzlcVar2 = this.zzi;
        zzef.zzb(zzlcVar2);
        return zzlcVar2;
    }

    @Nullable
    public final zzlc zzc() {
        return this.zzj;
    }

    @Nullable
    public final zzlc zzd() {
        return this.zzh;
    }

    @Nullable
    public final zzlc zze() {
        return this.zzi;
    }

    @Nullable
    public final zzld zzf(long j, zzls zzlsVar) {
        zzlc zzlcVar = this.zzj;
        return zzlcVar == null ? zzu(zzlsVar.zza, zzlsVar.zzb, zzlsVar.zzc, zzlsVar.zzr) : zzt(zzlsVar.zza, zzlcVar, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.zzld zzg(com.google.android.gms.internal.ads.zzda r19, com.google.android.gms.internal.ads.zzld r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            com.google.android.gms.internal.ads.zzuk r3 = r2.zza
            boolean r12 = zzC(r3)
            boolean r13 = r0.zzA(r1, r3)
            boolean r14 = r0.zzz(r1, r3, r12)
            com.google.android.gms.internal.ads.zzuk r4 = r2.zza
            java.lang.Object r4 = r4.zza
            com.google.android.gms.internal.ads.zzcx r5 = r0.zza
            r1.zzn(r4, r5)
            boolean r1 = r3.zzb()
            r4 = -1
            r5 = 0
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L37
            int r1 = r3.zze
            if (r1 != r4) goto L30
            goto L37
        L30:
            com.google.android.gms.internal.ads.zzcx r9 = r0.zza
            r9.zzi(r1)
            r9 = r5
            goto L38
        L37:
            r9 = r7
        L38:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L4b
            com.google.android.gms.internal.ads.zzcx r1 = r0.zza
            int r5 = r3.zzb
            int r6 = r3.zzc
            long r5 = r1.zzh(r5, r6)
        L48:
            r7 = r9
            r9 = r5
            goto L57
        L4b:
            int r1 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r1 == 0) goto L52
            r7 = r5
            r9 = r7
            goto L57
        L52:
            com.google.android.gms.internal.ads.zzcx r1 = r0.zza
            long r5 = r1.zze
            goto L48
        L57:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L65
            com.google.android.gms.internal.ads.zzcx r1 = r0.zza
            int r4 = r3.zzb
            r1.zzn(r4)
            goto L6e
        L65:
            int r1 = r3.zze
            if (r1 == r4) goto L6e
            com.google.android.gms.internal.ads.zzcx r4 = r0.zza
            r4.zzn(r1)
        L6e:
            com.google.android.gms.internal.ads.zzld r15 = new com.google.android.gms.internal.ads.zzld
            long r4 = r2.zzb
            long r1 = r2.zzc
            r11 = 0
            r16 = r1
            r1 = r15
            r2 = r3
            r3 = r4
            r5 = r16
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlf.zzg(com.google.android.gms.internal.ads.zzda, com.google.android.gms.internal.ads.zzld):com.google.android.gms.internal.ads.zzld");
    }

    public final zzuk zzh(zzda zzdaVar, Object obj, long j) {
        long j2;
        int iZza;
        int i = zzdaVar.zzn(obj, this.zza).zzd;
        Object obj2 = this.zzl;
        if (obj2 == null || (iZza = zzdaVar.zza(obj2)) == -1 || zzdaVar.zzd(iZza, this.zza, false).zzd != i) {
            zzlc zzlcVarZzg = this.zzh;
            while (true) {
                if (zzlcVarZzg == null) {
                    zzlc zzlcVarZzg2 = this.zzh;
                    while (true) {
                        if (zzlcVarZzg2 != null) {
                            int iZza2 = zzdaVar.zza(zzlcVarZzg2.zzb);
                            if (iZza2 != -1 && zzdaVar.zzd(iZza2, this.zza, false).zzd == i) {
                                j2 = zzlcVarZzg2.zzf.zza.zzd;
                                break;
                            }
                            zzlcVarZzg2 = zzlcVarZzg2.zzg();
                        } else {
                            j2 = this.zze;
                            this.zze = 1 + j2;
                            if (this.zzh == null) {
                                this.zzl = obj;
                                this.zzm = j2;
                            }
                        }
                    }
                } else {
                    if (zzlcVarZzg.zzb.equals(obj)) {
                        j2 = zzlcVarZzg.zzf.zza.zzd;
                        break;
                    }
                    zzlcVarZzg = zzlcVarZzg.zzg();
                }
            }
        } else {
            j2 = this.zzm;
        }
        long j3 = j2;
        zzdaVar.zzn(obj, this.zza);
        zzdaVar.zze(this.zza.zzd, this.zzb, 0L);
        int iZza3 = zzdaVar.zza(obj);
        Object obj3 = obj;
        while (true) {
            zzcz zzczVar = this.zzb;
            if (iZza3 < zzczVar.zzp) {
                return zzx(zzdaVar, obj3, j, j3, zzczVar, this.zza);
            }
            zzdaVar.zzd(iZza3, this.zza, true);
            this.zza.zzb();
            zzcx zzcxVar = this.zza;
            if (zzcxVar.zzd(zzcxVar.zze) != -1) {
                obj3 = this.zza.zzc;
                Objects.requireNonNull(obj3);
            }
            iZza3--;
        }
    }

    public final void zzi() {
        if (this.zzk == 0) {
            return;
        }
        zzlc zzlcVarZzg = this.zzh;
        zzef.zzb(zzlcVarZzg);
        this.zzl = zzlcVarZzg.zzb;
        this.zzm = zzlcVarZzg.zzf.zza.zzd;
        while (zzlcVarZzg != null) {
            zzlcVarZzg.zzn();
            zzlcVarZzg = zzlcVarZzg.zzg();
        }
        this.zzh = null;
        this.zzj = null;
        this.zzi = null;
        this.zzk = 0;
        zzy();
    }

    final /* synthetic */ void zzj(zzfwr zzfwrVar, zzuk zzukVar) {
        this.zzc.zzS(zzfwrVar.zzi(), zzukVar);
    }

    public final void zzk(long j) {
        zzlc zzlcVar = this.zzj;
        if (zzlcVar != null) {
            zzlcVar.zzm(j);
        }
    }

    public final boolean zzl(zzui zzuiVar) {
        zzlc zzlcVar = this.zzj;
        return zzlcVar != null && zzlcVar.zza == zzuiVar;
    }

    public final boolean zzm(zzlc zzlcVar) {
        zzef.zzb(zzlcVar);
        boolean z = false;
        if (zzlcVar.equals(this.zzj)) {
            return false;
        }
        this.zzj = zzlcVar;
        while (zzlcVar.zzg() != null) {
            zzlcVar = zzlcVar.zzg();
            Objects.requireNonNull(zzlcVar);
            if (zzlcVar == this.zzi) {
                this.zzi = this.zzh;
                z = true;
            }
            zzlcVar.zzn();
            this.zzk--;
        }
        zzlc zzlcVar2 = this.zzj;
        Objects.requireNonNull(zzlcVar2);
        zzlcVar2.zzo(null);
        zzy();
        return z;
    }

    public final boolean zzn() {
        zzlc zzlcVar = this.zzj;
        if (zzlcVar != null) {
            return !zzlcVar.zzf.zzi && zzlcVar.zzr() && this.zzj.zzf.zze != C.TIME_UNSET && this.zzk < 100;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzo(com.google.android.gms.internal.ads.zzda r17, long r18, long r20) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            com.google.android.gms.internal.ads.zzlc r2 = r0.zzh
            r3 = 0
        L7:
            r4 = 1
            if (r2 == 0) goto L97
            com.google.android.gms.internal.ads.zzld r5 = r2.zzf
            r6 = 0
            if (r3 != 0) goto L16
            com.google.android.gms.internal.ads.zzld r3 = r0.zzg(r1, r5)
            r7 = r18
            goto L39
        L16:
            r7 = r18
            com.google.android.gms.internal.ads.zzld r9 = r0.zzt(r1, r3, r7)
            if (r9 != 0) goto L26
            boolean r1 = r0.zzm(r3)
            if (r1 != 0) goto L25
            return r4
        L25:
            return r6
        L26:
            long r10 = r5.zzb
            long r12 = r9.zzb
            int r14 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r14 != 0) goto L8f
            com.google.android.gms.internal.ads.zzuk r10 = r5.zza
            com.google.android.gms.internal.ads.zzuk r11 = r9.zza
            boolean r10 = r10.equals(r11)
            if (r10 == 0) goto L8f
            r3 = r9
        L39:
            long r9 = r5.zzc
            com.google.android.gms.internal.ads.zzld r9 = r3.zza(r9)
            r2.zzf = r9
            long r9 = r5.zze
            r11 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            long r13 = r3.zze
            if (r5 == 0) goto L86
            int r5 = (r9 > r13 ? 1 : (r9 == r13 ? 0 : -1))
            if (r5 != 0) goto L53
            goto L86
        L53:
            r2.zzq()
            long r7 = r3.zze
            int r1 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r1 != 0) goto L62
            r7 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            goto L67
        L62:
            long r9 = r2.zze()
            long r7 = r7 + r9
        L67:
            com.google.android.gms.internal.ads.zzlc r1 = r0.zzi
            if (r2 != r1) goto L7b
            com.google.android.gms.internal.ads.zzld r1 = r2.zzf
            boolean r1 = r1.zzf
            r9 = -9223372036854775808
            int r1 = (r20 > r9 ? 1 : (r20 == r9 ? 0 : -1))
            if (r1 == 0) goto L79
            int r1 = (r20 > r7 ? 1 : (r20 == r7 ? 0 : -1))
            if (r1 < 0) goto L7b
        L79:
            r1 = 1
            goto L7c
        L7b:
            r1 = 0
        L7c:
            boolean r2 = r0.zzm(r2)
            if (r2 != 0) goto L85
            if (r1 != 0) goto L85
            return r4
        L85:
            return r6
        L86:
            com.google.android.gms.internal.ads.zzlc r3 = r2.zzg()
            r15 = r3
            r3 = r2
            r2 = r15
            goto L7
        L8f:
            boolean r1 = r0.zzm(r3)
            if (r1 != 0) goto L96
            return r4
        L96:
            return r6
        L97:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlf.zzo(com.google.android.gms.internal.ads.zzda, long, long):boolean");
    }

    public final boolean zzp(zzda zzdaVar, int i) {
        this.zzf = i;
        return zzB(zzdaVar);
    }

    public final boolean zzq(zzda zzdaVar, boolean z) {
        this.zzg = z;
        return zzB(zzdaVar);
    }

    public final zzlc zzr(zzmb[] zzmbVarArr, zzye zzyeVar, zzyn zzynVar, zzlr zzlrVar, zzld zzldVar, zzyf zzyfVar) {
        zzlc zzlcVar = this.zzj;
        zzlc zzlcVar2 = new zzlc(zzmbVarArr, zzlcVar == null ? 1000000000000L : (zzlcVar.zze() + zzlcVar.zzf.zze) - zzldVar.zzb, zzyeVar, zzynVar, zzlrVar, zzldVar, zzyfVar);
        zzlc zzlcVar3 = this.zzj;
        if (zzlcVar3 != null) {
            zzlcVar3.zzo(zzlcVar2);
        } else {
            this.zzh = zzlcVar2;
            this.zzi = zzlcVar2;
        }
        this.zzl = null;
        this.zzj = zzlcVar2;
        this.zzk++;
        zzy();
        return zzlcVar2;
    }
}
