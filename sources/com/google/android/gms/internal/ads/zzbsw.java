package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbsw extends NativeAd.Image {
    private final zzbgi zza;

    @Nullable
    private final Drawable zzb;

    @Nullable
    private final Uri zzc;
    private final double zzd;

    public zzbsw(zzbgi zzbgiVar) {
        double dZzb;
        IObjectWrapper iObjectWrapperZzf;
        this.zza = zzbgiVar;
        Uri uriZze = null;
        try {
            iObjectWrapperZzf = zzbgiVar.zzf();
        } catch (RemoteException e2) {
            zzcbn.zzh("", e2);
        }
        Drawable drawable = iObjectWrapperZzf != null ? (Drawable) ObjectWrapper.unwrap(iObjectWrapperZzf) : null;
        this.zzb = drawable;
        try {
            uriZze = this.zza.zze();
        } catch (RemoteException e3) {
            zzcbn.zzh("", e3);
        }
        this.zzc = uriZze;
        try {
            dZzb = this.zza.zzb();
        } catch (RemoteException e4) {
            zzcbn.zzh("", e4);
            dZzb = 1.0d;
        }
        this.zzd = dZzb;
        try {
            this.zza.zzd();
        } catch (RemoteException e5) {
            zzcbn.zzh("", e5);
        }
        try {
            this.zza.zzc();
        } catch (RemoteException e6) {
            zzcbn.zzh("", e6);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    @Nullable
    public final Drawable getDrawable() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final double getScale() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    @Nullable
    public final Uri getUri() {
        return this.zzc;
    }
}
