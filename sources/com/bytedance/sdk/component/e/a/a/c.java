package com.bytedance.sdk.component.e.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.e.a.a.a.a.g;
import com.bytedance.sdk.component.e.a.i;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: DBCacheStrategy.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements d {
    private com.bytedance.sdk.component.e.a.a.a.a.d a;
    private com.bytedance.sdk.component.e.a.a.a.a.a b;
    private com.bytedance.sdk.component.e.a.a.a.a.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f1000d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.bytedance.sdk.component.e.a.a.a.a.f f1001e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.component.e.a.a.a.a.e f1002f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.bytedance.sdk.component.e.a.d.b.a f1003g;
    private com.bytedance.sdk.component.e.a.d.b.a h;
    private com.bytedance.sdk.component.e.a.d.b.a i;
    private com.bytedance.sdk.component.e.a.d.b.a j;
    private com.bytedance.sdk.component.e.a.d.b.a k;
    private com.bytedance.sdk.component.e.a.d.b.a l;

    public c() {
        Context contextF = i.g().f();
        if (com.bytedance.sdk.component.e.a.b.a.a()) {
            com.bytedance.sdk.component.e.a.d.b.a aVarL = i.g().l();
            this.f1003g = aVarL;
            this.a = new com.bytedance.sdk.component.e.a.a.a.a.d(contextF, aVarL);
        }
        if (com.bytedance.sdk.component.e.a.b.a.e()) {
            if (i.g().j() != null) {
                this.i = i.g().j();
            } else {
                this.i = i.g().m();
            }
            this.c = new com.bytedance.sdk.component.e.a.a.a.a.b(contextF, this.i);
        }
        if (com.bytedance.sdk.component.e.a.b.a.b()) {
            com.bytedance.sdk.component.e.a.d.b.a aVarM = i.g().m();
            this.h = aVarM;
            this.b = new com.bytedance.sdk.component.e.a.a.a.a.a(contextF, aVarM);
        }
        if (com.bytedance.sdk.component.e.a.b.a.c()) {
            com.bytedance.sdk.component.e.a.d.b.a aVarM2 = i.g().m();
            this.j = aVarM2;
            this.f1000d = new g(contextF, aVarM2);
        }
        if (com.bytedance.sdk.component.e.a.b.a.d()) {
            com.bytedance.sdk.component.e.a.d.b.a aVarN = i.g().n();
            this.k = aVarN;
            this.f1001e = new com.bytedance.sdk.component.e.a.a.a.a.f(contextF, aVarN);
        }
        if (com.bytedance.sdk.component.e.a.b.a.f()) {
            com.bytedance.sdk.component.e.a.d.b.a aVarO = i.g().o();
            this.l = aVarO;
            this.f1002f = new com.bytedance.sdk.component.e.a.a.a.a.e(contextF, aVarO);
        }
    }

    private boolean a(List<com.bytedance.sdk.component.e.a.d.a> list, List<String> list2) {
        if (list != null && !list.isEmpty() && list2 != null && !list2.isEmpty()) {
            try {
                Iterator<com.bytedance.sdk.component.e.a.d.a> it = list.iterator();
                while (it.hasNext()) {
                    com.bytedance.sdk.component.e.a.d.a next = it.next();
                    if (next != null) {
                        String strC = next.c();
                        if (!TextUtils.isEmpty(strC) && list2.contains(strC)) {
                            it.remove();
                        }
                    }
                }
            } catch (Throwable th) {
                com.bytedance.sdk.component.e.a.c.c.b("DBCacheStrategy", "deleteMemList: " + th.getMessage());
            }
        }
        return (list == null || list.isEmpty()) ? false : true;
    }

    @Override // com.bytedance.sdk.component.e.a.a.d
    public List<com.bytedance.sdk.component.e.a.d.a> a(int i, int i2, List<String> list) {
        if (com.bytedance.sdk.component.e.a.b.a.a()) {
            List<com.bytedance.sdk.component.e.a.d.a> listA = this.a.a("_id");
            if (a(listA, list)) {
                com.bytedance.sdk.component.e.a.c.c.a("high db get size:" + listA.size());
                com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.w(), 1);
                return listA;
            }
        }
        if (com.bytedance.sdk.component.e.a.b.a.e()) {
            List<com.bytedance.sdk.component.e.a.d.a> listA2 = this.c.a("_id");
            if (a(listA2, list)) {
                com.bytedance.sdk.component.e.a.c.c.a("v3ad db get :" + listA2.size());
                return listA2;
            }
        }
        if (com.bytedance.sdk.component.e.a.b.a.b()) {
            List<com.bytedance.sdk.component.e.a.d.a> listA3 = this.b.a("_id");
            if (a(listA3, list)) {
                com.bytedance.sdk.component.e.a.c.c.a("adevent db get :" + listA3.size());
                com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.x(), 1);
                return listA3;
            }
        }
        if (com.bytedance.sdk.component.e.a.b.a.c()) {
            List<com.bytedance.sdk.component.e.a.d.a> listB = this.f1000d.b("_id");
            if (a(listB, list)) {
                com.bytedance.sdk.component.e.a.c.c.a("real stats db get :" + listB.size());
                com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.y(), 1);
                return listB;
            }
        }
        if (com.bytedance.sdk.component.e.a.b.a.d()) {
            List<com.bytedance.sdk.component.e.a.d.a> listB2 = this.f1001e.b("_id");
            if (a(listB2, list)) {
                com.bytedance.sdk.component.e.a.c.c.a("batch db get :" + listB2.size());
                com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.z(), 1);
                return listB2;
            }
        }
        if (!com.bytedance.sdk.component.e.a.b.a.f()) {
            return null;
        }
        List<com.bytedance.sdk.component.e.a.d.a> listB3 = this.f1002f.b("_id");
        if (!a(listB3, list)) {
            return null;
        }
        com.bytedance.sdk.component.e.a.c.c.a("other db get :" + listB3.size());
        return listB3;
    }

    @Override // com.bytedance.sdk.component.e.a.a.d
    public void a(int i, List<com.bytedance.sdk.component.e.a.d.a> list) {
        com.bytedance.sdk.component.e.a.c.c.a("dbCache handleResult start");
        if (list != null && list.size() != 0 && list.get(0) != null) {
            com.bytedance.sdk.component.e.a.d.a aVar = list.get(0);
            if (i == 200 || i == -1) {
                com.bytedance.sdk.component.e.a.b.a.a aVar2 = com.bytedance.sdk.component.e.a.b.d.f1019d;
                com.bytedance.sdk.component.e.a.c.b.a(aVar2.X(), list.size());
                if (i != 200) {
                    com.bytedance.sdk.component.e.a.c.b.a(aVar2.Z(), list.size());
                }
                if (aVar.d() == 0 && aVar.e() == 1) {
                    if (com.bytedance.sdk.component.e.a.b.a.a()) {
                        this.a.b(list);
                    }
                } else if (aVar.d() == 3 && aVar.e() == 2) {
                    if (com.bytedance.sdk.component.e.a.b.a.e()) {
                        this.c.b(list);
                    }
                } else if (aVar.d() == 0 && aVar.e() == 2) {
                    if (com.bytedance.sdk.component.e.a.b.a.b()) {
                        this.b.b(list);
                    }
                } else if (aVar.d() == 1 && aVar.e() == 2) {
                    if (com.bytedance.sdk.component.e.a.b.a.c()) {
                        this.f1000d.b(list);
                    }
                } else if (aVar.d() == 1 && aVar.e() == 3) {
                    if (com.bytedance.sdk.component.e.a.b.a.d()) {
                        this.f1001e.b(list);
                    }
                } else if (aVar.d() == 2 && aVar.e() == 3 && com.bytedance.sdk.component.e.a.b.a.f()) {
                    this.f1002f.b(list);
                }
            }
        }
        com.bytedance.sdk.component.e.a.c.c.a("dbCache handleResult end");
    }

    @Override // com.bytedance.sdk.component.e.a.a.d
    public void a(com.bytedance.sdk.component.e.a.d.a aVar, int i) {
        if (aVar == null) {
            return;
        }
        try {
            aVar.b(System.currentTimeMillis());
            if (aVar.d() == 0 && aVar.e() == 1) {
                if (com.bytedance.sdk.component.e.a.b.a.a()) {
                    this.a.a(aVar);
                }
            } else if (aVar.d() == 3 && aVar.e() == 2) {
                if (com.bytedance.sdk.component.e.a.b.a.e()) {
                    this.c.a(aVar);
                }
            } else if (aVar.d() == 0 && aVar.e() == 2) {
                if (com.bytedance.sdk.component.e.a.b.a.b()) {
                    this.b.a(aVar);
                }
            } else if (aVar.d() == 1 && aVar.e() == 2) {
                if (com.bytedance.sdk.component.e.a.b.a.c()) {
                    this.f1000d.a(aVar);
                }
            } else if (aVar.d() == 1 && aVar.e() == 3) {
                if (com.bytedance.sdk.component.e.a.b.a.d()) {
                    this.f1001e.a(aVar);
                }
            } else if (aVar.d() == 2 && aVar.e() == 3 && com.bytedance.sdk.component.e.a.b.a.f()) {
                this.f1002f.a(aVar);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.G(), 1);
        }
    }

    @Override // com.bytedance.sdk.component.e.a.a.d
    public boolean a(int i, boolean z) {
        com.bytedance.sdk.component.e.a.a.a.a.e eVar;
        com.bytedance.sdk.component.e.a.a.a.a.f fVar;
        g gVar;
        com.bytedance.sdk.component.e.a.a.a.a.a aVar;
        com.bytedance.sdk.component.e.a.a.a.a.b bVar;
        com.bytedance.sdk.component.e.a.a.a.a.d dVar;
        if (com.bytedance.sdk.component.e.a.b.a.a() && (dVar = this.a) != null && dVar.a(i)) {
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.n(), 1);
            return true;
        }
        if (com.bytedance.sdk.component.e.a.b.a.e() && (bVar = this.c) != null && bVar.a(i)) {
            return true;
        }
        if (com.bytedance.sdk.component.e.a.b.a.b() && (aVar = this.b) != null && aVar.a(i)) {
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.o(), 1);
            return true;
        }
        if (com.bytedance.sdk.component.e.a.b.a.c() && (gVar = this.f1000d) != null && gVar.a(i)) {
            com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.p(), 1);
            return true;
        }
        if (!com.bytedance.sdk.component.e.a.b.a.d() || (fVar = this.f1001e) == null || !fVar.a(i)) {
            return com.bytedance.sdk.component.e.a.b.a.f() && (eVar = this.f1002f) != null && eVar.a(i);
        }
        com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.q(), 1);
        return true;
    }

    public List<com.bytedance.sdk.component.e.a.d.a> b(com.bytedance.sdk.component.e.a.d.a aVar, int i) {
        if (aVar.d() == 0 && aVar.e() == 1 && com.bytedance.sdk.component.e.a.b.a.a()) {
            if (this.f1003g.b() <= i) {
                return null;
            }
            List<com.bytedance.sdk.component.e.a.d.a> listA = this.a.a(this.f1003g.b() - i, "_id");
            if (listA != null && listA.size() != 0) {
                com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.A(), 1);
            }
            return listA;
        }
        if (aVar.d() == 3 && aVar.e() == 2 && com.bytedance.sdk.component.e.a.b.a.e()) {
            if (this.i.b() > i) {
                return this.c.a(this.i.b() - i, "_id");
            }
        } else if (aVar.d() == 0 && aVar.e() == 2 && com.bytedance.sdk.component.e.a.b.a.b()) {
            if (this.h.b() > i) {
                List<com.bytedance.sdk.component.e.a.d.a> listA2 = this.b.a(this.h.b() - i, "_id");
                if (listA2 != null && listA2.size() != 0) {
                    com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.B(), 1);
                }
                return listA2;
            }
        } else if (aVar.d() == 1 && aVar.e() == 2 && com.bytedance.sdk.component.e.a.b.a.c()) {
            if (this.j.b() > i) {
                List<com.bytedance.sdk.component.e.a.d.a> listA3 = this.f1000d.a(this.j.b() - i, "_id");
                if (listA3 != null && listA3.size() != 0) {
                    com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.C(), 1);
                }
                return listA3;
            }
        } else if (aVar.d() == 1 && aVar.e() == 3 && com.bytedance.sdk.component.e.a.b.a.d()) {
            if (this.k.b() > i) {
                List<com.bytedance.sdk.component.e.a.d.a> listA4 = this.f1001e.a(this.k.b() - i, "_id");
                if (listA4 != null && listA4.size() != 0) {
                    com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.D(), 1);
                }
                return listA4;
            }
        } else if (aVar.d() == 2 && aVar.e() == 3 && com.bytedance.sdk.component.e.a.b.a.f() && this.l.b() > i) {
            return this.f1002f.a(this.l.b() - i, "_id");
        }
        return null;
    }
}
