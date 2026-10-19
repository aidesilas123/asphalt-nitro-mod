package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import androidx.annotation.Nullable;
import com.facebook.internal.security.CertificateUtil;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzceo extends zzcdc implements TextureView.SurfaceTextureListener, zzcdm {
    private final zzcdw zzc;
    private final zzcdx zzd;
    private final zzcdv zze;
    private zzcdb zzf;
    private Surface zzg;
    private zzcdn zzh;
    private String zzi;
    private String[] zzj;
    private boolean zzk;
    private int zzl;
    private zzcdu zzm;
    private final boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private int zzq;
    private int zzr;
    private float zzs;

    public zzceo(Context context, zzcdx zzcdxVar, zzcdw zzcdwVar, boolean z, boolean z2, zzcdv zzcdvVar) {
        super(context);
        this.zzl = 1;
        this.zzc = zzcdwVar;
        this.zzd = zzcdxVar;
        this.zzn = z;
        this.zze = zzcdvVar;
        setSurfaceTextureListener(this);
        zzcdxVar.zza(this);
    }

    private static String zzT(String str, Exception exc) {
        return str + "/" + exc.getClass().getCanonicalName() + CertificateUtil.DELIMITER + exc.getMessage();
    }

    private final void zzU() {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null) {
            zzcdnVar.zzQ(true);
        }
    }

    private final void zzV() {
        if (this.zzo) {
            return;
        }
        this.zzo = true;
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcen
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzI();
            }
        });
        zzn();
        this.zzd.zzb();
        if (this.zzp) {
            zzp();
        }
    }

    private final void zzW(boolean z, @Nullable Integer num) {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null && !z) {
            zzcdnVar.zzP(num);
            return;
        }
        if (this.zzi == null || this.zzg == null) {
            return;
        }
        if (z) {
            if (!zzad()) {
                zzcbn.zzj("No valid ExoPlayerAdapter exists when switch source.");
                return;
            } else {
                zzcdnVar.zzU();
                zzY();
            }
        }
        if (this.zzi.startsWith("cache:")) {
            zzcfh zzcfhVarZzp = this.zzc.zzp(this.zzi);
            if (zzcfhVarZzp instanceof zzcfq) {
                zzcdn zzcdnVarZza = ((zzcfq) zzcfhVarZzp).zza();
                this.zzh = zzcdnVarZza;
                zzcdnVarZza.zzP(num);
                if (!this.zzh.zzV()) {
                    zzcbn.zzj("Precached video player has been released.");
                    return;
                }
            } else {
                if (!(zzcfhVarZzp instanceof zzcfn)) {
                    zzcbn.zzj("Stream cache miss: ".concat(String.valueOf(this.zzi)));
                    return;
                }
                zzcfn zzcfnVar = (zzcfn) zzcfhVarZzp;
                String strZzF = zzF();
                ByteBuffer byteBufferZzk = zzcfnVar.zzk();
                boolean zZzl = zzcfnVar.zzl();
                String strZzi = zzcfnVar.zzi();
                if (strZzi == null) {
                    zzcbn.zzj("Stream cache URL is null.");
                    return;
                } else {
                    zzcdn zzcdnVarZzE = zzE(num);
                    this.zzh = zzcdnVarZzE;
                    zzcdnVarZzE.zzG(new Uri[]{Uri.parse(strZzi)}, strZzF, byteBufferZzk, zZzl);
                }
            }
        } else {
            this.zzh = zzE(num);
            String strZzF2 = zzF();
            Uri[] uriArr = new Uri[this.zzj.length];
            int i = 0;
            while (true) {
                String[] strArr = this.zzj;
                if (i >= strArr.length) {
                    break;
                }
                uriArr[i] = Uri.parse(strArr[i]);
                i++;
            }
            this.zzh.zzF(uriArr, strZzF2);
        }
        this.zzh.zzL(this);
        zzZ(this.zzg, false);
        if (this.zzh.zzV()) {
            int iZzt = this.zzh.zzt();
            this.zzl = iZzt;
            if (iZzt == 3) {
                zzV();
            }
        }
    }

    private final void zzX() {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null) {
            zzcdnVar.zzQ(false);
        }
    }

    private final void zzY() {
        if (this.zzh != null) {
            zzZ(null, true);
            zzcdn zzcdnVar = this.zzh;
            if (zzcdnVar != null) {
                zzcdnVar.zzL(null);
                this.zzh.zzH();
                this.zzh = null;
            }
            this.zzl = 1;
            this.zzk = false;
            this.zzo = false;
            this.zzp = false;
        }
    }

    private final void zzZ(Surface surface, boolean z) {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar == null) {
            zzcbn.zzj("Trying to set surface before player is initialized.");
            return;
        }
        try {
            zzcdnVar.zzS(surface, z);
        } catch (IOException e2) {
            zzcbn.zzk("", e2);
        }
    }

    private final void zzaa() {
        zzab(this.zzq, this.zzr);
    }

    private final void zzab(int i, int i2) {
        float f2 = i2 > 0 ? i / i2 : 1.0f;
        if (this.zzs != f2) {
            this.zzs = f2;
            requestLayout();
        }
    }

    private final boolean zzac() {
        return zzad() && this.zzl != 1;
    }

    private final boolean zzad() {
        zzcdn zzcdnVar = this.zzh;
        return (zzcdnVar == null || !zzcdnVar.zzV() || this.zzk) ? false : true;
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f2 = this.zzs;
        if (f2 != 0.0f && this.zzm == null) {
            float f3 = measuredWidth;
            float f4 = f3 / measuredHeight;
            if (f2 > f4) {
                measuredHeight = (int) (f3 / f2);
            }
            if (f2 < f4) {
                measuredWidth = (int) (measuredHeight * f2);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        zzcdu zzcduVar = this.zzm;
        if (zzcduVar != null) {
            zzcduVar.zzc(measuredWidth, measuredHeight);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.zzn) {
            zzcdu zzcduVar = new zzcdu(getContext());
            this.zzm = zzcduVar;
            zzcduVar.zzd(surfaceTexture, i, i2);
            this.zzm.start();
            SurfaceTexture surfaceTextureZzb = this.zzm.zzb();
            if (surfaceTextureZzb != null) {
                surfaceTexture = surfaceTextureZzb;
            } else {
                this.zzm.zze();
                this.zzm = null;
            }
        }
        Surface surface = new Surface(surfaceTexture);
        this.zzg = surface;
        if (this.zzh == null) {
            zzW(false, null);
        } else {
            zzZ(surface, true);
            if (!this.zze.zza) {
                zzU();
            }
        }
        if (this.zzq == 0 || this.zzr == 0) {
            zzab(i, i2);
        } else {
            zzaa();
        }
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcek
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzM();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzo();
        zzcdu zzcduVar = this.zzm;
        if (zzcduVar != null) {
            zzcduVar.zze();
            this.zzm = null;
        }
        if (this.zzh != null) {
            zzX();
            Surface surface = this.zzg;
            if (surface != null) {
                surface.release();
            }
            this.zzg = null;
            zzZ(null, true);
        }
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzceg
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzN();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        zzcdu zzcduVar = this.zzm;
        if (zzcduVar != null) {
            zzcduVar.zzc(i, i2);
        }
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcef
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzO(i, i2);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzd.zzf(this);
        this.zza.zza(surfaceTexture, this.zzf);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i) {
        com.google.android.gms.ads.internal.util.zze.zza("AdExoPlayerView3 window visibility changed to " + i);
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcee
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzQ(i);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzA(int i) {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null) {
            zzcdnVar.zzN(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzB(int i) {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null) {
            zzcdnVar.zzR(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzC(@Nullable String str, @Nullable String[] strArr, @Nullable Integer num) {
        if (str == null) {
            return;
        }
        if (strArr == null) {
            this.zzj = new String[]{str};
        } else {
            this.zzj = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
        String str2 = this.zzi;
        boolean z = this.zze.zzl && str2 != null && !str.equals(str2) && this.zzl == 4;
        this.zzi = str;
        zzW(z, num);
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzD(int i, int i2) {
        this.zzq = i;
        this.zzr = i2;
        zzaa();
    }

    final zzcdn zzE(@Nullable Integer num) {
        zzcdv zzcdvVar = this.zze;
        zzcdw zzcdwVar = this.zzc;
        zzcgi zzcgiVar = new zzcgi(zzcdwVar.getContext(), zzcdvVar, zzcdwVar, num);
        zzcbn.zzi("ExoPlayerAdapter initialized.");
        return zzcgiVar;
    }

    final String zzF() {
        zzcdw zzcdwVar = this.zzc;
        return com.google.android.gms.ads.internal.zzt.zzp().zzc(zzcdwVar.getContext(), zzcdwVar.zzn().zza);
    }

    final /* synthetic */ void zzG(String str) {
        zzcdb zzcdbVar = this.zzf;
        if (zzcdbVar != null) {
            zzcdbVar.zzb("ExoPlayerAdapter error", str);
        }
    }

    final /* synthetic */ void zzH() {
        zzcdb zzcdbVar = this.zzf;
        if (zzcdbVar != null) {
            zzcdbVar.zza();
        }
    }

    final /* synthetic */ void zzI() {
        zzcdb zzcdbVar = this.zzf;
        if (zzcdbVar != null) {
            zzcdbVar.zzf();
        }
    }

    final /* synthetic */ void zzJ(boolean z, long j) {
        this.zzc.zzv(z, j);
    }

    final /* synthetic */ void zzK(String str) {
        zzcdb zzcdbVar = this.zzf;
        if (zzcdbVar != null) {
            zzcdbVar.zzc("ExoPlayerAdapter exception", str);
        }
    }

    final /* synthetic */ void zzL() {
        zzcdb zzcdbVar = this.zzf;
        if (zzcdbVar != null) {
            zzcdbVar.zzg();
        }
    }

    final /* synthetic */ void zzM() {
        zzcdb zzcdbVar = this.zzf;
        if (zzcdbVar != null) {
            zzcdbVar.zzh();
        }
    }

    final /* synthetic */ void zzN() {
        zzcdb zzcdbVar = this.zzf;
        if (zzcdbVar != null) {
            zzcdbVar.zzi();
        }
    }

    final /* synthetic */ void zzO(int i, int i2) {
        zzcdb zzcdbVar = this.zzf;
        if (zzcdbVar != null) {
            zzcdbVar.zzj(i, i2);
        }
    }

    final /* synthetic */ void zzP() {
        float fZza = this.zzb.zza();
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar == null) {
            zzcbn.zzj("Trying to set volume before player is initialized.");
            return;
        }
        try {
            zzcdnVar.zzT(fZza, false);
        } catch (IOException e2) {
            zzcbn.zzk("", e2);
        }
    }

    final /* synthetic */ void zzQ(int i) {
        zzcdb zzcdbVar = this.zzf;
        if (zzcdbVar != null) {
            zzcdbVar.onWindowVisibilityChanged(i);
        }
    }

    final /* synthetic */ void zzR() {
        zzcdb zzcdbVar = this.zzf;
        if (zzcdbVar != null) {
            zzcdbVar.zzd();
        }
    }

    final /* synthetic */ void zzS() {
        zzcdb zzcdbVar = this.zzf;
        if (zzcdbVar != null) {
            zzcdbVar.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final int zza() {
        if (zzac()) {
            return (int) this.zzh.zzy();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final int zzb() {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null) {
            return zzcdnVar.zzr();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final int zzc() {
        if (zzac()) {
            return (int) this.zzh.zzz();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final int zzd() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final int zze() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final long zzf() {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null) {
            return zzcdnVar.zzx();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final long zzg() {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null) {
            return zzcdnVar.zzA();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final long zzh() {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null) {
            return zzcdnVar.zzB();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzi(final boolean z, final long j) {
        if (this.zzc != null) {
            zzcca.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzceh
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzJ(z, j);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final String zzj() {
        return "ExoPlayer/2".concat(true != this.zzn ? "" : " spherical");
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzk(String str, Exception exc) {
        final String strZzT = zzT(str, exc);
        zzcbn.zzj("ExoPlayerAdapter error: ".concat(strZzT));
        this.zzk = true;
        if (this.zze.zza) {
            zzX();
        }
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcel
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzG(strZzT);
            }
        });
        com.google.android.gms.ads.internal.zzt.zzo().zzv(exc, "AdExoPlayerView.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzl(String str, Exception exc) {
        final String strZzT = zzT("onLoadException", exc);
        zzcbn.zzj("ExoPlayerAdapter exception: ".concat(strZzT));
        com.google.android.gms.ads.internal.zzt.zzo().zzv(exc, "AdExoPlayerView.onException");
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcei
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzK(strZzT);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzm(int i) {
        if (this.zzl != i) {
            this.zzl = i;
            if (i == 3) {
                zzV();
                return;
            }
            if (i != 4) {
                return;
            }
            if (this.zze.zza) {
                zzX();
            }
            this.zzd.zze();
            this.zzb.zzc();
            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcem
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzH();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc, com.google.android.gms.internal.ads.zzcdz
    public final void zzn() {
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzced
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzP();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzo() {
        if (zzac()) {
            if (this.zze.zza) {
                zzX();
            }
            this.zzh.zzO(false);
            this.zzd.zze();
            this.zzb.zzc();
            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcej
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzR();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzp() {
        if (!zzac()) {
            this.zzp = true;
            return;
        }
        if (this.zze.zza) {
            zzU();
        }
        this.zzh.zzO(true);
        this.zzd.zzc();
        this.zzb.zzb();
        this.zza.zzb();
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcec
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzS();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzq(int i) {
        if (zzac()) {
            this.zzh.zzI(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzr(zzcdb zzcdbVar) {
        this.zzf = zzcdbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzs(@Nullable String str) {
        if (str != null) {
            zzC(str, null, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzt() {
        if (zzad()) {
            this.zzh.zzU();
            zzY();
        }
        this.zzd.zze();
        this.zzb.zzc();
        this.zzd.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzu(float f2, float f3) {
        zzcdu zzcduVar = this.zzm;
        if (zzcduVar != null) {
            zzcduVar.zzf(f2, f3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzv() {
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzceb
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzL();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    @Nullable
    public final Integer zzw() {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null) {
            return zzcdnVar.zzC();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzx(int i) {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null) {
            zzcdnVar.zzJ(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzy(int i) {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null) {
            zzcdnVar.zzK(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdc
    public final void zzz(int i) {
        zzcdn zzcdnVar = this.zzh;
        if (zzcdnVar != null) {
            zzcdnVar.zzM(i);
        }
    }
}
