package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbsu extends NativeAd.AdChoicesInfo {
    private final List zza = new ArrayList();
    private String zzb;

    public zzbsu(zzbga zzbgaVar) {
        try {
            this.zzb = zzbgaVar.zzg();
        } catch (RemoteException e2) {
            zzcbn.zzh("", e2);
            this.zzb = "";
        }
        try {
            for (Object obj : zzbgaVar.zzh()) {
                zzbgi zzbgiVarZzg = obj instanceof IBinder ? zzbgh.zzg((IBinder) obj) : null;
                if (zzbgiVarZzg != null) {
                    this.zza.add(new zzbsw(zzbgiVarZzg));
                }
            }
        } catch (RemoteException e3) {
            zzcbn.zzh("", e3);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.zzb;
    }
}
