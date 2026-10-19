package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.games.GamesActivityResultCodes;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeee {
    private final zzayp zza;
    private final Context zzb;
    private final zzedi zzc;
    private final zzcbt zzd;
    private final String zze;
    private final zzfje zzf;
    private final com.google.android.gms.ads.internal.util.zzg zzg = com.google.android.gms.ads.internal.zzt.zzo().zzi();

    public zzeee(Context context, zzcbt zzcbtVar, zzayp zzaypVar, zzedi zzediVar, String str, zzfje zzfjeVar) {
        this.zzb = context;
        this.zzd = zzcbtVar;
        this.zza = zzaypVar;
        this.zzc = zzediVar;
        this.zze = str;
        this.zzf = zzfjeVar;
    }

    private static final void zzc(SQLiteDatabase sQLiteDatabase, ArrayList arrayList) {
        int size = arrayList.size();
        long jZze = 0;
        for (int i = 0; i < size; i++) {
            zzbay zzbayVar = (zzbay) arrayList.get(i);
            if (zzbayVar.zzw() == 2 && zzbayVar.zze() > jZze) {
                jZze = zzbayVar.zze();
            }
        }
        if (jZze != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(jZze));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
    }

    final /* synthetic */ Void zza(boolean z, SQLiteDatabase sQLiteDatabase) throws Exception {
        if (z) {
            this.zzb.deleteDatabase("OfflineUpload.db");
            return null;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziv)).booleanValue()) {
            zzfjd zzfjdVarZzb = zzfjd.zzb("oa_upload");
            zzfjdVarZzb.zza("oa_failed_reqs", String.valueOf(zzedx.zza(sQLiteDatabase, 0)));
            zzfjdVarZzb.zza("oa_total_reqs", String.valueOf(zzedx.zza(sQLiteDatabase, 1)));
            zzfjdVarZzb.zza("oa_upload_time", String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            zzfjdVarZzb.zza("oa_last_successful_time", String.valueOf(zzedx.zzb(sQLiteDatabase, 2)));
            zzfjdVarZzb.zza("oa_session_id", this.zzg.zzQ() ? "" : this.zze);
            this.zzf.zzb(zzfjdVarZzb);
            ArrayList arrayListZzc = zzedx.zzc(sQLiteDatabase);
            zzc(sQLiteDatabase, arrayListZzc);
            int size = arrayListZzc.size();
            for (int i = 0; i < size; i++) {
                zzbay zzbayVar = (zzbay) arrayListZzc.get(i);
                com.google.android.gms.ads.internal.util.zzg zzgVar = this.zzg;
                zzfjd zzfjdVarZzb2 = zzfjd.zzb("oa_signals");
                zzfjdVarZzb2.zza("oa_session_id", zzgVar.zzQ() ? "" : this.zze);
                zzbat zzbatVarZzf = zzbayVar.zzf();
                String strValueOf = zzbatVarZzf.zzf() ? String.valueOf(zzbatVarZzf.zzh() - 1) : UniquePlacementId.NO_ID;
                String string = zzfxi.zzb(zzbayVar.zzk(), new zzftn() { // from class: com.google.android.gms.internal.ads.zzeed
                    @Override // com.google.android.gms.internal.ads.zzftn
                    public final Object apply(Object obj) {
                        return ((zzazn) obj).name();
                    }
                }).toString();
                zzfjdVarZzb2.zza("oa_sig_ts", String.valueOf(zzbayVar.zze()));
                zzfjdVarZzb2.zza("oa_sig_status", String.valueOf(zzbayVar.zzw() - 1));
                zzfjdVarZzb2.zza("oa_sig_resp_lat", String.valueOf(zzbayVar.zzd()));
                zzfjdVarZzb2.zza("oa_sig_render_lat", String.valueOf(zzbayVar.zzc()));
                zzfjdVarZzb2.zza("oa_sig_formats", string);
                zzfjdVarZzb2.zza("oa_sig_nw_type", strValueOf);
                zzfjdVarZzb2.zza("oa_sig_wifi", String.valueOf(zzbayVar.zzx() - 1));
                zzfjdVarZzb2.zza("oa_sig_airplane", String.valueOf(zzbayVar.zzt() - 1));
                zzfjdVarZzb2.zza("oa_sig_data", String.valueOf(zzbayVar.zzu() - 1));
                zzfjdVarZzb2.zza("oa_sig_nw_resp", String.valueOf(zzbayVar.zza()));
                zzfjdVarZzb2.zza("oa_sig_offline", String.valueOf(zzbayVar.zzv() - 1));
                zzfjdVarZzb2.zza("oa_sig_nw_state", String.valueOf(zzbayVar.zzj().zza()));
                if (zzbatVarZzf.zze() && zzbatVarZzf.zzf() && zzbatVarZzf.zzh() == 2) {
                    zzfjdVarZzb2.zza("oa_sig_cell_type", String.valueOf(zzbatVarZzf.zzg() - 1));
                }
                this.zzf.zzb(zzfjdVarZzb2);
            }
        } else {
            ArrayList arrayListZzc2 = zzedx.zzc(sQLiteDatabase);
            Context context = this.zzb;
            zzbaz zzbazVarZza = zzbbd.zza();
            zzbazVarZza.zzb(context.getPackageName());
            zzbazVarZza.zzd(Build.MODEL);
            zzbazVarZza.zze(zzedx.zza(sQLiteDatabase, 0));
            zzbazVarZza.zza(arrayListZzc2);
            zzbazVarZza.zzg(zzedx.zza(sQLiteDatabase, 1));
            zzbazVarZza.zzc(zzedx.zza(sQLiteDatabase, 3));
            zzbazVarZza.zzh(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis());
            zzbazVarZza.zzf(zzedx.zzb(sQLiteDatabase, 2));
            final zzbbd zzbbdVar = (zzbbd) zzbazVarZza.zzal();
            zzc(sQLiteDatabase, arrayListZzc2);
            this.zza.zzb(new zzayo() { // from class: com.google.android.gms.internal.ads.zzeeb
                @Override // com.google.android.gms.internal.ads.zzayo
                public final void zza(zzbae zzbaeVar) {
                    zzbaeVar.zzi(zzbbdVar);
                }
            });
            zzcbt zzcbtVar = this.zzd;
            zzbbo zzbboVarZza = zzbbp.zza();
            zzbboVarZza.zza(zzcbtVar.zzb);
            zzbboVarZza.zzc(this.zzd.zzc);
            zzbboVarZza.zzb(true == this.zzd.zzd ? 0 : 2);
            final zzbbp zzbbpVar = (zzbbp) zzbboVarZza.zzal();
            this.zza.zzb(new zzayo() { // from class: com.google.android.gms.internal.ads.zzeec
                @Override // com.google.android.gms.internal.ads.zzayo
                public final void zza(zzbae zzbaeVar) {
                    zzazw zzazwVar = (zzazw) zzbaeVar.zzb().zzaB();
                    zzazwVar.zzb(zzbbpVar);
                    zzbaeVar.zzg(zzazwVar);
                }
            });
            this.zza.zzc(GamesActivityResultCodes.RESULT_APP_MISCONFIGURED);
        }
        zzedx.zzf(sQLiteDatabase);
        return null;
    }

    public final void zzb(final boolean z) {
        try {
            this.zzc.zza(new zzfhx() { // from class: com.google.android.gms.internal.ads.zzeea
                @Override // com.google.android.gms.internal.ads.zzfhx
                public final Object zza(Object obj) throws Exception {
                    this.zza.zza(z, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e2) {
            zzcbn.zzg("Error in offline signals database startup: ".concat(String.valueOf(e2.getMessage())));
        }
    }
}
