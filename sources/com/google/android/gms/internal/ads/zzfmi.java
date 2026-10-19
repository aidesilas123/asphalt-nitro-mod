package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfmi implements zzfmg {
    private final zzfmg zza;

    public zzfmi(zzfmg zzfmgVar) {
        this.zza = zzfmgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfmg
    public final JSONObject zza(View view) {
        JSONObject jSONObjectZza = zzfmq.zza(0, 0, 0, 0);
        int iZzb = zzfmt.zzb();
        int i = iZzb - 1;
        if (iZzb == 0) {
            throw null;
        }
        try {
            jSONObjectZza.put("noOutputDevice", i == 0);
        } catch (JSONException e2) {
            zzfmr.zza("Error with setting output device status", e2);
        }
        return jSONObjectZza;
    }

    @Override // com.google.android.gms.internal.ads.zzfmg
    public final void zzb(View view, JSONObject jSONObject, zzfmf zzfmfVar, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        zzflx zzflxVarZza = zzflx.zza();
        if (zzflxVarZza != null) {
            Collection collectionZzb = zzflxVarZza.zzb();
            int size = collectionZzb.size();
            IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
            Iterator it = collectionZzb.iterator();
            while (it.hasNext()) {
                View viewZzf = ((zzflj) it.next()).zzf();
                if (viewZzf != null && viewZzf.isAttachedToWindow() && viewZzf.isShown()) {
                    View view2 = viewZzf;
                    while (true) {
                        if (view2 == null) {
                            View rootView = viewZzf.getRootView();
                            if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                identityHashMap.put(rootView, rootView);
                                float fZza = zzfmw.zza(rootView);
                                int size2 = arrayList.size();
                                while (size2 > 0) {
                                    int i = size2 - 1;
                                    if (zzfmw.zza((View) arrayList.get(i)) <= fZza) {
                                        break;
                                    } else {
                                        size2 = i;
                                    }
                                }
                                arrayList.add(size2, rootView);
                            }
                        } else if (view2.getAlpha() != 0.0f) {
                            Object parent = view2.getParent();
                            view2 = parent instanceof View ? (View) parent : null;
                        }
                    }
                }
            }
        }
        int size3 = arrayList.size();
        for (int i2 = 0; i2 < size3; i2++) {
            zzfmfVar.zza((View) arrayList.get(i2), this.zza, jSONObject, z2);
        }
    }
}
