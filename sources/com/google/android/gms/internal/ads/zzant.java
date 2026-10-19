package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@VisibleForTesting
final class zzant {
    long zza;
    final String zzb;
    final String zzc;
    final long zzd;
    final long zze;
    final long zzf;
    final long zzg;
    final List zzh;

    /* JADX WARN: Illegal instructions before constructor call */
    zzant(String str, zzamj zzamjVar) {
        String str2 = zzamjVar.zzb;
        long j = zzamjVar.zzc;
        long j2 = zzamjVar.zzd;
        long j3 = zzamjVar.zze;
        long j4 = zzamjVar.zzf;
        List arrayList = zzamjVar.zzh;
        if (arrayList == null) {
            Map map = zzamjVar.zzg;
            arrayList = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(new zzams((String) entry.getKey(), (String) entry.getValue()));
            }
        }
        this(str, str2, j, j2, j3, j4, arrayList);
    }

    private zzant(String str, String str2, long j, long j2, long j3, long j4, List list) {
        this.zzb = str;
        this.zzc = true == "".equals(str2) ? null : str2;
        this.zzd = j;
        this.zze = j2;
        this.zzf = j3;
        this.zzg = j4;
        this.zzh = list;
    }

    static zzant zza(zzanu zzanuVar) throws IOException {
        if (zzanw.zze(zzanuVar) != 538247942) {
            throw new IOException();
        }
        String strZzh = zzanw.zzh(zzanuVar);
        String strZzh2 = zzanw.zzh(zzanuVar);
        long jZzf = zzanw.zzf(zzanuVar);
        long jZzf2 = zzanw.zzf(zzanuVar);
        long jZzf3 = zzanw.zzf(zzanuVar);
        long jZzf4 = zzanw.zzf(zzanuVar);
        int iZze = zzanw.zze(zzanuVar);
        if (iZze < 0) {
            throw new IOException("readHeaderList size=" + iZze);
        }
        List listEmptyList = iZze == 0 ? Collections.emptyList() : new ArrayList();
        for (int i = 0; i < iZze; i++) {
            listEmptyList.add(new zzams(zzanw.zzh(zzanuVar).intern(), zzanw.zzh(zzanuVar).intern()));
        }
        return new zzant(strZzh, strZzh2, jZzf, jZzf2, jZzf3, jZzf4, listEmptyList);
    }
}
