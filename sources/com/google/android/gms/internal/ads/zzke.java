package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzke implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, zzaau, zzpo, zzwo, zztk, zzii, zzie {
    public static final /* synthetic */ int zzb = 0;
    final /* synthetic */ zzki zza;

    /* synthetic */ zzke(zzki zzkiVar, zzkd zzkdVar) {
        this.zza = zzkiVar;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzki.zzP(this.zza, surfaceTexture);
        this.zza.zzaf(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.zza.zzai(null);
        this.zza.zzaf(0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.zza.zzaf(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.zza.zzaf(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.zza.zzaf(0, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzpo
    public final void zza(Exception exc) {
        this.zza.zzr.zzv(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzpo
    public final void zzb(String str, long j, long j2) {
        this.zza.zzr.zzw(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzpo
    public final void zzc(String str) {
        this.zza.zzr.zzx(str);
    }

    @Override // com.google.android.gms.internal.ads.zzpo
    public final void zzd(zzil zzilVar) {
        this.zza.zzr.zzy(zzilVar);
        this.zza.zzL = null;
        this.zza.zzS = null;
    }

    @Override // com.google.android.gms.internal.ads.zzpo
    public final void zze(zzil zzilVar) {
        this.zza.zzS = zzilVar;
        this.zza.zzr.zzz(zzilVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpo
    public final void zzf(zzam zzamVar, @Nullable zzim zzimVar) {
        this.zza.zzL = zzamVar;
        this.zza.zzr.zzA(zzamVar, zzimVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpo
    public final void zzg(long j) {
        this.zza.zzr.zzB(j);
    }

    @Override // com.google.android.gms.internal.ads.zzpo
    public final void zzh(Exception exc) {
        this.zza.zzr.zzC(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzpo
    public final void zzi(zzpp zzppVar) {
        this.zza.zzr.zzD(zzppVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpo
    public final void zzj(zzpp zzppVar) {
        this.zza.zzr.zzE(zzppVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpo
    public final void zzk(int i, long j, long j2) {
        this.zza.zzr.zzF(i, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void zzl(int i, long j) {
        this.zza.zzr.zzG(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void zzm(Object obj, long j) {
        this.zza.zzr.zzH(obj, j);
        zzki zzkiVar = this.zza;
        if (zzkiVar.zzN == obj) {
            zzew zzewVar = zzkiVar.zzl;
            zzewVar.zzd(26, new zzet() { // from class: com.google.android.gms.internal.ads.zzkc
                @Override // com.google.android.gms.internal.ads.zzet
                public final void zza(Object obj2) {
                }
            });
            zzewVar.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpo
    public final void zzn(final boolean z) {
        zzki zzkiVar = this.zza;
        if (zzkiVar.zzW == z) {
            return;
        }
        zzkiVar.zzW = z;
        zzew zzewVar = this.zza.zzl;
        zzewVar.zzd(23, new zzet() { // from class: com.google.android.gms.internal.ads.zzka
            @Override // com.google.android.gms.internal.ads.zzet
            public final void zza(Object obj) {
                ((zzco) obj).zzn(z);
            }
        });
        zzewVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void zzo(Exception exc) {
        this.zza.zzr.zzI(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void zzp(String str, long j, long j2) {
        this.zza.zzr.zzJ(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void zzq(String str) {
        this.zza.zzr.zzK(str);
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void zzr(zzil zzilVar) {
        this.zza.zzr.zzL(zzilVar);
        this.zza.zzK = null;
        this.zza.zzR = null;
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void zzs(zzil zzilVar) {
        this.zza.zzR = zzilVar;
        this.zza.zzr.zzM(zzilVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void zzt(long j, int i) {
        this.zza.zzr.zzN(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void zzu(zzam zzamVar, @Nullable zzim zzimVar) {
        this.zza.zzK = zzamVar;
        this.zza.zzr.zzO(zzamVar, zzimVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void zzv(final zzdu zzduVar) {
        this.zza.zzab = zzduVar;
        zzew zzewVar = this.zza.zzl;
        zzewVar.zzd(25, new zzet() { // from class: com.google.android.gms.internal.ads.zzkb
            @Override // com.google.android.gms.internal.ads.zzet
            public final void zza(Object obj) {
                ((zzco) obj).zzr(zzduVar);
            }
        });
        zzewVar.zzc();
    }
}
