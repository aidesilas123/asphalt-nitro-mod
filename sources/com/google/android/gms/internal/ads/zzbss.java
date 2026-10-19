package com.google.android.gms.internal.ads;

import androidx.constraintlayout.motion.widget.Key;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzbss {
    private final zzcgv zza;
    private final String zzb;

    public zzbss(zzcgv zzcgvVar, String str) {
        this.zza = zzcgvVar;
        this.zzb = str;
    }

    public final void zzf(int i, int i2, int i3, int i4) {
        try {
            this.zza.zze("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e2) {
            zzcbn.zzh("Error occurred while dispatching default position.", e2);
        }
    }

    public final void zzg(String str) {
        try {
            JSONObject jSONObjectPut = new JSONObject().put("message", str).put("action", this.zzb);
            zzcgv zzcgvVar = this.zza;
            if (zzcgvVar != null) {
                zzcgvVar.zze("onError", jSONObjectPut);
            }
        } catch (JSONException e2) {
            zzcbn.zzh("Error occurred while dispatching error event.", e2);
        }
    }

    public final void zzh(String str) {
        try {
            this.zza.zze("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e2) {
            zzcbn.zzh("Error occurred while dispatching ready Event.", e2);
        }
    }

    public final void zzi(int i, int i2, int i3, int i4, float f2, int i5) {
        try {
            this.zza.zze("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f2).put(Key.ROTATION, i5));
        } catch (JSONException e2) {
            zzcbn.zzh("Error occurred while obtaining screen information.", e2);
        }
    }

    public final void zzj(int i, int i2, int i3, int i4) {
        try {
            this.zza.zze("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e2) {
            zzcbn.zzh("Error occurred while dispatching size change.", e2);
        }
    }

    public final void zzk(String str) {
        try {
            this.zza.zze("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e2) {
            zzcbn.zzh("Error occurred while dispatching state change.", e2);
        }
    }
}
