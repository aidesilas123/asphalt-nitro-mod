package com.json;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Build;
import android.util.Log;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class q9 implements c5 {
    private String a = q9.class.getSimpleName();
    private int b = 23;
    private final d5 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ConnectivityManager.NetworkCallback f6529d;

    class a extends ConnectivityManager.NetworkCallback {
        final /* synthetic */ Context a;

        a(Context context) {
            this.a = context;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            if (network != null) {
                q9.this.c.a(l2.a(network, this.a), l2.a(this.a, network));
                return;
            }
            d5 d5Var = q9.this.c;
            String strB = l2.b(this.a);
            Context context = this.a;
            d5Var.a(strB, l2.a(context, l2.a(context)));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            if (network != null) {
                q9.this.c.b(l2.a(network, this.a), l2.a(this.a, network));
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
            if (network != null) {
                q9.this.c.b(l2.a(network, this.a), l2.a(this.a, network));
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            if (l2.b(this.a).equals("none")) {
                q9.this.c.a();
            }
        }
    }

    public q9(d5 d5Var) {
        this.c = d5Var;
    }

    @Override // com.json.c5
    public void a() {
        this.f6529d = null;
    }

    @Override // com.json.c5
    @SuppressLint({"NewApi"})
    public void a(Context context) {
        ConnectivityManager connectivityManager;
        if (Build.VERSION.SDK_INT < this.b || this.f6529d == null || context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return;
        }
        try {
            connectivityManager.unregisterNetworkCallback(this.f6529d);
        } catch (Exception unused) {
            Log.e(this.a, "NetworkCallback for was not registered or already unregistered");
        }
    }

    @Override // com.json.c5
    @SuppressLint({"NewApi", "MissingPermission"})
    public void b(Context context) {
        if (Build.VERSION.SDK_INT >= this.b) {
            a(context);
            if (l2.b(context).equals("none")) {
                this.c.a();
            }
            if (this.f6529d == null) {
                this.f6529d = new a(context);
            }
            NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(12).build();
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    connectivityManager.registerNetworkCallback(networkRequestBuild, this.f6529d);
                }
            } catch (Exception unused) {
                Log.e(this.a, "NetworkCallback was not able to register");
            }
        }
    }

    @Override // com.json.c5
    public JSONObject c(Context context) {
        return l2.a(context, l2.a(context));
    }
}
