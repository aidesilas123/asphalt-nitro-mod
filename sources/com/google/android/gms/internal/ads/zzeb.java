package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeb implements zzdy {
    private int zzb;
    private float zzc = 1.0f;
    private float zzd = 1.0f;
    private zzdw zze;
    private zzdw zzf;
    private zzdw zzg;
    private zzdw zzh;
    private boolean zzi;

    @Nullable
    private zzea zzj;
    private ByteBuffer zzk;
    private ShortBuffer zzl;
    private ByteBuffer zzm;
    private long zzn;
    private long zzo;
    private boolean zzp;

    public zzeb() {
        zzdw zzdwVar = zzdw.zza;
        this.zze = zzdwVar;
        this.zzf = zzdwVar;
        this.zzg = zzdwVar;
        this.zzh = zzdwVar;
        ByteBuffer byteBuffer = zzdy.zza;
        this.zzk = byteBuffer;
        this.zzl = byteBuffer.asShortBuffer();
        this.zzm = byteBuffer;
        this.zzb = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final zzdw zza(zzdw zzdwVar) throws zzdx {
        if (zzdwVar.zzd != 2) {
            throw new zzdx("Unhandled input format:", zzdwVar);
        }
        int i = this.zzb;
        if (i == -1) {
            i = zzdwVar.zzb;
        }
        this.zze = zzdwVar;
        zzdw zzdwVar2 = new zzdw(i, zzdwVar.zzc, 2);
        this.zzf = zzdwVar2;
        this.zzi = true;
        return zzdwVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final ByteBuffer zzb() {
        int iZza;
        zzea zzeaVar = this.zzj;
        if (zzeaVar != null && (iZza = zzeaVar.zza()) > 0) {
            if (this.zzk.capacity() < iZza) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iZza).order(ByteOrder.nativeOrder());
                this.zzk = byteBufferOrder;
                this.zzl = byteBufferOrder.asShortBuffer();
            } else {
                this.zzk.clear();
                this.zzl.clear();
            }
            zzeaVar.zzd(this.zzl);
            this.zzo += (long) iZza;
            this.zzk.limit(iZza);
            this.zzm = this.zzk;
        }
        ByteBuffer byteBuffer = this.zzm;
        this.zzm = zzdy.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zzc() {
        if (zzg()) {
            zzdw zzdwVar = this.zze;
            this.zzg = zzdwVar;
            zzdw zzdwVar2 = this.zzf;
            this.zzh = zzdwVar2;
            if (this.zzi) {
                this.zzj = new zzea(zzdwVar.zzb, zzdwVar.zzc, this.zzc, this.zzd, zzdwVar2.zzb);
            } else {
                zzea zzeaVar = this.zzj;
                if (zzeaVar != null) {
                    zzeaVar.zzc();
                }
            }
        }
        this.zzm = zzdy.zza;
        this.zzn = 0L;
        this.zzo = 0L;
        this.zzp = false;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zzd() {
        zzea zzeaVar = this.zzj;
        if (zzeaVar != null) {
            zzeaVar.zze();
        }
        this.zzp = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zze(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            zzea zzeaVar = this.zzj;
            Objects.requireNonNull(zzeaVar);
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.zzn += (long) iRemaining;
            zzeaVar.zzf(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zzf() {
        this.zzc = 1.0f;
        this.zzd = 1.0f;
        zzdw zzdwVar = zzdw.zza;
        this.zze = zzdwVar;
        this.zzf = zzdwVar;
        this.zzg = zzdwVar;
        this.zzh = zzdwVar;
        ByteBuffer byteBuffer = zzdy.zza;
        this.zzk = byteBuffer;
        this.zzl = byteBuffer.asShortBuffer();
        this.zzm = byteBuffer;
        this.zzb = -1;
        this.zzi = false;
        this.zzj = null;
        this.zzn = 0L;
        this.zzo = 0L;
        this.zzp = false;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final boolean zzg() {
        if (this.zzf.zzb != -1) {
            return Math.abs(this.zzc + (-1.0f)) >= 1.0E-4f || Math.abs(this.zzd + (-1.0f)) >= 1.0E-4f || this.zzf.zzb != this.zze.zzb;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final boolean zzh() {
        zzea zzeaVar;
        return this.zzp && ((zzeaVar = this.zzj) == null || zzeaVar.zza() == 0);
    }

    public final long zzi(long j) {
        long j2 = this.zzo;
        if (j2 < PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            return (long) (((double) this.zzc) * j);
        }
        long j3 = this.zzn;
        zzea zzeaVar = this.zzj;
        Objects.requireNonNull(zzeaVar);
        long jZzb = j3 - ((long) zzeaVar.zzb());
        int i = this.zzh.zzb;
        int i2 = this.zzg.zzb;
        return i == i2 ? zzfs.zzs(j, jZzb, j2, RoundingMode.FLOOR) : zzfs.zzs(j, jZzb * ((long) i), j2 * ((long) i2), RoundingMode.FLOOR);
    }

    public final void zzj(float f2) {
        if (this.zzd != f2) {
            this.zzd = f2;
            this.zzi = true;
        }
    }

    public final void zzk(float f2) {
        if (this.zzc != f2) {
            this.zzc = f2;
            this.zzi = true;
        }
    }
}
