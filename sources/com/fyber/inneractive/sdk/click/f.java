package com.fyber.inneractive.sdk.click;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.fyber.inneractive.sdk.activities.InternalStoreWebpageActivity;
import com.fyber.inneractive.sdk.click.l;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.flow.p;
import com.fyber.inneractive.sdk.ignite.c;
import com.fyber.inneractive.sdk.network.p0;
import com.fyber.inneractive.sdk.network.q0;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.util.x;
import com.fyber.inneractive.sdk.web.t;
import com.json.o2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class f implements com.fyber.inneractive.sdk.click.a {
    public t a;
    public boolean b;
    public final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final k0 f1926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.fyber.inneractive.sdk.util.e f1927e;

    public interface a {
        void a(b bVar, k0 k0Var, com.fyber.inneractive.sdk.util.e eVar);
    }

    public f(a aVar, k0 k0Var, com.fyber.inneractive.sdk.util.e eVar) {
        this.c = aVar;
        this.f1926d = k0Var;
        this.f1927e = eVar;
    }

    @Override // com.fyber.inneractive.sdk.click.a
    public b a(Context context, Uri uri, List<i> list) {
        String name;
        x.a aVar;
        t tVar = this.a;
        if (tVar == null) {
            return l.a(uri.toString(), "IgniteGooglePlay", "mInternalStoreWebpageController is null");
        }
        boolean z = this.b;
        if (tVar.C) {
            aVar = new x.a(x.d.FAILED, new IllegalStateException("Store controller is already open"), context.getClass().getName());
        } else {
            tVar.C = true;
            try {
                name = context.getClass().getName();
            } catch (Throwable unused) {
                name = o2.h.t;
            }
            tVar.D = true;
            if (tVar.j.equals("invalid_task_id") && !tVar.z) {
                tVar.f2765d = z ? com.fyber.inneractive.sdk.ignite.k.TRUE_SINGLE_TAP : com.fyber.inneractive.sdk.ignite.k.SINGLE_TAP;
            }
            tVar.B = z;
            if (tVar.A) {
                tVar.f("onInstallationSuccess();");
            } else if (!tVar.z) {
                String str = tVar.c;
                PackageInfo packageInfo = !TextUtils.isEmpty(str) ? com.fyber.inneractive.sdk.util.l.a.getPackageManager().getPackageInfo(str, 0) : null;
                if (packageInfo != null) {
                    tVar.f("onInstallationSuccess();");
                } else if (z) {
                    tVar.b.a(tVar.c, new c.d(tVar.f2767f, tVar.f2765d, p.this));
                    tVar.f("onShowInstallStarted();");
                }
            }
            try {
                InternalStoreWebpageActivity.startActivity(context, tVar.f2766e);
                aVar = new x.a(x.d.OPENED_INTERNAL_STORE, null, name);
            } catch (ActivityNotFoundException e2) {
                aVar = new x.a(x.d.FAILED, e2, name);
            }
        }
        Throwable th = aVar.b;
        if (th != null) {
            if (list != null) {
                list.add(new i(this.a.k, false, l.d.OPEN_INTERNAL_STORE, th.toString()));
            }
            return l.a(uri.toString(), "IgniteGooglePlay", "mInternalStoreWebpageController.show has failed");
        }
        p0 p0Var = new p0(new e(this, list, uri), uri.toString(), com.fyber.inneractive.sdk.network.x.c.b());
        IAConfigManager.M.s.a.offer(p0Var);
        p0Var.a(q0.QUEUED);
        return l.a(uri.toString(), l.d.OPEN_INTERNAL_STORE, "IgniteGooglePlay");
    }

    @Override // com.fyber.inneractive.sdk.click.a
    public boolean a(Uri uri, l lVar) {
        com.fyber.inneractive.sdk.ignite.k kVar = com.fyber.inneractive.sdk.ignite.k.NONE;
        com.fyber.inneractive.sdk.ignite.k kVar2 = lVar.k;
        this.b = lVar.j;
        this.a = lVar.i;
        if (kVar2 != kVar && IAConfigManager.M.E.d()) {
            t tVar = this.a;
            if (tVar != null && tVar.l) {
                return true;
            }
        }
        return false;
    }
}
