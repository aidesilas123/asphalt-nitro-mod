package com.fyber.inneractive.sdk.ignite;

import android.os.RemoteException;
import com.digitalturbine.ignite.cl.aidl.IIgniteServiceCallback;
import com.fyber.inneractive.sdk.util.IAlog;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a extends IIgniteServiceCallback.Stub {
    public final n a;

    public a(n nVar) {
        this.a = nVar;
    }

    @Override // com.digitalturbine.ignite.cl.aidl.IIgniteServiceCallback
    public void onError(String str) throws RemoteException {
        IAlog.a("AuthenticationCallback onError %s", str);
        this.a.b(str);
    }

    @Override // com.digitalturbine.ignite.cl.aidl.IIgniteServiceCallback
    public void onProgress(String str) throws RemoteException {
        IAlog.a("AuthenticationCallback onProgress %s", str);
    }

    @Override // com.digitalturbine.ignite.cl.aidl.IIgniteServiceCallback
    public void onScheduled(String str) throws RemoteException {
        IAlog.a("AuthenticationCallback onScheduled %s", str);
    }

    @Override // com.digitalturbine.ignite.cl.aidl.IIgniteServiceCallback
    public void onStart(String str) throws RemoteException {
        IAlog.a("AuthenticationCallback onStart %s", str);
    }

    @Override // com.digitalturbine.ignite.cl.aidl.IIgniteServiceCallback
    public void onSuccess(String str) throws RemoteException {
        String string;
        IAlog.a("AuthenticationCallback onSuccess %s", str);
        try {
            string = new JSONObject(str).getJSONObject("data").getString("token");
        } catch (Exception unused) {
            IAlog.a("Failed to resolve ignite clientToken", new Object[0]);
            string = null;
        }
        this.a.d(string);
    }
}
