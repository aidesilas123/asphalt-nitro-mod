package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaeo extends zzaeq {
    private long zzb;
    private long[] zzc;
    private long[] zzd;

    public zzaeo() {
        super(new zzacd());
        this.zzb = C.TIME_UNSET;
        this.zzc = new long[0];
        this.zzd = new long[0];
    }

    private static Double zzg(zzfj zzfjVar) {
        return Double.valueOf(Double.longBitsToDouble(zzfjVar.zzs()));
    }

    @Nullable
    private static Object zzh(zzfj zzfjVar, int i) {
        if (i == 0) {
            return zzg(zzfjVar);
        }
        if (i == 1) {
            return Boolean.valueOf(zzfjVar.zzl() == 1);
        }
        if (i == 2) {
            return zzi(zzfjVar);
        }
        if (i != 3) {
            if (i == 8) {
                return zzj(zzfjVar);
            }
            if (i != 10) {
                if (i != 11) {
                    return null;
                }
                Date date = new Date((long) zzg(zzfjVar).doubleValue());
                zzfjVar.zzH(2);
                return date;
            }
            int iZzo = zzfjVar.zzo();
            ArrayList arrayList = new ArrayList(iZzo);
            for (int i2 = 0; i2 < iZzo; i2++) {
                Object objZzh = zzh(zzfjVar, zzfjVar.zzl());
                if (objZzh != null) {
                    arrayList.add(objZzh);
                }
            }
            return arrayList;
        }
        HashMap map = new HashMap();
        while (true) {
            String strZzi = zzi(zzfjVar);
            int iZzl = zzfjVar.zzl();
            if (iZzl == 9) {
                return map;
            }
            Object objZzh2 = zzh(zzfjVar, iZzl);
            if (objZzh2 != null) {
                map.put(strZzi, objZzh2);
            }
        }
    }

    private static String zzi(zzfj zzfjVar) {
        int iZzp = zzfjVar.zzp();
        int iZzc = zzfjVar.zzc();
        zzfjVar.zzH(iZzp);
        return new String(zzfjVar.zzI(), iZzc, iZzp);
    }

    private static HashMap zzj(zzfj zzfjVar) {
        int iZzo = zzfjVar.zzo();
        HashMap map = new HashMap(iZzo);
        for (int i = 0; i < iZzo; i++) {
            String strZzi = zzi(zzfjVar);
            Object objZzh = zzh(zzfjVar, zzfjVar.zzl());
            if (objZzh != null) {
                map.put(strZzi, objZzh);
            }
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzaeq
    protected final boolean zza(zzfj zzfjVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaeq
    protected final boolean zzb(zzfj zzfjVar, long j) {
        if (zzfjVar.zzl() == 2 && "onMetaData".equals(zzi(zzfjVar)) && zzfjVar.zza() != 0 && zzfjVar.zzl() == 8) {
            HashMap mapZzj = zzj(zzfjVar);
            Object obj = mapZzj.get("duration");
            if (obj instanceof Double) {
                double dDoubleValue = ((Double) obj).doubleValue();
                if (dDoubleValue > 0.0d) {
                    this.zzb = (long) (dDoubleValue * 1000000.0d);
                }
            }
            Object obj2 = mapZzj.get("keyframes");
            if (obj2 instanceof Map) {
                Map map = (Map) obj2;
                Object obj3 = map.get("filepositions");
                Object obj4 = map.get("times");
                if ((obj3 instanceof List) && (obj4 instanceof List)) {
                    List list = (List) obj3;
                    List list2 = (List) obj4;
                    int size = list2.size();
                    this.zzc = new long[size];
                    this.zzd = new long[size];
                    for (int i = 0; i < size; i++) {
                        Object obj5 = list.get(i);
                        Object obj6 = list2.get(i);
                        if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                            this.zzc = new long[0];
                            this.zzd = new long[0];
                            break;
                        }
                        this.zzc[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                        this.zzd[i] = ((Double) obj5).longValue();
                    }
                }
            }
        }
        return false;
    }

    public final long zzc() {
        return this.zzb;
    }

    public final long[] zzd() {
        return this.zzd;
    }

    public final long[] zze() {
        return this.zzc;
    }
}
