package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfnf implements zzfmf {
    private static final zzfnf zza = new zzfnf();
    private static final Handler zzb = new Handler(Looper.getMainLooper());
    private static Handler zzc = null;
    private static final Runnable zzd = new zzfnb();
    private static final Runnable zze = new zzfnc();
    private int zzg;
    private long zzm;
    private final List zzf = new ArrayList();
    private boolean zzh = false;
    private final List zzi = new ArrayList();
    private final zzfmy zzk = new zzfmy();
    private final zzfmh zzj = new zzfmh();
    private final zzfmz zzl = new zzfmz(new zzfni());

    zzfnf() {
    }

    public static zzfnf zzd() {
        return zza;
    }

    static /* bridge */ /* synthetic */ void zzg(zzfnf zzfnfVar) {
        zzfnfVar.zzg = 0;
        zzfnfVar.zzi.clear();
        zzfnfVar.zzh = false;
        for (zzflj zzfljVar : zzflx.zza().zzb()) {
        }
        zzfnfVar.zzm = System.nanoTime();
        zzfnfVar.zzk.zzi();
        long jNanoTime = System.nanoTime();
        zzfmg zzfmgVarZza = zzfnfVar.zzj.zza();
        if (zzfnfVar.zzk.zze().size() > 0) {
            for (String str : zzfnfVar.zzk.zze()) {
                JSONObject jSONObjectZza = zzfmgVarZza.zza(null);
                View viewZza = zzfnfVar.zzk.zza(str);
                zzfmg zzfmgVarZzb = zzfnfVar.zzj.zzb();
                String strZzc = zzfnfVar.zzk.zzc(str);
                if (strZzc != null) {
                    JSONObject jSONObjectZza2 = zzfmgVarZzb.zza(viewZza);
                    zzfmq.zzb(jSONObjectZza2, str);
                    try {
                        jSONObjectZza2.put("notVisibleReason", strZzc);
                    } catch (JSONException e2) {
                        zzfmr.zza("Error with setting not visible reason", e2);
                    }
                    zzfmq.zzc(jSONObjectZza, jSONObjectZza2);
                }
                zzfmq.zzf(jSONObjectZza);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                zzfnfVar.zzl.zzc(jSONObjectZza, hashSet, jNanoTime);
            }
        }
        if (zzfnfVar.zzk.zzf().size() > 0) {
            JSONObject jSONObjectZza3 = zzfmgVarZza.zza(null);
            zzfnfVar.zzk(null, zzfmgVarZza, jSONObjectZza3, 1, false);
            zzfmq.zzf(jSONObjectZza3);
            zzfnfVar.zzl.zzd(jSONObjectZza3, zzfnfVar.zzk.zzf(), jNanoTime);
        } else {
            zzfnfVar.zzl.zzb();
        }
        zzfnfVar.zzk.zzg();
        long jNanoTime2 = System.nanoTime() - zzfnfVar.zzm;
        if (zzfnfVar.zzf.size() > 0) {
            for (zzfne zzfneVar : zzfnfVar.zzf) {
                TimeUnit.NANOSECONDS.toMillis(jNanoTime2);
                zzfneVar.zzb();
                if (zzfneVar instanceof zzfnd) {
                    ((zzfnd) zzfneVar).zza();
                }
            }
        }
    }

    private final void zzk(View view, zzfmg zzfmgVar, JSONObject jSONObject, int i, boolean z) {
        zzfmgVar.zzb(view, jSONObject, this, i == 1, z);
    }

    private static final void zzl() {
        Handler handler = zzc;
        if (handler != null) {
            handler.removeCallbacks(zze);
            zzc = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmf
    public final void zza(View view, zzfmg zzfmgVar, JSONObject jSONObject, boolean z) {
        int iZzk;
        boolean z2;
        if (zzfmw.zzb(view) != null || (iZzk = this.zzk.zzk(view)) == 3) {
            return;
        }
        JSONObject jSONObjectZza = zzfmgVar.zza(view);
        zzfmq.zzc(jSONObject, jSONObjectZza);
        String strZzd = this.zzk.zzd(view);
        if (strZzd != null) {
            zzfmq.zzb(jSONObjectZza, strZzd);
            try {
                jSONObjectZza.put("hasWindowFocus", Boolean.valueOf(this.zzk.zzj(view)));
            } catch (JSONException e2) {
                zzfmr.zza("Error with setting has window focus", e2);
            }
            this.zzk.zzh();
        } else {
            zzfmx zzfmxVarZzb = this.zzk.zzb(view);
            if (zzfmxVarZzb != null) {
                zzfma zzfmaVarZza = zzfmxVarZzb.zza();
                JSONArray jSONArray = new JSONArray();
                ArrayList arrayListZzb = zzfmxVarZzb.zzb();
                int size = arrayListZzb.size();
                for (int i = 0; i < size; i++) {
                    jSONArray.put((String) arrayListZzb.get(i));
                }
                try {
                    jSONObjectZza.put("isFriendlyObstructionFor", jSONArray);
                    jSONObjectZza.put("friendlyObstructionClass", zzfmaVarZza.zzd());
                    jSONObjectZza.put("friendlyObstructionPurpose", zzfmaVarZza.zza());
                    jSONObjectZza.put("friendlyObstructionReason", zzfmaVarZza.zzc());
                } catch (JSONException e3) {
                    zzfmr.zza("Error with setting friendly obstruction", e3);
                }
                z2 = true;
            } else {
                z2 = false;
            }
            zzk(view, zzfmgVar, jSONObjectZza, iZzk, z || z2);
        }
        this.zzg++;
    }

    public final void zzh() {
        zzl();
    }

    public final void zzi() {
        if (zzc == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            zzc = handler;
            handler.post(zzd);
            zzc.postDelayed(zze, 200L);
        }
    }

    public final void zzj() {
        zzl();
        this.zzf.clear();
        zzb.post(new zzfna(this));
    }
}
