package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzawu {
    private final int zza;
    private final zzawr zzb = new zzaww();

    public zzawu(int i) {
        this.zza = i;
    }

    public final String zza(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            sb.append(((String) arrayList.get(i)).toLowerCase(Locale.US));
            sb.append('\n');
        }
        String[] strArrSplit = sb.toString().split("\n");
        if (strArrSplit.length == 0) {
            return "";
        }
        zzawt zzawtVar = new zzawt();
        PriorityQueue priorityQueue = new PriorityQueue(this.zza, new zzaws(this));
        for (String str : strArrSplit) {
            String[] strArrZzb = zzawv.zzb(str, false);
            if (strArrZzb.length != 0) {
                zzawz.zzc(strArrZzb, this.zza, 6, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzawtVar.zzb.write(this.zzb.zzb(((zzawy) it.next()).zzb));
            } catch (IOException e2) {
                zzcbn.zzh("Error while writing hash to byteStream", e2);
            }
        }
        return zzawtVar.toString();
    }
}
