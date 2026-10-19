package com.bytedance.sdk.component.e.a.a;

import com.bytedance.sdk.component.e.a.a.b.g;
import com.bytedance.sdk.component.e.a.i;
import java.util.List;
import java.util.Queue;

/* JADX INFO: compiled from: RealTimeMemoryCacheStrategy.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements d {
    e a = i.g().d();
    private com.bytedance.sdk.component.e.a.a.b.e b;
    private com.bytedance.sdk.component.e.a.a.b.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.e.a.a.b.b f1004d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f1005e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.component.e.a.a.b.c f1006f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.bytedance.sdk.component.e.a.a.b.f f1007g;
    private com.bytedance.sdk.component.e.a.d.b.a h;
    private com.bytedance.sdk.component.e.a.d.b.a i;
    private com.bytedance.sdk.component.e.a.d.b.a j;
    private com.bytedance.sdk.component.e.a.d.b.a k;
    private com.bytedance.sdk.component.e.a.d.b.a l;
    private com.bytedance.sdk.component.e.a.d.b.a m;
    private Queue<String> n;

    public f(Queue<String> queue) {
        this.n = queue;
        if (com.bytedance.sdk.component.e.a.b.a.a()) {
            com.bytedance.sdk.component.e.a.d.b.a aVarL = i.g().l();
            this.h = aVarL;
            this.b = new com.bytedance.sdk.component.e.a.a.b.e(aVarL, queue);
        }
        if (com.bytedance.sdk.component.e.a.b.a.e()) {
            if (i.g().j() != null) {
                this.j = i.g().j();
            } else {
                this.j = i.g().m();
            }
            this.f1004d = new com.bytedance.sdk.component.e.a.a.b.b(this.j, queue);
        }
        if (com.bytedance.sdk.component.e.a.b.a.b()) {
            com.bytedance.sdk.component.e.a.d.b.a aVarM = i.g().m();
            this.i = aVarM;
            this.c = new com.bytedance.sdk.component.e.a.a.b.a(aVarM, queue);
        }
        if (com.bytedance.sdk.component.e.a.b.a.c()) {
            com.bytedance.sdk.component.e.a.d.b.a aVarM2 = i.g().m();
            this.k = aVarM2;
            this.f1005e = new g(aVarM2, queue);
        }
        if (com.bytedance.sdk.component.e.a.b.a.d()) {
            com.bytedance.sdk.component.e.a.d.b.a aVarN = i.g().n();
            this.l = aVarN;
            this.f1006f = new com.bytedance.sdk.component.e.a.a.b.c(aVarN, queue);
        }
        if (com.bytedance.sdk.component.e.a.b.a.f()) {
            com.bytedance.sdk.component.e.a.d.b.a aVarO = i.g().o();
            this.m = aVarO;
            this.f1007g = new com.bytedance.sdk.component.e.a.a.b.f(aVarO, queue);
        }
    }

    @Override // com.bytedance.sdk.component.e.a.a.d
    public List<com.bytedance.sdk.component.e.a.d.a> a(int i, int i2, List<String> list) {
        List<com.bytedance.sdk.component.e.a.d.a> listA;
        List<com.bytedance.sdk.component.e.a.d.a> listA2;
        List<com.bytedance.sdk.component.e.a.d.a> listA3;
        List<com.bytedance.sdk.component.e.a.d.a> listA4;
        List<com.bytedance.sdk.component.e.a.d.a> listA5;
        List<com.bytedance.sdk.component.e.a.d.a> listA6;
        if (com.bytedance.sdk.component.e.a.b.a.a() && this.b.b(i, i2) && (listA6 = this.b.a(i, i2)) != null && listA6.size() != 0) {
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.r(), 1);
            return listA6;
        }
        if (com.bytedance.sdk.component.e.a.b.a.e() && this.f1004d.b(i, i2) && (listA5 = this.f1004d.a(i, i2)) != null && listA5.size() != 0) {
            return listA5;
        }
        if (com.bytedance.sdk.component.e.a.b.a.b() && this.c.b(i, i2) && (listA4 = this.c.a(i, i2)) != null && listA4.size() != 0) {
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.s(), 1);
            return listA4;
        }
        if (com.bytedance.sdk.component.e.a.b.a.c() && this.f1005e.b(i, i2) && (listA3 = this.f1005e.a(i, i2)) != null && listA3.size() != 0) {
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.t(), 1);
            return listA3;
        }
        if (com.bytedance.sdk.component.e.a.b.a.d() && this.f1006f.b(i, i2) && (listA2 = this.f1006f.a(i, i2)) != null && listA2.size() != 0) {
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.u(), 1);
            return listA2;
        }
        if (!com.bytedance.sdk.component.e.a.b.a.f() || !this.f1007g.b(i, i2) || (listA = this.f1007g.a(i, i2)) == null || listA.size() == 0) {
            return null;
        }
        return listA;
    }

    @Override // com.bytedance.sdk.component.e.a.a.d
    public void a(int i, List<com.bytedance.sdk.component.e.a.d.a> list) {
        if (list == null || list.size() == 0 || list.get(0) == null) {
            return;
        }
        com.bytedance.sdk.component.e.a.d.a aVar = list.get(0);
        byte bE = aVar.e();
        byte bD = aVar.d();
        if (bD == 0 && bE == 1 && com.bytedance.sdk.component.e.a.b.a.a()) {
            this.b.a(i, list);
            return;
        }
        if (bD == 3 && bE == 2 && com.bytedance.sdk.component.e.a.b.a.e()) {
            this.f1004d.a(i, list);
            return;
        }
        if (bD == 0 && bE == 2 && com.bytedance.sdk.component.e.a.b.a.b()) {
            this.c.a(i, list);
            return;
        }
        if (bD == 1 && bE == 2 && com.bytedance.sdk.component.e.a.b.a.c()) {
            this.f1005e.a(i, list);
            return;
        }
        if (bD == 1 && bE == 3 && com.bytedance.sdk.component.e.a.b.a.d()) {
            this.f1006f.a(i, list);
        } else if (bD == 2 && bE == 3 && com.bytedance.sdk.component.e.a.b.a.f()) {
            this.f1007g.a(i, list);
        }
    }

    @Override // com.bytedance.sdk.component.e.a.a.d
    public void a(com.bytedance.sdk.component.e.a.d.a aVar, int i) {
        try {
            byte bD = aVar.d();
            byte bE = aVar.e();
            if (bD == 0 && bE == 1 && com.bytedance.sdk.component.e.a.b.a.a()) {
                this.b.a(aVar);
            } else if (bD == 3 && bE == 2 && com.bytedance.sdk.component.e.a.b.a.e()) {
                this.f1004d.a(aVar);
            } else if (bD == 0 && bE == 2 && com.bytedance.sdk.component.e.a.b.a.b()) {
                this.c.a(aVar);
            } else if (bD == 1 && bE == 2 && com.bytedance.sdk.component.e.a.b.a.c()) {
                this.f1005e.a(aVar);
            } else if (bD == 1 && bE == 3 && com.bytedance.sdk.component.e.a.b.a.d()) {
                this.f1006f.a(aVar);
            } else if (bD == 2 && bE == 3 && com.bytedance.sdk.component.e.a.b.a.f()) {
                this.f1007g.a(aVar);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.component.e.a.a.d
    public boolean a(int i, boolean z) {
        com.bytedance.sdk.component.e.a.a.b.f fVar;
        com.bytedance.sdk.component.e.a.d.b.a aVar;
        com.bytedance.sdk.component.e.a.a.b.c cVar;
        com.bytedance.sdk.component.e.a.d.b.a aVar2;
        g gVar;
        com.bytedance.sdk.component.e.a.d.b.a aVar3;
        com.bytedance.sdk.component.e.a.a.b.a aVar4;
        com.bytedance.sdk.component.e.a.d.b.a aVar5;
        com.bytedance.sdk.component.e.a.a.b.b bVar;
        com.bytedance.sdk.component.e.a.d.b.a aVar6;
        com.bytedance.sdk.component.e.a.a.b.e eVar;
        com.bytedance.sdk.component.e.a.d.b.a aVar7;
        return (com.bytedance.sdk.component.e.a.b.a.a() && (eVar = this.b) != null && (aVar7 = this.h) != null && eVar.b(i, aVar7.a())) || (com.bytedance.sdk.component.e.a.b.a.e() && (bVar = this.f1004d) != null && (aVar6 = this.j) != null && bVar.b(i, aVar6.a())) || ((com.bytedance.sdk.component.e.a.b.a.b() && (aVar4 = this.c) != null && (aVar5 = this.i) != null && aVar4.b(i, aVar5.a())) || ((com.bytedance.sdk.component.e.a.b.a.c() && (gVar = this.f1005e) != null && (aVar3 = this.k) != null && gVar.b(i, aVar3.a())) || ((com.bytedance.sdk.component.e.a.b.a.d() && (cVar = this.f1006f) != null && (aVar2 = this.l) != null && cVar.b(i, aVar2.a())) || (com.bytedance.sdk.component.e.a.b.a.f() && (fVar = this.f1007g) != null && (aVar = this.m) != null && fVar.b(i, aVar.a())))));
    }
}
