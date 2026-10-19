package com.bykv.vk.openvk.preload.b;

import com.bykv.vk.openvk.preload.b.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: SubBranchInterceptor.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class l<IN, OUT> extends d<IN, OUT> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Map<String, a> f555g;

    /* JADX INFO: compiled from: SubBranchInterceptor.java */
    public static final class a {
        List<h> a = new ArrayList();

        public final a a(h hVar) {
            this.a.add(hVar);
            return this;
        }

        public final a a(List<h> list) {
            this.a.addAll(list);
            return this;
        }
    }

    /* JADX INFO: compiled from: SubBranchInterceptor.java */
    public static final class b {
        private Map<String, a> a = new HashMap();
        private com.bykv.vk.openvk.preload.b.b.a b;

        public final h a(Class<? extends l> cls) {
            h.a aVarA = new h.a().a(cls);
            aVarA.c = new Object[]{this.a};
            aVarA.b = this.b;
            return aVarA.a();
        }

        public final a a(String str) {
            if (this.a.containsKey(str)) {
                throw new IllegalArgumentException("duplicated branch name");
            }
            a aVar = new a();
            this.a.put(str, aVar);
            return aVar;
        }
    }

    l() {
    }

    static boolean a(List<h> list) {
        return !list.isEmpty() && list.get(list.size() - 1).a == f.class;
    }

    @Override // com.bykv.vk.openvk.preload.b.d
    protected final void a(Object... objArr) {
        super.a(objArr);
        if (objArr == null || objArr.length != 1 || objArr[0] == null) {
            throw new IllegalStateException("args error");
        }
        try {
            this.f555g = (Map) objArr[0];
        } catch (ClassCastException e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}
