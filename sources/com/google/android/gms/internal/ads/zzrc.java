package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzrc extends zzss implements zzlb {
    private final Context zzb;
    private final zzpn zzc;
    private final zzpv zzd;
    private int zze;
    private boolean zzf;

    @Nullable
    private zzam zzg;

    @Nullable
    private zzam zzh;
    private long zzi;
    private boolean zzj;
    private boolean zzk;

    @Nullable
    private zzly zzl;

    public zzrc(Context context, zzsj zzsjVar, zzsu zzsuVar, boolean z, @Nullable Handler handler, @Nullable zzpo zzpoVar, zzpv zzpvVar) {
        super(1, zzsjVar, zzsuVar, false, 44100.0f);
        this.zzb = context.getApplicationContext();
        this.zzd = zzpvVar;
        this.zzc = new zzpn(handler, zzpoVar);
        zzpvVar.zzp(new zzrb(this, null));
    }

    private final int zzaI(zzsn zzsnVar, zzam zzamVar) {
        int i;
        if (!"OMX.google.raw.decoder".equals(zzsnVar.zza) || (i = zzfs.zza) >= 24 || (i == 23 && zzfs.zzI(this.zzb))) {
            return zzamVar.zzn;
        }
        return -1;
    }

    private static List zzaJ(zzsu zzsuVar, zzam zzamVar, boolean z, zzpv zzpvVar) throws zztb {
        zzsn zzsnVarZzd;
        return zzamVar.zzm == null ? zzfwu.zzl() : (!zzpvVar.zzz(zzamVar) || (zzsnVarZzd = zzth.zzd()) == null) ? zzth.zzh(zzsuVar, zzamVar, false, false) : zzfwu.zzm(zzsnVarZzd);
    }

    private final void zzaK() {
        long jZzb = this.zzd.zzb(zzU());
        if (jZzb != Long.MIN_VALUE) {
            if (!this.zzj) {
                jZzb = Math.max(this.zzi, jZzb);
            }
            this.zzi = jZzb;
            this.zzj = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzik
    protected final void zzA() {
        try {
            super.zzA();
            if (this.zzk) {
                this.zzk = false;
                this.zzd.zzk();
            }
        } catch (Throwable th) {
            if (this.zzk) {
                this.zzk = false;
                this.zzd.zzk();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzik
    protected final void zzB() {
        this.zzd.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzik
    protected final void zzC() {
        zzaK();
        this.zzd.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzlz, com.google.android.gms.internal.ads.zzmb
    public final String zzS() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzlz
    public final boolean zzU() {
        return super.zzU() && this.zzd.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzlz
    public final boolean zzV() {
        return this.zzd.zzx() || super.zzV();
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final float zzX(float f2, zzam zzamVar, zzam[] zzamVarArr) {
        int iMax = -1;
        for (zzam zzamVar2 : zzamVarArr) {
            int i = zzamVar2.zzA;
            if (i != -1) {
                iMax = Math.max(iMax, i);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return iMax * f2;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00ca  */
    @Override // com.google.android.gms.internal.ads.zzss
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final int zzY(com.google.android.gms.internal.ads.zzsu r11, com.google.android.gms.internal.ads.zzam r12) throws com.google.android.gms.internal.ads.zztb {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrc.zzY(com.google.android.gms.internal.ads.zzsu, com.google.android.gms.internal.ads.zzam):int");
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final zzim zzZ(zzsn zzsnVar, zzam zzamVar, zzam zzamVar2) {
        int i;
        int i2;
        zzim zzimVarZzb = zzsnVar.zzb(zzamVar, zzamVar2);
        int i3 = zzimVarZzb.zze;
        if (zzaF(zzamVar2)) {
            i3 |= 32768;
        }
        if (zzaI(zzsnVar, zzamVar2) > this.zze) {
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

    @Override // com.google.android.gms.internal.ads.zzlb
    public final long zza() {
        if (zzbd() == 2) {
            zzaK();
        }
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzss
    @Nullable
    protected final zzim zzaa(zzkv zzkvVar) throws zzit {
        zzam zzamVar = zzkvVar.zza;
        Objects.requireNonNull(zzamVar);
        this.zzg = zzamVar;
        zzim zzimVarZzaa = super.zzaa(zzkvVar);
        this.zzc.zzi(zzamVar, zzimVarZzaa);
        return zzimVarZzaa;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00aa  */
    @Override // com.google.android.gms.internal.ads.zzss
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final com.google.android.gms.internal.ads.zzsi zzad(com.google.android.gms.internal.ads.zzsn r8, com.google.android.gms.internal.ads.zzam r9, @androidx.annotation.Nullable android.media.MediaCrypto r10, float r11) {
        /*
            Method dump skipped, instruction units count: 259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrc.zzad(com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzam, android.media.MediaCrypto, float):com.google.android.gms.internal.ads.zzsi");
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final List zzae(zzsu zzsuVar, zzam zzamVar, boolean z) throws zztb {
        return zzth.zzi(zzaJ(zzsuVar, zzamVar, false, this.zzd), zzamVar);
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final void zzaf(zzib zzibVar) {
        zzam zzamVar;
        if (zzfs.zza < 29 || (zzamVar = zzibVar.zza) == null) {
            return;
        }
        String str = zzamVar.zzm;
        if ((str == MimeTypes.AUDIO_OPUS || (str != null && str.equals(MimeTypes.AUDIO_OPUS))) && zzaE()) {
            ByteBuffer byteBuffer = zzibVar.zzf;
            Objects.requireNonNull(byteBuffer);
            zzam zzamVar2 = zzibVar.zza;
            Objects.requireNonNull(zzamVar2);
            if (byteBuffer.remaining() == 8) {
                this.zzd.zzq(zzamVar2.zzC, (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / C.NANOS_PER_SECOND));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final void zzag(Exception exc) {
        zzez.zzd("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.zzc.zza(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final void zzah(String str, zzsi zzsiVar, long j, long j2) {
        this.zzc.zze(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final void zzai(String str) {
        this.zzc.zzf(str);
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final void zzaj(zzam zzamVar, @Nullable MediaFormat mediaFormat) throws zzit {
        int i;
        zzam zzamVar2 = this.zzh;
        int[] iArr = null;
        if (zzamVar2 != null) {
            zzamVar = zzamVar2;
        } else if (zzas() != null) {
            Objects.requireNonNull(mediaFormat);
            int iZzk = MimeTypes.AUDIO_RAW.equals(zzamVar.zzm) ? zzamVar.zzB : (zzfs.zza < 24 || !mediaFormat.containsKey("pcm-encoding")) ? mediaFormat.containsKey("v-bits-per-sample") ? zzfs.zzk(mediaFormat.getInteger("v-bits-per-sample")) : 2 : mediaFormat.getInteger("pcm-encoding");
            zzak zzakVar = new zzak();
            zzakVar.zzU(MimeTypes.AUDIO_RAW);
            zzakVar.zzP(iZzk);
            zzakVar.zzE(zzamVar.zzC);
            zzakVar.zzF(zzamVar.zzD);
            zzakVar.zzO(zzamVar.zzk);
            zzakVar.zzJ(zzamVar.zzb);
            zzakVar.zzL(zzamVar.zzc);
            zzakVar.zzM(zzamVar.zzd);
            zzakVar.zzW(zzamVar.zze);
            zzakVar.zzy(mediaFormat.getInteger("channel-count"));
            zzakVar.zzV(mediaFormat.getInteger("sample-rate"));
            zzam zzamVarZzac = zzakVar.zzac();
            if (this.zzf && zzamVarZzac.zzz == 6 && (i = zzamVar.zzz) < 6) {
                iArr = new int[i];
                for (int i2 = 0; i2 < zzamVar.zzz; i2++) {
                    iArr[i2] = i2;
                }
            }
            zzamVar = zzamVarZzac;
        }
        try {
            int i3 = zzfs.zza;
            if (i3 >= 29) {
                if (zzaE()) {
                    zzm();
                }
                zzef.zzf(i3 >= 29);
            }
            this.zzd.zze(zzamVar, 0, iArr);
        } catch (zzpq e2) {
            throw zzi(e2, e2.zza, false, IronSourceConstants.errorCode_biddingDataException);
        }
    }

    @CallSuper
    protected final void zzak() {
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final void zzal() {
        this.zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final void zzam() throws zzit {
        try {
            this.zzd.zzj();
        } catch (zzpu e2) {
            throw zzi(e2, e2.zzc, e2.zzb, true != zzaE() ? IronSourceConstants.errorCode_isReadyException : IronSourceConstants.errorCode_loadInProgress);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final boolean zzan(long j, long j2, @Nullable zzsk zzskVar, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzam zzamVar) throws zzit {
        Objects.requireNonNull(byteBuffer);
        if (this.zzh != null && (i2 & 2) != 0) {
            Objects.requireNonNull(zzskVar);
            zzskVar.zzn(i, false);
            return true;
        }
        if (z) {
            if (zzskVar != null) {
                zzskVar.zzn(i, false);
            }
            ((zzss) this).zza.zzf += i3;
            this.zzd.zzg();
            return true;
        }
        try {
            if (!this.zzd.zzw(byteBuffer, j3, i3)) {
                return false;
            }
            if (zzskVar != null) {
                zzskVar.zzn(i, false);
            }
            ((zzss) this).zza.zze += i3;
            return true;
        } catch (zzpr e2) {
            throw zzi(e2, this.zzg, e2.zzb, IronSourceConstants.errorCode_biddingDataException);
        } catch (zzpu e3) {
            if (zzaE()) {
                zzm();
            }
            throw zzi(e3, zzamVar, e3.zzb, IronSourceConstants.errorCode_isReadyException);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzss
    protected final boolean zzao(zzam zzamVar) {
        zzm();
        return this.zzd.zzz(zzamVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final zzcj zzc() {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void zzg(zzcj zzcjVar) {
        this.zzd.zzr(zzcjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzik, com.google.android.gms.internal.ads.zzlz
    @Nullable
    public final zzlb zzk() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzik, com.google.android.gms.internal.ads.zzlu
    public final void zzt(int i, @Nullable Object obj) throws zzit {
        if (i == 2) {
            zzpv zzpvVar = this.zzd;
            Objects.requireNonNull(obj);
            zzpvVar.zzv(((Float) obj).floatValue());
            return;
        }
        if (i == 3) {
            zzk zzkVar = (zzk) obj;
            zzpv zzpvVar2 = this.zzd;
            Objects.requireNonNull(zzkVar);
            zzpvVar2.zzl(zzkVar);
            return;
        }
        if (i == 6) {
            zzl zzlVar = (zzl) obj;
            zzpv zzpvVar3 = this.zzd;
            Objects.requireNonNull(zzlVar);
            zzpvVar3.zzn(zzlVar);
            return;
        }
        switch (i) {
            case 9:
                zzpv zzpvVar4 = this.zzd;
                Objects.requireNonNull(obj);
                zzpvVar4.zzu(((Boolean) obj).booleanValue());
                break;
            case 10:
                zzpv zzpvVar5 = this.zzd;
                Objects.requireNonNull(obj);
                zzpvVar5.zzm(((Integer) obj).intValue());
                break;
            case 11:
                this.zzl = (zzly) obj;
                break;
            case 12:
                if (zzfs.zza >= 23) {
                    zzqz.zza(this.zzd, obj);
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzik
    protected final void zzw() {
        this.zzk = true;
        this.zzg = null;
        try {
            this.zzd.zzf();
            super.zzw();
        } catch (Throwable th) {
            super.zzw();
            throw th;
        } finally {
            this.zzc.zzg(((zzss) this).zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzik
    protected final void zzx(boolean z, boolean z2) throws zzit {
        super.zzx(z, z2);
        this.zzc.zzh(((zzss) this).zza);
        zzm();
        this.zzd.zzs(zzn());
        this.zzd.zzo(zzh());
    }

    @Override // com.google.android.gms.internal.ads.zzss, com.google.android.gms.internal.ads.zzik
    protected final void zzy(long j, boolean z) throws zzit {
        super.zzy(j, z);
        this.zzd.zzf();
        this.zzi = j;
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzik
    protected final void zzz() {
    }
}
