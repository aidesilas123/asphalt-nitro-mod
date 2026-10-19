package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzpa;
import com.google.android.gms.internal.measurement.zzpp;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzlk extends zzkw {
    zzlk(zzli zzliVar) {
        super(zzliVar);
    }

    @WorkerThread
    static final boolean zzA(zzav zzavVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzavVar);
        Preconditions.checkNotNull(zzpVar);
        return (TextUtils.isEmpty(zzpVar.zzb) && TextUtils.isEmpty(zzpVar.zzq)) ? false : true;
    }

    static final com.google.android.gms.internal.measurement.zzfw zzB(com.google.android.gms.internal.measurement.zzfs zzfsVar, String str) {
        for (com.google.android.gms.internal.measurement.zzfw zzfwVar : zzfsVar.zzi()) {
            if (zzfwVar.zzg().equals(str)) {
                return zzfwVar;
            }
        }
        return null;
    }

    static final Object zzC(com.google.android.gms.internal.measurement.zzfs zzfsVar, String str) {
        com.google.android.gms.internal.measurement.zzfw zzfwVarZzB = zzB(zzfsVar, str);
        if (zzfwVarZzB == null) {
            return null;
        }
        if (zzfwVarZzB.zzy()) {
            return zzfwVarZzB.zzh();
        }
        if (zzfwVarZzB.zzw()) {
            return Long.valueOf(zzfwVarZzB.zzd());
        }
        if (zzfwVarZzB.zzu()) {
            return Double.valueOf(zzfwVarZzB.zza());
        }
        if (zzfwVarZzB.zzc() <= 0) {
            return null;
        }
        List<com.google.android.gms.internal.measurement.zzfw> listZzi = zzfwVarZzB.zzi();
        ArrayList arrayList = new ArrayList();
        for (com.google.android.gms.internal.measurement.zzfw zzfwVar : listZzi) {
            if (zzfwVar != null) {
                Bundle bundle = new Bundle();
                for (com.google.android.gms.internal.measurement.zzfw zzfwVar2 : zzfwVar.zzi()) {
                    if (zzfwVar2.zzy()) {
                        bundle.putString(zzfwVar2.zzg(), zzfwVar2.zzh());
                    } else if (zzfwVar2.zzw()) {
                        bundle.putLong(zzfwVar2.zzg(), zzfwVar2.zzd());
                    } else if (zzfwVar2.zzu()) {
                        bundle.putDouble(zzfwVar2.zzg(), zzfwVar2.zza());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    private final void zzD(StringBuilder sb, int i, List list) {
        if (list == null) {
            return;
        }
        int i2 = i + 1;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.google.android.gms.internal.measurement.zzfw zzfwVar = (com.google.android.gms.internal.measurement.zzfw) it.next();
            if (zzfwVar != null) {
                zzF(sb, i2);
                sb.append("param {\n");
                zzI(sb, i2, "name", zzfwVar.zzx() ? this.zzs.zzj().zze(zzfwVar.zzg()) : null);
                zzI(sb, i2, "string_value", zzfwVar.zzy() ? zzfwVar.zzh() : null);
                zzI(sb, i2, "int_value", zzfwVar.zzw() ? Long.valueOf(zzfwVar.zzd()) : null);
                zzI(sb, i2, "double_value", zzfwVar.zzu() ? Double.valueOf(zzfwVar.zza()) : null);
                if (zzfwVar.zzc() > 0) {
                    zzD(sb, i2, zzfwVar.zzi());
                }
                zzF(sb, i2);
                sb.append("}\n");
            }
        }
    }

    private final void zzE(StringBuilder sb, int i, com.google.android.gms.internal.measurement.zzel zzelVar) {
        String str;
        if (zzelVar == null) {
            return;
        }
        zzF(sb, i);
        sb.append("filter {\n");
        if (zzelVar.zzh()) {
            zzI(sb, i, "complement", Boolean.valueOf(zzelVar.zzg()));
        }
        if (zzelVar.zzj()) {
            zzI(sb, i, "param_name", this.zzs.zzj().zze(zzelVar.zze()));
        }
        if (zzelVar.zzk()) {
            int i2 = i + 1;
            com.google.android.gms.internal.measurement.zzex zzexVarZzd = zzelVar.zzd();
            if (zzexVarZzd != null) {
                zzF(sb, i2);
                sb.append("string_filter {\n");
                if (zzexVarZzd.zzi()) {
                    switch (zzexVarZzd.zzj()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    zzI(sb, i2, "match_type", str);
                }
                if (zzexVarZzd.zzh()) {
                    zzI(sb, i2, "expression", zzexVarZzd.zzd());
                }
                if (zzexVarZzd.zzg()) {
                    zzI(sb, i2, "case_sensitive", Boolean.valueOf(zzexVarZzd.zzf()));
                }
                if (zzexVarZzd.zza() > 0) {
                    zzF(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String str2 : zzexVarZzd.zze()) {
                        zzF(sb, i2 + 2);
                        sb.append(str2);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                zzF(sb, i2);
                sb.append("}\n");
            }
        }
        if (zzelVar.zzi()) {
            zzJ(sb, i + 1, "number_filter", zzelVar.zzc());
        }
        zzF(sb, i);
        sb.append("}\n");
    }

    private static final void zzF(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    private static final String zzG(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    private static final void zzH(StringBuilder sb, int i, String str, com.google.android.gms.internal.measurement.zzgh zzghVar) {
        if (zzghVar == null) {
            return;
        }
        zzF(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zzghVar.zzb() != 0) {
            zzF(sb, 4);
            sb.append("results: ");
            int i2 = 0;
            for (Long l : zzghVar.zzk()) {
                int i3 = i2 + 1;
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i2 = i3;
            }
            sb.append('\n');
        }
        if (zzghVar.zzd() != 0) {
            zzF(sb, 4);
            sb.append("status: ");
            int i4 = 0;
            for (Long l2 : zzghVar.zzn()) {
                int i5 = i4 + 1;
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i4 = i5;
            }
            sb.append('\n');
        }
        if (zzghVar.zza() != 0) {
            zzF(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i6 = 0;
            for (com.google.android.gms.internal.measurement.zzfq zzfqVar : zzghVar.zzj()) {
                int i7 = i6 + 1;
                if (i6 != 0) {
                    sb.append(", ");
                }
                sb.append(zzfqVar.zzh() ? Integer.valueOf(zzfqVar.zza()) : null);
                sb.append(CertificateUtil.DELIMITER);
                sb.append(zzfqVar.zzg() ? Long.valueOf(zzfqVar.zzb()) : null);
                i6 = i7;
            }
            sb.append("}\n");
        }
        if (zzghVar.zzc() != 0) {
            zzF(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i8 = 0;
            for (com.google.android.gms.internal.measurement.zzgj zzgjVar : zzghVar.zzm()) {
                int i9 = i8 + 1;
                if (i8 != 0) {
                    sb.append(", ");
                }
                sb.append(zzgjVar.zzi() ? Integer.valueOf(zzgjVar.zzb()) : null);
                sb.append(": [");
                Iterator it = zzgjVar.zzf().iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    long jLongValue = ((Long) it.next()).longValue();
                    int i11 = i10 + 1;
                    if (i10 != 0) {
                        sb.append(", ");
                    }
                    sb.append(jLongValue);
                    i10 = i11;
                }
                sb.append(o2.i.f6491e);
                i8 = i9;
            }
            sb.append("}\n");
        }
        zzF(sb, 3);
        sb.append("}\n");
    }

    private static final void zzI(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        zzF(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    private static final void zzJ(StringBuilder sb, int i, String str, com.google.android.gms.internal.measurement.zzeq zzeqVar) {
        if (zzeqVar == null) {
            return;
        }
        zzF(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (zzeqVar.zzg()) {
            int iZzm = zzeqVar.zzm();
            zzI(sb, i, "comparison_type", iZzm != 1 ? iZzm != 2 ? iZzm != 3 ? iZzm != 4 ? "BETWEEN" : "EQUAL" : "GREATER_THAN" : "LESS_THAN" : "UNKNOWN_COMPARISON_TYPE");
        }
        if (zzeqVar.zzi()) {
            zzI(sb, i, "match_as_float", Boolean.valueOf(zzeqVar.zzf()));
        }
        if (zzeqVar.zzh()) {
            zzI(sb, i, "comparison_value", zzeqVar.zzc());
        }
        if (zzeqVar.zzk()) {
            zzI(sb, i, "min_comparison_value", zzeqVar.zze());
        }
        if (zzeqVar.zzj()) {
            zzI(sb, i, "max_comparison_value", zzeqVar.zzd());
        }
        zzF(sb, i);
        sb.append("}\n");
    }

    static int zza(com.google.android.gms.internal.measurement.zzgb zzgbVar, String str) {
        if (zzgbVar != null) {
            for (int i = 0; i < zzgbVar.zzb(); i++) {
                if (str.equals(zzgbVar.zzap(i).zzf())) {
                    return i;
                }
            }
        }
        return -1;
    }

    static com.google.android.gms.internal.measurement.zzli zzl(com.google.android.gms.internal.measurement.zzli zzliVar, byte[] bArr) throws com.google.android.gms.internal.measurement.zzkm {
        com.google.android.gms.internal.measurement.zzjo zzjoVarZzb = com.google.android.gms.internal.measurement.zzjo.zzb();
        return zzjoVarZzb != null ? zzliVar.zzaA(bArr, zzjoVarZzb) : zzliVar.zzaz(bArr);
    }

    static List zzr(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i * 64) + i2;
                if (i3 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i3)) {
                    j |= 1 << i2;
                }
            }
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    static boolean zzv(List list, int i) {
        if (i < list.size() * 64) {
            return ((1 << (i % 64)) & ((Long) list.get(i / 64)).longValue()) != 0;
        }
        return false;
    }

    static boolean zzx(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    static final void zzz(com.google.android.gms.internal.measurement.zzfr zzfrVar, String str, Object obj) {
        List listZzp = zzfrVar.zzp();
        int i = 0;
        while (true) {
            if (i >= listZzp.size()) {
                i = -1;
                break;
            } else if (str.equals(((com.google.android.gms.internal.measurement.zzfw) listZzp.get(i)).zzg())) {
                break;
            } else {
                i++;
            }
        }
        com.google.android.gms.internal.measurement.zzfv zzfvVarZze = com.google.android.gms.internal.measurement.zzfw.zze();
        zzfvVarZze.zzj(str);
        if (obj instanceof Long) {
            zzfvVarZze.zzi(((Long) obj).longValue());
        }
        if (i >= 0) {
            zzfrVar.zzj(i, zzfvVarZze);
        } else {
            zzfrVar.zze(zzfvVarZze);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    protected final boolean zzb() {
        return false;
    }

    @WorkerThread
    final long zzd(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        this.zzs.zzv().zzg();
        MessageDigest messageDigestZzF = zzlp.zzF();
        if (messageDigestZzF != null) {
            return zzlp.zzp(messageDigestZzF.digest(bArr));
        }
        this.zzs.zzaz().zzd().zza("Failed to get MD5");
        return 0L;
    }

    final Bundle zzf(Map map, boolean z) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z) {
                zzpa.zzc();
                if (this.zzs.zzf().zzs(null, zzel.zzam)) {
                    ArrayList arrayList = (ArrayList) obj;
                    ArrayList arrayList2 = new ArrayList();
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        arrayList2.add(zzf((Map) arrayList.get(i), false));
                    }
                    bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
                } else {
                    ArrayList arrayList3 = (ArrayList) obj;
                    ArrayList<? extends Parcelable> arrayList4 = new ArrayList<>();
                    int size2 = arrayList3.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        arrayList4.add(zzf((Map) arrayList3.get(i2), false));
                    }
                    bundle.putParcelableArrayList(str, arrayList4);
                }
            }
        }
        return bundle;
    }

    final Parcelable zzh(byte[] bArr, Parcelable.Creator creator) {
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            return (Parcelable) creator.createFromParcel(parcelObtain);
        } catch (SafeParcelReader.ParseException unused) {
            this.zzs.zzaz().zzd().zza("Failed to load parcelable from buffer");
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    final zzav zzi(com.google.android.gms.internal.measurement.zzaa zzaaVar) {
        Object obj;
        Bundle bundleZzf = zzf(zzaaVar.zze(), true);
        String string = (!bundleZzf.containsKey("_o") || (obj = bundleZzf.get("_o")) == null) ? MBridgeConstans.DYNAMIC_VIEW_WX_APP : obj.toString();
        String strZzb = zzhf.zzb(zzaaVar.zzd());
        if (strZzb == null) {
            strZzb = zzaaVar.zzd();
        }
        return new zzav(strZzb, new zzat(bundleZzf), string, zzaaVar.zza());
    }

    final com.google.android.gms.internal.measurement.zzfs zzj(zzaq zzaqVar) {
        com.google.android.gms.internal.measurement.zzfr zzfrVarZze = com.google.android.gms.internal.measurement.zzfs.zze();
        zzfrVarZze.zzl(zzaqVar.zze);
        zzas zzasVar = new zzas(zzaqVar.zzf);
        while (zzasVar.hasNext()) {
            String next = zzasVar.next();
            com.google.android.gms.internal.measurement.zzfv zzfvVarZze = com.google.android.gms.internal.measurement.zzfw.zze();
            zzfvVarZze.zzj(next);
            Object objZzf = zzaqVar.zzf.zzf(next);
            Preconditions.checkNotNull(objZzf);
            zzt(zzfvVarZze, objZzf);
            zzfrVarZze.zze(zzfvVarZze);
        }
        return (com.google.android.gms.internal.measurement.zzfs) zzfrVarZze.zzaE();
    }

    final String zzm(com.google.android.gms.internal.measurement.zzga zzgaVar) {
        if (zzgaVar == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (com.google.android.gms.internal.measurement.zzgc zzgcVar : zzgaVar.zzd()) {
            if (zzgcVar != null) {
                zzF(sb, 1);
                sb.append("bundle {\n");
                if (zzgcVar.zzbm()) {
                    zzI(sb, 1, "protocol_version", Integer.valueOf(zzgcVar.zzd()));
                }
                zzpp.zzc();
                if (this.zzs.zzf().zzs(null, zzel.zzaH) && zzgcVar.zzbp()) {
                    zzI(sb, 1, "session_stitching_token", zzgcVar.zzL());
                }
                zzI(sb, 1, "platform", zzgcVar.zzJ());
                if (zzgcVar.zzbi()) {
                    zzI(sb, 1, "gmp_version", Long.valueOf(zzgcVar.zzn()));
                }
                if (zzgcVar.zzbt()) {
                    zzI(sb, 1, "uploading_gmp_version", Long.valueOf(zzgcVar.zzs()));
                }
                if (zzgcVar.zzbg()) {
                    zzI(sb, 1, "dynamite_version", Long.valueOf(zzgcVar.zzk()));
                }
                if (zzgcVar.zzbd()) {
                    zzI(sb, 1, "config_version", Long.valueOf(zzgcVar.zzi()));
                }
                zzI(sb, 1, "gmp_app_id", zzgcVar.zzG());
                zzI(sb, 1, "admob_app_id", zzgcVar.zzx());
                zzI(sb, 1, "app_id", zzgcVar.zzy());
                zzI(sb, 1, "app_version", zzgcVar.zzB());
                if (zzgcVar.zzbb()) {
                    zzI(sb, 1, "app_version_major", Integer.valueOf(zzgcVar.zza()));
                }
                zzI(sb, 1, "firebase_instance_id", zzgcVar.zzF());
                if (zzgcVar.zzbf()) {
                    zzI(sb, 1, "dev_cert_hash", Long.valueOf(zzgcVar.zzj()));
                }
                zzI(sb, 1, "app_store", zzgcVar.zzA());
                if (zzgcVar.zzbs()) {
                    zzI(sb, 1, "upload_timestamp_millis", Long.valueOf(zzgcVar.zzr()));
                }
                if (zzgcVar.zzbq()) {
                    zzI(sb, 1, "start_timestamp_millis", Long.valueOf(zzgcVar.zzq()));
                }
                if (zzgcVar.zzbh()) {
                    zzI(sb, 1, "end_timestamp_millis", Long.valueOf(zzgcVar.zzm()));
                }
                if (zzgcVar.zzbl()) {
                    zzI(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzgcVar.zzp()));
                }
                if (zzgcVar.zzbk()) {
                    zzI(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzgcVar.zzo()));
                }
                zzI(sb, 1, "app_instance_id", zzgcVar.zzz());
                zzI(sb, 1, "resettable_device_id", zzgcVar.zzK());
                zzI(sb, 1, "ds_id", zzgcVar.zzE());
                if (zzgcVar.zzbj()) {
                    zzI(sb, 1, "limited_ad_tracking", Boolean.valueOf(zzgcVar.zzaY()));
                }
                zzI(sb, 1, "os_version", zzgcVar.zzI());
                zzI(sb, 1, "device_model", zzgcVar.zzD());
                zzI(sb, 1, "user_default_language", zzgcVar.zzM());
                if (zzgcVar.zzbr()) {
                    zzI(sb, 1, "time_zone_offset_minutes", Integer.valueOf(zzgcVar.zzf()));
                }
                if (zzgcVar.zzbc()) {
                    zzI(sb, 1, "bundle_sequential_index", Integer.valueOf(zzgcVar.zzb()));
                }
                if (zzgcVar.zzbo()) {
                    zzI(sb, 1, "service_upload", Boolean.valueOf(zzgcVar.zzaZ()));
                }
                zzI(sb, 1, "health_monitor", zzgcVar.zzH());
                if (!this.zzs.zzf().zzs(null, zzel.zzah) && zzgcVar.zzba() && zzgcVar.zzh() != 0) {
                    zzI(sb, 1, "android_id", Long.valueOf(zzgcVar.zzh()));
                }
                if (zzgcVar.zzbn()) {
                    zzI(sb, 1, "retry_counter", Integer.valueOf(zzgcVar.zze()));
                }
                if (zzgcVar.zzbe()) {
                    zzI(sb, 1, "consent_signals", zzgcVar.zzC());
                }
                List<com.google.android.gms.internal.measurement.zzgl> listZzP = zzgcVar.zzP();
                if (listZzP != null) {
                    for (com.google.android.gms.internal.measurement.zzgl zzglVar : listZzP) {
                        if (zzglVar != null) {
                            zzF(sb, 2);
                            sb.append("user_property {\n");
                            zzI(sb, 2, "set_timestamp_millis", zzglVar.zzs() ? Long.valueOf(zzglVar.zzc()) : null);
                            zzI(sb, 2, "name", this.zzs.zzj().zzf(zzglVar.zzf()));
                            zzI(sb, 2, "string_value", zzglVar.zzg());
                            zzI(sb, 2, "int_value", zzglVar.zzr() ? Long.valueOf(zzglVar.zzb()) : null);
                            zzI(sb, 2, "double_value", zzglVar.zzq() ? Double.valueOf(zzglVar.zza()) : null);
                            zzF(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.zzfo> listZzN = zzgcVar.zzN();
                if (listZzN != null) {
                    for (com.google.android.gms.internal.measurement.zzfo zzfoVar : listZzN) {
                        if (zzfoVar != null) {
                            zzF(sb, 2);
                            sb.append("audience_membership {\n");
                            if (zzfoVar.zzk()) {
                                zzI(sb, 2, "audience_id", Integer.valueOf(zzfoVar.zza()));
                            }
                            if (zzfoVar.zzm()) {
                                zzI(sb, 2, "new_audience", Boolean.valueOf(zzfoVar.zzj()));
                            }
                            zzH(sb, 2, "current_data", zzfoVar.zzd());
                            if (zzfoVar.zzn()) {
                                zzH(sb, 2, "previous_data", zzfoVar.zze());
                            }
                            zzF(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.zzfs> listZzO = zzgcVar.zzO();
                if (listZzO != null) {
                    for (com.google.android.gms.internal.measurement.zzfs zzfsVar : listZzO) {
                        if (zzfsVar != null) {
                            zzF(sb, 2);
                            sb.append("event {\n");
                            zzI(sb, 2, "name", this.zzs.zzj().zzd(zzfsVar.zzh()));
                            if (zzfsVar.zzu()) {
                                zzI(sb, 2, "timestamp_millis", Long.valueOf(zzfsVar.zzd()));
                            }
                            if (zzfsVar.zzt()) {
                                zzI(sb, 2, "previous_timestamp_millis", Long.valueOf(zzfsVar.zzc()));
                            }
                            if (zzfsVar.zzs()) {
                                zzI(sb, 2, "count", Integer.valueOf(zzfsVar.zza()));
                            }
                            if (zzfsVar.zzb() != 0) {
                                zzD(sb, 2, zzfsVar.zzi());
                            }
                            zzF(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                zzF(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    final String zzo(com.google.android.gms.internal.measurement.zzej zzejVar) {
        if (zzejVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (zzejVar.zzp()) {
            zzI(sb, 0, "filter_id", Integer.valueOf(zzejVar.zzb()));
        }
        zzI(sb, 0, "event_name", this.zzs.zzj().zzd(zzejVar.zzg()));
        String strZzG = zzG(zzejVar.zzk(), zzejVar.zzm(), zzejVar.zzn());
        if (!strZzG.isEmpty()) {
            zzI(sb, 0, "filter_type", strZzG);
        }
        if (zzejVar.zzo()) {
            zzJ(sb, 1, "event_count_filter", zzejVar.zzf());
        }
        if (zzejVar.zza() > 0) {
            sb.append("  filters {\n");
            Iterator it = zzejVar.zzh().iterator();
            while (it.hasNext()) {
                zzE(sb, 2, (com.google.android.gms.internal.measurement.zzel) it.next());
            }
        }
        zzF(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    final String zzp(com.google.android.gms.internal.measurement.zzes zzesVar) {
        if (zzesVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (zzesVar.zzj()) {
            zzI(sb, 0, "filter_id", Integer.valueOf(zzesVar.zza()));
        }
        zzI(sb, 0, "property_name", this.zzs.zzj().zzf(zzesVar.zze()));
        String strZzG = zzG(zzesVar.zzg(), zzesVar.zzh(), zzesVar.zzi());
        if (!strZzG.isEmpty()) {
            zzI(sb, 0, "filter_type", strZzG);
        }
        zzE(sb, 1, zzesVar.zzb());
        sb.append("}\n");
        return sb.toString();
    }

    final List zzq(List list, List list2) {
        int i;
        ArrayList arrayList = new ArrayList(list);
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() < 0) {
                this.zzs.zzaz().zzk().zzb("Ignoring negative bit index to be cleared", num);
            } else {
                int iIntValue = num.intValue() / 64;
                if (iIntValue >= arrayList.size()) {
                    this.zzs.zzaz().zzk().zzc("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(iIntValue, Long.valueOf(((Long) arrayList.get(iIntValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i2 = size2;
            i = size;
            size = i2;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x004b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0051 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x000d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x000d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.Map zzs(android.os.Bundle r11, boolean r12) {
        /*
            r10 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.Set r1 = r11.keySet()
            java.util.Iterator r1 = r1.iterator()
        Ld:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto La6
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r3 = r11.get(r2)
            com.google.android.gms.internal.measurement.zzpa.zzc()
            com.google.android.gms.measurement.internal.zzgi r4 = r10.zzs
            com.google.android.gms.measurement.internal.zzaf r4 = r4.zzf()
            r5 = 0
            com.google.android.gms.measurement.internal.zzek r6 = com.google.android.gms.measurement.internal.zzel.zzam
            boolean r4 = r4.zzs(r5, r6)
            if (r4 == 0) goto L3c
            boolean r4 = r3 instanceof android.os.Parcelable[]
            if (r4 != 0) goto L4f
            boolean r4 = r3 instanceof java.util.ArrayList
            if (r4 != 0) goto L4f
            boolean r4 = r3 instanceof android.os.Bundle
            if (r4 == 0) goto L49
            goto L4f
        L3c:
            boolean r4 = r3 instanceof android.os.Bundle[]
            if (r4 != 0) goto L4f
            boolean r4 = r3 instanceof java.util.ArrayList
            if (r4 != 0) goto L4f
            boolean r4 = r3 instanceof android.os.Bundle
            if (r4 == 0) goto L49
            goto L4f
        L49:
            if (r3 == 0) goto Ld
            r0.put(r2, r3)
            goto Ld
        L4f:
            if (r12 == 0) goto Ld
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            boolean r5 = r3 instanceof android.os.Parcelable[]
            r6 = 0
            if (r5 == 0) goto L73
            android.os.Parcelable[] r3 = (android.os.Parcelable[]) r3
            int r5 = r3.length
            r7 = 0
        L5f:
            if (r7 >= r5) goto La1
            r8 = r3[r7]
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L70
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.Map r8 = r10.zzs(r8, r6)
            r4.add(r8)
        L70:
            int r7 = r7 + 1
            goto L5f
        L73:
            boolean r5 = r3 instanceof java.util.ArrayList
            if (r5 == 0) goto L94
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r5 = r3.size()
            r7 = 0
        L7e:
            if (r7 >= r5) goto La1
            java.lang.Object r8 = r3.get(r7)
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L91
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.Map r8 = r10.zzs(r8, r6)
            r4.add(r8)
        L91:
            int r7 = r7 + 1
            goto L7e
        L94:
            boolean r5 = r3 instanceof android.os.Bundle
            if (r5 == 0) goto La1
            android.os.Bundle r3 = (android.os.Bundle) r3
            java.util.Map r3 = r10.zzs(r3, r6)
            r4.add(r3)
        La1:
            r0.put(r2, r4)
            goto Ld
        La6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlk.zzs(android.os.Bundle, boolean):java.util.Map");
    }

    final void zzt(com.google.android.gms.internal.measurement.zzfv zzfvVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzfvVar.zzg();
        zzfvVar.zze();
        zzfvVar.zzd();
        zzfvVar.zzf();
        if (obj instanceof String) {
            zzfvVar.zzk((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzfvVar.zzi(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            zzfvVar.zzh(((Double) obj).doubleValue());
            return;
        }
        if (!(obj instanceof Bundle[])) {
            this.zzs.zzaz().zzd().zzb("Ignoring invalid (type) event param value", obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                com.google.android.gms.internal.measurement.zzfv zzfvVarZze = com.google.android.gms.internal.measurement.zzfw.zze();
                for (String str : bundle.keySet()) {
                    com.google.android.gms.internal.measurement.zzfv zzfvVarZze2 = com.google.android.gms.internal.measurement.zzfw.zze();
                    zzfvVarZze2.zzj(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        zzfvVarZze2.zzi(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        zzfvVarZze2.zzk((String) obj2);
                    } else if (obj2 instanceof Double) {
                        zzfvVarZze2.zzh(((Double) obj2).doubleValue());
                    }
                    zzfvVarZze.zzc(zzfvVarZze2);
                }
                if (zzfvVarZze.zza() > 0) {
                    arrayList.add((com.google.android.gms.internal.measurement.zzfw) zzfvVarZze.zzaE());
                }
            }
        }
        zzfvVar.zzb(arrayList);
    }

    final void zzu(com.google.android.gms.internal.measurement.zzgk zzgkVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzgkVar.zzc();
        zzgkVar.zzb();
        zzgkVar.zza();
        if (obj instanceof String) {
            zzgkVar.zzh((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzgkVar.zze(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzgkVar.zzd(((Double) obj).doubleValue());
        } else {
            this.zzs.zzaz().zzd().zzb("Ignoring invalid (type) user attribute value", obj);
        }
    }

    final boolean zzw(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(this.zzs.zzaw().currentTimeMillis() - j) > j2;
    }

    final byte[] zzy(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            this.zzs.zzaz().zzd().zzb("Failed to gzip content", e2);
            throw e2;
        }
    }
}
