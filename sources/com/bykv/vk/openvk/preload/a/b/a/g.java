package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.t;
import com.bykv.vk.openvk.preload.a.u;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: compiled from: MapTypeAdapterFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements u {
    final boolean a;
    private final com.bykv.vk.openvk.preload.a.b.c b;

    /* JADX INFO: compiled from: MapTypeAdapterFactory.java */
    final class a<K, V> extends t<Map<K, V>> {
        private final t<K> b;
        private final t<V> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final com.bykv.vk.openvk.preload.a.b.i<? extends Map<K, V>> f487d;

        public a(com.bykv.vk.openvk.preload.a.f fVar, Type type, t<K> tVar, Type type2, t<V> tVar2, com.bykv.vk.openvk.preload.a.b.i<? extends Map<K, V>> iVar) {
            this.b = new m(fVar, tVar, type);
            this.c = new m(fVar, tVar2, type2);
            this.f487d = iVar;
        }

        @Override // com.bykv.vk.openvk.preload.a.t
        public final /* synthetic */ Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
            if (bVarF == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.k();
                return null;
            }
            Map<K, V> mapA = this.f487d.a();
            if (bVarF == com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY) {
                aVar.a();
                while (aVar.e()) {
                    aVar.a();
                    K kA = this.b.a(aVar);
                    if (mapA.put(kA, this.c.a(aVar)) != null) {
                        throw new r("duplicate key: ".concat(String.valueOf(kA)));
                    }
                    aVar.b();
                }
                aVar.b();
            } else {
                aVar.c();
                while (aVar.e()) {
                    com.bykv.vk.openvk.preload.a.b.f.a.a(aVar);
                    K kA2 = this.b.a(aVar);
                    if (mapA.put(kA2, this.c.a(aVar)) != null) {
                        throw new r("duplicate key: ".concat(String.valueOf(kA2)));
                    }
                }
                aVar.d();
            }
            return mapA;
        }

        @Override // com.bykv.vk.openvk.preload.a.t
        public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
            String strB;
            Map map = (Map) obj;
            if (map == null) {
                cVar.e();
                return;
            }
            if (!g.this.a) {
                cVar.c();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.a(String.valueOf(entry.getKey()));
                    this.c.a(cVar, entry.getValue());
                }
                cVar.d();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i = 0;
            boolean z = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                com.bykv.vk.openvk.preload.a.k kVarA = this.b.a(entry2.getKey());
                arrayList.add(kVarA);
                arrayList2.add(entry2.getValue());
                z |= (kVarA instanceof com.bykv.vk.openvk.preload.a.i) || (kVarA instanceof com.bykv.vk.openvk.preload.a.n);
            }
            if (z) {
                cVar.a();
                int size = arrayList.size();
                while (i < size) {
                    cVar.a();
                    com.bykv.vk.openvk.preload.a.b.k.a((com.bykv.vk.openvk.preload.a.k) arrayList.get(i), cVar);
                    this.c.a(cVar, (V) arrayList2.get(i));
                    cVar.b();
                    i++;
                }
                cVar.b();
                return;
            }
            cVar.c();
            int size2 = arrayList.size();
            while (i < size2) {
                com.bykv.vk.openvk.preload.a.k kVar = (com.bykv.vk.openvk.preload.a.k) arrayList.get(i);
                if (kVar instanceof p) {
                    p pVarG = kVar.g();
                    Object obj2 = pVarG.a;
                    if (obj2 instanceof Number) {
                        strB = String.valueOf(pVarG.a());
                    } else if (obj2 instanceof Boolean) {
                        strB = Boolean.toString(pVarG.f());
                    } else {
                        if (!(obj2 instanceof String)) {
                            throw new AssertionError();
                        }
                        strB = pVarG.b();
                    }
                } else {
                    if (!(kVar instanceof com.bykv.vk.openvk.preload.a.m)) {
                        throw new AssertionError();
                    }
                    strB = "null";
                }
                cVar.a(strB);
                this.c.a(cVar, (V) arrayList2.get(i));
                i++;
            }
            cVar.d();
        }
    }

    public g(com.bykv.vk.openvk.preload.a.b.c cVar, boolean z) {
        this.b = cVar;
        this.a = z;
    }

    @Override // com.bykv.vk.openvk.preload.a.u
    public final <T> t<T> a(com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        Type type = aVar.c;
        if (!Map.class.isAssignableFrom(aVar.b)) {
            return null;
        }
        Type[] typeArrB = com.bykv.vk.openvk.preload.a.b.b.b(type, com.bykv.vk.openvk.preload.a.b.b.b(type));
        Type type2 = typeArrB[0];
        return new a(fVar, typeArrB[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? n.f500f : fVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type2)), typeArrB[1], fVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(typeArrB[1])), this.b.a(aVar));
    }
}
