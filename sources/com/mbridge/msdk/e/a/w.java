package com.mbridge.msdk.e.a;

import com.mbridge.msdk.e.a.a;
import com.mbridge.msdk.e.a.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: compiled from: WaitingRequestManager.java */
/* JADX INFO: loaded from: classes4.dex */
final class w implements m.a {
    private final q b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f6964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BlockingQueue<m<?>> f6965e;
    private final Map<String, List<m<?>>> a = new HashMap();
    private final n c = null;

    w(b bVar, BlockingQueue<m<?>> blockingQueue, q qVar) {
        this.b = qVar;
        this.f6964d = bVar;
        this.f6965e = blockingQueue;
    }

    @Override // com.mbridge.msdk.e.a.m.a
    public final synchronized void a(m<?> mVar) {
        BlockingQueue<m<?>> blockingQueue;
        String strI = mVar.i();
        List<m<?>> listRemove = this.a.remove(strI);
        if (listRemove != null && !listRemove.isEmpty()) {
            m<?> mVarRemove = listRemove.remove(0);
            this.a.put(strI, listRemove);
            mVarRemove.a((m.a) this);
            n nVar = this.c;
            if (nVar != null) {
                nVar.c(mVarRemove);
            } else if (this.f6964d != null && (blockingQueue = this.f6965e) != null) {
                try {
                    blockingQueue.put(mVarRemove);
                } catch (InterruptedException e2) {
                    v.c("Couldn't add request to queue. %s", e2.toString());
                    Thread.currentThread().interrupt();
                    this.f6964d.a();
                }
            }
        }
    }

    @Override // com.mbridge.msdk.e.a.m.a
    public final void a(m<?> mVar, o<?> oVar) {
        List<m<?>> listRemove;
        a.C0396a c0396a = oVar.b;
        if (c0396a == null || c0396a.a(System.currentTimeMillis())) {
            a(mVar);
            return;
        }
        String strI = mVar.i();
        synchronized (this) {
            listRemove = this.a.remove(strI);
        }
        if (listRemove != null) {
            Iterator<m<?>> it = listRemove.iterator();
            while (it.hasNext()) {
                this.b.a(it.next(), oVar);
            }
        }
    }

    final synchronized boolean b(m<?> mVar) {
        String strI = mVar.i();
        if (!this.a.containsKey(strI)) {
            this.a.put(strI, null);
            mVar.a((m.a) this);
            return false;
        }
        List<m<?>> arrayList = this.a.get(strI);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        arrayList.add(mVar);
        this.a.put(strI, arrayList);
        return true;
    }
}
