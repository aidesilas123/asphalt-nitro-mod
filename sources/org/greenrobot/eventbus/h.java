package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: PendingPost.java */
/* JADX INFO: loaded from: classes5.dex */
final class h {
    private static final List<h> a = new ArrayList();
    Object b;
    o c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    h f10942d;

    private h(Object obj, o oVar) {
        this.b = obj;
        this.c = oVar;
    }

    static h a(o oVar, Object obj) {
        List<h> list = a;
        synchronized (list) {
            int size = list.size();
            if (size <= 0) {
                return new h(obj, oVar);
            }
            h hVarRemove = list.remove(size - 1);
            hVarRemove.b = obj;
            hVarRemove.c = oVar;
            hVarRemove.f10942d = null;
            return hVarRemove;
        }
    }

    static void b(h hVar) {
        hVar.b = null;
        hVar.c = null;
        hVar.f10942d = null;
        List<h> list = a;
        synchronized (list) {
            if (list.size() < 10000) {
                list.add(hVar);
            }
        }
    }
}
