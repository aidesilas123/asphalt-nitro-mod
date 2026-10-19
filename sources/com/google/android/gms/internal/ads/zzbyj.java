package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Looper;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.util.concurrent.h0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbyj implements zzbyo {
    public static final /* synthetic */ int zzb = 0;
    private static final List zzc = Collections.synchronizedList(new ArrayList());

    @VisibleForTesting
    boolean zza;
    private final zzhaq zzd;
    private final LinkedHashMap zze;
    private final Context zzh;
    private final zzbyl zzi;
    private final zzbyk zzn;
    private final List zzf = new ArrayList();
    private final List zzg = new ArrayList();
    private final Object zzj = new Object();
    private HashSet zzk = new HashSet();
    private boolean zzl = false;
    private boolean zzm = false;

    public zzbyj(Context context, zzcbt zzcbtVar, zzbyl zzbylVar, @Nullable String str, zzbyk zzbykVar) {
        Preconditions.checkNotNull(zzbylVar, "SafeBrowsing config is not present.");
        this.zzh = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zze = new LinkedHashMap();
        this.zzn = zzbykVar;
        this.zzi = zzbylVar;
        Iterator it = zzbylVar.zze.iterator();
        while (it.hasNext()) {
            this.zzk.add(((String) it.next()).toLowerCase(Locale.ENGLISH));
        }
        this.zzk.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzhaq zzhaqVarZza = zzhcl.zza();
        zzhaqVarZza.zzn(9);
        zzhaqVarZza.zzj(str);
        zzhaqVarZza.zzh(str);
        zzhar zzharVarZza = zzhas.zza();
        String str2 = this.zzi.zza;
        if (str2 != null) {
            zzharVarZza.zza(str2);
        }
        zzhaqVarZza.zzg((zzhas) zzharVarZza.zzal());
        zzhcf zzhcfVarZza = zzhcg.zza();
        zzhcfVarZza.zzc(Wrappers.packageManager(this.zzh).isCallerInstantApp());
        String str3 = zzcbtVar.zza;
        if (str3 != null) {
            zzhcfVarZza.zza(str3);
        }
        long apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzh);
        if (apkVersion > 0) {
            zzhcfVarZza.zzb(apkVersion);
        }
        zzhaqVarZza.zzf((zzhcg) zzhcfVarZza.zzal());
        this.zzd = zzhaqVarZza;
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final zzbyl zza() {
        return this.zzi;
    }

    final /* synthetic */ h0 zzb(Map map) throws Exception {
        zzhcd zzhcdVar;
        h0 h0VarZzm;
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray jSONArrayOptJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (jSONArrayOptJSONArray != null) {
                        synchronized (this.zzj) {
                            int length = jSONArrayOptJSONArray.length();
                            synchronized (this.zzj) {
                                zzhcdVar = (zzhcd) this.zze.get(str);
                            }
                            if (zzhcdVar == null) {
                                zzbyn.zza("Cannot find the corresponding resource object for " + str);
                            } else {
                                for (int i = 0; i < length; i++) {
                                    zzhcdVar.zza(jSONArrayOptJSONArray.getJSONObject(i).getString("threat_type"));
                                }
                                this.zza = (length > 0) | this.zza;
                            }
                        }
                    }
                }
            } catch (JSONException e2) {
                if (((Boolean) zzbfd.zzb.zze()).booleanValue()) {
                    zzcbn.zzf("Failed to get SafeBrowsing metadata", e2);
                }
                return zzgbb.zzg(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.zza) {
            synchronized (this.zzj) {
                this.zzd.zzn(10);
            }
        }
        boolean z = this.zza;
        if (!(z && this.zzi.zzg) && (!(this.zzm && this.zzi.zzf) && (z || !this.zzi.zzd))) {
            return zzgbb.zzh(null);
        }
        synchronized (this.zzj) {
            Iterator it = this.zze.values().iterator();
            while (it.hasNext()) {
                this.zzd.zzc((zzhce) ((zzhcd) it.next()).zzal());
            }
            this.zzd.zza(this.zzf);
            this.zzd.zzb(this.zzg);
            if (zzbyn.zzb()) {
                StringBuilder sb = new StringBuilder("Sending SB report\n  url: " + this.zzd.zzl() + "\n  clickUrl: " + this.zzd.zzk() + "\n  resources: \n");
                for (zzhce zzhceVar : this.zzd.zzm()) {
                    sb.append("    [");
                    sb.append(zzhceVar.zza());
                    sb.append("] ");
                    sb.append(zzhceVar.zze());
                }
                zzbyn.zza(sb.toString());
            }
            h0 h0VarZzb = new com.google.android.gms.ads.internal.util.zzbq(this.zzh).zzb(1, this.zzi.zzb, null, ((zzhcl) this.zzd.zzal()).zzax());
            if (zzbyn.zzb()) {
                h0VarZzb.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbyg
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbyn.zza("Pinged SB successfully.");
                    }
                }, zzcca.zza);
            }
            h0VarZzm = zzgbb.zzm(h0VarZzb, new zzftn() { // from class: com.google.android.gms.internal.ads.zzbyh
                @Override // com.google.android.gms.internal.ads.zzftn
                public final Object apply(Object obj) {
                    int i2 = zzbyj.zzb;
                    return null;
                }
            }, zzcca.zzf);
        }
        return h0VarZzm;
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzd(String str, Map map, int i) {
        synchronized (this.zzj) {
            if (i == 3) {
                this.zzm = true;
            }
            if (this.zze.containsKey(str)) {
                if (i == 3) {
                    ((zzhcd) this.zze.get(str)).zze(4);
                }
                return;
            }
            zzhcd zzhcdVarZzc = zzhce.zzc();
            int iZza = zzhcc.zza(i);
            if (iZza != 0) {
                zzhcdVarZzc.zze(iZza);
            }
            zzhcdVarZzc.zzb(this.zze.size());
            zzhcdVarZzc.zzd(str);
            zzhbd zzhbdVarZza = zzhbg.zza();
            if (!this.zzk.isEmpty() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str2 = entry.getKey() != null ? (String) entry.getKey() : "";
                    String str3 = entry.getValue() != null ? (String) entry.getValue() : "";
                    if (this.zzk.contains(str2.toLowerCase(Locale.ENGLISH))) {
                        zzhbb zzhbbVarZza = zzhbc.zza();
                        zzhbbVarZza.zza(zzgve.zzw(str2));
                        zzhbbVarZza.zzb(zzgve.zzw(str3));
                        zzhbdVarZza.zza((zzhbc) zzhbbVarZza.zzal());
                    }
                }
            }
            zzhcdVarZzc.zzc((zzhbg) zzhbdVarZza.zzal());
            this.zze.put(str, zzhcdVarZzc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zze() {
        synchronized (this.zzj) {
            this.zze.keySet();
            h0 h0VarZzh = zzgbb.zzh(Collections.emptyMap());
            zzgai zzgaiVar = new zzgai() { // from class: com.google.android.gms.internal.ads.zzbye
                @Override // com.google.android.gms.internal.ads.zzgai
                public final h0 zza(Object obj) {
                    return this.zza.zzb((Map) obj);
                }
            };
            zzgbl zzgblVar = zzcca.zzf;
            h0 h0VarZzn = zzgbb.zzn(h0VarZzh, zzgaiVar, zzgblVar);
            h0 h0VarZzo = zzgbb.zzo(h0VarZzn, 10L, TimeUnit.SECONDS, zzcca.zzd);
            zzgbb.zzr(h0VarZzn, new zzbyi(this, h0VarZzo), zzgblVar);
            zzc.add(h0VarZzo);
        }
    }

    final /* synthetic */ void zzf(Bitmap bitmap) {
        zzgvb zzgvbVarZzt = zzgve.zzt();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, zzgvbVarZzt);
        synchronized (this.zzj) {
            zzhaq zzhaqVar = this.zzd;
            zzhbw zzhbwVarZza = zzhby.zza();
            zzhbwVarZza.zza(zzgvbVarZzt.zzb());
            zzhbwVarZza.zzb("image/png");
            zzhbwVarZza.zzc(2);
            zzhaqVar.zzi((zzhby) zzhbwVarZza.zzal());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzg(View view) {
        Bitmap bitmapCreateBitmap;
        boolean zIsDrawingCacheEnabled;
        if (this.zzi.zzc && !this.zzl) {
            com.google.android.gms.ads.internal.zzt.zzp();
            final Bitmap bitmap = null;
            if (view != null) {
                try {
                    zIsDrawingCacheEnabled = view.isDrawingCacheEnabled();
                    view.setDrawingCacheEnabled(true);
                    Bitmap drawingCache = view.getDrawingCache();
                    bitmapCreateBitmap = drawingCache != null ? Bitmap.createBitmap(drawingCache) : null;
                } catch (RuntimeException e2) {
                    e = e2;
                    bitmapCreateBitmap = null;
                }
                try {
                    view.setDrawingCacheEnabled(zIsDrawingCacheEnabled);
                } catch (RuntimeException e3) {
                    e = e3;
                    zzcbn.zzh("Fail to capture the web view", e);
                }
                if (bitmapCreateBitmap == null) {
                    try {
                        int width = view.getWidth();
                        int height = view.getHeight();
                        if (width == 0 || height == 0) {
                            zzcbn.zzj("Width or height of view is zero");
                        } else {
                            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                            Canvas canvas = new Canvas(bitmapCreateBitmap2);
                            view.layout(0, 0, width, height);
                            view.draw(canvas);
                            bitmap = bitmapCreateBitmap2;
                        }
                    } catch (RuntimeException e4) {
                        zzcbn.zzh("Fail to capture the webview", e4);
                    }
                } else {
                    bitmap = bitmapCreateBitmap;
                }
            }
            if (bitmap == null) {
                zzbyn.zza("Failed to capture the webview bitmap.");
                return;
            }
            this.zzl = true;
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzbyf
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzf(bitmap);
                }
            };
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                runnable.run();
            } else {
                zzcca.zza.execute(runnable);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final void zzh(String str) {
        synchronized (this.zzj) {
            if (str == null) {
                this.zzd.zzd();
            } else {
                this.zzd.zze(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    public final boolean zzi() {
        return PlatformVersion.isAtLeastKitKat() && this.zzi.zzc && !this.zzl;
    }
}
