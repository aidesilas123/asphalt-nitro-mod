package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.rewarded.RewardItem;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbxt implements RewardItem {
    private final zzbxg zza;

    public zzbxt(zzbxg zzbxgVar) {
        this.zza = zzbxgVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        zzbxg zzbxgVar = this.zza;
        if (zzbxgVar != null) {
            try {
                return zzbxgVar.zze();
            } catch (RemoteException e2) {
                zzcbn.zzk("Could not forward getAmount to RewardItem", e2);
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    @Nullable
    public final String getType() {
        zzbxg zzbxgVar = this.zza;
        if (zzbxgVar != null) {
            try {
                return zzbxgVar.zzf();
            } catch (RemoteException e2) {
                zzcbn.zzk("Could not forward getType to RewardItem", e2);
            }
        }
        return null;
    }
}
