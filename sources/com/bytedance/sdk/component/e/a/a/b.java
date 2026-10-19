package com.bytedance.sdk.component.e.a.a;

import com.bytedance.sdk.component.e.a.i;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: compiled from: CacheManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends a {
    private final d a;
    private final c b;
    private final Queue<String> c;

    public b() {
        ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        this.c = concurrentLinkedQueue;
        this.a = new f(concurrentLinkedQueue);
        this.b = new c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002d A[Catch: all -> 0x01c0, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0009, B:7:0x000f, B:67:0x0196, B:70:0x019d, B:71:0x01a1, B:73:0x01a7, B:77:0x01b9, B:11:0x002d, B:13:0x0040, B:15:0x0046, B:16:0x0067, B:18:0x006d, B:19:0x007b, B:20:0x0086, B:22:0x008c, B:23:0x0096, B:25:0x009c, B:27:0x00ac, B:30:0x00b6, B:31:0x00be, B:32:0x00c2, B:34:0x00c8, B:35:0x00d6, B:36:0x00e1, B:38:0x00e7, B:39:0x00f5, B:40:0x00fa, B:42:0x0103, B:44:0x0109, B:45:0x010c, B:47:0x0114, B:49:0x011a, B:50:0x0123, B:52:0x0129, B:53:0x0137, B:55:0x0155, B:56:0x0159, B:58:0x015f, B:60:0x016b, B:61:0x0174, B:62:0x017f, B:64:0x0185), top: B:83:0x0001 }] */
    @Override // com.bytedance.sdk.component.e.a.a.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized java.util.List<com.bytedance.sdk.component.e.a.d.a> a(int r9, int r10, java.util.List<java.lang.String> r11) {
        /*
            Method dump skipped, instruction units count: 451
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.e.a.a.b.a(int, int, java.util.List):java.util.List");
    }

    @Override // com.bytedance.sdk.component.e.a.a.d
    public synchronized void a(int i, List<com.bytedance.sdk.component.e.a.d.a> list) {
        Iterator<com.bytedance.sdk.component.e.a.d.a> it = list.iterator();
        while (it.hasNext()) {
            this.c.remove(it.next().c());
        }
        d dVar = this.a;
        if (dVar != null) {
            dVar.a(i, list);
        }
        c cVar = this.b;
        if (cVar != null) {
            cVar.a(i, list);
        }
    }

    @Override // com.bytedance.sdk.component.e.a.a.d
    public synchronized void a(com.bytedance.sdk.component.e.a.d.a aVar, int i) {
        d dVar;
        c cVar;
        if (i != 5) {
            if (i.g().p().a(i.g().f()) && (dVar = this.a) != null && aVar != null) {
                dVar.a(aVar, i);
            }
            cVar = this.b;
            if (cVar != null && aVar != null) {
                cVar.a(aVar, i);
            }
        } else {
            cVar = this.b;
            if (cVar != null) {
                cVar.a(aVar, i);
            }
        }
    }

    @Override // com.bytedance.sdk.component.e.a.a.d
    public synchronized boolean a(int i, boolean z) {
        if (this.a.a(i, z)) {
            com.bytedance.sdk.component.e.a.c.c.c("memory meet");
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.E(), 1);
            return true;
        }
        if ((i != 1 && i != 2) || !this.b.a(i, z)) {
            return false;
        }
        com.bytedance.sdk.component.e.a.c.c.c("db meet");
        com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.F(), 1);
        return true;
    }
}
