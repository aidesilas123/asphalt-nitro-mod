package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import com.google.android.gms.ads.query.UpdateImpressionUrlsCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbum {
    private final View zza;

    @Nullable
    private final Map zzb;

    @Nullable
    private final zzcae zzc;

    public zzbum(zzbul zzbulVar) {
        View view = zzbulVar.zza;
        this.zza = view;
        Map map = zzbulVar.zzb;
        this.zzb = map;
        zzcae zzcaeVarZza = zzbug.zza(zzbulVar.zza.getContext());
        this.zzc = zzcaeVarZza;
        if (zzcaeVarZza == null || map.isEmpty()) {
            return;
        }
        try {
            zzcaeVarZza.zzf(new zzbun(ObjectWrapper.wrap(view).asBinder(), ObjectWrapper.wrap(map).asBinder()));
        } catch (RemoteException unused) {
            zzcbn.zzg("Failed to call remote method.");
        }
    }

    public final void zza(List list) {
        if (list == null || list.isEmpty()) {
            zzcbn.zzj("No click urls were passed to recordClick");
            return;
        }
        if (this.zzc == null) {
            zzcbn.zzj("Failed to get internal reporting info generator in recordClick.");
        }
        try {
            this.zzc.zzg(list, ObjectWrapper.wrap(this.zza), new zzbuk(this, list));
        } catch (RemoteException e2) {
            zzcbn.zzg("RemoteException recording click: ".concat(e2.toString()));
        }
    }

    public final void zzb(List list) {
        if (list == null || list.isEmpty()) {
            zzcbn.zzj("No impression urls were passed to recordImpression");
            return;
        }
        zzcae zzcaeVar = this.zzc;
        if (zzcaeVar == null) {
            zzcbn.zzj("Failed to get internal reporting info generator from recordImpression.");
            return;
        }
        try {
            zzcaeVar.zzh(list, ObjectWrapper.wrap(this.zza), new zzbuj(this, list));
        } catch (RemoteException e2) {
            zzcbn.zzg("RemoteException recording impression urls: ".concat(e2.toString()));
        }
    }

    public final void zzc(MotionEvent motionEvent) {
        zzcae zzcaeVar = this.zzc;
        if (zzcaeVar == null) {
            zzcbn.zze("Failed to get internal reporting info generator.");
            return;
        }
        try {
            zzcaeVar.zzj(ObjectWrapper.wrap(motionEvent));
        } catch (RemoteException unused) {
            zzcbn.zzg("Failed to call remote method.");
        }
    }

    public final void zzd(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        if (this.zzc == null) {
            updateClickUrlCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            this.zzc.zzk(new ArrayList(Arrays.asList(uri)), ObjectWrapper.wrap(this.zza), new zzbui(this, updateClickUrlCallback));
        } catch (RemoteException e2) {
            updateClickUrlCallback.onFailure("Internal error: ".concat(e2.toString()));
        }
    }

    public final void zze(List list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        if (this.zzc == null) {
            updateImpressionUrlsCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            this.zzc.zzl(list, ObjectWrapper.wrap(this.zza), new zzbuh(this, updateImpressionUrlsCallback));
        } catch (RemoteException e2) {
            updateImpressionUrlsCallback.onFailure("Internal error: ".concat(e2.toString()));
        }
    }
}
