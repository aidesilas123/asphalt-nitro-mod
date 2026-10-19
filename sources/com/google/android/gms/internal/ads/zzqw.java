package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzqw implements zzpv {
    private static final Object zza = new Object();

    @Nullable
    @GuardedBy("releaseExecutorLock")
    private static ExecutorService zzb;

    @GuardedBy("releaseExecutorLock")
    private static int zzc;
    private long zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private int zzE;
    private boolean zzF;
    private boolean zzG;
    private long zzH;
    private float zzI;

    @Nullable
    private ByteBuffer zzJ;
    private int zzK;

    @Nullable
    private ByteBuffer zzL;
    private byte[] zzM;
    private int zzN;
    private boolean zzO;
    private boolean zzP;
    private boolean zzQ;
    private boolean zzR;
    private int zzS;
    private zzl zzT;

    @Nullable
    private zzqi zzU;
    private long zzV;
    private boolean zzW;
    private boolean zzX;
    private final zzqm zzY;
    private final zzqd zzZ;
    private final zzqa zzd;
    private final zzrg zze;
    private final zzfwu zzf;
    private final zzfwu zzg;
    private final zzei zzh;
    private final zzpz zzi;
    private final ArrayDeque zzj;
    private zzqu zzk;
    private final zzqp zzl;
    private final zzqp zzm;
    private final zzqj zzn;

    @Nullable
    private zzov zzo;

    @Nullable
    private zzps zzp;

    @Nullable
    private zzql zzq;
    private zzql zzr;
    private zzdv zzs;

    @Nullable
    private AudioTrack zzt;
    private zzox zzu;
    private zzk zzv;

    @Nullable
    private zzqo zzw;
    private zzqo zzx;
    private zzcj zzy;
    private boolean zzz;

    /* synthetic */ zzqw(zzqk zzqkVar, zzqv zzqvVar) {
        this.zzu = zzqkVar.zza;
        this.zzY = zzqkVar.zzd;
        int i = zzfs.zza;
        this.zzn = zzqkVar.zzc;
        zzqd zzqdVar = zzqkVar.zze;
        Objects.requireNonNull(zzqdVar);
        this.zzZ = zzqdVar;
        zzei zzeiVar = new zzei(zzeg.zza);
        this.zzh = zzeiVar;
        zzeiVar.zze();
        this.zzi = new zzpz(new zzqr(this, null));
        zzqa zzqaVar = new zzqa();
        this.zzd = zzqaVar;
        zzrg zzrgVar = new zzrg();
        this.zze = zzrgVar;
        this.zzf = zzfwu.zzo(new zzec(), zzqaVar, zzrgVar);
        this.zzg = zzfwu.zzm(new zzrf());
        this.zzI = 1.0f;
        this.zzv = zzk.zza;
        this.zzS = 0;
        this.zzT = new zzl(0, 0.0f);
        zzcj zzcjVar = zzcj.zza;
        this.zzx = new zzqo(zzcjVar, 0L, 0L, null);
        this.zzy = zzcjVar;
        this.zzz = false;
        this.zzj = new ArrayDeque();
        this.zzl = new zzqp(100L);
        this.zzm = new zzqp(100L);
    }

    static /* synthetic */ void zzF(AudioTrack audioTrack, final zzps zzpsVar, Handler handler, final zzpp zzppVar, zzei zzeiVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (zzpsVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqf
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((zzrb) zzpsVar).zza.zzc.zzd(zzppVar);
                    }
                });
            }
            zzeiVar.zze();
            synchronized (zza) {
                int i = zzc - 1;
                zzc = i;
                if (i == 0) {
                    zzb.shutdown();
                    zzb = null;
                }
            }
        } catch (Throwable th) {
            if (zzpsVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqf
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((zzrb) zzpsVar).zza.zzc.zzd(zzppVar);
                    }
                });
            }
            zzeiVar.zze();
            synchronized (zza) {
                int i2 = zzc - 1;
                zzc = i2;
                if (i2 == 0) {
                    zzb.shutdown();
                    zzb = null;
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzH() {
        zzql zzqlVar = this.zzr;
        return zzqlVar.zzc == 0 ? this.zzA / ((long) zzqlVar.zzb) : this.zzB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzI() {
        zzql zzqlVar = this.zzr;
        if (zzqlVar.zzc != 0) {
            return this.zzD;
        }
        long j = this.zzC;
        long j2 = zzqlVar.zzd;
        int i = zzfs.zza;
        return ((j + j2) - 1) / j2;
    }

    private final AudioTrack zzJ(zzql zzqlVar) throws zzpr {
        try {
            return zzqlVar.zza(this.zzv, this.zzS);
        } catch (zzpr e2) {
            zzps zzpsVar = this.zzp;
            if (zzpsVar != null) {
                zzpsVar.zza(e2);
            }
            throw e2;
        }
    }

    private final void zzK(long j) {
        zzcj zzcjVar;
        boolean z;
        if (zzV()) {
            zzqm zzqmVar = this.zzY;
            zzcjVar = this.zzy;
            zzqmVar.zzc(zzcjVar);
        } else {
            zzcjVar = zzcj.zza;
        }
        zzcj zzcjVar2 = zzcjVar;
        this.zzy = zzcjVar2;
        if (zzV()) {
            zzqm zzqmVar2 = this.zzY;
            z = this.zzz;
            zzqmVar2.zzd(z);
        } else {
            z = false;
        }
        this.zzz = z;
        this.zzj.add(new zzqo(zzcjVar2, Math.max(0L, j), zzfs.zzr(zzI(), this.zzr.zze), null));
        zzQ();
        zzps zzpsVar = this.zzp;
        if (zzpsVar != null) {
            ((zzrb) zzpsVar).zza.zzc.zzw(this.zzz);
        }
    }

    private final void zzL() {
        if (this.zzr.zzc()) {
            this.zzW = true;
        }
    }

    private final void zzM() {
        if (this.zzP) {
            return;
        }
        this.zzP = true;
        this.zzi.zzc(zzI());
        this.zzt.stop();
    }

    private final void zzN(long j) throws Exception {
        ByteBuffer byteBufferZzb;
        if (!this.zzs.zzh()) {
            ByteBuffer byteBuffer = this.zzJ;
            if (byteBuffer == null) {
                byteBuffer = zzdy.zza;
            }
            zzR(byteBuffer, j);
            return;
        }
        while (!this.zzs.zzg()) {
            do {
                byteBufferZzb = this.zzs.zzb();
                if (byteBufferZzb.hasRemaining()) {
                    zzR(byteBufferZzb, j);
                } else {
                    ByteBuffer byteBuffer2 = this.zzJ;
                    if (byteBuffer2 == null || !byteBuffer2.hasRemaining()) {
                        return;
                    } else {
                        this.zzs.zze(this.zzJ);
                    }
                }
            } while (!byteBufferZzb.hasRemaining());
            return;
        }
    }

    private final void zzO(zzcj zzcjVar) {
        zzqo zzqoVar = new zzqo(zzcjVar, C.TIME_UNSET, C.TIME_UNSET, null);
        if (zzT()) {
            this.zzw = zzqoVar;
        } else {
            this.zzx = zzqoVar;
        }
    }

    private final void zzP() {
        if (zzT()) {
            if (zzfs.zza >= 21) {
                this.zzt.setVolume(this.zzI);
                return;
            }
            AudioTrack audioTrack = this.zzt;
            float f2 = this.zzI;
            audioTrack.setStereoVolume(f2, f2);
        }
    }

    private final void zzQ() {
        zzdv zzdvVar = this.zzr.zzi;
        this.zzs = zzdvVar;
        zzdvVar.zzc();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzR(java.nio.ByteBuffer r8, long r9) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqw.zzR(java.nio.ByteBuffer, long):void");
    }

    private final boolean zzS() throws Exception {
        if (!this.zzs.zzh()) {
            ByteBuffer byteBuffer = this.zzL;
            if (byteBuffer == null) {
                return true;
            }
            zzR(byteBuffer, Long.MIN_VALUE);
            return this.zzL == null;
        }
        this.zzs.zzd();
        zzN(Long.MIN_VALUE);
        if (!this.zzs.zzg()) {
            return false;
        }
        ByteBuffer byteBuffer2 = this.zzL;
        return byteBuffer2 == null || !byteBuffer2.hasRemaining();
    }

    private final boolean zzT() {
        return this.zzt != null;
    }

    private static boolean zzU(AudioTrack audioTrack) {
        return zzfs.zza >= 29 && audioTrack.isOffloadedPlayback();
    }

    private final boolean zzV() {
        zzql zzqlVar = this.zzr;
        if (zzqlVar.zzc != 0) {
            return false;
        }
        int i = zzqlVar.zza.zzB;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final int zza(zzam zzamVar) {
        if (!MimeTypes.AUDIO_RAW.equals(zzamVar.zzm)) {
            return this.zzu.zza(zzamVar) != null ? 2 : 0;
        }
        if (zzfs.zzG(zzamVar.zzB)) {
            return zzamVar.zzB != 2 ? 1 : 2;
        }
        zzez.zzf("DefaultAudioSink", "Invalid PCM encoding: " + zzamVar.zzB);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final long zzb(boolean z) {
        long jZzo;
        if (!zzT() || this.zzG) {
            return Long.MIN_VALUE;
        }
        long jMin = Math.min(this.zzi.zzb(z), zzfs.zzr(zzI(), this.zzr.zze));
        while (!this.zzj.isEmpty() && jMin >= ((zzqo) this.zzj.getFirst()).zzc) {
            this.zzx = (zzqo) this.zzj.remove();
        }
        zzqo zzqoVar = this.zzx;
        long j = jMin - zzqoVar.zzc;
        if (zzqoVar.zza.equals(zzcj.zza)) {
            jZzo = this.zzx.zzb + j;
        } else if (this.zzj.isEmpty()) {
            jZzo = this.zzY.zza(j) + this.zzx.zzb;
        } else {
            zzqo zzqoVar2 = (zzqo) this.zzj.getFirst();
            jZzo = zzqoVar2.zzb - zzfs.zzo(zzqoVar2.zzc - jMin, this.zzx.zza.zzc);
        }
        zzql zzqlVar = this.zzr;
        zzqm zzqmVar = this.zzY;
        return jZzo + zzfs.zzr(zzqmVar.zzb(), zzqlVar.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final zzcj zzc() {
        return this.zzy;
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final zzpa zzd(zzam zzamVar) {
        return this.zzW ? zzpa.zza : this.zzZ.zza(zzamVar, this.zzv);
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zze(zzam zzamVar, int i, @Nullable int[] iArr) throws zzpq {
        int iIntValue;
        int i2;
        zzdv zzdvVar;
        int iIntValue2;
        int iZzl;
        int i3;
        int iZzl2;
        int i4;
        int iMax;
        int[] iArr2;
        if (MimeTypes.AUDIO_RAW.equals(zzamVar.zzm)) {
            zzef.zzd(zzfs.zzG(zzamVar.zzB));
            iZzl = zzfs.zzl(zzamVar.zzB, zzamVar.zzz);
            zzfwr zzfwrVar = new zzfwr();
            zzfwrVar.zzh(this.zzf);
            zzfwrVar.zzg(this.zzY.zze());
            zzdv zzdvVar2 = new zzdv(zzfwrVar.zzi());
            if (zzdvVar2.equals(this.zzs)) {
                zzdvVar2 = this.zzs;
            }
            this.zze.zzq(zzamVar.zzC, zzamVar.zzD);
            if (zzfs.zza < 21 && zzamVar.zzz == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i5 = 0; i5 < 6; i5++) {
                    iArr2[i5] = i5;
                }
            } else {
                iArr2 = iArr;
            }
            this.zzd.zzo(iArr2);
            try {
                zzdw zzdwVarZza = zzdvVar2.zza(new zzdw(zzamVar.zzA, zzamVar.zzz, zzamVar.zzB));
                iIntValue = zzdwVarZza.zzd;
                int i6 = zzdwVarZza.zzb;
                int i7 = zzdwVarZza.zzc;
                iIntValue2 = zzfs.zzg(i7);
                iZzl2 = zzfs.zzl(iIntValue, i7);
                zzdvVar = zzdvVar2;
                i3 = i6;
                i2 = 0;
            } catch (zzdx e2) {
                throw new zzpq(e2, zzamVar);
            }
        } else {
            zzdv zzdvVar3 = new zzdv(zzfwu.zzl());
            int i8 = zzamVar.zzA;
            zzpa zzpaVar = zzpa.zza;
            Pair pairZza = this.zzu.zza(zzamVar);
            if (pairZza == null) {
                throw new zzpq("Unable to configure passthrough for: ".concat(String.valueOf(zzamVar)), zzamVar);
            }
            iIntValue = ((Integer) pairZza.first).intValue();
            i2 = 2;
            zzdvVar = zzdvVar3;
            iIntValue2 = ((Integer) pairZza.second).intValue();
            iZzl = -1;
            i3 = i8;
            iZzl2 = -1;
        }
        if (iIntValue == 0) {
            throw new zzpq("Invalid output encoding (mode=" + i2 + ") for: " + String.valueOf(zzamVar), zzamVar);
        }
        if (iIntValue2 == 0) {
            throw new zzpq("Invalid output channel config (mode=" + i2 + ") for: " + String.valueOf(zzamVar), zzamVar);
        }
        int minBufferSize = AudioTrack.getMinBufferSize(i3, iIntValue2, iIntValue);
        zzef.zzf(minBufferSize != -2);
        int i9 = iZzl2 != -1 ? iZzl2 : 1;
        int i10 = zzamVar.zzi;
        int i11 = 250000;
        if (i2 == 0) {
            i4 = iZzl2;
            iMax = Math.max(zzqy.zza(250000, i3, i9), Math.min(minBufferSize * 4, zzqy.zza(750000, i3, i9)));
        } else if (i2 != 1) {
            if (iIntValue == 5) {
                i11 = 500000;
            } else if (iIntValue == 8) {
                i11 = o2.w;
                iIntValue = 8;
            }
            i4 = iZzl2;
            iMax = zzfzi.zza((((long) i11) * ((long) (i10 != -1 ? zzfzd.zza(i10, 8, RoundingMode.CEILING) : zzqy.zzb(iIntValue)))) / 1000000);
        } else {
            i4 = iZzl2;
            iMax = zzfzi.zza((((long) zzqy.zzb(iIntValue)) * 50000000) / 1000000);
        }
        this.zzW = false;
        zzql zzqlVar = new zzql(zzamVar, iZzl, i2, i4, i3, iIntValue2, iIntValue, (((Math.max(minBufferSize, iMax) + i9) - 1) / i9) * i9, zzdvVar, false, false, false);
        if (zzT()) {
            this.zzq = zzqlVar;
        } else {
            this.zzr = zzqlVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzf() {
        if (zzT()) {
            this.zzA = 0L;
            this.zzB = 0L;
            this.zzC = 0L;
            this.zzD = 0L;
            this.zzX = false;
            this.zzE = 0;
            this.zzx = new zzqo(this.zzy, 0L, 0L, null);
            this.zzH = 0L;
            this.zzw = null;
            this.zzj.clear();
            this.zzJ = null;
            this.zzK = 0;
            this.zzL = null;
            this.zzP = false;
            this.zzO = false;
            this.zze.zzp();
            zzQ();
            if (this.zzi.zzi()) {
                this.zzt.pause();
            }
            if (zzU(this.zzt)) {
                zzqu zzquVar = this.zzk;
                Objects.requireNonNull(zzquVar);
                zzquVar.zzb(this.zzt);
            }
            if (zzfs.zza < 21 && !this.zzR) {
                this.zzS = 0;
            }
            final zzpp zzppVarZzb = this.zzr.zzb();
            zzql zzqlVar = this.zzq;
            if (zzqlVar != null) {
                this.zzr = zzqlVar;
                this.zzq = null;
            }
            this.zzi.zzd();
            final AudioTrack audioTrack = this.zzt;
            final zzei zzeiVar = this.zzh;
            final zzps zzpsVar = this.zzp;
            zzeiVar.zzc();
            final Handler handler = new Handler(Looper.myLooper());
            synchronized (zza) {
                if (zzb == null) {
                    zzb = zzfs.zzD("ExoPlayer:AudioTrackReleaseThread");
                }
                zzc++;
                zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqe
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzqw.zzF(audioTrack, zzpsVar, handler, zzppVarZzb, zzeiVar);
                    }
                });
            }
            this.zzt = null;
        }
        this.zzm.zza();
        this.zzl.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzg() {
        this.zzF = true;
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzh() {
        this.zzQ = false;
        if (zzT()) {
            if (this.zzi.zzl() || zzU(this.zzt)) {
                this.zzt.pause();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzi() {
        this.zzQ = true;
        if (zzT()) {
            this.zzi.zzg();
            this.zzt.play();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzj() throws zzpu {
        if (!this.zzO && zzT() && zzS()) {
            zzM();
            this.zzO = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzk() {
        zzf();
        zzfwu zzfwuVar = this.zzf;
        int size = zzfwuVar.size();
        for (int i = 0; i < size; i++) {
            ((zzdy) zzfwuVar.get(i)).zzf();
        }
        zzfwu zzfwuVar2 = this.zzg;
        int size2 = zzfwuVar2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((zzdy) zzfwuVar2.get(i2)).zzf();
        }
        zzdv zzdvVar = this.zzs;
        if (zzdvVar != null) {
            zzdvVar.zzf();
        }
        this.zzQ = false;
        this.zzW = false;
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzl(zzk zzkVar) {
        if (this.zzv.equals(zzkVar)) {
            return;
        }
        this.zzv = zzkVar;
        zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzm(int i) {
        if (this.zzS != i) {
            this.zzS = i;
            this.zzR = i != 0;
            zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzn(zzl zzlVar) {
        if (this.zzT.equals(zzlVar)) {
            return;
        }
        if (this.zzt != null) {
            int i = this.zzT.zza;
        }
        this.zzT = zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzo(zzeg zzegVar) {
        this.zzi.zzf(zzegVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzp(zzps zzpsVar) {
        this.zzp = zzpsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    @RequiresApi(29)
    public final void zzq(int i, int i2) {
        AudioTrack audioTrack = this.zzt;
        if (audioTrack != null) {
            zzU(audioTrack);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzr(zzcj zzcjVar) {
        this.zzy = new zzcj(Math.max(0.1f, Math.min(zzcjVar.zzc, 8.0f)), Math.max(0.1f, Math.min(zzcjVar.zzd, 8.0f)));
        zzO(zzcjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzs(@Nullable zzov zzovVar) {
        this.zzo = zzovVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    @RequiresApi(23)
    public final void zzt(@Nullable AudioDeviceInfo audioDeviceInfo) {
        zzqi zzqiVar = audioDeviceInfo == null ? null : new zzqi(audioDeviceInfo);
        this.zzU = zzqiVar;
        AudioTrack audioTrack = this.zzt;
        if (audioTrack != null) {
            zzqg.zza(audioTrack, zzqiVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzu(boolean z) {
        this.zzz = z;
        zzO(this.zzy);
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final void zzv(float f2) {
        if (this.zzI != f2) {
            this.zzI = f2;
            zzP();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02d1 A[RETURN] */
    @Override // com.google.android.gms.internal.ads.zzpv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzw(java.nio.ByteBuffer r28, long r29, int r31) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 990
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqw.zzw(java.nio.ByteBuffer, long, int):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final boolean zzx() {
        return zzT() && this.zzi.zzh(zzI());
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final boolean zzy() {
        return !zzT() || (this.zzO && !zzx());
    }

    @Override // com.google.android.gms.internal.ads.zzpv
    public final boolean zzz(zzam zzamVar) {
        return zza(zzamVar) != 0;
    }
}
