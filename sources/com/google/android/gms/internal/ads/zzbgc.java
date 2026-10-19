package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbgc implements NativeCustomTemplateAd.DisplayOpenMeasurement {
    private final zzbhc zza;

    public zzbgc(zzbhc zzbhcVar) {
        this.zza = zzbhcVar;
        try {
            zzbhcVar.zzm();
        } catch (RemoteException e2) {
            zzcbn.zzh("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.zza.zzp(ObjectWrapper.wrap(view));
        } catch (RemoteException e2) {
            zzcbn.zzh("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.zza.zzt();
        } catch (RemoteException e2) {
            zzcbn.zzh("", e2);
            return false;
        }
    }
}
