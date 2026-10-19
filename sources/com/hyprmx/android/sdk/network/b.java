package com.hyprmx.android.sdk.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import com.hyprmx.android.sdk.activity.HyprMXBaseViewController;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends ConnectivityManager.NetworkCallback implements i {
    public final Context a;
    public final HashSet b;

    public b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
        this.b = new HashSet();
    }

    @Override // com.hyprmx.android.sdk.network.i
    public final void a(HyprMXBaseViewController listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.b.add(listener);
        if (this.b.size() == 1) {
            Object systemService = this.a.getSystemService("connectivity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ((ConnectivityManager) systemService).registerNetworkCallback(new NetworkRequest.Builder().build(), this);
        }
    }

    @Override // com.hyprmx.android.sdk.network.i
    public final void a(h listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (this.b.remove(listener) && this.b.isEmpty()) {
            Object systemService = this.a.getSystemService("connectivity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            try {
                ((ConnectivityManager) systemService).unregisterNetworkCallback(this);
            } catch (IllegalStateException unused) {
                HyprMXLog.d("Exception caught de-registering the network monitor");
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((h) it.next()).b(true);
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((h) it.next()).b(false);
        }
    }
}
