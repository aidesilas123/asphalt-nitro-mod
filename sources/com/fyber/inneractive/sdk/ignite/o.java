package com.fyber.inneractive.sdk.ignite;

import android.text.TextUtils;
import com.digitalturbine.ignite.cl.aidl.IIgniteServiceCallback;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.flow.p;
import com.fyber.inneractive.sdk.ignite.c;
import com.fyber.inneractive.sdk.ignite.g;
import com.fyber.inneractive.sdk.network.j0;
import com.fyber.inneractive.sdk.network.q0;
import com.fyber.inneractive.sdk.network.r;
import com.fyber.inneractive.sdk.network.x;
import com.fyber.inneractive.sdk.util.IAlog;
import com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class o extends IIgniteServiceCallback.Stub {
    public final n a;
    public final g.a b;

    public o(n nVar, g.a aVar) {
        this.a = nVar;
        this.b = aVar;
    }

    public final String a(String str) {
        try {
            return new JSONObject(str).optString("taskId");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.digitalturbine.ignite.cl.aidl.IIgniteServiceCallback
    public void onError(String str) {
        JSONObject jSONObjectOptJSONObject;
        IAlog.a("InstallCallback onError %s", str);
        if (this.a != null) {
            String strA = a(str);
            String strOptString = null;
            try {
                jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("data");
            } catch (Exception unused) {
            }
            String strOptString2 = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("message") : null;
            try {
                JSONObject jSONObjectOptJSONObject2 = new JSONObject(str).optJSONObject("data");
                if (jSONObjectOptJSONObject2 != null) {
                    strOptString = jSONObjectOptJSONObject2.optString("code");
                }
            } catch (Exception unused2) {
            }
            this.a.b(strA, strOptString2, strOptString);
        }
    }

    @Override // com.digitalturbine.ignite.cl.aidl.IIgniteServiceCallback
    public void onProgress(String str) {
        JSONObject jSONObjectOptJSONObject;
        IAlog.a("InstallCallback onProgress %s", str);
        try {
            String strA = a(str);
            JSONObject jSONObjectOptJSONObject2 = new JSONObject(str).optJSONObject("data");
            if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("progress")) == null) {
                return;
            }
            int iOptInt = jSONObjectOptJSONObject.optInt("action");
            double dOptDouble = jSONObjectOptJSONObject.optDouble("value");
            n nVar = this.a;
            if (nVar != null) {
                nVar.a(strA, iOptInt, dOptDouble);
            }
        } catch (Exception unused) {
            IAlog.a("Failed to resolve progress data", new Object[0]);
        }
    }

    @Override // com.digitalturbine.ignite.cl.aidl.IIgniteServiceCallback
    public void onScheduled(String str) {
        String strOptString;
        IAlog.a("InstallCallback onScheduled %s", str);
        try {
            String strA = a(str);
            try {
                strOptString = new JSONObject(str).getJSONObject("application").optString(HandleAndroidInvocationsUseCase.KEY_PACKAGE_NAME);
            } catch (Exception unused) {
                strOptString = null;
            }
            n nVar = this.a;
            if (nVar != null) {
                nVar.a(strA, strOptString);
            }
        } catch (Exception unused2) {
            IAlog.a("Failed to resolve taskId", new Object[0]);
        }
    }

    @Override // com.digitalturbine.ignite.cl.aidl.IIgniteServiceCallback
    public void onStart(String str) {
        IAlog.a("InstallCallback onStart %s", str);
        if (this.a != null) {
            this.a.a(a(str));
        }
    }

    @Override // com.digitalturbine.ignite.cl.aidl.IIgniteServiceCallback
    public void onSuccess(String str) {
        IAlog.a("InstallCallback onSuccess %s", str);
        if (this.a != null) {
            this.a.c(a(str));
            g.a aVar = this.b;
            if (aVar != null) {
                c.b bVar = (c.b) aVar;
                c cVar = c.this;
                String str2 = bVar.a.a;
                cVar.getClass();
                if (!TextUtils.isEmpty(str2)) {
                    j0 j0Var = new j0(new f(cVar, str2), str2, x.a().b());
                    IAConfigManager.M.s.a.offer(j0Var);
                    j0Var.a(q0.QUEUED);
                }
                c.d dVar = bVar.a;
                p<?> pVar = dVar.b;
                k kVar = dVar.c;
                j jVar = pVar.h;
                r rVar = r.IGNITE_FLOW_INSTALL_DONE;
                if (kVar == null) {
                    kVar = k.SINGLE_TAP;
                }
                ((p.a) jVar).a(rVar, kVar);
            }
        }
    }
}
