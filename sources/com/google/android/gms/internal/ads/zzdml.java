package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdml implements zzdks {

    @Nullable
    private final zzbqg zza;
    private final zzcyz zzb;
    private final zzcyf zzc;
    private final zzdgc zzd;
    private final Context zze;
    private final zzfdu zzf;
    private final zzcbt zzg;
    private final zzfeq zzh;
    private boolean zzi = false;
    private boolean zzj = false;
    private boolean zzk = true;

    @Nullable
    private final zzbqc zzl;

    @Nullable
    private final zzbqd zzm;

    public zzdml(@Nullable zzbqc zzbqcVar, @Nullable zzbqd zzbqdVar, @Nullable zzbqg zzbqgVar, zzcyz zzcyzVar, zzcyf zzcyfVar, zzdgc zzdgcVar, Context context, zzfdu zzfduVar, zzcbt zzcbtVar, zzfeq zzfeqVar) {
        this.zzl = zzbqcVar;
        this.zzm = zzbqdVar;
        this.zza = zzbqgVar;
        this.zzb = zzcyzVar;
        this.zzc = zzcyfVar;
        this.zzd = zzdgcVar;
        this.zze = context;
        this.zzf = zzfduVar;
        this.zzg = zzcbtVar;
        this.zzh = zzfeqVar;
    }

    private final void zzb(View view) {
        try {
            zzbqg zzbqgVar = this.zza;
            if (zzbqgVar != null && !zzbqgVar.zzA()) {
                this.zza.zzw(ObjectWrapper.wrap(view));
                this.zzc.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkb)).booleanValue()) {
                    this.zzd.zzbL();
                    return;
                }
                return;
            }
            zzbqc zzbqcVar = this.zzl;
            if (zzbqcVar != null && !zzbqcVar.zzx()) {
                this.zzl.zzs(ObjectWrapper.wrap(view));
                this.zzc.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkb)).booleanValue()) {
                    this.zzd.zzbL();
                    return;
                }
                return;
            }
            zzbqd zzbqdVar = this.zzm;
            if (zzbqdVar == null || zzbqdVar.zzv()) {
                return;
            }
            this.zzm.zzq(ObjectWrapper.wrap(view));
            this.zzc.onAdClicked();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkb)).booleanValue()) {
                this.zzd.zzbL();
            }
        } catch (RemoteException e2) {
            zzcbn.zzk("Failed to call handleClick", e2);
        }
    }

    private static final HashMap zzc(Map map) {
        HashMap map2 = new HashMap();
        if (map != null) {
            synchronized (map) {
                for (Map.Entry entry : map.entrySet()) {
                    View view = (View) ((WeakReference) entry.getValue()).get();
                    if (view != null) {
                        map2.put((String) entry.getKey(), view);
                    }
                }
            }
        }
        return map2;
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final boolean zzA() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final boolean zzB() {
        return this.zzf.zzM;
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final boolean zzC(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    @Nullable
    public final JSONObject zze(View view, Map map, Map map2, @Nullable ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    @Nullable
    public final JSONObject zzf(View view, Map map, Map map2, @Nullable ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzg() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzj(@Nullable com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        zzcbn.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzk(View view, @Nullable View view2, @Nullable Map map, @Nullable Map map2, boolean z, @Nullable ImageView.ScaleType scaleType) {
        if (this.zzj && this.zzf.zzM) {
            return;
        }
        zzb(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzm(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzo(View view, View view2, Map map, Map map2, boolean z, @Nullable ImageView.ScaleType scaleType, int i) {
        if (!this.zzj) {
            zzcbn.zzj("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (this.zzf.zzM) {
            zzb(view2);
        } else {
            zzcbn.zzj("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzp() {
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzq(@Nullable View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
        try {
            if (!this.zzi) {
                this.zzi = com.google.android.gms.ads.internal.zzt.zzs().zzn(this.zze, this.zzg.zza, this.zzf.zzD.toString(), this.zzh.zzf);
            }
            if (this.zzk) {
                zzbqg zzbqgVar = this.zza;
                if (zzbqgVar != null && !zzbqgVar.zzB()) {
                    this.zza.zzx();
                    this.zzb.zza();
                    return;
                }
                zzbqc zzbqcVar = this.zzl;
                if (zzbqcVar != null && !zzbqcVar.zzy()) {
                    this.zzl.zzt();
                    this.zzb.zza();
                    return;
                }
                zzbqd zzbqdVar = this.zzm;
                if (zzbqdVar == null || zzbqdVar.zzw()) {
                    return;
                }
                this.zzm.zzr();
                this.zzb.zza();
            }
        } catch (RemoteException e2) {
            zzcbn.zzk("Failed to call recordImpression", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzr() {
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzs(View view, MotionEvent motionEvent, @Nullable View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzt(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzu(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzv() {
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzw(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        zzcbn.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzx(zzbic zzbicVar) {
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00ce A[Catch: JSONException -> 0x0045, RemoteException -> 0x0124, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0045, blocks: (B:48:0x00b3, B:49:0x00c8, B:51:0x00ce), top: B:72:0x00b3 }] */
    @Override // com.google.android.gms.internal.ads.zzdks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzy(android.view.View r9, @androidx.annotation.Nullable java.util.Map r10, @androidx.annotation.Nullable java.util.Map r11, android.view.View.OnTouchListener r12, android.view.View.OnClickListener r13) {
        /*
            Method dump skipped, instruction units count: 299
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdml.zzy(android.view.View, java.util.Map, java.util.Map, android.view.View$OnTouchListener, android.view.View$OnClickListener):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdks
    public final void zzz(View view, @Nullable Map map) {
        try {
            IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(view);
            zzbqg zzbqgVar = this.zza;
            if (zzbqgVar != null) {
                zzbqgVar.zzz(iObjectWrapperWrap);
                return;
            }
            zzbqc zzbqcVar = this.zzl;
            if (zzbqcVar != null) {
                zzbqcVar.zzw(iObjectWrapperWrap);
                return;
            }
            zzbqd zzbqdVar = this.zzm;
            if (zzbqdVar != null) {
                zzbqdVar.zzu(iObjectWrapperWrap);
            }
        } catch (RemoteException e2) {
            zzcbn.zzk("Failed to call untrackView", e2);
        }
    }
}
