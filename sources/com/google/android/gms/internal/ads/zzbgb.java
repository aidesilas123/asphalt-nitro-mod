package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbgb extends NativeAd.AdChoicesInfo {
    private final zzbga zza;
    private final List zzb = new ArrayList();
    private String zzc;

    public zzbgb(zzbga zzbgaVar) {
        IBinder iBinder;
        this.zza = zzbgaVar;
        try {
            this.zzc = zzbgaVar.zzg();
        } catch (RemoteException e2) {
            zzcbn.zzh("", e2);
            this.zzc = "";
        }
        try {
            for (Object obj : zzbgaVar.zzh()) {
                zzbgi zzbggVar = null;
                if ((obj instanceof IBinder) && (iBinder = (IBinder) obj) != null) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    zzbggVar = iInterfaceQueryLocalInterface instanceof zzbgi ? (zzbgi) iInterfaceQueryLocalInterface : new zzbgg(iBinder);
                }
                if (zzbggVar != null) {
                    this.zzb.add(new zzbgj(zzbggVar));
                }
            }
        } catch (RemoteException e3) {
            zzcbn.zzh("", e3);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.zzc;
    }
}
