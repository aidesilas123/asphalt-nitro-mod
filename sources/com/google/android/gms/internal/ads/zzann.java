package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzann implements zzamz {
    private final Map zza = new HashMap();

    @Nullable
    private final zzamm zzb;

    @Nullable
    private final BlockingQueue zzc;
    private final zzamr zzd;

    zzann(@NonNull zzamm zzammVar, @NonNull BlockingQueue blockingQueue, zzamr zzamrVar) {
        this.zzd = zzamrVar;
        this.zzb = zzammVar;
        this.zzc = blockingQueue;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final synchronized void zza(zzana zzanaVar) {
        Map map = this.zza;
        String strZzj = zzanaVar.zzj();
        List list = (List) map.remove(strZzj);
        if (list == null || list.isEmpty()) {
            return;
        }
        if (zzanm.zzb) {
            zzanm.zzd("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), strZzj);
        }
        zzana zzanaVar2 = (zzana) list.remove(0);
        this.zza.put(strZzj, list);
        zzanaVar2.zzu(this);
        try {
            this.zzc.put(zzanaVar2);
        } catch (InterruptedException e2) {
            zzanm.zzb("Couldn't add request to queue. %s", e2.toString());
            Thread.currentThread().interrupt();
            this.zzb.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzb(zzana zzanaVar, zzang zzangVar) {
        List list;
        zzamj zzamjVar = zzangVar.zzb;
        if (zzamjVar == null || zzamjVar.zza(System.currentTimeMillis())) {
            zza(zzanaVar);
            return;
        }
        String strZzj = zzanaVar.zzj();
        synchronized (this) {
            list = (List) this.zza.remove(strZzj);
        }
        if (list != null) {
            if (zzanm.zzb) {
                zzanm.zzd("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), strZzj);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.zzd.zzb((zzana) it.next(), zzangVar, null);
            }
        }
    }

    final synchronized boolean zzc(zzana zzanaVar) {
        Map map = this.zza;
        String strZzj = zzanaVar.zzj();
        if (!map.containsKey(strZzj)) {
            this.zza.put(strZzj, null);
            zzanaVar.zzu(this);
            if (zzanm.zzb) {
                zzanm.zza("new request, sending to network %s", strZzj);
            }
            return false;
        }
        List arrayList = (List) this.zza.get(strZzj);
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        zzanaVar.zzm("waiting-for-response");
        arrayList.add(zzanaVar);
        this.zza.put(strZzj, arrayList);
        if (zzanm.zzb) {
            zzanm.zza("Request for cacheKey=%s is in flight, putting on hold.", strZzj);
        }
        return true;
    }
}
