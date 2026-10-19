package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdil implements zzcyh, zzdfj {
    private final zzbza zza;
    private final Context zzb;
    private final zzbzs zzc;

    @Nullable
    private final View zzd;
    private String zze;
    private final zzayz zzf;

    public zzdil(zzbza zzbzaVar, Context context, zzbzs zzbzsVar, @Nullable View view, zzayz zzayzVar) {
        this.zza = zzbzaVar;
        this.zzb = context;
        this.zzc = zzbzsVar;
        this.zzd = view;
        this.zzf = zzayzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcyh
    public final void zza() {
        this.zza.zzb(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcyh
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcyh
    public final void zzbx(zzbwq zzbwqVar, String str, String str2) {
        if (this.zzc.zzu(this.zzb)) {
            try {
                zzbzs zzbzsVar = this.zzc;
                Context context = this.zzb;
                zzbzsVar.zzo(context, zzbzsVar.zza(context), this.zza.zza(), zzbwqVar.zzc(), zzbwqVar.zzb());
            } catch (RemoteException e2) {
                zzcbn.zzk("Remote Exception to get reward item.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyh
    public final void zzc() {
        View view = this.zzd;
        if (view != null && this.zze != null) {
            this.zzc.zzs(view.getContext(), this.zze);
        }
        this.zza.zzb(true);
    }

    @Override // com.google.android.gms.internal.ads.zzcyh
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzcyh
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final void zzk() {
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final void zzl() {
        if (this.zzf == zzayz.APP_OPEN) {
            return;
        }
        String strZzd = this.zzc.zzd(this.zzb);
        this.zze = strZzd;
        this.zze = String.valueOf(strZzd).concat(this.zzf == zzayz.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial");
    }
}
