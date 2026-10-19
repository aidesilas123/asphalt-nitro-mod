package com.bytedance.sdk.component.a;

import android.net.Uri;
import com.bytedance.component.sdk.annotation.MainThread;
import com.bytedance.sdk.component.a.k;
import com.bytedance.sdk.component.a.v;
import com.bytedance.sdk.component.a.w;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: compiled from: PermissionChecker.java */
/* JADX INFO: loaded from: classes.dex */
class u {
    private final Set<String> a;
    private final Set<String> b;
    private final w c = r.a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v f638d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private k.b f639e;

    u(v vVar, Set<String> set, Set<String> set2) {
        this.f638d = vVar;
        if (set == null || set.isEmpty()) {
            this.a = new LinkedHashSet();
        } else {
            this.a = new LinkedHashSet(set);
        }
        if (set2 == null || set2.isEmpty()) {
            this.b = new LinkedHashSet();
        } else {
            this.b = new LinkedHashSet(set2);
        }
    }

    private x a(String str, b bVar, boolean z) {
        v vVar;
        if (!z || (vVar = this.f638d) == null) {
            return null;
        }
        v.c cVarA = vVar.a(str, this.a);
        if (cVarA.c.contains(bVar.a())) {
            return null;
        }
        if (cVarA.b.contains(bVar.a())) {
            return x.PRIVATE;
        }
        if (cVarA.a.compareTo(bVar.b()) < 0) {
            return null;
        }
        return cVarA.a;
    }

    @MainThread
    final synchronized x a(String str, b bVar) throws v.a {
        return a(str, bVar, true);
    }

    @MainThread
    final synchronized x a(boolean z, String str, b bVar) throws v.a {
        k.b bVar2;
        Uri uri = Uri.parse(str);
        String host = uri.getHost();
        if (host == null) {
            return null;
        }
        x xVar = this.b.contains(bVar.a()) ? x.PUBLIC : null;
        for (String str2 : this.a) {
            if (!uri.getHost().equals(str2)) {
                if (host.endsWith("." + str2)) {
                }
            }
            xVar = x.PRIVATE;
        }
        if (xVar == null && (bVar2 = this.f639e) != null && bVar2.a(str)) {
            if (this.f639e.a(str, bVar.a())) {
                return null;
            }
            xVar = x.PRIVATE;
        }
        x xVarA = z ? a(str, bVar) : b(str, bVar);
        return xVarA != null ? xVarA : xVar;
    }

    void a(k.b bVar) {
        this.f639e = bVar;
    }

    void a(w.a aVar) {
        w wVar = this.c;
        if (wVar != null) {
            wVar.a(aVar);
        }
    }

    final synchronized x b(String str, b bVar) {
        return a(str, bVar, false);
    }

    void b(w.a aVar) {
        w wVar = this.c;
        if (wVar != null) {
            wVar.b(aVar);
        }
    }
}
