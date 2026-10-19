package com.json;

import android.content.Context;
import android.os.Build;
import com.json.o2;
import com.json.sdk.service.Connectivity.BroadcastReceiverStrategy;
import com.json.sdk.utils.Logger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i2 implements d5 {
    private c5 a;

    protected i2(JSONObject jSONObject, Context context) {
        this.a = a(jSONObject, context);
        Logger.i(i2.class.getSimpleName(), "created ConnectivityAdapter with strategy " + this.a.getClass().getSimpleName());
    }

    private c5 a(JSONObject jSONObject, Context context) {
        if (jSONObject.optInt(o2.i.f0) == 1) {
            return new BroadcastReceiverStrategy(this);
        }
        return (Build.VERSION.SDK_INT < 23 || !k0.c(context, "android.permission.ACCESS_NETWORK_STATE")) ? new BroadcastReceiverStrategy(this) : new q9(this);
    }

    public JSONObject a(Context context) {
        return this.a.c(context);
    }

    @Override // com.json.d5
    public void a() {
    }

    @Override // com.json.d5
    public void a(String str, JSONObject jSONObject) {
    }

    public void b() {
        this.a.a();
    }

    public void b(Context context) {
        this.a.b(context);
    }

    @Override // com.json.d5
    public void b(String str, JSONObject jSONObject) {
    }

    public void c(Context context) {
        this.a.a(context);
    }
}
