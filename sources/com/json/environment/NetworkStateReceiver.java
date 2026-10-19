package com.json.environment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.s9;

/* JADX INFO: loaded from: classes4.dex */
public class NetworkStateReceiver extends BroadcastReceiver {
    private ConnectivityManager a;
    private s9 b;
    private boolean c = false;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (NetworkStateReceiver.this.b != null) {
                NetworkStateReceiver.this.b.a(NetworkStateReceiver.this.c);
            }
        }
    }

    public NetworkStateReceiver(Context context, s9 s9Var) {
        this.b = s9Var;
        if (context != null) {
            this.a = (ConnectivityManager) context.getSystemService("connectivity");
        }
        b();
    }

    private boolean b() {
        boolean z = this.c;
        ConnectivityManager connectivityManager = this.a;
        if (connectivityManager != null) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                this.c = activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
            } catch (Exception unused) {
                this.c = false;
            }
        } else {
            this.c = false;
        }
        return z != this.c;
    }

    private void c() {
        IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new a());
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getExtras() == null || !b()) {
            return;
        }
        c();
    }
}
