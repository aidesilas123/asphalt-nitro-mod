package com.json;

import android.content.Context;
import com.json.h6;
import com.json.o2;
import com.json.sdk.controller.FeaturesManager;
import com.json.sdk.utils.Logger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class md {
    private final String a;
    private Context b;
    private uc c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private q2 f6217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private k3 f6218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6219f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s3 f6220g;
    private int h;
    private int i;
    private final String j = md.class.getSimpleName();
    private a k;

    protected enum a {
        NOT_RECOVERED,
        RECOVERED,
        IN_RECOVERING,
        NOT_ALLOWED
    }

    public md(Context context, q2 q2Var, uc ucVar, k3 k3Var, int i, s3 s3Var, String str) {
        a aVarH = h();
        this.k = aVarH;
        if (aVarH != a.NOT_ALLOWED) {
            this.b = context;
            this.f6217d = q2Var;
            this.c = ucVar;
            this.f6218e = k3Var;
            this.f6219f = i;
            this.f6220g = s3Var;
            this.h = 0;
        }
        this.a = str;
    }

    private a h() {
        this.i = FeaturesManager.getInstance().getInitRecoverTrials();
        Logger.i(this.j, "getInitialState mMaxAllowedTrials: " + this.i);
        if (this.i > 0) {
            return a.NOT_RECOVERED;
        }
        Logger.i(this.j, "recovery is not allowed by config");
        return a.NOT_ALLOWED;
    }

    private void k() {
        if (this.h != this.i) {
            this.k = a.NOT_RECOVERED;
            return;
        }
        Logger.i(this.j, "handleRecoveringEndedFailed | Reached max trials");
        this.k = a.NOT_ALLOWED;
        a();
    }

    private void l() {
        a();
        this.k = a.RECOVERED;
    }

    public void a() {
        this.b = null;
        this.f6217d = null;
        this.c = null;
        this.f6218e = null;
        this.f6220g = null;
    }

    public void a(boolean z) {
        if (this.k != a.IN_RECOVERING) {
            return;
        }
        if (z) {
            l();
        } else {
            k();
        }
    }

    public boolean a(h6.c cVar, h6.b bVar) {
        Logger.i(this.j, "shouldRecoverWebController: ");
        a aVar = this.k;
        if (aVar == a.NOT_ALLOWED) {
            Logger.i(this.j, "shouldRecoverWebController: false | recover is not allowed");
            return false;
        }
        if (cVar != h6.c.Native) {
            Logger.i(this.j, "shouldRecoverWebController: false | current controller type is: " + cVar);
            return false;
        }
        if (bVar == h6.b.Loading || bVar == h6.b.None) {
            Logger.i(this.j, "shouldRecoverWebController: false | a Controller is currently loading");
            return false;
        }
        if (aVar == a.RECOVERED) {
            Logger.i(this.j, "shouldRecoverWebController: false | already recovered");
            return false;
        }
        if (aVar == a.IN_RECOVERING) {
            Logger.i(this.j, "shouldRecoverWebController: false | currently in recovering");
            return false;
        }
        if (this.b == null || this.f6217d == null || this.c == null || this.f6218e == null) {
            Logger.i(this.j, "shouldRecoverWebController: false | missing mandatory param");
            return false;
        }
        Logger.i(this.j, "shouldRecoverWebController: true | allow recovering ");
        return true;
    }

    public Context b() {
        return this.b;
    }

    public String c() {
        return this.a;
    }

    public q2 d() {
        return this.f6217d;
    }

    public int e() {
        return this.f6219f;
    }

    public k3 f() {
        return this.f6218e;
    }

    public s3 g() {
        return this.f6220g;
    }

    public JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(o2.h.A0, n());
            jSONObject.put(o2.h.B0, this.h);
            jSONObject.put(o2.h.C0, this.i);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public uc j() {
        return this.c;
    }

    public boolean m() {
        return this.k == a.IN_RECOVERING;
    }

    public boolean n() {
        return this.k == a.RECOVERED;
    }

    public void o() {
        a aVar = this.k;
        a aVar2 = a.IN_RECOVERING;
        if (aVar != aVar2) {
            this.h++;
            Logger.i(this.j, "recoveringStarted - trial number " + this.h);
            this.k = aVar2;
        }
    }
}
