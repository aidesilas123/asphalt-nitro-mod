package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.work.WorkRequest;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzzw extends zzss implements zzaaw {
    private static final int[] zzb = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static boolean zzc;
    private static boolean zzd;
    private int zzA;
    private long zzB;
    private zzdu zzC;

    @Nullable
    private zzdu zzD;
    private boolean zzE;
    private boolean zzF;
    private int zzG;

    @Nullable
    private zzaaa zzH;

    @Nullable
    private zzaay zzI;
    private final Context zze;
    private final zzaai zzf;
    private final zzaaz zzg;
    private final zzaat zzh;
    private final boolean zzi;
    private zzzs zzj;
    private boolean zzk;
    private boolean zzl;

    @Nullable
    private Surface zzm;

    @Nullable
    private zzzz zzn;
    private boolean zzo;
    private int zzp;
    private int zzq;
    private long zzr;
    private long zzs;
    private long zzt;
    private int zzu;
    private int zzv;
    private int zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    public zzzw(Context context, zzsj zzsjVar, zzsu zzsuVar, long j, boolean z, @Nullable Handler handler, @Nullable zzaau zzaauVar, int i, float f2) {
        zzzv zzzvVar = new zzzv(null);
        super(2, zzsjVar, zzsuVar, false, 30.0f);
        Context applicationContext = context.getApplicationContext();
        this.zze = applicationContext;
        this.zzf = new zzaai(applicationContext);
        this.zzh = new zzaat(handler, zzaauVar);
        this.zzg = new zzzm(context, new zzzg(zzzvVar), this);
        this.zzi = "NVIDIA".equals(zzfs.zzc);
        this.zzs = C.TIME_UNSET;
        this.zzp = 1;
        this.zzC = zzdu.zza;
        this.zzG = 0;
        this.zzq = 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0080 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected static final boolean zzaR(java.lang.String r17) {
        /*
            Method dump skipped, instruction units count: 2926
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzw.zzaR(java.lang.String):boolean");
    }

    private static long zzaS(long j, long j2, long j3, boolean z, float f2, zzeg zzegVar) {
        long j4 = (long) ((j3 - j) / ((double) f2));
        return z ? j4 - (zzfs.zzq(SystemClock.elapsedRealtime()) - j2) : j4;
    }

    private static List zzaT(Context context, zzsu zzsuVar, zzam zzamVar, boolean z, boolean z2) throws zztb {
        String str = zzamVar.zzm;
        if (str == null) {
            return zzfwu.zzl();
        }
        if (zzfs.zza >= 26 && "video/dolby-vision".equals(str) && !zzzr.zza(context)) {
            List listZzf = zzth.zzf(zzsuVar, zzamVar, z, z2);
            if (!listZzf.isEmpty()) {
                return listZzf;
            }
        }
        return zzth.zzh(zzsuVar, zzamVar, z, z2);
    }

    private final void zzaU(int i) {
        this.zzq = Math.min(this.zzq, i);
        int i2 = zzfs.zza;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaV() {
        Surface surface = this.zzm;
        if (surface == null || this.zzq == 3) {
            return;
        }
        this.zzq = 3;
        this.zzh.zzq(surface);
        this.zzo = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaW(zzdu zzduVar) {
        if (zzduVar.equals(zzdu.zza) || zzduVar.equals(this.zzD)) {
            return;
        }
        this.zzD = zzduVar;
        this.zzh.zzt(zzduVar);
    }

    private final void zzaX() {
        zzdu zzduVar = this.zzD;
        if (zzduVar != null) {
            this.zzh.zzt(zzduVar);
        }
    }

    @RequiresApi(17)
    private final void zzaY() {
        Surface surface = this.zzm;
        zzzz zzzzVar = this.zzn;
        if (surface == zzzzVar) {
            this.zzm = null;
        }
        if (zzzzVar != null) {
            zzzzVar.release();
            this.zzn = null;
        }
    }

    private final void zzaZ(zzsk zzskVar, int i, long j, long j2) {
        if (zzfs.zza >= 21) {
            zzaN(zzskVar, i, j, j2);
        } else {
            zzaM(zzskVar, i, j);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int zzab(com.google.android.gms.internal.ads.zzsn r10, com.google.android.gms.internal.ads.zzam r11) {
        /*
            Method dump skipped, instruction units count: 260
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzw.zzab(com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzam):int");
    }

    protected static int zzac(zzsn zzsnVar, zzam zzamVar) {
        if (zzamVar.zzn == -1) {
            return zzab(zzsnVar, zzamVar);
        }
        int size = zzamVar.zzo.size();
        int length = 0;
        for (int i = 0; i < size; i++) {
            length += ((byte[]) zzamVar.zzo.get(i)).length;
        }
        return zzamVar.zzn + length;
    }

    private static boolean zzba(long j) {
        return j < -30000;
    }

    private final boolean zzbb(long j, long j2) {
        if (this.zzs != C.TIME_UNSET) {
            return false;
        }
        boolean z = zzbd() == 2;
        int i = this.zzq;
        if (i == 0) {
            return z;
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return j >= zzar();
        }
        if (i != 3) {
            throw new IllegalStateException();
        }
        zzh();
        return z && zzba(j2) && zzfs.zzq(SystemClock.elapsedRealtime()) - this.zzy > 100000;
    }

    private final boolean zzbc(zzsn zzsnVar) {
        return zzfs.zza >= 23 && !zzaR(zzsnVar.zza) && (!zzsnVar.zzf || zzzz.zzb(this.zze));
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzik
    @TargetApi(17)
    protected final void zzA() {
        try {
            super.zzA();
            this.zzF = false;
            if (this.zzn != null) {
                zzaY();
            }
        } catch (Throwable th) {
            this.zzF = false;
            if (this.zzn != null) {
                zzaY();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzik
    protected final void zzB() {
        this.zzu = 0;
        zzh();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.zzt = jElapsedRealtime;
        this.zzy = zzfs.zzq(jElapsedRealtime);
        this.zzz = 0L;
        this.zzA = 0;
        this.zzf.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzik
    protected final void zzC() {
        this.zzs = C.TIME_UNSET;
        if (this.zzu > 0) {
            zzh();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.zzh.zzd(this.zzu, jElapsedRealtime - this.zzt);
            this.zzu = 0;
            this.zzt = jElapsedRealtime;
        }
        int i = this.zzA;
        if (i != 0) {
            this.zzh.zzr(this.zzz, i);
            this.zzz = 0L;
            this.zzA = 0;
        }
        this.zzf.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzik, com.google.android.gms.internal.ads.zzlz
    public final void zzK(float f2, float f3) throws zzit {
        super.zzK(f2, f3);
        this.zzf.zze(f2);
        zzaay zzaayVar = this.zzI;
        if (zzaayVar != null) {
            zzaayVar.zzl(f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz, com.google.android.gms.internal.ads.zzmb
    public final String zzS() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzlz
    @CallSuper
    public final void zzT(long j, long j2) throws zzit {
        super.zzT(j, j2);
        zzaay zzaayVar = this.zzI;
        if (zzaayVar != null) {
            zzaayVar.zzi(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzlz
    public final boolean zzU() {
        return super.zzU() && this.zzI == null;
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzlz
    public final boolean zzV() {
        zzaay zzaayVar;
        zzzz zzzzVar;
        if (super.zzV() && (((zzaayVar = this.zzI) == null || zzaayVar.zzq()) && (this.zzq == 3 || (((zzzzVar = this.zzn) != null && this.zzm == zzzzVar) || zzas() == null)))) {
            this.zzs = C.TIME_UNSET;
            return true;
        }
        if (this.zzs == C.TIME_UNSET) {
            return false;
        }
        zzh();
        if (SystemClock.elapsedRealtime() < this.zzs) {
            return true;
        }
        this.zzs = C.TIME_UNSET;
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final float zzX(float f2, zzam zzamVar, zzam[] zzamVarArr) {
        float fMax = -1.0f;
        for (zzam zzamVar2 : zzamVarArr) {
            float f3 = zzamVar2.zzt;
            if (f3 != -1.0f) {
                fMax = Math.max(fMax, f3);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f2;
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final int zzY(zzsu zzsuVar, zzam zzamVar) throws zztb {
        boolean z;
        if (!zzce.zzg(zzamVar.zzm)) {
            return 128;
        }
        int i = 1;
        int i2 = 0;
        boolean z2 = zzamVar.zzp != null;
        List listZzaT = zzaT(this.zze, zzsuVar, zzamVar, z2, false);
        if (z2 && listZzaT.isEmpty()) {
            listZzaT = zzaT(this.zze, zzsuVar, zzamVar, false, false);
        }
        if (!listZzaT.isEmpty()) {
            if (zzss.zzaH(zzamVar)) {
                zzsn zzsnVar = (zzsn) listZzaT.get(0);
                boolean zZze = zzsnVar.zze(zzamVar);
                if (zZze) {
                    z = true;
                } else {
                    for (int i3 = 1; i3 < listZzaT.size(); i3++) {
                        zzsn zzsnVar2 = (zzsn) listZzaT.get(i3);
                        if (zzsnVar2.zze(zzamVar)) {
                            zzsnVar = zzsnVar2;
                            z = false;
                            zZze = true;
                            break;
                        }
                    }
                    z = true;
                }
                int i4 = true != zZze ? 3 : 4;
                int i5 = true != zzsnVar.zzf(zzamVar) ? 8 : 16;
                int i6 = true != zzsnVar.zzg ? 0 : 64;
                int i7 = true != z ? 0 : 128;
                if (zzfs.zza >= 26 && "video/dolby-vision".equals(zzamVar.zzm) && !zzzr.zza(this.zze)) {
                    i7 = 256;
                }
                if (zZze) {
                    List listZzaT2 = zzaT(this.zze, zzsuVar, zzamVar, z2, true);
                    if (!listZzaT2.isEmpty()) {
                        zzsn zzsnVar3 = (zzsn) zzth.zzi(listZzaT2, zzamVar).get(0);
                        if (zzsnVar3.zze(zzamVar) && zzsnVar3.zzf(zzamVar)) {
                            i2 = 32;
                        }
                    }
                }
                return i4 | i5 | i2 | i6 | i7;
            }
            i = 2;
        }
        return i | 128;
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final zzim zzZ(zzsn zzsnVar, zzam zzamVar, zzam zzamVar2) {
        int i;
        int i2;
        zzim zzimVarZzb = zzsnVar.zzb(zzamVar, zzamVar2);
        int i3 = zzimVarZzb.zze;
        zzzs zzzsVar = this.zzj;
        Objects.requireNonNull(zzzsVar);
        if (zzamVar2.zzr > zzzsVar.zza || zzamVar2.zzs > zzzsVar.zzb) {
            i3 |= 256;
        }
        if (zzac(zzsnVar, zzamVar2) > zzzsVar.zzc) {
            i3 |= 64;
        }
        String str = zzsnVar.zza;
        if (i3 != 0) {
            i2 = i3;
            i = 0;
        } else {
            i = zzimVarZzb.zzd;
            i2 = 0;
        }
        return new zzim(str, zzamVar, zzamVar2, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzss
    @CallSuper
    protected final void zzaA() {
        super.zzaA();
        this.zzw = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final boolean zzaG(zzsn zzsnVar) {
        return this.zzm != null || zzbc(zzsnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final void zzaK() {
        zzh();
        this.zzy = zzfs.zzq(SystemClock.elapsedRealtime());
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final void zzaL(long j) {
        this.zzf.zzd(j);
    }

    protected final void zzaM(zzsk zzskVar, int i, long j) {
        int i2 = zzfs.zza;
        Trace.beginSection("releaseOutputBuffer");
        zzskVar.zzn(i, true);
        Trace.endSection();
        ((zzss) this).zza.zze++;
        this.zzv = 0;
        if (this.zzI == null) {
            zzh();
            this.zzy = zzfs.zzq(SystemClock.elapsedRealtime());
            zzaW(this.zzC);
            zzaV();
        }
    }

    @RequiresApi(21)
    protected final void zzaN(zzsk zzskVar, int i, long j, long j2) {
        int i2 = zzfs.zza;
        Trace.beginSection("releaseOutputBuffer");
        zzskVar.zzm(i, j2);
        Trace.endSection();
        ((zzss) this).zza.zze++;
        this.zzv = 0;
        if (this.zzI == null) {
            zzh();
            this.zzy = zzfs.zzq(SystemClock.elapsedRealtime());
            zzaW(this.zzC);
            zzaV();
        }
    }

    protected final void zzaO(zzsk zzskVar, int i, long j) {
        int i2 = zzfs.zza;
        Trace.beginSection("skipVideoBuffer");
        zzskVar.zzn(i, false);
        Trace.endSection();
        ((zzss) this).zza.zzf++;
    }

    protected final void zzaP(int i, int i2) {
        zzil zzilVar = ((zzss) this).zza;
        zzilVar.zzh += i;
        int i3 = i + i2;
        zzilVar.zzg += i3;
        this.zzu += i3;
        int i4 = this.zzv + i3;
        this.zzv = i4;
        zzilVar.zzi = Math.max(i4, zzilVar.zzi);
    }

    protected final void zzaQ(long j) {
        zzil zzilVar = ((zzss) this).zza;
        zzilVar.zzk += j;
        zzilVar.zzl++;
        this.zzz += j;
        this.zzA++;
    }

    @Override // com.google.android.gms.internal.ads.zzss
    @Nullable
    protected final zzim zzaa(zzkv zzkvVar) throws zzit {
        zzim zzimVarZzaa = super.zzaa(zzkvVar);
        zzam zzamVar = zzkvVar.zza;
        Objects.requireNonNull(zzamVar);
        this.zzh.zzf(zzamVar, zzimVarZzaa);
        return zzimVarZzaa;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0113, code lost:
    
        if (true == r12) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0115, code lost:
    
        r13 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0117, code lost:
    
        r13 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0118, code lost:
    
        if (true == r12) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x011a, code lost:
    
        r4 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x011e, code lost:
    
        r3 = new android.graphics.Point(r13, r4);
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0206  */
    @Override // com.google.android.gms.internal.ads.zzss
    @android.annotation.TargetApi(17)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final com.google.android.gms.internal.ads.zzsi zzad(com.google.android.gms.internal.ads.zzsn r20, com.google.android.gms.internal.ads.zzam r21, @androidx.annotation.Nullable android.media.MediaCrypto r22, float r23) {
        /*
            Method dump skipped, instruction units count: 617
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzw.zzad(com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzam, android.media.MediaCrypto, float):com.google.android.gms.internal.ads.zzsi");
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final List zzae(zzsu zzsuVar, zzam zzamVar, boolean z) throws zztb {
        return zzth.zzi(zzaT(this.zze, zzsuVar, zzamVar, false, false), zzamVar);
    }

    @Override // com.google.android.gms.internal.ads.zzss
    @TargetApi(29)
    protected final void zzaf(zzib zzibVar) throws zzit {
        if (this.zzl) {
            ByteBuffer byteBuffer = zzibVar.zzf;
            Objects.requireNonNull(byteBuffer);
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4) {
                    if (b3 == 0 || b3 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        zzsk zzskVarZzas = zzas();
                        Objects.requireNonNull(zzskVarZzas);
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        zzskVarZzas.zzp(bundle);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final void zzag(Exception exc) {
        zzez.zzd("MediaCodecVideoRenderer", "Video codec error", exc);
        this.zzh.zzs(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final void zzah(String str, zzsi zzsiVar, long j, long j2) {
        this.zzh.zza(str, j, j2);
        this.zzk = zzaR(str);
        zzsn zzsnVarZzau = zzau();
        Objects.requireNonNull(zzsnVarZzau);
        boolean z = false;
        if (zzfs.zza >= 29 && MimeTypes.VIDEO_VP9.equals(zzsnVarZzau.zzb)) {
            MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrZzh = zzsnVarZzau.zzh();
            int length = codecProfileLevelArrZzh.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (codecProfileLevelArrZzh[i].profile == 16384) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        this.zzl = z;
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final void zzai(String str) {
        this.zzh.zzb(str);
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final void zzaj(zzam zzamVar, @Nullable MediaFormat mediaFormat) {
        zzsk zzskVarZzas = zzas();
        if (zzskVarZzas != null) {
            zzskVarZzas.zzq(this.zzp);
        }
        Objects.requireNonNull(mediaFormat);
        int i = 0;
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        int integer = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        int integer2 = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        float f2 = zzamVar.zzv;
        if (zzfs.zza >= 21) {
            int i2 = zzamVar.zzu;
            if (i2 == 90 || i2 == 270) {
                f2 = 1.0f / f2;
                int i3 = integer2;
                integer2 = integer;
                integer = i3;
            }
        } else if (this.zzI == null) {
            i = zzamVar.zzu;
        }
        this.zzC = new zzdu(integer, integer2, i, f2);
        this.zzf.zzc(zzamVar.zzt);
        zzaay zzaayVar = this.zzI;
        if (zzaayVar != null) {
            zzak zzakVarZzb = zzamVar.zzb();
            zzakVarZzb.zzab(integer);
            zzakVarZzb.zzH(integer2);
            zzakVarZzb.zzT(i);
            zzakVarZzb.zzR(f2);
            zzaayVar.zzg(1, zzakVarZzb.zzac());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final long zzak(long j, long j2, long j3, float f2) {
        long jZzaS = zzaS(j2, j3, j, zzbd() == 2, f2, zzh());
        if (zzba(jZzaS)) {
            return -2L;
        }
        if (zzbb(j2, jZzaS)) {
            return -1L;
        }
        if (zzbd() != 2 || j2 == this.zzr || jZzaS > 50000) {
            return -3L;
        }
        zzh();
        return this.zzf.zza(System.nanoTime() + (jZzaS * 1000));
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final void zzal() {
        zzaU(2);
        if (this.zzg.zzi()) {
            this.zzg.zzf(zzaq());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final boolean zzan(long j, long j2, @Nullable zzsk zzskVar, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzam zzamVar) throws zzit {
        int iZzd;
        Objects.requireNonNull(zzskVar);
        if (this.zzr == C.TIME_UNSET) {
            this.zzr = j;
        }
        if (j3 != this.zzx) {
            if (this.zzI == null) {
                this.zzf.zzd(j3);
            }
            this.zzx = j3;
        }
        long jZzaq = j3 - zzaq();
        if (z && !z2) {
            zzaO(zzskVar, i, jZzaq);
            return true;
        }
        boolean z3 = zzbd() == 2;
        long jZzaS = zzaS(j, j2, j3, z3, zzap(), zzh());
        if (this.zzm != this.zzn) {
            zzaay zzaayVar = this.zzI;
            if (zzaayVar != null) {
                zzaayVar.zzi(j, j2);
                long jZza = this.zzI.zza(jZzaq, z2);
                if (jZza != C.TIME_UNSET) {
                    zzaZ(zzskVar, i, jZzaq, jZza);
                    return true;
                }
            } else {
                if (zzbb(j, jZzaS)) {
                    zzh();
                    zzaZ(zzskVar, i, jZzaq, System.nanoTime());
                    zzaQ(jZzaS);
                    return true;
                }
                if (z3 && j != this.zzr) {
                    zzh();
                    long jNanoTime = System.nanoTime();
                    long jZza2 = this.zzf.zza((jZzaS * 1000) + jNanoTime);
                    long j4 = this.zzs;
                    long j5 = (jZza2 - jNanoTime) / 1000;
                    if (j5 >= -500000 || z2 || (iZzd = zzd(j)) == 0) {
                        if (zzba(j5) && !z2) {
                            if (j4 != C.TIME_UNSET) {
                                zzaO(zzskVar, i, jZzaq);
                            } else {
                                int i4 = zzfs.zza;
                                Trace.beginSection("dropVideoBuffer");
                                zzskVar.zzn(i, false);
                                Trace.endSection();
                                zzaP(0, 1);
                            }
                            zzaQ(j5);
                            return true;
                        }
                        if (zzfs.zza >= 21) {
                            if (j5 >= 50000) {
                                return false;
                            }
                            if (jZza2 == this.zzB) {
                                zzaO(zzskVar, i, jZzaq);
                            } else {
                                zzaN(zzskVar, i, jZzaq, jZza2);
                            }
                            zzaQ(j5);
                            this.zzB = jZza2;
                            return true;
                        }
                        if (j5 >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                            return false;
                        }
                        if (j5 > 11000) {
                            try {
                                Thread.sleep(((-10000) + j5) / 1000);
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                                return false;
                            }
                        }
                        zzaM(zzskVar, i, jZzaq);
                        zzaQ(j5);
                        return true;
                    }
                    if (j4 != C.TIME_UNSET) {
                        zzil zzilVar = ((zzss) this).zza;
                        zzilVar.zzd += iZzd;
                        zzilVar.zzf += this.zzw;
                    } else {
                        ((zzss) this).zza.zzj++;
                        zzaP(iZzd, this.zzw);
                    }
                    zzaC();
                    zzaay zzaayVar2 = this.zzI;
                    if (zzaayVar2 != null) {
                        zzaayVar2.zzd();
                    }
                }
            }
        } else if (zzba(jZzaS)) {
            zzaO(zzskVar, i, jZzaq);
            zzaQ(jZzaS);
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final zzsl zzat(Throwable th, @Nullable zzsn zzsnVar) {
        return new zzzp(th, zzsnVar, this.zzm);
    }

    @Override // com.google.android.gms.internal.ads.zzss
    @CallSuper
    protected final void zzaw(long j) {
        super.zzaw(j);
        this.zzw--;
    }

    @Override // com.google.android.gms.internal.ads.zzss
    @CallSuper
    protected final void zzax(zzib zzibVar) throws zzit {
        this.zzw++;
        int i = zzfs.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzss
    @CallSuper
    protected final void zzay(zzam zzamVar) throws zzit {
        if (this.zzE && !this.zzF && !this.zzg.zzi()) {
            try {
                this.zzg.zzc(zzamVar);
                this.zzg.zzf(zzaq());
                zzaaa zzaaaVar = this.zzH;
                if (zzaaaVar != null) {
                    this.zzg.zzh(zzaaaVar);
                }
            } catch (zzaax e2) {
                throw zzi(e2, zzamVar, false, 7000);
            }
        }
        if (this.zzI == null && this.zzg.zzi()) {
            zzaay zzaayVarZza = this.zzg.zza();
            this.zzI = zzaayVarZza;
            zzaayVarZza.zzj(new zzzq(this), zzgbr.zzb());
        }
        this.zzF = true;
    }

    @Override // com.google.android.gms.internal.ads.zzik, com.google.android.gms.internal.ads.zzlz
    public final void zzs() {
        if (this.zzq == 0) {
            this.zzq = 1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzsk] */
    /* JADX WARN: Type inference failed for: r6v13, types: [com.google.android.gms.internal.ads.zzaaz] */
    /* JADX WARN: Type inference failed for: r6v5, types: [com.google.android.gms.internal.ads.zzaai] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10, types: [com.google.android.gms.internal.ads.zzzz] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v3, types: [android.view.Surface] */
    /* JADX WARN: Type inference failed for: r7v6, types: [android.view.Surface] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
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
    @Override // com.google.android.gms.internal.ads.zzik, com.google.android.gms.internal.ads.zzlu
    public final void zzt(int i, @Nullable Object obj) throws zzit {
        Surface surface;
        if (i != 1) {
            if (i == 7) {
                Objects.requireNonNull(obj);
                zzaaa zzaaaVar = (zzaaa) obj;
                this.zzH = zzaaaVar;
                this.zzg.zzh(zzaaaVar);
                return;
            }
            if (i == 10) {
                Objects.requireNonNull(obj);
                int iIntValue = ((Integer) obj).intValue();
                if (this.zzG != iIntValue) {
                    this.zzG = iIntValue;
                    return;
                }
                return;
            }
            if (i == 4) {
                Objects.requireNonNull(obj);
                int iIntValue2 = ((Integer) obj).intValue();
                this.zzp = iIntValue2;
                zzsk zzskVarZzas = zzas();
                if (zzskVarZzas != null) {
                    zzskVarZzas.zzq(iIntValue2);
                    return;
                }
                return;
            }
            if (i == 5) {
                zzaai zzaaiVar = this.zzf;
                Objects.requireNonNull(obj);
                zzaaiVar.zzj(((Integer) obj).intValue());
                return;
            }
            if (i == 13) {
                Objects.requireNonNull(obj);
                this.zzg.zzg((List) obj);
                this.zzE = true;
                return;
            } else {
                if (i != 14) {
                    return;
                }
                Objects.requireNonNull(obj);
                zzfk zzfkVar = (zzfk) obj;
                if (!this.zzg.zzi() || zzfkVar.zzb() == 0 || zzfkVar.zza() == 0 || (surface = this.zzm) == null) {
                    return;
                }
                this.zzg.zze(surface, zzfkVar);
                return;
            }
        }
        ?? Zza = obj instanceof Surface ? (Surface) obj : 0;
        if (Zza == 0) {
            zzzz zzzzVar = this.zzn;
            if (zzzzVar != null) {
                Zza = zzzzVar;
            } else {
                zzsn zzsnVarZzau = zzau();
                if (zzsnVarZzau != null && zzbc(zzsnVarZzau)) {
                    Zza = zzzz.zza(this.zze, zzsnVarZzau.zzf);
                    this.zzn = Zza;
                }
            }
        }
        if (this.zzm == Zza) {
            if (Zza == 0 || Zza == this.zzn) {
                return;
            }
            zzaX();
            Surface surface2 = this.zzm;
            if (surface2 == null || !this.zzo) {
                return;
            }
            this.zzh.zzq(surface2);
            return;
        }
        this.zzm = Zza;
        this.zzf.zzi(Zza);
        this.zzo = false;
        int iZzbd = zzbd();
        ?? Zzas = zzas();
        ?? r7 = Zza;
        if (Zzas != 0) {
            r7 = Zza;
            if (!this.zzg.zzi()) {
                ?? r72 = Zza;
                if (zzfs.zza < 23) {
                    zzaz();
                    zzav();
                    r7 = r72;
                } else {
                    if (Zza != 0) {
                        r72 = Zza;
                        if (!this.zzk) {
                            Zzas.zzo(Zza);
                            r7 = Zza;
                        }
                    } else {
                        r72 = 0;
                    }
                    zzaz();
                    zzav();
                    r7 = r72;
                }
            }
        }
        if (r7 == 0 || r7 == this.zzn) {
            this.zzD = null;
            zzaU(1);
            if (this.zzg.zzi()) {
                this.zzg.zzb();
                return;
            }
            return;
        }
        zzaX();
        zzaU(1);
        if (iZzbd == 2) {
            this.zzs = C.TIME_UNSET;
        }
        if (this.zzg.zzi()) {
            this.zzg.zze(r7, zzfk.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzik
    protected final void zzw() {
        this.zzD = null;
        zzaU(0);
        this.zzo = false;
        try {
            super.zzw();
        } finally {
            this.zzh.zzc(((zzss) this).zza);
            this.zzh.zzt(zzdu.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzik
    protected final void zzx(boolean z, boolean z2) throws zzit {
        super.zzx(z, z2);
        zzm();
        this.zzh.zze(((zzss) this).zza);
        this.zzq = z2 ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzik
    protected final void zzy(long j, boolean z) throws zzit {
        zzaay zzaayVar = this.zzI;
        if (zzaayVar != null) {
            zzaayVar.zzd();
        }
        super.zzy(j, z);
        if (this.zzg.zzi()) {
            this.zzg.zzf(zzaq());
        }
        zzaU(1);
        this.zzf.zzf();
        this.zzx = C.TIME_UNSET;
        this.zzr = C.TIME_UNSET;
        this.zzv = 0;
        this.zzs = C.TIME_UNSET;
    }

    @Override // com.google.android.gms.internal.ads.zzik
    protected final void zzz() {
        if (this.zzg.zzi()) {
            this.zzg.zzd();
        }
    }
}
