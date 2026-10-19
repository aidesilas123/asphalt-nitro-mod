package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzedu extends zzedv {
    private static final SparseArray zzb;
    private final Context zzc;
    private final zzcxl zzd;
    private final TelephonyManager zze;
    private final zzedm zzf;
    private int zzg;

    static {
        SparseArray sparseArray = new SparseArray();
        zzb = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzbbc.CONNECTED);
        int iOrdinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        zzbbc zzbbcVar = zzbbc.CONNECTING;
        sparseArray.put(iOrdinal, zzbbcVar);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzbbcVar);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzbbcVar);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzbbc.DISCONNECTING);
        int iOrdinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        zzbbc zzbbcVar2 = zzbbc.DISCONNECTED;
        sparseArray.put(iOrdinal2, zzbbcVar2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzbbcVar2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzbbcVar2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzbbcVar2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzbbcVar2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzbbc.SUSPENDED);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzbbcVar);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzbbcVar);
    }

    zzedu(Context context, zzcxl zzcxlVar, zzedm zzedmVar, zzedi zzediVar, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        super(zzediVar, zzgVar);
        this.zzc = context;
        this.zzd = zzcxlVar;
        this.zzf = zzedmVar;
        this.zze = (TelephonyManager) context.getSystemService("phone");
    }

    static /* bridge */ /* synthetic */ zzbat zza(zzedu zzeduVar, Bundle bundle) {
        zzbam zzbamVarZza = zzbat.zza();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        int i3 = 2;
        if (i == -1) {
            zzeduVar.zzg = 2;
        } else {
            zzeduVar.zzg = 1;
            if (i == 0) {
                zzbamVarZza.zzb(2);
            } else if (i != 1) {
                zzbamVarZza.zzb(1);
            } else {
                zzbamVarZza.zzb(3);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    i3 = 3;
                    break;
                case 13:
                    i3 = 5;
                    break;
                default:
                    i3 = 1;
                    break;
            }
            zzbamVarZza.zza(i3);
        }
        return (zzbat) zzbamVarZza.zzal();
    }

    static /* bridge */ /* synthetic */ zzbbc zzb(zzedu zzeduVar, Bundle bundle) {
        return (zzbbc) zzb.get(zzffc.zza(zzffc.zza(bundle, "device"), "network").getInt("active_network_state", -1), zzbbc.UNSPECIFIED);
    }

    static /* bridge */ /* synthetic */ byte[] zze(zzedu zzeduVar, boolean z, ArrayList arrayList, zzbat zzbatVar, zzbbc zzbbcVar) {
        zzbax zzbaxVarZzg = zzbay.zzg();
        zzbaxVarZzg.zza(arrayList);
        zzbaxVarZzg.zzi(zzg(Settings.Global.getInt(zzeduVar.zzc.getContentResolver(), "airplane_mode_on", 0) != 0));
        zzbaxVarZzg.zzj(com.google.android.gms.ads.internal.zzt.zzq().zzj(zzeduVar.zzc, zzeduVar.zze));
        zzbaxVarZzg.zzf(zzeduVar.zzf.zze());
        zzbaxVarZzg.zze(zzeduVar.zzf.zzb());
        zzbaxVarZzg.zzb(zzeduVar.zzf.zza());
        zzbaxVarZzg.zzc(zzbbcVar);
        zzbaxVarZzg.zzd(zzbatVar);
        zzbaxVarZzg.zzk(zzeduVar.zzg);
        zzbaxVarZzg.zzl(zzg(z));
        zzbaxVarZzg.zzh(zzeduVar.zzf.zzd());
        zzbaxVarZzg.zzg(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis());
        zzbaxVarZzg.zzm(zzg(Settings.Global.getInt(zzeduVar.zzc.getContentResolver(), "wifi_on", 0) != 0));
        return ((zzbay) zzbaxVarZzg.zzal()).zzax();
    }

    private static final int zzg(boolean z) {
        return z ? 2 : 1;
    }

    public final void zzd(boolean z) {
        zzgbb.zzr(this.zzd.zzb(), new zzedt(this, z), zzcca.zzf);
    }
}
