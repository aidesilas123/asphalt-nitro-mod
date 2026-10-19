package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzkt implements Handler.Callback, zzuh, zzyd, zzlq, zziq, zzlt {
    private boolean zzB;
    private boolean zzE;
    private int zzF;

    @Nullable
    private zzks zzG;
    private long zzH;
    private int zzI;
    private boolean zzJ;

    @Nullable
    private zzit zzK;
    private final zzje zzM;
    private final zzio zzN;
    private final zzlz[] zza;
    private final Set zzb;
    private final zzmb[] zzc;
    private final zzye zzd;
    private final zzyf zze;
    private final zzkw zzf;
    private final zzym zzg;
    private final zzeq zzh;

    @Nullable
    private final HandlerThread zzi;
    private final Looper zzj;
    private final zzcz zzk;
    private final zzcx zzl;
    private final long zzm;
    private final zzir zzn;
    private final ArrayList zzo;
    private final zzeg zzp;
    private final zzlf zzq;
    private final zzlr zzr;
    private final long zzs;
    private zzmd zzt;
    private zzls zzu;
    private zzkr zzv;
    private boolean zzw;
    private boolean zzy;
    private boolean zzz;
    private int zzC = 0;
    private boolean zzD = false;
    private boolean zzx = false;
    private long zzL = C.TIME_UNSET;
    private long zzA = C.TIME_UNSET;

    public zzkt(zzlz[] zzlzVarArr, zzye zzyeVar, zzyf zzyfVar, zzkw zzkwVar, zzym zzymVar, int i, boolean z, zzmj zzmjVar, zzmd zzmdVar, zzio zzioVar, long j, boolean z2, Looper looper, zzeg zzegVar, zzje zzjeVar, zzov zzovVar, Looper looper2) {
        this.zzM = zzjeVar;
        this.zza = zzlzVarArr;
        this.zzd = zzyeVar;
        this.zze = zzyfVar;
        this.zzf = zzkwVar;
        this.zzg = zzymVar;
        this.zzt = zzmdVar;
        this.zzN = zzioVar;
        this.zzs = j;
        this.zzp = zzegVar;
        this.zzm = zzkwVar.zza();
        zzkwVar.zzf();
        zzls zzlsVarZzg = zzls.zzg(zzyfVar);
        this.zzu = zzlsVarZzg;
        this.zzv = new zzkr(zzlsVarZzg);
        int length = zzlzVarArr.length;
        this.zzc = new zzmb[2];
        zzma zzmaVarZzc = zzyeVar.zzc();
        for (int i2 = 0; i2 < 2; i2++) {
            zzlzVarArr[i2].zzu(i2, zzovVar, zzegVar);
            this.zzc[i2] = zzlzVarArr[i2].zzl();
            this.zzc[i2].zzJ(zzmaVarZzc);
        }
        this.zzn = new zzir(this, zzegVar);
        this.zzo = new ArrayList();
        this.zzb = Collections.newSetFromMap(new IdentityHashMap());
        this.zzk = new zzcz();
        this.zzl = new zzcx();
        zzyeVar.zzr(this, zzymVar);
        this.zzJ = true;
        zzeq zzeqVarZzb = zzegVar.zzb(looper, null);
        this.zzq = new zzlf(zzmjVar, zzeqVarZzb);
        this.zzr = new zzlr(this, zzmjVar, zzeqVarZzb, zzovVar);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.zzi = handlerThread;
        handlerThread.start();
        Looper looper3 = handlerThread.getLooper();
        this.zzj = looper3;
        this.zzh = zzegVar.zzb(looper3, this);
    }

    private final void zzA() throws zzit {
        int length = this.zza.length;
        zzB(new boolean[2], this.zzq.zze().zzf());
    }

    private final void zzB(boolean[] zArr, long j) throws zzit {
        zzlc zzlcVarZze = this.zzq.zze();
        zzyf zzyfVarZzi = zzlcVarZze.zzi();
        int i = 0;
        while (true) {
            int length = this.zza.length;
            if (i >= 2) {
                break;
            }
            if (!zzyfVarZzi.zzb(i) && this.zzb.remove(this.zza[i])) {
                this.zza[i].zzG();
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            int length2 = this.zza.length;
            if (i2 >= 2) {
                zzlcVarZze.zzg = true;
                return;
            }
            if (zzyfVarZzi.zzb(i2)) {
                boolean z = zArr[i2];
                zzlz zzlzVar = this.zza[i2];
                if (!zzae(zzlzVar)) {
                    zzlf zzlfVar = this.zzq;
                    zzlc zzlcVarZze2 = zzlfVar.zze();
                    boolean z2 = zzlcVarZze2 == zzlfVar.zzd();
                    zzyf zzyfVarZzi2 = zzlcVarZze2.zzi();
                    zzmc zzmcVar = zzyfVarZzi2.zzb[i2];
                    zzam[] zzamVarArrZzaj = zzaj(zzyfVarZzi2.zzc[i2]);
                    boolean z3 = zzah() && this.zzu.zze == 3;
                    boolean z4 = !z && z3;
                    this.zzF++;
                    this.zzb.add(zzlzVar);
                    zzlzVar.zzr(zzmcVar, zzamVarArrZzaj, zzlcVarZze2.zzc[i2], this.zzH, z4, z2, j, zzlcVarZze2.zze(), zzlcVarZze2.zzf.zza);
                    zzlzVar.zzt(11, new zzkm(this));
                    this.zzn.zze(zzlzVar);
                    if (z3) {
                        zzlzVar.zzM();
                    }
                }
            }
            i2++;
        }
    }

    private final void zzC(IOException iOException, int i) {
        zzlf zzlfVar = this.zzq;
        zzit zzitVarZzc = zzit.zzc(iOException, i);
        zzlc zzlcVarZzd = zzlfVar.zzd();
        if (zzlcVarZzd != null) {
            zzitVarZzc = zzitVarZzc.zza(zzlcVarZzd.zzf.zza);
        }
        zzez.zzd("ExoPlayerImplInternal", "Playback error", zzitVarZzc);
        zzV(false, false);
        this.zzu = this.zzu.zzd(zzitVarZzc);
    }

    private final void zzD(boolean z) {
        zzlc zzlcVarZzc = this.zzq.zzc();
        zzuk zzukVar = zzlcVarZzc == null ? this.zzu.zzb : zzlcVarZzc.zzf.zza;
        boolean z2 = !this.zzu.zzk.equals(zzukVar);
        if (z2) {
            this.zzu = this.zzu.zza(zzukVar);
        }
        zzls zzlsVar = this.zzu;
        zzlsVar.zzp = zzlcVarZzc == null ? zzlsVar.zzr : zzlcVarZzc.zzc();
        this.zzu.zzq = zzs();
        if ((z2 || z) && zzlcVarZzc != null && zzlcVarZzc.zzd) {
            zzY(zzlcVarZzc.zzf.zza, zzlcVarZzc.zzh(), zzlcVarZzc.zzi());
        }
    }

    /* JADX WARN: Not initialized variable reg: 19, insn: 0x0376: MOVE (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r19 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:183:0x0376 */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0251 A[PHI: r23
      0x0251: PHI (r23v15 long) = (r23v7 long), (r23v8 long) binds: [B:116:0x024f, B:119:0x025a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02b1 A[Catch: all -> 0x0375, TryCatch #0 {all -> 0x0375, blocks: (B:139:0x02ab, B:141:0x02b1, B:144:0x02bb, B:146:0x02c6, B:148:0x02ce, B:150:0x02d8, B:151:0x02e5, B:152:0x02ea), top: B:216:0x0243 }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0404  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzE(com.google.android.gms.internal.ads.zzda r29, boolean r30) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1035
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkt.zzE(com.google.android.gms.internal.ads.zzda, boolean):void");
    }

    private final void zzF(zzcj zzcjVar, boolean z) throws zzit {
        zzG(zzcjVar, zzcjVar.zzc, true, z);
    }

    private final void zzG(zzcj zzcjVar, float f2, boolean z, boolean z2) throws zzit {
        int i;
        zzkt zzktVar = this;
        if (z) {
            if (z2) {
                zzktVar.zzv.zza(1);
            }
            zzls zzlsVar = zzktVar.zzu;
            zzktVar = this;
            zzktVar.zzu = new zzls(zzlsVar.zza, zzlsVar.zzb, zzlsVar.zzc, zzlsVar.zzd, zzlsVar.zze, zzlsVar.zzf, zzlsVar.zzg, zzlsVar.zzh, zzlsVar.zzi, zzlsVar.zzj, zzlsVar.zzk, zzlsVar.zzl, zzlsVar.zzm, zzcjVar, zzlsVar.zzp, zzlsVar.zzq, zzlsVar.zzr, zzlsVar.zzs, false);
        }
        float f3 = zzcjVar.zzc;
        zzlc zzlcVarZzd = zzktVar.zzq.zzd();
        while (true) {
            i = 0;
            if (zzlcVarZzd == null) {
                break;
            }
            zzxy[] zzxyVarArr = zzlcVarZzd.zzi().zzc;
            int length = zzxyVarArr.length;
            while (i < length) {
                zzxy zzxyVar = zzxyVarArr[i];
                i++;
            }
            zzlcVarZzd = zzlcVarZzd.zzg();
        }
        zzlz[] zzlzVarArr = zzktVar.zza;
        int length2 = zzlzVarArr.length;
        while (i < 2) {
            zzlz zzlzVar = zzlzVarArr[i];
            if (zzlzVar != null) {
                zzlzVar.zzK(f2, zzcjVar.zzc);
            }
            i++;
        }
    }

    private final void zzH() {
        long jZze;
        long jZze2;
        boolean zZzg = false;
        if (zzad()) {
            zzlc zzlcVarZzc = this.zzq.zzc();
            long jZzt = zzt(zzlcVarZzc.zzd());
            if (zzlcVarZzc == this.zzq.zzd()) {
                jZze = this.zzH;
                jZze2 = zzlcVarZzc.zze();
            } else {
                jZze = this.zzH - zzlcVarZzc.zze();
                jZze2 = zzlcVarZzc.zzf.zzb;
            }
            long j = jZze - jZze2;
            boolean zZzg2 = this.zzf.zzg(j, jZzt, this.zzn.zzc().zzc);
            if (zZzg2 || jZzt >= 500000 || this.zzm <= 0) {
                zZzg = zZzg2;
            } else {
                this.zzq.zzd().zza.zzj(this.zzu.zzr, false);
                zZzg = this.zzf.zzg(j, jZzt, this.zzn.zzc().zzc);
            }
        }
        this.zzB = zZzg;
        if (zZzg) {
            this.zzq.zzc().zzk(this.zzH, this.zzn.zzc().zzc, this.zzA);
        }
        zzX();
    }

    private final void zzI() {
        this.zzv.zzc(this.zzu);
        if (this.zzv.zzg) {
            zzje zzjeVar = this.zzM;
            zzjeVar.zza.zzT(this.zzv);
            this.zzv = new zzkr(this.zzu);
        }
    }

    private final void zzJ() throws zzit {
        int i;
        float f2 = this.zzn.zzc().zzc;
        zzlf zzlfVar = this.zzq;
        zzlc zzlcVarZze = zzlfVar.zze();
        boolean z = true;
        for (zzlc zzlcVarZzd = zzlfVar.zzd(); zzlcVarZzd != null && zzlcVarZzd.zzd; zzlcVarZzd = zzlcVarZzd.zzg()) {
            zzyf zzyfVarZzj = zzlcVarZzd.zzj(f2, this.zzu.zza);
            zzyf zzyfVarZzi = zzlcVarZzd.zzi();
            boolean z2 = false;
            if (zzyfVarZzi != null) {
                if (zzyfVarZzi.zzc.length == zzyfVarZzj.zzc.length) {
                    for (int i2 = 0; i2 < zzyfVarZzj.zzc.length; i2++) {
                        if (zzyfVarZzj.zza(zzyfVarZzi, i2)) {
                        }
                    }
                    if (zzlcVarZzd != zzlcVarZze) {
                        z2 = true;
                    }
                    z &= z2;
                }
            }
            if (z) {
                zzlf zzlfVar2 = this.zzq;
                zzlc zzlcVarZzd2 = zzlfVar2.zzd();
                boolean zZzm = zzlfVar2.zzm(zzlcVarZzd2);
                int length = this.zza.length;
                boolean[] zArr = new boolean[2];
                long jZzb = zzlcVarZzd2.zzb(zzyfVarZzj, this.zzu.zzr, zZzm, zArr);
                zzls zzlsVar = this.zzu;
                boolean z3 = (zzlsVar.zze == 4 || jZzb == zzlsVar.zzr) ? false : true;
                zzls zzlsVar2 = this.zzu;
                i = 2;
                this.zzu = zzy(zzlsVar2.zzb, jZzb, zzlsVar2.zzc, zzlsVar2.zzd, z3, 5);
                if (z3) {
                    zzN(jZzb);
                }
                int length2 = this.zza.length;
                boolean[] zArr2 = new boolean[2];
                int i3 = 0;
                while (true) {
                    zzlz[] zzlzVarArr = this.zza;
                    int length3 = zzlzVarArr.length;
                    if (i3 >= 2) {
                        break;
                    }
                    zzlz zzlzVar = zzlzVarArr[i3];
                    boolean zZzae = zzae(zzlzVar);
                    zArr2[i3] = zZzae;
                    zzwa zzwaVar = zzlcVarZzd2.zzc[i3];
                    if (zZzae) {
                        if (zzwaVar != zzlzVar.zzo()) {
                            zzz(zzlzVar);
                        } else if (zArr[i3]) {
                            zzlzVar.zzH(this.zzH);
                        }
                    }
                    i3++;
                }
                zzB(zArr2, this.zzH);
            } else {
                i = 2;
                this.zzq.zzm(zzlcVarZzd);
                if (zzlcVarZzd.zzd) {
                    zzlcVarZzd.zza(zzyfVarZzj, Math.max(zzlcVarZzd.zzf.zzb, this.zzH - zzlcVarZzd.zze()), false);
                }
            }
            zzD(true);
            if (this.zzu.zze != 4) {
                zzH();
                zzZ();
                this.zzh.zzi(i);
                return;
            }
            return;
        }
    }

    private final void zzK() throws zzit {
        zzJ();
        zzQ(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00f5 A[PHI: r0
      0x00f5: PHI (r0v11 com.google.android.gms.internal.ads.zzda) = 
      (r0v10 com.google.android.gms.internal.ads.zzda)
      (r0v10 com.google.android.gms.internal.ads.zzda)
      (r0v15 com.google.android.gms.internal.ads.zzda)
      (r0v15 com.google.android.gms.internal.ads.zzda)
     binds: [B:39:0x00b9, B:41:0x00bd, B:43:0x00ce, B:45:0x00e6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzL(boolean r33, boolean r34, boolean r35, boolean r36) {
        /*
            Method dump skipped, instruction units count: 330
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkt.zzL(boolean, boolean, boolean, boolean):void");
    }

    private final void zzM() {
        zzlc zzlcVarZzd = this.zzq.zzd();
        boolean z = false;
        if (zzlcVarZzd != null && zzlcVarZzd.zzf.zzh && this.zzx) {
            z = true;
        }
        this.zzy = z;
    }

    private final void zzN(long j) throws zzit {
        zzlc zzlcVarZzd = this.zzq.zzd();
        long jZze = j + (zzlcVarZzd == null ? 1000000000000L : zzlcVarZzd.zze());
        this.zzH = jZze;
        this.zzn.zzf(jZze);
        zzlz[] zzlzVarArr = this.zza;
        int length = zzlzVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzlz zzlzVar = zzlzVarArr[i];
            if (zzae(zzlzVar)) {
                zzlzVar.zzH(this.zzH);
            }
        }
        for (zzlc zzlcVarZzd2 = this.zzq.zzd(); zzlcVarZzd2 != null; zzlcVarZzd2 = zzlcVarZzd2.zzg()) {
            for (zzxy zzxyVar : zzlcVarZzd2.zzi().zzc) {
            }
        }
    }

    private final void zzO(zzda zzdaVar, zzda zzdaVar2) {
        if (zzdaVar.zzo() && zzdaVar2.zzo()) {
            return;
        }
        int size = this.zzo.size() - 1;
        if (size < 0) {
            Collections.sort(this.zzo);
        } else {
            Object obj = ((zzkq) this.zzo.get(size)).zzb;
            int i = zzfs.zza;
            throw null;
        }
    }

    private final void zzP(long j, long j2) {
        this.zzh.zzj(2, j + j2);
    }

    private final void zzQ(boolean z) throws zzit {
        zzuk zzukVar = this.zzq.zzd().zzf.zza;
        long jZzv = zzv(zzukVar, this.zzu.zzr, true, false);
        if (jZzv != this.zzu.zzr) {
            zzls zzlsVar = this.zzu;
            this.zzu = zzy(zzukVar, jZzv, zzlsVar.zzc, zzlsVar.zzd, z, 5);
        }
    }

    private final void zzR(zzcj zzcjVar) {
        this.zzh.zzf(16);
        this.zzn.zzg(zzcjVar);
    }

    private final void zzS(boolean z, int i, boolean z2, int i2) throws zzit {
        this.zzv.zza(z2 ? 1 : 0);
        this.zzv.zzb(i2);
        this.zzu = this.zzu.zzc(z, i);
        zzab(false, false);
        for (zzlc zzlcVarZzd = this.zzq.zzd(); zzlcVarZzd != null; zzlcVarZzd = zzlcVarZzd.zzg()) {
            for (zzxy zzxyVar : zzlcVarZzd.zzi().zzc) {
            }
        }
        if (!zzah()) {
            zzW();
            zzZ();
            return;
        }
        int i3 = this.zzu.zze;
        if (i3 == 3) {
            zzU();
            this.zzh.zzi(2);
        } else if (i3 == 2) {
            this.zzh.zzi(2);
        }
    }

    private final void zzT(int i) {
        zzls zzlsVar = this.zzu;
        if (zzlsVar.zze != i) {
            if (i != 2) {
                this.zzL = C.TIME_UNSET;
            }
            this.zzu = zzlsVar.zze(i);
        }
    }

    private final void zzU() throws zzit {
        zzab(false, false);
        this.zzn.zzh();
        zzlz[] zzlzVarArr = this.zza;
        int length = zzlzVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzlz zzlzVar = zzlzVarArr[i];
            if (zzae(zzlzVar)) {
                zzlzVar.zzM();
            }
        }
    }

    private final void zzV(boolean z, boolean z2) {
        zzL(z || !this.zzE, false, true, false);
        this.zzv.zza(z2 ? 1 : 0);
        this.zzf.zzd();
        zzT(1);
    }

    private final void zzW() throws zzit {
        this.zzn.zzi();
        zzlz[] zzlzVarArr = this.zza;
        int length = zzlzVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzlz zzlzVar = zzlzVarArr[i];
            if (zzae(zzlzVar)) {
                zzal(zzlzVar);
            }
        }
    }

    private final void zzX() {
        zzlc zzlcVarZzc = this.zzq.zzc();
        boolean z = this.zzB || (zzlcVarZzc != null && zzlcVarZzc.zza.zzp());
        zzls zzlsVar = this.zzu;
        if (z != zzlsVar.zzg) {
            this.zzu = new zzls(zzlsVar.zza, zzlsVar.zzb, zzlsVar.zzc, zzlsVar.zzd, zzlsVar.zze, zzlsVar.zzf, z, zzlsVar.zzh, zzlsVar.zzi, zzlsVar.zzj, zzlsVar.zzk, zzlsVar.zzl, zzlsVar.zzm, zzlsVar.zzn, zzlsVar.zzp, zzlsVar.zzq, zzlsVar.zzr, zzlsVar.zzs, false);
        }
    }

    private final void zzY(zzuk zzukVar, zzwl zzwlVar, zzyf zzyfVar) {
        zzda zzdaVar = this.zzu.zza;
        zzxy[] zzxyVarArr = zzyfVar.zzc;
        this.zzf.zze(zzdaVar, zzukVar, this.zza, zzwlVar, zzxyVarArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ac, code lost:
    
        r7 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzZ() throws com.google.android.gms.internal.ads.zzit {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkt.zzZ():void");
    }

    private final void zzaa(zzda zzdaVar, zzuk zzukVar, zzda zzdaVar2, zzuk zzukVar2, long j, boolean z) throws zzit {
        if (!zzai(zzdaVar, zzukVar)) {
            zzcj zzcjVar = zzukVar.zzb() ? zzcj.zza : this.zzu.zzn;
            if (this.zzn.zzc().equals(zzcjVar)) {
                return;
            }
            zzR(zzcjVar);
            zzG(this.zzu.zzn, zzcjVar.zzc, false, false);
            return;
        }
        zzdaVar.zze(zzdaVar.zzn(zzukVar.zza, this.zzl).zzd, this.zzk, 0L);
        zzio zzioVar = this.zzN;
        zzbi zzbiVar = this.zzk.zzl;
        int i = zzfs.zza;
        zzioVar.zzd(zzbiVar);
        if (j != C.TIME_UNSET) {
            this.zzN.zze(zzr(zzdaVar, zzukVar.zza, j));
            return;
        }
        if (!zzfs.zzF(!zzdaVar2.zzo() ? zzdaVar2.zze(zzdaVar2.zzn(zzukVar2.zza, this.zzl).zzd, this.zzk, 0L).zzc : null, this.zzk.zzc) || z) {
            this.zzN.zze(C.TIME_UNSET);
        }
    }

    private final void zzab(boolean z, boolean z2) {
        this.zzz = z;
        this.zzA = z2 ? C.TIME_UNSET : SystemClock.elapsedRealtime();
    }

    private final synchronized void zzac(zzfuo zzfuoVar, long j) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j;
        boolean z = false;
        while (!Boolean.valueOf(((zzkk) zzfuoVar).zza.zzw).booleanValue() && j > 0) {
            try {
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = jElapsedRealtime - SystemClock.elapsedRealtime();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private final boolean zzad() {
        zzlc zzlcVarZzc = this.zzq.zzc();
        return (zzlcVarZzc == null || zzlcVarZzc.zzd() == Long.MIN_VALUE) ? false : true;
    }

    private static boolean zzae(zzlz zzlzVar) {
        return zzlzVar.zzbd() != 0;
    }

    private final boolean zzaf() {
        zzlc zzlcVarZzd = this.zzq.zzd();
        long j = zzlcVarZzd.zzf.zze;
        if (zzlcVarZzd.zzd) {
            return j == C.TIME_UNSET || this.zzu.zzr < j || !zzah();
        }
        return false;
    }

    private static boolean zzag(zzls zzlsVar, zzcx zzcxVar) {
        zzuk zzukVar = zzlsVar.zzb;
        zzda zzdaVar = zzlsVar.zza;
        return zzdaVar.zzo() || zzdaVar.zzn(zzukVar.zza, zzcxVar).zzg;
    }

    private final boolean zzah() {
        zzls zzlsVar = this.zzu;
        return zzlsVar.zzl && zzlsVar.zzm == 0;
    }

    private final boolean zzai(zzda zzdaVar, zzuk zzukVar) {
        if (!zzukVar.zzb() && !zzdaVar.zzo()) {
            zzdaVar.zze(zzdaVar.zzn(zzukVar.zza, this.zzl).zzd, this.zzk, 0L);
            if (this.zzk.zzb()) {
                zzcz zzczVar = this.zzk;
                if (zzczVar.zzj && zzczVar.zzg != C.TIME_UNSET) {
                    return true;
                }
            }
        }
        return false;
    }

    private static zzam[] zzaj(zzxy zzxyVar) {
        int iZzc = zzxyVar != null ? zzxyVar.zzc() : 0;
        zzam[] zzamVarArr = new zzam[iZzc];
        for (int i = 0; i < iZzc; i++) {
            zzamVarArr[i] = zzxyVar.zzd(i);
        }
        return zzamVarArr;
    }

    private static final void zzak(zzlv zzlvVar) throws zzit {
        zzlvVar.zzj();
        try {
            zzlvVar.zzc().zzt(zzlvVar.zza(), zzlvVar.zzg());
        } finally {
            zzlvVar.zzh(true);
        }
    }

    private static final void zzal(zzlz zzlzVar) {
        if (zzlzVar.zzbd() == 2) {
            zzlzVar.zzN();
        }
    }

    private static final void zzam(zzlz zzlzVar, long j) {
        zzlzVar.zzI();
        if (zzlzVar instanceof zzwp) {
            throw null;
        }
    }

    @Nullable
    static Object zze(zzcz zzczVar, zzcx zzcxVar, int i, boolean z, Object obj, zzda zzdaVar, zzda zzdaVar2) {
        int iZza = zzdaVar.zza(obj);
        int iZzb = zzdaVar.zzb();
        int i2 = 0;
        int iZzi = iZza;
        int iZza2 = -1;
        while (true) {
            if (i2 >= iZzb || iZza2 != -1) {
                break;
            }
            iZzi = zzdaVar.zzi(iZzi, zzcxVar, zzczVar, i, z);
            if (iZzi == -1) {
                iZza2 = -1;
                break;
            }
            iZza2 = zzdaVar2.zza(zzdaVar.zzf(iZzi));
            i2++;
        }
        if (iZza2 == -1) {
            return null;
        }
        return zzdaVar2.zzf(iZza2);
    }

    static final /* synthetic */ void zzq(zzlv zzlvVar) {
        try {
            zzak(zzlvVar);
        } catch (zzit e2) {
            zzez.zzd("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    private final long zzr(zzda zzdaVar, Object obj, long j) {
        zzdaVar.zze(zzdaVar.zzn(obj, this.zzl).zzd, this.zzk, 0L);
        zzcz zzczVar = this.zzk;
        if (zzczVar.zzg != C.TIME_UNSET && zzczVar.zzb()) {
            zzcz zzczVar2 = this.zzk;
            if (zzczVar2.zzj) {
                long j2 = zzczVar2.zzh;
                return zzfs.zzq((j2 == C.TIME_UNSET ? System.currentTimeMillis() : j2 + SystemClock.elapsedRealtime()) - this.zzk.zzg) - j;
            }
        }
        return C.TIME_UNSET;
    }

    private final long zzs() {
        return zzt(this.zzu.zzp);
    }

    private final long zzt(long j) {
        zzlc zzlcVarZzc = this.zzq.zzc();
        if (zzlcVarZzc == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.zzH - zzlcVarZzc.zze()));
    }

    private final long zzu(zzuk zzukVar, long j, boolean z) throws zzit {
        zzlf zzlfVar = this.zzq;
        return zzv(zzukVar, j, zzlfVar.zzd() != zzlfVar.zze(), z);
    }

    private final long zzv(zzuk zzukVar, long j, boolean z, boolean z2) throws zzit {
        zzW();
        zzab(false, true);
        if (z2 || this.zzu.zze == 3) {
            zzT(2);
        }
        zzlc zzlcVarZzd = this.zzq.zzd();
        zzlc zzlcVarZzg = zzlcVarZzd;
        while (zzlcVarZzg != null && !zzukVar.equals(zzlcVarZzg.zzf.zza)) {
            zzlcVarZzg = zzlcVarZzg.zzg();
        }
        if (z || zzlcVarZzd != zzlcVarZzg || (zzlcVarZzg != null && zzlcVarZzg.zze() + j < 0)) {
            zzlz[] zzlzVarArr = this.zza;
            int length = zzlzVarArr.length;
            for (int i = 0; i < 2; i++) {
                zzz(zzlzVarArr[i]);
            }
            if (zzlcVarZzg != null) {
                while (this.zzq.zzd() != zzlcVarZzg) {
                    this.zzq.zza();
                }
                this.zzq.zzm(zzlcVarZzg);
                zzlcVarZzg.zzp(1000000000000L);
                zzA();
            }
        }
        if (zzlcVarZzg != null) {
            this.zzq.zzm(zzlcVarZzg);
            if (!zzlcVarZzg.zzd) {
                zzlcVarZzg.zzf = zzlcVarZzg.zzf.zzb(j);
            } else if (zzlcVarZzg.zze) {
                j = zzlcVarZzg.zza.zze(j);
                zzlcVarZzg.zza.zzj(j - this.zzm, false);
            }
            zzN(j);
            zzH();
        } else {
            this.zzq.zzi();
            zzN(j);
        }
        zzD(false);
        this.zzh.zzi(2);
        return j;
    }

    private final Pair zzw(zzda zzdaVar) {
        long j = 0;
        if (zzdaVar.zzo()) {
            return Pair.create(zzls.zzh(), 0L);
        }
        Pair pairZzl = zzdaVar.zzl(this.zzk, this.zzl, zzdaVar.zzg(this.zzD), C.TIME_UNSET);
        zzuk zzukVarZzh = this.zzq.zzh(zzdaVar, pairZzl.first, 0L);
        long jLongValue = ((Long) pairZzl.second).longValue();
        if (zzukVarZzh.zzb()) {
            zzdaVar.zzn(zzukVarZzh.zza, this.zzl);
            if (zzukVarZzh.zzc == this.zzl.zze(zzukVarZzh.zzb)) {
                this.zzl.zzj();
            }
        } else {
            j = jLongValue;
        }
        return Pair.create(zzukVarZzh, Long.valueOf(j));
    }

    @Nullable
    private static Pair zzx(zzda zzdaVar, zzks zzksVar, boolean z, int i, boolean z2, zzcz zzczVar, zzcx zzcxVar) {
        Pair pairZzl;
        zzda zzdaVar2 = zzksVar.zza;
        if (zzdaVar.zzo()) {
            return null;
        }
        zzda zzdaVar3 = true == zzdaVar2.zzo() ? zzdaVar : zzdaVar2;
        try {
            pairZzl = zzdaVar3.zzl(zzczVar, zzcxVar, zzksVar.zzb, zzksVar.zzc);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (zzdaVar.equals(zzdaVar3)) {
            return pairZzl;
        }
        if (zzdaVar.zza(pairZzl.first) != -1) {
            return (zzdaVar3.zzn(pairZzl.first, zzcxVar).zzg && zzdaVar3.zze(zzcxVar.zzd, zzczVar, 0L).zzp == zzdaVar3.zza(pairZzl.first)) ? zzdaVar.zzl(zzczVar, zzcxVar, zzdaVar.zzn(pairZzl.first, zzcxVar).zzd, zzksVar.zzc) : pairZzl;
        }
        Object objZze = zze(zzczVar, zzcxVar, i, z2, pairZzl.first, zzdaVar3, zzdaVar);
        if (objZze != null) {
            return zzdaVar.zzl(zzczVar, zzcxVar, zzdaVar.zzn(objZze, zzcxVar).zzd, C.TIME_UNSET);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00eb  */
    @androidx.annotation.CheckResult
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.android.gms.internal.ads.zzls zzy(com.google.android.gms.internal.ads.zzuk r17, long r18, long r20, long r22, boolean r24, int r25) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkt.zzy(com.google.android.gms.internal.ads.zzuk, long, long, long, boolean, int):com.google.android.gms.internal.ads.zzls");
    }

    private final void zzz(zzlz zzlzVar) throws zzit {
        if (zzae(zzlzVar)) {
            this.zzn.zzd(zzlzVar);
            zzal(zzlzVar);
            zzlzVar.zzq();
            this.zzF--;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x06f8 A[Catch: RuntimeException -> 0x09bc, IOException -> 0x09e7, zztm -> 0x09ef, zzgr -> 0x09f7, zzcf -> 0x09ff, zzrj -> 0x0a16, zzit -> 0x0a20, TryCatch #8 {zzcf -> 0x09ff, zzgr -> 0x09f7, zzit -> 0x0a20, zzrj -> 0x0a16, zztm -> 0x09ef, IOException -> 0x09e7, RuntimeException -> 0x09bc, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:8:0x002e, B:9:0x0033, B:10:0x0038, B:14:0x003f, B:16:0x0048, B:18:0x0056, B:19:0x005e, B:20:0x0069, B:21:0x007d, B:22:0x0095, B:23:0x00ab, B:25:0x00ba, B:26:0x00be, B:27:0x00cf, B:29:0x00de, B:30:0x00fa, B:31:0x010d, B:32:0x0116, B:34:0x0128, B:35:0x0134, B:36:0x0144, B:38:0x0150, B:41:0x015b, B:42:0x0162, B:43:0x016f, B:47:0x0176, B:49:0x017e, B:51:0x0182, B:53:0x0188, B:55:0x0190, B:57:0x0198, B:58:0x019b, B:60:0x01a0, B:67:0x01ad, B:68:0x01ae, B:72:0x01b5, B:74:0x01c3, B:75:0x01c6, B:76:0x01cb, B:78:0x01db, B:79:0x01de, B:80:0x01e3, B:81:0x01e8, B:83:0x01f4, B:84:0x0200, B:86:0x020c, B:88:0x0238, B:89:0x0258, B:90:0x025d, B:91:0x0261, B:93:0x0266, B:94:0x0277, B:96:0x0283, B:97:0x0286, B:104:0x0291, B:105:0x0292, B:106:0x0297, B:107:0x029f, B:108:0x02b1, B:110:0x02d8, B:176:0x03ef, B:160:0x03bc, B:159:0x03b8, B:185:0x0400, B:186:0x040d, B:111:0x02fa, B:115:0x030d, B:117:0x031d, B:119:0x0334, B:121:0x033e, B:187:0x040e, B:189:0x0422, B:192:0x042c, B:194:0x043b, B:196:0x0447, B:198:0x0476, B:199:0x047b, B:200:0x047f, B:202:0x0483, B:204:0x0490, B:276:0x05ec, B:278:0x05f4, B:280:0x05fc, B:283:0x0601, B:284:0x060d, B:286:0x0613, B:288:0x061b, B:291:0x062b, B:293:0x0631, B:294:0x0651, B:296:0x0657, B:298:0x065c, B:300:0x0661, B:302:0x0665, B:304:0x066b, B:306:0x066f, B:308:0x0677, B:310:0x067d, B:312:0x0687, B:315:0x068d, B:316:0x0690, B:318:0x0699, B:320:0x06ab, B:322:0x06b4, B:324:0x06bc, B:329:0x06c6, B:330:0x06f2, B:332:0x06f8, B:334:0x06fe, B:335:0x0705, B:207:0x049f, B:209:0x04a5, B:212:0x04ab, B:215:0x04b6, B:217:0x04bb, B:220:0x04c9, B:222:0x04cf, B:223:0x04d7, B:224:0x04da, B:226:0x04e2, B:228:0x04f0, B:230:0x052c, B:232:0x0536, B:235:0x0541, B:237:0x0549, B:238:0x054c, B:239:0x054f, B:241:0x0555, B:243:0x0564, B:245:0x056a, B:247:0x0576, B:249:0x0580, B:251:0x0591, B:253:0x0597, B:254:0x05a2, B:255:0x05a7, B:257:0x05b2, B:260:0x05b7, B:262:0x05bd, B:264:0x05c5, B:266:0x05cb, B:268:0x05d1, B:272:0x05df, B:274:0x05e6, B:275:0x05e9, B:203:0x048d, B:338:0x0711, B:342:0x071c, B:344:0x0726, B:345:0x072b, B:347:0x0739, B:348:0x0751, B:350:0x0757, B:352:0x075f, B:354:0x0766, B:358:0x076f, B:363:0x077e, B:369:0x078b, B:371:0x0791, B:381:0x07a4, B:383:0x07a9, B:385:0x07b5, B:387:0x07bb, B:391:0x07c8, B:393:0x07d0, B:395:0x07d4, B:396:0x07df, B:398:0x07e5, B:452:0x08d7, B:455:0x08df, B:457:0x08e4, B:459:0x08ec, B:461:0x08fa, B:462:0x0901, B:463:0x0905, B:465:0x090b, B:467:0x0914, B:469:0x091a, B:471:0x0925, B:478:0x0949, B:480:0x094f, B:484:0x0958, B:496:0x0978, B:492:0x0969, B:494:0x096d, B:495:0x0973, B:472:0x092c, B:475:0x093a, B:476:0x0941, B:477:0x0942, B:399:0x07ee, B:401:0x07f5, B:403:0x07f9, B:431:0x087f, B:433:0x088b, B:408:0x0806, B:410:0x080a, B:412:0x081e, B:414:0x082c, B:416:0x0838, B:420:0x0841, B:422:0x084b, B:428:0x0856, B:434:0x088f, B:436:0x0896, B:438:0x089a, B:442:0x08a3, B:444:0x08b3, B:446:0x08bb, B:448:0x08c5, B:449:0x08ca, B:450:0x08cf, B:451:0x08d4, B:384:0x07ae, B:497:0x097d, B:501:0x0984, B:502:0x098c, B:506:0x09aa), top: B:578:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:399:0x07ee A[Catch: RuntimeException -> 0x09bc, IOException -> 0x09e7, zztm -> 0x09ef, zzgr -> 0x09f7, zzcf -> 0x09ff, zzrj -> 0x0a16, zzit -> 0x0a20, TryCatch #8 {zzcf -> 0x09ff, zzgr -> 0x09f7, zzit -> 0x0a20, zzrj -> 0x0a16, zztm -> 0x09ef, IOException -> 0x09e7, RuntimeException -> 0x09bc, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:8:0x002e, B:9:0x0033, B:10:0x0038, B:14:0x003f, B:16:0x0048, B:18:0x0056, B:19:0x005e, B:20:0x0069, B:21:0x007d, B:22:0x0095, B:23:0x00ab, B:25:0x00ba, B:26:0x00be, B:27:0x00cf, B:29:0x00de, B:30:0x00fa, B:31:0x010d, B:32:0x0116, B:34:0x0128, B:35:0x0134, B:36:0x0144, B:38:0x0150, B:41:0x015b, B:42:0x0162, B:43:0x016f, B:47:0x0176, B:49:0x017e, B:51:0x0182, B:53:0x0188, B:55:0x0190, B:57:0x0198, B:58:0x019b, B:60:0x01a0, B:67:0x01ad, B:68:0x01ae, B:72:0x01b5, B:74:0x01c3, B:75:0x01c6, B:76:0x01cb, B:78:0x01db, B:79:0x01de, B:80:0x01e3, B:81:0x01e8, B:83:0x01f4, B:84:0x0200, B:86:0x020c, B:88:0x0238, B:89:0x0258, B:90:0x025d, B:91:0x0261, B:93:0x0266, B:94:0x0277, B:96:0x0283, B:97:0x0286, B:104:0x0291, B:105:0x0292, B:106:0x0297, B:107:0x029f, B:108:0x02b1, B:110:0x02d8, B:176:0x03ef, B:160:0x03bc, B:159:0x03b8, B:185:0x0400, B:186:0x040d, B:111:0x02fa, B:115:0x030d, B:117:0x031d, B:119:0x0334, B:121:0x033e, B:187:0x040e, B:189:0x0422, B:192:0x042c, B:194:0x043b, B:196:0x0447, B:198:0x0476, B:199:0x047b, B:200:0x047f, B:202:0x0483, B:204:0x0490, B:276:0x05ec, B:278:0x05f4, B:280:0x05fc, B:283:0x0601, B:284:0x060d, B:286:0x0613, B:288:0x061b, B:291:0x062b, B:293:0x0631, B:294:0x0651, B:296:0x0657, B:298:0x065c, B:300:0x0661, B:302:0x0665, B:304:0x066b, B:306:0x066f, B:308:0x0677, B:310:0x067d, B:312:0x0687, B:315:0x068d, B:316:0x0690, B:318:0x0699, B:320:0x06ab, B:322:0x06b4, B:324:0x06bc, B:329:0x06c6, B:330:0x06f2, B:332:0x06f8, B:334:0x06fe, B:335:0x0705, B:207:0x049f, B:209:0x04a5, B:212:0x04ab, B:215:0x04b6, B:217:0x04bb, B:220:0x04c9, B:222:0x04cf, B:223:0x04d7, B:224:0x04da, B:226:0x04e2, B:228:0x04f0, B:230:0x052c, B:232:0x0536, B:235:0x0541, B:237:0x0549, B:238:0x054c, B:239:0x054f, B:241:0x0555, B:243:0x0564, B:245:0x056a, B:247:0x0576, B:249:0x0580, B:251:0x0591, B:253:0x0597, B:254:0x05a2, B:255:0x05a7, B:257:0x05b2, B:260:0x05b7, B:262:0x05bd, B:264:0x05c5, B:266:0x05cb, B:268:0x05d1, B:272:0x05df, B:274:0x05e6, B:275:0x05e9, B:203:0x048d, B:338:0x0711, B:342:0x071c, B:344:0x0726, B:345:0x072b, B:347:0x0739, B:348:0x0751, B:350:0x0757, B:352:0x075f, B:354:0x0766, B:358:0x076f, B:363:0x077e, B:369:0x078b, B:371:0x0791, B:381:0x07a4, B:383:0x07a9, B:385:0x07b5, B:387:0x07bb, B:391:0x07c8, B:393:0x07d0, B:395:0x07d4, B:396:0x07df, B:398:0x07e5, B:452:0x08d7, B:455:0x08df, B:457:0x08e4, B:459:0x08ec, B:461:0x08fa, B:462:0x0901, B:463:0x0905, B:465:0x090b, B:467:0x0914, B:469:0x091a, B:471:0x0925, B:478:0x0949, B:480:0x094f, B:484:0x0958, B:496:0x0978, B:492:0x0969, B:494:0x096d, B:495:0x0973, B:472:0x092c, B:475:0x093a, B:476:0x0941, B:477:0x0942, B:399:0x07ee, B:401:0x07f5, B:403:0x07f9, B:431:0x087f, B:433:0x088b, B:408:0x0806, B:410:0x080a, B:412:0x081e, B:414:0x082c, B:416:0x0838, B:420:0x0841, B:422:0x084b, B:428:0x0856, B:434:0x088f, B:436:0x0896, B:438:0x089a, B:442:0x08a3, B:444:0x08b3, B:446:0x08bb, B:448:0x08c5, B:449:0x08ca, B:450:0x08cf, B:451:0x08d4, B:384:0x07ae, B:497:0x097d, B:501:0x0984, B:502:0x098c, B:506:0x09aa), top: B:578:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:433:0x088b A[Catch: RuntimeException -> 0x09bc, IOException -> 0x09e7, zztm -> 0x09ef, zzgr -> 0x09f7, zzcf -> 0x09ff, zzrj -> 0x0a16, zzit -> 0x0a20, TryCatch #8 {zzcf -> 0x09ff, zzgr -> 0x09f7, zzit -> 0x0a20, zzrj -> 0x0a16, zztm -> 0x09ef, IOException -> 0x09e7, RuntimeException -> 0x09bc, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:8:0x002e, B:9:0x0033, B:10:0x0038, B:14:0x003f, B:16:0x0048, B:18:0x0056, B:19:0x005e, B:20:0x0069, B:21:0x007d, B:22:0x0095, B:23:0x00ab, B:25:0x00ba, B:26:0x00be, B:27:0x00cf, B:29:0x00de, B:30:0x00fa, B:31:0x010d, B:32:0x0116, B:34:0x0128, B:35:0x0134, B:36:0x0144, B:38:0x0150, B:41:0x015b, B:42:0x0162, B:43:0x016f, B:47:0x0176, B:49:0x017e, B:51:0x0182, B:53:0x0188, B:55:0x0190, B:57:0x0198, B:58:0x019b, B:60:0x01a0, B:67:0x01ad, B:68:0x01ae, B:72:0x01b5, B:74:0x01c3, B:75:0x01c6, B:76:0x01cb, B:78:0x01db, B:79:0x01de, B:80:0x01e3, B:81:0x01e8, B:83:0x01f4, B:84:0x0200, B:86:0x020c, B:88:0x0238, B:89:0x0258, B:90:0x025d, B:91:0x0261, B:93:0x0266, B:94:0x0277, B:96:0x0283, B:97:0x0286, B:104:0x0291, B:105:0x0292, B:106:0x0297, B:107:0x029f, B:108:0x02b1, B:110:0x02d8, B:176:0x03ef, B:160:0x03bc, B:159:0x03b8, B:185:0x0400, B:186:0x040d, B:111:0x02fa, B:115:0x030d, B:117:0x031d, B:119:0x0334, B:121:0x033e, B:187:0x040e, B:189:0x0422, B:192:0x042c, B:194:0x043b, B:196:0x0447, B:198:0x0476, B:199:0x047b, B:200:0x047f, B:202:0x0483, B:204:0x0490, B:276:0x05ec, B:278:0x05f4, B:280:0x05fc, B:283:0x0601, B:284:0x060d, B:286:0x0613, B:288:0x061b, B:291:0x062b, B:293:0x0631, B:294:0x0651, B:296:0x0657, B:298:0x065c, B:300:0x0661, B:302:0x0665, B:304:0x066b, B:306:0x066f, B:308:0x0677, B:310:0x067d, B:312:0x0687, B:315:0x068d, B:316:0x0690, B:318:0x0699, B:320:0x06ab, B:322:0x06b4, B:324:0x06bc, B:329:0x06c6, B:330:0x06f2, B:332:0x06f8, B:334:0x06fe, B:335:0x0705, B:207:0x049f, B:209:0x04a5, B:212:0x04ab, B:215:0x04b6, B:217:0x04bb, B:220:0x04c9, B:222:0x04cf, B:223:0x04d7, B:224:0x04da, B:226:0x04e2, B:228:0x04f0, B:230:0x052c, B:232:0x0536, B:235:0x0541, B:237:0x0549, B:238:0x054c, B:239:0x054f, B:241:0x0555, B:243:0x0564, B:245:0x056a, B:247:0x0576, B:249:0x0580, B:251:0x0591, B:253:0x0597, B:254:0x05a2, B:255:0x05a7, B:257:0x05b2, B:260:0x05b7, B:262:0x05bd, B:264:0x05c5, B:266:0x05cb, B:268:0x05d1, B:272:0x05df, B:274:0x05e6, B:275:0x05e9, B:203:0x048d, B:338:0x0711, B:342:0x071c, B:344:0x0726, B:345:0x072b, B:347:0x0739, B:348:0x0751, B:350:0x0757, B:352:0x075f, B:354:0x0766, B:358:0x076f, B:363:0x077e, B:369:0x078b, B:371:0x0791, B:381:0x07a4, B:383:0x07a9, B:385:0x07b5, B:387:0x07bb, B:391:0x07c8, B:393:0x07d0, B:395:0x07d4, B:396:0x07df, B:398:0x07e5, B:452:0x08d7, B:455:0x08df, B:457:0x08e4, B:459:0x08ec, B:461:0x08fa, B:462:0x0901, B:463:0x0905, B:465:0x090b, B:467:0x0914, B:469:0x091a, B:471:0x0925, B:478:0x0949, B:480:0x094f, B:484:0x0958, B:496:0x0978, B:492:0x0969, B:494:0x096d, B:495:0x0973, B:472:0x092c, B:475:0x093a, B:476:0x0941, B:477:0x0942, B:399:0x07ee, B:401:0x07f5, B:403:0x07f9, B:431:0x087f, B:433:0x088b, B:408:0x0806, B:410:0x080a, B:412:0x081e, B:414:0x082c, B:416:0x0838, B:420:0x0841, B:422:0x084b, B:428:0x0856, B:434:0x088f, B:436:0x0896, B:438:0x089a, B:442:0x08a3, B:444:0x08b3, B:446:0x08bb, B:448:0x08c5, B:449:0x08ca, B:450:0x08cf, B:451:0x08d4, B:384:0x07ae, B:497:0x097d, B:501:0x0984, B:502:0x098c, B:506:0x09aa), top: B:578:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:434:0x088f A[Catch: RuntimeException -> 0x09bc, IOException -> 0x09e7, zztm -> 0x09ef, zzgr -> 0x09f7, zzcf -> 0x09ff, zzrj -> 0x0a16, zzit -> 0x0a20, TryCatch #8 {zzcf -> 0x09ff, zzgr -> 0x09f7, zzit -> 0x0a20, zzrj -> 0x0a16, zztm -> 0x09ef, IOException -> 0x09e7, RuntimeException -> 0x09bc, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:8:0x002e, B:9:0x0033, B:10:0x0038, B:14:0x003f, B:16:0x0048, B:18:0x0056, B:19:0x005e, B:20:0x0069, B:21:0x007d, B:22:0x0095, B:23:0x00ab, B:25:0x00ba, B:26:0x00be, B:27:0x00cf, B:29:0x00de, B:30:0x00fa, B:31:0x010d, B:32:0x0116, B:34:0x0128, B:35:0x0134, B:36:0x0144, B:38:0x0150, B:41:0x015b, B:42:0x0162, B:43:0x016f, B:47:0x0176, B:49:0x017e, B:51:0x0182, B:53:0x0188, B:55:0x0190, B:57:0x0198, B:58:0x019b, B:60:0x01a0, B:67:0x01ad, B:68:0x01ae, B:72:0x01b5, B:74:0x01c3, B:75:0x01c6, B:76:0x01cb, B:78:0x01db, B:79:0x01de, B:80:0x01e3, B:81:0x01e8, B:83:0x01f4, B:84:0x0200, B:86:0x020c, B:88:0x0238, B:89:0x0258, B:90:0x025d, B:91:0x0261, B:93:0x0266, B:94:0x0277, B:96:0x0283, B:97:0x0286, B:104:0x0291, B:105:0x0292, B:106:0x0297, B:107:0x029f, B:108:0x02b1, B:110:0x02d8, B:176:0x03ef, B:160:0x03bc, B:159:0x03b8, B:185:0x0400, B:186:0x040d, B:111:0x02fa, B:115:0x030d, B:117:0x031d, B:119:0x0334, B:121:0x033e, B:187:0x040e, B:189:0x0422, B:192:0x042c, B:194:0x043b, B:196:0x0447, B:198:0x0476, B:199:0x047b, B:200:0x047f, B:202:0x0483, B:204:0x0490, B:276:0x05ec, B:278:0x05f4, B:280:0x05fc, B:283:0x0601, B:284:0x060d, B:286:0x0613, B:288:0x061b, B:291:0x062b, B:293:0x0631, B:294:0x0651, B:296:0x0657, B:298:0x065c, B:300:0x0661, B:302:0x0665, B:304:0x066b, B:306:0x066f, B:308:0x0677, B:310:0x067d, B:312:0x0687, B:315:0x068d, B:316:0x0690, B:318:0x0699, B:320:0x06ab, B:322:0x06b4, B:324:0x06bc, B:329:0x06c6, B:330:0x06f2, B:332:0x06f8, B:334:0x06fe, B:335:0x0705, B:207:0x049f, B:209:0x04a5, B:212:0x04ab, B:215:0x04b6, B:217:0x04bb, B:220:0x04c9, B:222:0x04cf, B:223:0x04d7, B:224:0x04da, B:226:0x04e2, B:228:0x04f0, B:230:0x052c, B:232:0x0536, B:235:0x0541, B:237:0x0549, B:238:0x054c, B:239:0x054f, B:241:0x0555, B:243:0x0564, B:245:0x056a, B:247:0x0576, B:249:0x0580, B:251:0x0591, B:253:0x0597, B:254:0x05a2, B:255:0x05a7, B:257:0x05b2, B:260:0x05b7, B:262:0x05bd, B:264:0x05c5, B:266:0x05cb, B:268:0x05d1, B:272:0x05df, B:274:0x05e6, B:275:0x05e9, B:203:0x048d, B:338:0x0711, B:342:0x071c, B:344:0x0726, B:345:0x072b, B:347:0x0739, B:348:0x0751, B:350:0x0757, B:352:0x075f, B:354:0x0766, B:358:0x076f, B:363:0x077e, B:369:0x078b, B:371:0x0791, B:381:0x07a4, B:383:0x07a9, B:385:0x07b5, B:387:0x07bb, B:391:0x07c8, B:393:0x07d0, B:395:0x07d4, B:396:0x07df, B:398:0x07e5, B:452:0x08d7, B:455:0x08df, B:457:0x08e4, B:459:0x08ec, B:461:0x08fa, B:462:0x0901, B:463:0x0905, B:465:0x090b, B:467:0x0914, B:469:0x091a, B:471:0x0925, B:478:0x0949, B:480:0x094f, B:484:0x0958, B:496:0x0978, B:492:0x0969, B:494:0x096d, B:495:0x0973, B:472:0x092c, B:475:0x093a, B:476:0x0941, B:477:0x0942, B:399:0x07ee, B:401:0x07f5, B:403:0x07f9, B:431:0x087f, B:433:0x088b, B:408:0x0806, B:410:0x080a, B:412:0x081e, B:414:0x082c, B:416:0x0838, B:420:0x0841, B:422:0x084b, B:428:0x0856, B:434:0x088f, B:436:0x0896, B:438:0x089a, B:442:0x08a3, B:444:0x08b3, B:446:0x08bb, B:448:0x08c5, B:449:0x08ca, B:450:0x08cf, B:451:0x08d4, B:384:0x07ae, B:497:0x097d, B:501:0x0984, B:502:0x098c, B:506:0x09aa), top: B:578:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:436:0x0896 A[Catch: RuntimeException -> 0x09bc, IOException -> 0x09e7, zztm -> 0x09ef, zzgr -> 0x09f7, zzcf -> 0x09ff, zzrj -> 0x0a16, zzit -> 0x0a20, TryCatch #8 {zzcf -> 0x09ff, zzgr -> 0x09f7, zzit -> 0x0a20, zzrj -> 0x0a16, zztm -> 0x09ef, IOException -> 0x09e7, RuntimeException -> 0x09bc, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:8:0x002e, B:9:0x0033, B:10:0x0038, B:14:0x003f, B:16:0x0048, B:18:0x0056, B:19:0x005e, B:20:0x0069, B:21:0x007d, B:22:0x0095, B:23:0x00ab, B:25:0x00ba, B:26:0x00be, B:27:0x00cf, B:29:0x00de, B:30:0x00fa, B:31:0x010d, B:32:0x0116, B:34:0x0128, B:35:0x0134, B:36:0x0144, B:38:0x0150, B:41:0x015b, B:42:0x0162, B:43:0x016f, B:47:0x0176, B:49:0x017e, B:51:0x0182, B:53:0x0188, B:55:0x0190, B:57:0x0198, B:58:0x019b, B:60:0x01a0, B:67:0x01ad, B:68:0x01ae, B:72:0x01b5, B:74:0x01c3, B:75:0x01c6, B:76:0x01cb, B:78:0x01db, B:79:0x01de, B:80:0x01e3, B:81:0x01e8, B:83:0x01f4, B:84:0x0200, B:86:0x020c, B:88:0x0238, B:89:0x0258, B:90:0x025d, B:91:0x0261, B:93:0x0266, B:94:0x0277, B:96:0x0283, B:97:0x0286, B:104:0x0291, B:105:0x0292, B:106:0x0297, B:107:0x029f, B:108:0x02b1, B:110:0x02d8, B:176:0x03ef, B:160:0x03bc, B:159:0x03b8, B:185:0x0400, B:186:0x040d, B:111:0x02fa, B:115:0x030d, B:117:0x031d, B:119:0x0334, B:121:0x033e, B:187:0x040e, B:189:0x0422, B:192:0x042c, B:194:0x043b, B:196:0x0447, B:198:0x0476, B:199:0x047b, B:200:0x047f, B:202:0x0483, B:204:0x0490, B:276:0x05ec, B:278:0x05f4, B:280:0x05fc, B:283:0x0601, B:284:0x060d, B:286:0x0613, B:288:0x061b, B:291:0x062b, B:293:0x0631, B:294:0x0651, B:296:0x0657, B:298:0x065c, B:300:0x0661, B:302:0x0665, B:304:0x066b, B:306:0x066f, B:308:0x0677, B:310:0x067d, B:312:0x0687, B:315:0x068d, B:316:0x0690, B:318:0x0699, B:320:0x06ab, B:322:0x06b4, B:324:0x06bc, B:329:0x06c6, B:330:0x06f2, B:332:0x06f8, B:334:0x06fe, B:335:0x0705, B:207:0x049f, B:209:0x04a5, B:212:0x04ab, B:215:0x04b6, B:217:0x04bb, B:220:0x04c9, B:222:0x04cf, B:223:0x04d7, B:224:0x04da, B:226:0x04e2, B:228:0x04f0, B:230:0x052c, B:232:0x0536, B:235:0x0541, B:237:0x0549, B:238:0x054c, B:239:0x054f, B:241:0x0555, B:243:0x0564, B:245:0x056a, B:247:0x0576, B:249:0x0580, B:251:0x0591, B:253:0x0597, B:254:0x05a2, B:255:0x05a7, B:257:0x05b2, B:260:0x05b7, B:262:0x05bd, B:264:0x05c5, B:266:0x05cb, B:268:0x05d1, B:272:0x05df, B:274:0x05e6, B:275:0x05e9, B:203:0x048d, B:338:0x0711, B:342:0x071c, B:344:0x0726, B:345:0x072b, B:347:0x0739, B:348:0x0751, B:350:0x0757, B:352:0x075f, B:354:0x0766, B:358:0x076f, B:363:0x077e, B:369:0x078b, B:371:0x0791, B:381:0x07a4, B:383:0x07a9, B:385:0x07b5, B:387:0x07bb, B:391:0x07c8, B:393:0x07d0, B:395:0x07d4, B:396:0x07df, B:398:0x07e5, B:452:0x08d7, B:455:0x08df, B:457:0x08e4, B:459:0x08ec, B:461:0x08fa, B:462:0x0901, B:463:0x0905, B:465:0x090b, B:467:0x0914, B:469:0x091a, B:471:0x0925, B:478:0x0949, B:480:0x094f, B:484:0x0958, B:496:0x0978, B:492:0x0969, B:494:0x096d, B:495:0x0973, B:472:0x092c, B:475:0x093a, B:476:0x0941, B:477:0x0942, B:399:0x07ee, B:401:0x07f5, B:403:0x07f9, B:431:0x087f, B:433:0x088b, B:408:0x0806, B:410:0x080a, B:412:0x081e, B:414:0x082c, B:416:0x0838, B:420:0x0841, B:422:0x084b, B:428:0x0856, B:434:0x088f, B:436:0x0896, B:438:0x089a, B:442:0x08a3, B:444:0x08b3, B:446:0x08bb, B:448:0x08c5, B:449:0x08ca, B:450:0x08cf, B:451:0x08d4, B:384:0x07ae, B:497:0x097d, B:501:0x0984, B:502:0x098c, B:506:0x09aa), top: B:578:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:444:0x08b3 A[Catch: RuntimeException -> 0x09bc, IOException -> 0x09e7, zztm -> 0x09ef, zzgr -> 0x09f7, zzcf -> 0x09ff, zzrj -> 0x0a16, zzit -> 0x0a20, TryCatch #8 {zzcf -> 0x09ff, zzgr -> 0x09f7, zzit -> 0x0a20, zzrj -> 0x0a16, zztm -> 0x09ef, IOException -> 0x09e7, RuntimeException -> 0x09bc, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:8:0x002e, B:9:0x0033, B:10:0x0038, B:14:0x003f, B:16:0x0048, B:18:0x0056, B:19:0x005e, B:20:0x0069, B:21:0x007d, B:22:0x0095, B:23:0x00ab, B:25:0x00ba, B:26:0x00be, B:27:0x00cf, B:29:0x00de, B:30:0x00fa, B:31:0x010d, B:32:0x0116, B:34:0x0128, B:35:0x0134, B:36:0x0144, B:38:0x0150, B:41:0x015b, B:42:0x0162, B:43:0x016f, B:47:0x0176, B:49:0x017e, B:51:0x0182, B:53:0x0188, B:55:0x0190, B:57:0x0198, B:58:0x019b, B:60:0x01a0, B:67:0x01ad, B:68:0x01ae, B:72:0x01b5, B:74:0x01c3, B:75:0x01c6, B:76:0x01cb, B:78:0x01db, B:79:0x01de, B:80:0x01e3, B:81:0x01e8, B:83:0x01f4, B:84:0x0200, B:86:0x020c, B:88:0x0238, B:89:0x0258, B:90:0x025d, B:91:0x0261, B:93:0x0266, B:94:0x0277, B:96:0x0283, B:97:0x0286, B:104:0x0291, B:105:0x0292, B:106:0x0297, B:107:0x029f, B:108:0x02b1, B:110:0x02d8, B:176:0x03ef, B:160:0x03bc, B:159:0x03b8, B:185:0x0400, B:186:0x040d, B:111:0x02fa, B:115:0x030d, B:117:0x031d, B:119:0x0334, B:121:0x033e, B:187:0x040e, B:189:0x0422, B:192:0x042c, B:194:0x043b, B:196:0x0447, B:198:0x0476, B:199:0x047b, B:200:0x047f, B:202:0x0483, B:204:0x0490, B:276:0x05ec, B:278:0x05f4, B:280:0x05fc, B:283:0x0601, B:284:0x060d, B:286:0x0613, B:288:0x061b, B:291:0x062b, B:293:0x0631, B:294:0x0651, B:296:0x0657, B:298:0x065c, B:300:0x0661, B:302:0x0665, B:304:0x066b, B:306:0x066f, B:308:0x0677, B:310:0x067d, B:312:0x0687, B:315:0x068d, B:316:0x0690, B:318:0x0699, B:320:0x06ab, B:322:0x06b4, B:324:0x06bc, B:329:0x06c6, B:330:0x06f2, B:332:0x06f8, B:334:0x06fe, B:335:0x0705, B:207:0x049f, B:209:0x04a5, B:212:0x04ab, B:215:0x04b6, B:217:0x04bb, B:220:0x04c9, B:222:0x04cf, B:223:0x04d7, B:224:0x04da, B:226:0x04e2, B:228:0x04f0, B:230:0x052c, B:232:0x0536, B:235:0x0541, B:237:0x0549, B:238:0x054c, B:239:0x054f, B:241:0x0555, B:243:0x0564, B:245:0x056a, B:247:0x0576, B:249:0x0580, B:251:0x0591, B:253:0x0597, B:254:0x05a2, B:255:0x05a7, B:257:0x05b2, B:260:0x05b7, B:262:0x05bd, B:264:0x05c5, B:266:0x05cb, B:268:0x05d1, B:272:0x05df, B:274:0x05e6, B:275:0x05e9, B:203:0x048d, B:338:0x0711, B:342:0x071c, B:344:0x0726, B:345:0x072b, B:347:0x0739, B:348:0x0751, B:350:0x0757, B:352:0x075f, B:354:0x0766, B:358:0x076f, B:363:0x077e, B:369:0x078b, B:371:0x0791, B:381:0x07a4, B:383:0x07a9, B:385:0x07b5, B:387:0x07bb, B:391:0x07c8, B:393:0x07d0, B:395:0x07d4, B:396:0x07df, B:398:0x07e5, B:452:0x08d7, B:455:0x08df, B:457:0x08e4, B:459:0x08ec, B:461:0x08fa, B:462:0x0901, B:463:0x0905, B:465:0x090b, B:467:0x0914, B:469:0x091a, B:471:0x0925, B:478:0x0949, B:480:0x094f, B:484:0x0958, B:496:0x0978, B:492:0x0969, B:494:0x096d, B:495:0x0973, B:472:0x092c, B:475:0x093a, B:476:0x0941, B:477:0x0942, B:399:0x07ee, B:401:0x07f5, B:403:0x07f9, B:431:0x087f, B:433:0x088b, B:408:0x0806, B:410:0x080a, B:412:0x081e, B:414:0x082c, B:416:0x0838, B:420:0x0841, B:422:0x084b, B:428:0x0856, B:434:0x088f, B:436:0x0896, B:438:0x089a, B:442:0x08a3, B:444:0x08b3, B:446:0x08bb, B:448:0x08c5, B:449:0x08ca, B:450:0x08cf, B:451:0x08d4, B:384:0x07ae, B:497:0x097d, B:501:0x0984, B:502:0x098c, B:506:0x09aa), top: B:578:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:454:0x08de  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0942 A[Catch: RuntimeException -> 0x09bc, IOException -> 0x09e7, zztm -> 0x09ef, zzgr -> 0x09f7, zzcf -> 0x09ff, zzrj -> 0x0a16, zzit -> 0x0a20, TryCatch #8 {zzcf -> 0x09ff, zzgr -> 0x09f7, zzit -> 0x0a20, zzrj -> 0x0a16, zztm -> 0x09ef, IOException -> 0x09e7, RuntimeException -> 0x09bc, blocks: (B:3:0x0006, B:4:0x0011, B:7:0x0016, B:8:0x002e, B:9:0x0033, B:10:0x0038, B:14:0x003f, B:16:0x0048, B:18:0x0056, B:19:0x005e, B:20:0x0069, B:21:0x007d, B:22:0x0095, B:23:0x00ab, B:25:0x00ba, B:26:0x00be, B:27:0x00cf, B:29:0x00de, B:30:0x00fa, B:31:0x010d, B:32:0x0116, B:34:0x0128, B:35:0x0134, B:36:0x0144, B:38:0x0150, B:41:0x015b, B:42:0x0162, B:43:0x016f, B:47:0x0176, B:49:0x017e, B:51:0x0182, B:53:0x0188, B:55:0x0190, B:57:0x0198, B:58:0x019b, B:60:0x01a0, B:67:0x01ad, B:68:0x01ae, B:72:0x01b5, B:74:0x01c3, B:75:0x01c6, B:76:0x01cb, B:78:0x01db, B:79:0x01de, B:80:0x01e3, B:81:0x01e8, B:83:0x01f4, B:84:0x0200, B:86:0x020c, B:88:0x0238, B:89:0x0258, B:90:0x025d, B:91:0x0261, B:93:0x0266, B:94:0x0277, B:96:0x0283, B:97:0x0286, B:104:0x0291, B:105:0x0292, B:106:0x0297, B:107:0x029f, B:108:0x02b1, B:110:0x02d8, B:176:0x03ef, B:160:0x03bc, B:159:0x03b8, B:185:0x0400, B:186:0x040d, B:111:0x02fa, B:115:0x030d, B:117:0x031d, B:119:0x0334, B:121:0x033e, B:187:0x040e, B:189:0x0422, B:192:0x042c, B:194:0x043b, B:196:0x0447, B:198:0x0476, B:199:0x047b, B:200:0x047f, B:202:0x0483, B:204:0x0490, B:276:0x05ec, B:278:0x05f4, B:280:0x05fc, B:283:0x0601, B:284:0x060d, B:286:0x0613, B:288:0x061b, B:291:0x062b, B:293:0x0631, B:294:0x0651, B:296:0x0657, B:298:0x065c, B:300:0x0661, B:302:0x0665, B:304:0x066b, B:306:0x066f, B:308:0x0677, B:310:0x067d, B:312:0x0687, B:315:0x068d, B:316:0x0690, B:318:0x0699, B:320:0x06ab, B:322:0x06b4, B:324:0x06bc, B:329:0x06c6, B:330:0x06f2, B:332:0x06f8, B:334:0x06fe, B:335:0x0705, B:207:0x049f, B:209:0x04a5, B:212:0x04ab, B:215:0x04b6, B:217:0x04bb, B:220:0x04c9, B:222:0x04cf, B:223:0x04d7, B:224:0x04da, B:226:0x04e2, B:228:0x04f0, B:230:0x052c, B:232:0x0536, B:235:0x0541, B:237:0x0549, B:238:0x054c, B:239:0x054f, B:241:0x0555, B:243:0x0564, B:245:0x056a, B:247:0x0576, B:249:0x0580, B:251:0x0591, B:253:0x0597, B:254:0x05a2, B:255:0x05a7, B:257:0x05b2, B:260:0x05b7, B:262:0x05bd, B:264:0x05c5, B:266:0x05cb, B:268:0x05d1, B:272:0x05df, B:274:0x05e6, B:275:0x05e9, B:203:0x048d, B:338:0x0711, B:342:0x071c, B:344:0x0726, B:345:0x072b, B:347:0x0739, B:348:0x0751, B:350:0x0757, B:352:0x075f, B:354:0x0766, B:358:0x076f, B:363:0x077e, B:369:0x078b, B:371:0x0791, B:381:0x07a4, B:383:0x07a9, B:385:0x07b5, B:387:0x07bb, B:391:0x07c8, B:393:0x07d0, B:395:0x07d4, B:396:0x07df, B:398:0x07e5, B:452:0x08d7, B:455:0x08df, B:457:0x08e4, B:459:0x08ec, B:461:0x08fa, B:462:0x0901, B:463:0x0905, B:465:0x090b, B:467:0x0914, B:469:0x091a, B:471:0x0925, B:478:0x0949, B:480:0x094f, B:484:0x0958, B:496:0x0978, B:492:0x0969, B:494:0x096d, B:495:0x0973, B:472:0x092c, B:475:0x093a, B:476:0x0941, B:477:0x0942, B:399:0x07ee, B:401:0x07f5, B:403:0x07f9, B:431:0x087f, B:433:0x088b, B:408:0x0806, B:410:0x080a, B:412:0x081e, B:414:0x082c, B:416:0x0838, B:420:0x0841, B:422:0x084b, B:428:0x0856, B:434:0x088f, B:436:0x0896, B:438:0x089a, B:442:0x08a3, B:444:0x08b3, B:446:0x08bb, B:448:0x08c5, B:449:0x08ca, B:450:0x08cf, B:451:0x08d4, B:384:0x07ae, B:497:0x097d, B:501:0x0984, B:502:0x098c, B:506:0x09aa), top: B:578:0x0006 }] */
    /* JADX WARN: Type inference failed for: r2v35, types: [com.google.android.gms.internal.ads.zzhs, com.google.android.gms.internal.ads.zzym] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean handleMessage(android.os.Message r38) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2820
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkt.handleMessage(android.os.Message):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public final void zza(zzcj zzcjVar) {
        this.zzh.zzc(16, zzcjVar).zza();
    }

    public final Looper zzb() {
        return this.zzj;
    }

    final /* synthetic */ Boolean zzd() {
        return Boolean.valueOf(this.zzw);
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final /* bridge */ /* synthetic */ void zzf(zzwc zzwcVar) {
        this.zzh.zzc(9, (zzui) zzwcVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzlq
    public final void zzg() {
        this.zzh.zzi(22);
    }

    @Override // com.google.android.gms.internal.ads.zzuh
    public final void zzh(zzui zzuiVar) {
        this.zzh.zzc(8, zzuiVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyd
    public final void zzi() {
        this.zzh.zzi(10);
    }

    public final void zzj() {
        this.zzh.zzb(0).zza();
    }

    public final void zzk(zzda zzdaVar, int i, long j) {
        this.zzh.zzc(3, new zzks(zzdaVar, i, j)).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzlt
    public final synchronized void zzl(zzlv zzlvVar) {
        if (!this.zzw && this.zzj.getThread().isAlive()) {
            this.zzh.zzc(14, zzlvVar).zza();
            return;
        }
        zzez.zzf("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        zzlvVar.zzh(false);
    }

    public final void zzm(boolean z, int i) {
        this.zzh.zzd(1, z ? 1 : 0, i).zza();
    }

    public final void zzn() {
        this.zzh.zzb(6).zza();
    }

    public final synchronized boolean zzo() {
        if (!this.zzw && this.zzj.getThread().isAlive()) {
            this.zzh.zzi(7);
            zzac(new zzkk(this), this.zzs);
            return this.zzw;
        }
        return true;
    }

    public final void zzp(List list, int i, long j, zzwd zzwdVar) {
        this.zzh.zzc(17, new zzko(list, zzwdVar, i, j, null)).zza();
    }
}
