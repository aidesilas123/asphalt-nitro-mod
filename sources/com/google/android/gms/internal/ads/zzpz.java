package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.lang.reflect.Method;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzpz {
    private long zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private boolean zzE;
    private long zzF;
    private long zzG;
    private boolean zzH;
    private long zzI;
    private zzeg zzJ;
    private final zzpy zza;
    private final long[] zzb;

    @Nullable
    private AudioTrack zzc;
    private int zzd;
    private int zze;

    @Nullable
    private zzpx zzf;
    private int zzg;
    private boolean zzh;
    private long zzi;
    private float zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;

    @Nullable
    private Method zzn;
    private long zzo;
    private boolean zzp;
    private boolean zzq;
    private long zzr;
    private long zzs;
    private long zzt;
    private long zzu;
    private long zzv;
    private int zzw;
    private int zzx;
    private long zzy;
    private long zzz;

    public zzpz(zzpy zzpyVar) {
        this.zza = zzpyVar;
        int i = zzfs.zza;
        try {
            this.zzn = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.zzb = new long[10];
        this.zzJ = zzeg.zza;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final long zzm() {
        /*
            r11 = this;
            long r0 = android.os.SystemClock.elapsedRealtime()
            long r2 = r11.zzy
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = 2
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 == 0) goto L3b
            android.media.AudioTrack r2 = r11.zzc
            java.util.Objects.requireNonNull(r2)
            int r2 = r2.getPlayState()
            if (r2 != r6) goto L1e
            long r0 = r11.zzA
            return r0
        L1e:
            long r0 = com.google.android.gms.internal.ads.zzfs.zzq(r0)
            long r2 = r11.zzy
            long r0 = r0 - r2
            float r2 = r11.zzj
            long r0 = com.google.android.gms.internal.ads.zzfs.zzo(r0, r2)
            int r2 = r11.zzg
            long r0 = com.google.android.gms.internal.ads.zzfs.zzn(r0, r2)
            long r2 = r11.zzB
            long r4 = r11.zzA
            long r4 = r4 + r0
            long r0 = java.lang.Math.min(r2, r4)
            return r0
        L3b:
            long r2 = r11.zzs
            long r2 = r0 - r2
            r7 = 5
            int r9 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r9 < 0) goto La4
            android.media.AudioTrack r2 = r11.zzc
            java.util.Objects.requireNonNull(r2)
            int r3 = r2.getPlayState()
            r7 = 1
            if (r3 != r7) goto L52
            goto La2
        L52:
            int r2 = r2.getPlaybackHeadPosition()
            long r7 = (long) r2
            boolean r2 = r11.zzh
            r9 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r7 = r7 & r9
            r9 = 0
            if (r2 == 0) goto L73
            if (r3 != r6) goto L6e
            int r2 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r2 != 0) goto L6f
            long r2 = r11.zzt
            r11.zzv = r2
            goto L6f
        L6e:
            r6 = r3
        L6f:
            long r2 = r11.zzv
            long r7 = r7 + r2
            r3 = r6
        L73:
            int r2 = com.google.android.gms.internal.ads.zzfs.zza
            r6 = 29
            if (r2 > r6) goto L93
            int r2 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r2 != 0) goto L8f
            long r6 = r11.zzt
            int r2 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r2 <= 0) goto L90
            r2 = 3
            if (r3 != r2) goto L90
            long r2 = r11.zzz
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 != 0) goto La2
            r11.zzz = r0
            goto La2
        L8f:
            r9 = r7
        L90:
            r11.zzz = r4
            r7 = r9
        L93:
            long r2 = r11.zzt
            int r4 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r4 <= 0) goto La0
            long r2 = r11.zzu
            r4 = 1
            long r2 = r2 + r4
            r11.zzu = r2
        La0:
            r11.zzt = r7
        La2:
            r11.zzs = r0
        La4:
            long r0 = r11.zzt
            long r2 = r11.zzI
            long r0 = r0 + r2
            long r2 = r11.zzu
            r4 = 32
            long r2 = r2 << r4
            long r0 = r0 + r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpz.zzm():long");
    }

    private final long zzn() {
        return zzfs.zzr(zzm(), this.zzg);
    }

    private final void zzo() {
        this.zzl = 0L;
        this.zzx = 0;
        this.zzw = 0;
        this.zzm = 0L;
        this.zzD = 0L;
        this.zzG = 0L;
        this.zzk = false;
    }

    public final int zza(long j) {
        return this.zze - ((int) (j - (zzm() * ((long) this.zzd))));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long zzb(boolean r23) {
        /*
            Method dump skipped, instruction units count: 589
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpz.zzb(boolean):long");
    }

    public final void zzc(long j) {
        this.zzA = zzm();
        this.zzy = zzfs.zzq(SystemClock.elapsedRealtime());
        this.zzB = j;
    }

    public final void zzd() {
        zzo();
        this.zzc = null;
        this.zzf = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zze(android.media.AudioTrack r4, boolean r5, int r6, int r7, int r8) {
        /*
            r3 = this;
            r3.zzc = r4
            r3.zzd = r7
            r3.zze = r8
            com.google.android.gms.internal.ads.zzpx r0 = new com.google.android.gms.internal.ads.zzpx
            r0.<init>(r4)
            r3.zzf = r0
            int r4 = r4.getSampleRate()
            r3.zzg = r4
            r4 = 6
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L25
            int r5 = com.google.android.gms.internal.ads.zzfs.zza
            r2 = 23
            if (r5 >= r2) goto L25
            r5 = 5
            if (r6 == r5) goto L26
            if (r6 != r4) goto L25
            r6 = 6
            goto L26
        L25:
            r0 = 0
        L26:
            r3.zzh = r0
            boolean r4 = com.google.android.gms.internal.ads.zzfs.zzG(r6)
            r3.zzq = r4
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 == 0) goto L3e
            int r8 = r8 / r7
            long r7 = (long) r8
            int r4 = r3.zzg
            long r7 = com.google.android.gms.internal.ads.zzfs.zzr(r7, r4)
            goto L3f
        L3e:
            r7 = r5
        L3f:
            r3.zzi = r7
            r7 = 0
            r3.zzt = r7
            r3.zzu = r7
            r3.zzH = r1
            r3.zzI = r7
            r3.zzv = r7
            r3.zzp = r1
            r3.zzy = r5
            r3.zzz = r5
            r3.zzr = r7
            r3.zzo = r7
            r4 = 1065353216(0x3f800000, float:1.0)
            r3.zzj = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpz.zze(android.media.AudioTrack, boolean, int, int, int):void");
    }

    public final void zzf(zzeg zzegVar) {
        this.zzJ = zzegVar;
    }

    public final void zzg() {
        if (this.zzy != C.TIME_UNSET) {
            this.zzy = zzfs.zzq(SystemClock.elapsedRealtime());
        }
        zzpx zzpxVar = this.zzf;
        Objects.requireNonNull(zzpxVar);
        zzpxVar.zze();
    }

    public final boolean zzh(long j) {
        if (j > zzfs.zzn(zzb(false), this.zzg)) {
            return true;
        }
        if (this.zzh) {
            AudioTrack audioTrack = this.zzc;
            Objects.requireNonNull(audioTrack);
            if (audioTrack.getPlayState() == 2 && zzm() == 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean zzi() {
        AudioTrack audioTrack = this.zzc;
        Objects.requireNonNull(audioTrack);
        return audioTrack.getPlayState() == 3;
    }

    public final boolean zzj(long j) {
        return this.zzz != C.TIME_UNSET && j > 0 && SystemClock.elapsedRealtime() - this.zzz >= 200;
    }

    public final boolean zzk(long j) {
        AudioTrack audioTrack = this.zzc;
        Objects.requireNonNull(audioTrack);
        int playState = audioTrack.getPlayState();
        if (this.zzh) {
            if (playState == 2) {
                this.zzp = false;
                return false;
            }
            if (playState == 1) {
                if (zzm() == 0) {
                    return false;
                }
                playState = 1;
            }
        }
        boolean z = this.zzp;
        boolean zZzh = zzh(j);
        this.zzp = zZzh;
        if (z && !zZzh && playState != 1) {
            zzpy zzpyVar = this.zza;
            int i = this.zze;
            long jZzt = zzfs.zzt(this.zzi);
            zzqr zzqrVar = (zzqr) zzpyVar;
            zzqw zzqwVar = zzqrVar.zza;
            if (zzqwVar.zzp != null) {
                ((zzrb) zzqrVar.zza.zzp).zza.zzc.zzx(i, jZzt, SystemClock.elapsedRealtime() - zzqwVar.zzV);
            }
        }
        return true;
    }

    public final boolean zzl() {
        zzo();
        if (this.zzy != C.TIME_UNSET) {
            this.zzA = zzm();
            return false;
        }
        zzpx zzpxVar = this.zzf;
        Objects.requireNonNull(zzpxVar);
        zzpxVar.zze();
        return true;
    }
}
