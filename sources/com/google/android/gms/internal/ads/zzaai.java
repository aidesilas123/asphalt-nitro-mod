package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.Display;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaai {
    private final zzzo zza = new zzzo();

    @Nullable
    private final zzaae zzb;

    @Nullable
    private final zzaah zzc;
    private boolean zzd;

    @Nullable
    private Surface zze;
    private float zzf;
    private float zzg;
    private float zzh;
    private float zzi;
    private int zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;

    public zzaai(@Nullable Context context) {
        zzaae zzaaeVarZzc;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            int i = zzfs.zza;
            zzaaeVarZzc = zzaag.zzc(applicationContext);
            if (zzaaeVarZzc == null) {
                zzaaeVarZzc = zzaaf.zzc(applicationContext);
            }
        } else {
            zzaaeVarZzc = null;
        }
        this.zzb = zzaaeVarZzc;
        this.zzc = zzaaeVarZzc != null ? zzaah.zza() : null;
        this.zzk = C.TIME_UNSET;
        this.zzl = C.TIME_UNSET;
        this.zzf = -1.0f;
        this.zzi = 1.0f;
        this.zzj = 0;
    }

    public static /* synthetic */ void zzb(zzaai zzaaiVar, Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            zzaaiVar.zzk = refreshRate;
            zzaaiVar.zzl = (refreshRate * 80) / 100;
        } else {
            zzez.zzf("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            zzaaiVar.zzk = C.TIME_UNSET;
            zzaaiVar.zzl = C.TIME_UNSET;
        }
    }

    private final void zzk() {
        Surface surface;
        if (zzfs.zza < 30 || (surface = this.zze) == null || this.zzj == Integer.MIN_VALUE || this.zzh == 0.0f) {
            return;
        }
        this.zzh = 0.0f;
        zzaad.zza(surface, 0.0f);
    }

    private final void zzl() {
        this.zzm = 0L;
        this.zzp = -1L;
        this.zzn = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzm() {
        /*
            r10 = this;
            int r0 = com.google.android.gms.internal.ads.zzfs.zza
            r1 = 30
            if (r0 < r1) goto L6a
            android.view.Surface r0 = r10.zze
            if (r0 != 0) goto Lb
            goto L6a
        Lb:
            com.google.android.gms.internal.ads.zzzo r0 = r10.zza
            boolean r0 = r0.zzg()
            if (r0 == 0) goto L1a
            com.google.android.gms.internal.ads.zzzo r0 = r10.zza
            float r0 = r0.zza()
            goto L1c
        L1a:
            float r0 = r10.zzf
        L1c:
            float r2 = r10.zzg
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 == 0) goto L6a
            r3 = 1
            r4 = -1082130432(0xffffffffbf800000, float:-1.0)
            r5 = 0
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 == 0) goto L57
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 == 0) goto L57
            com.google.android.gms.internal.ads.zzzo r1 = r10.zza
            boolean r1 = r1.zzg()
            r2 = 1065353216(0x3f800000, float:1.0)
            if (r1 == 0) goto L4a
            com.google.android.gms.internal.ads.zzzo r1 = r10.zza
            long r6 = r1.zzd()
            r8 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r1 < 0) goto L4a
            r2 = 1017370378(0x3ca3d70a, float:0.02)
        L4a:
            float r1 = r10.zzg
            float r1 = r0 - r1
            float r1 = java.lang.Math.abs(r1)
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 < 0) goto L62
            goto L63
        L57:
            if (r6 != 0) goto L65
            com.google.android.gms.internal.ads.zzzo r2 = r10.zza
            int r2 = r2.zzb()
            if (r2 < r1) goto L62
            goto L63
        L62:
            r3 = 0
        L63:
            if (r3 == 0) goto L6a
        L65:
            r10.zzg = r0
            r10.zzn(r5)
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaai.zzm():void");
    }

    private final void zzn(boolean z) {
        Surface surface;
        if (zzfs.zza < 30 || (surface = this.zze) == null || this.zzj == Integer.MIN_VALUE) {
            return;
        }
        float f2 = 0.0f;
        if (this.zzd) {
            float f3 = this.zzg;
            if (f3 != -1.0f) {
                f2 = this.zzi * f3;
            }
        }
        if (z || this.zzh != f2) {
            this.zzh = f2;
            zzaad.zza(surface, f2);
        }
    }

    public final long zza(long j) {
        long j2;
        if (this.zzp != -1 && this.zza.zzg()) {
            long jZzc = this.zza.zzc();
            long j3 = this.zzq + ((long) ((jZzc * (this.zzm - this.zzp)) / this.zzi));
            if (Math.abs(j - j3) > 20000000) {
                zzl();
            } else {
                j = j3;
            }
        }
        this.zzn = this.zzm;
        this.zzo = j;
        zzaah zzaahVar = this.zzc;
        if (zzaahVar != null && this.zzk != C.TIME_UNSET) {
            long j4 = zzaahVar.zza;
            if (j4 != C.TIME_UNSET) {
                long j5 = this.zzk;
                long j6 = j4 + (((j - j4) / j5) * j5);
                if (j <= j6) {
                    j2 = j6 - j5;
                } else {
                    j6 = j5 + j6;
                    j2 = j6;
                }
                long j7 = this.zzl;
                if (j6 - j >= j - j2) {
                    j6 = j2;
                }
                return j6 - j7;
            }
        }
        return j;
    }

    public final void zzc(float f2) {
        this.zzf = f2;
        this.zza.zzf();
        zzm();
    }

    public final void zzd(long j) {
        long j2 = this.zzn;
        if (j2 != -1) {
            this.zzp = j2;
            this.zzq = this.zzo;
        }
        this.zzm++;
        this.zza.zze(j * 1000);
        zzm();
    }

    public final void zze(float f2) {
        this.zzi = f2;
        zzl();
        zzn(false);
    }

    public final void zzf() {
        zzl();
    }

    public final void zzg() {
        this.zzd = true;
        zzl();
        if (this.zzb != null) {
            zzaah zzaahVar = this.zzc;
            Objects.requireNonNull(zzaahVar);
            zzaahVar.zzb();
            this.zzb.zzb(new zzaab(this));
        }
        zzn(false);
    }

    public final void zzh() {
        this.zzd = false;
        zzaae zzaaeVar = this.zzb;
        if (zzaaeVar != null) {
            zzaaeVar.zza();
            zzaah zzaahVar = this.zzc;
            Objects.requireNonNull(zzaahVar);
            zzaahVar.zzc();
        }
        zzk();
    }

    public final void zzi(@Nullable Surface surface) {
        int i = zzfs.zza;
        boolean zZza = zzaac.zza(surface);
        Surface surface2 = this.zze;
        if (true == zZza) {
            surface = null;
        }
        if (surface2 == surface) {
            return;
        }
        zzk();
        this.zze = surface;
        zzn(true);
    }

    public final void zzj(int i) {
        if (this.zzj == i) {
            return;
        }
        this.zzj = i;
        zzn(true);
    }
}
