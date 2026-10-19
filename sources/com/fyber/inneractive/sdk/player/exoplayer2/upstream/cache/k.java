package com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache;

import android.os.ConditionVariable;
import com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CachedContentIndex;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a {
    public final File a;
    public final f b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i f2560d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public a.C0191a f2563g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2562f = 0;
    public final HashMap<String, g> c = new HashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap<String, ArrayList<a.b>> f2561e = new HashMap<>();

    public class a extends Thread {
        public final /* synthetic */ ConditionVariable a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, ConditionVariable conditionVariable) {
            super(str);
            this.a = conditionVariable;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (k.this) {
                this.a.open();
                try {
                    k.a(k.this);
                } catch (a.C0191a e2) {
                    k.this.f2563g = e2;
                }
                k.this.b.getClass();
            }
        }
    }

    public k(File file, f fVar, byte[] bArr) {
        this.a = file;
        this.b = fVar;
        this.f2560d = new i(file, null);
        ConditionVariable conditionVariable = new ConditionVariable();
        new a("SimpleCache.initialize()", conditionVariable).start();
        conditionVariable.block();
    }

    public static void a(k kVar) throws Throwable {
        if (!kVar.a.exists()) {
            kVar.a.mkdirs();
            return;
        }
        i iVar = kVar.f2560d;
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(!iVar.f2558f);
        if (!iVar.a()) {
            com.fyber.inneractive.sdk.player.exoplayer2.util.b bVar = iVar.c;
            bVar.a.delete();
            bVar.b.delete();
            iVar.a.clear();
            iVar.b.clear();
        }
        File[] fileArrListFiles = kVar.a.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (!file.getName().equals(CachedContentIndex.FILE_NAME)) {
                l lVarA = file.length() > 0 ? l.a(file, kVar.f2560d) : null;
                if (lVarA != null) {
                    kVar.a(lVarA);
                } else {
                    file.delete();
                }
            }
        }
        kVar.f2560d.b();
        kVar.f2560d.c();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a
    public synchronized long a() {
        return this.f2562f;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a
    public synchronized long a(String str) {
        h hVar;
        hVar = this.f2560d.a.get(str);
        return hVar == null ? -1L : hVar.f2555d;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a
    public synchronized File a(String str, long j, long j2) throws a.C0191a {
        File file;
        h hVarA;
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(this.c.containsKey(str));
        if (!this.a.exists()) {
            b();
            this.a.mkdirs();
        }
        ((j) this.b).a(this, j2);
        file = this.a;
        i iVar = this.f2560d;
        hVarA = iVar.a.get(str);
        if (hVarA == null) {
            hVarA = iVar.a(str, -1L);
        }
        return l.a(file, hVarA.a, j, System.currentTimeMillis());
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a
    public synchronized void a(g gVar) throws a.C0191a {
        a(gVar, true);
    }

    public final void a(g gVar, boolean z) throws Throwable {
        boolean z2;
        h hVarA = this.f2560d.a(gVar.a);
        if (hVarA != null) {
            if (hVarA.c.remove(gVar)) {
                gVar.f2553e.delete();
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                this.f2562f -= gVar.c;
                if (z && hVarA.c.isEmpty()) {
                    this.f2560d.b(hVarA.b);
                    this.f2560d.c();
                }
                ArrayList<a.b> arrayList = this.f2561e.get(gVar.a);
                if (arrayList != null) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        arrayList.get(size).a(this, gVar);
                    }
                }
                j jVar = (j) this.b;
                jVar.a.remove(gVar);
                jVar.b -= gVar.c;
            }
        }
    }

    public final void a(l lVar) {
        i iVar = this.f2560d;
        String str = lVar.a;
        h hVarA = iVar.a.get(str);
        if (hVarA == null) {
            hVarA = iVar.a(str, -1L);
        }
        hVarA.c.add(lVar);
        this.f2562f += lVar.c;
        ArrayList<a.b> arrayList = this.f2561e.get(lVar.a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).b(this, lVar);
            }
        }
        ((j) this.b).b(this, lVar);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a
    public synchronized void a(File file) throws a.C0191a {
        l lVarA = l.a(file, this.f2560d);
        boolean z = true;
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(lVarA != null);
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(this.c.containsKey(lVarA.a));
        if (file.exists()) {
            if (file.length() == 0) {
                file.delete();
                return;
            }
            String str = lVarA.a;
            synchronized (this) {
                h hVar = this.f2560d.a.get(str);
                Long lValueOf = Long.valueOf(hVar == null ? -1L : hVar.f2555d);
                if (lValueOf.longValue() != -1) {
                    if (lVarA.b + lVarA.c > lValueOf.longValue()) {
                        z = false;
                    }
                    com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(z);
                }
                a(lVarA);
                this.f2560d.c();
                notifyAll();
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a
    public synchronized void a(String str, long j) throws a.C0191a {
        i iVar = this.f2560d;
        h hVar = iVar.a.get(str);
        if (hVar == null) {
            iVar.a(str, j);
        } else if (hVar.f2555d != j) {
            hVar.f2555d = j;
            iVar.f2558f = true;
        }
        this.f2560d.c();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a
    public g b(String str, long j) throws a.C0191a, InterruptedException {
        l lVarC;
        synchronized (this) {
            while (true) {
                lVarC = c(str, j);
                if (lVarC == null) {
                    wait();
                }
            }
        }
        return lVarC;
    }

    public final void b() throws Throwable {
        LinkedList linkedList = new LinkedList();
        Iterator<h> it = this.f2560d.a.values().iterator();
        while (it.hasNext()) {
            for (l lVar : it.next().c) {
                if (lVar.f2553e.length() != lVar.c) {
                    linkedList.add(lVar);
                }
            }
        }
        Iterator it2 = linkedList.iterator();
        while (it2.hasNext()) {
            a((g) it2.next(), false);
        }
        this.f2560d.b();
        this.f2560d.c();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a
    public synchronized void b(g gVar) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(gVar == this.c.remove(gVar.a));
        notifyAll();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.cache.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public synchronized l c(String str, long j) throws a.C0191a {
        l lVarFloor;
        l lVar;
        a.C0191a c0191a = this.f2563g;
        if (c0191a != null) {
            throw c0191a;
        }
        h hVar = this.f2560d.a.get(str);
        if (hVar == null) {
            lVar = new l(str, j, -1L, C.TIME_UNSET, null);
        } else {
            while (true) {
                l lVar2 = new l(hVar.b, j, -1L, C.TIME_UNSET, null);
                lVarFloor = hVar.c.floor(lVar2);
                if (lVarFloor == null || lVarFloor.b + lVarFloor.c <= j) {
                    l lVarCeiling = hVar.c.ceiling(lVar2);
                    lVarFloor = lVarCeiling == null ? new l(hVar.b, j, -1L, C.TIME_UNSET, null) : new l(hVar.b, j, lVarCeiling.b - j, C.TIME_UNSET, null);
                }
                if (!lVarFloor.f2552d || lVarFloor.f2553e.length() == lVarFloor.c) {
                    break;
                }
                b();
            }
            lVar = lVarFloor;
        }
        if (!lVar.f2552d) {
            if (this.c.containsKey(str)) {
                return null;
            }
            this.c.put(str, lVar);
            return lVar;
        }
        h hVar2 = this.f2560d.a.get(str);
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(hVar2.c.remove(lVar));
        int i = hVar2.a;
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(lVar.f2552d);
        long jCurrentTimeMillis = System.currentTimeMillis();
        File fileA = l.a(lVar.f2553e.getParentFile(), i, lVar.b, jCurrentTimeMillis);
        l lVar3 = new l(lVar.a, lVar.b, lVar.c, jCurrentTimeMillis, fileA);
        if (!lVar.f2553e.renameTo(fileA)) {
            throw new a.C0191a("Renaming of " + lVar.f2553e + " to " + fileA + " failed.");
        }
        hVar2.c.add(lVar3);
        ArrayList<a.b> arrayList = this.f2561e.get(lVar.a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).a(this, lVar, lVar3);
            }
        }
        j jVar = (j) this.b;
        jVar.a.remove(lVar);
        jVar.b -= lVar.c;
        jVar.b(this, lVar3);
        return lVar3;
    }
}
