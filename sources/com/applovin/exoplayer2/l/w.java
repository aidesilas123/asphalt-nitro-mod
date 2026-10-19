package com.applovin.exoplayer2.l;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class w {

    @Nullable
    private static w acF;
    private final Handler acG = new Handler(Looper.getMainLooper());
    private final CopyOnWriteArrayList<WeakReference<b>> Zl = new CopyOnWriteArrayList<>();
    private final Object acH = new Object();

    @GuardedBy("networkTypeLock")
    private int aaa = 0;

    public static final class a {
        private static volatile boolean acI;
    }

    public interface b {
        void onNetworkTypeChanged(int i);
    }

    private final class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int iL = w.l(context);
            int i = ai.acV;
            if (i >= 29 && !a.acI && iL == 5) {
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) com.applovin.exoplayer2.l.a.checkNotNull((TelephonyManager) context.getSystemService("phone"));
                    d dVar = new d();
                    if (i < 31) {
                        telephonyManager.listen(dVar, 1);
                    } else {
                        telephonyManager.listen(dVar, 1048576);
                    }
                    telephonyManager.listen(dVar, 0);
                    return;
                } catch (RuntimeException unused) {
                }
            }
            w.this.fw(iL);
        }
    }

    private class d extends PhoneStateListener {
        private d() {
        }

        @Override // android.telephony.PhoneStateListener
        @RequiresApi(31)
        public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
            int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
            w.this.fw(overrideNetworkType == 3 || overrideNetworkType == 4 ? 10 : 5);
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(@Nullable ServiceState serviceState) {
            String string = serviceState == null ? "" : serviceState.toString();
            w.this.fw(string.contains("nrState=CONNECTED") || string.contains("nrState=NOT_RESTRICTED") ? 10 : 5);
        }
    }

    private w(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new c(), intentFilter);
    }

    private static int a(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                return ai.acV >= 29 ? 9 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(b bVar) {
        bVar.onNetworkTypeChanged(pc());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fw(int i) {
        synchronized (this.acH) {
            if (this.aaa == i) {
                return;
            }
            this.aaa = i;
            for (WeakReference<b> weakReference : this.Zl) {
                b bVar = weakReference.get();
                if (bVar != null) {
                    bVar.onNetworkTypeChanged(i);
                } else {
                    this.Zl.remove(weakReference);
                }
            }
        }
    }

    public static synchronized w k(Context context) {
        if (acF == null) {
            acF = new w(context);
        }
        return acF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        return 2;
                    }
                    if (type != 4 && type != 5) {
                        if (type != 6) {
                            return type != 9 ? 8 : 7;
                        }
                        return 5;
                    }
                }
                return a(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i;
    }

    private void pd() {
        for (WeakReference<b> weakReference : this.Zl) {
            if (weakReference.get() == null) {
                this.Zl.remove(weakReference);
            }
        }
    }

    public void a(final b bVar) {
        pd();
        this.Zl.add(new WeakReference<>(bVar));
        this.acG.post(new Runnable() { // from class: com.applovin.exoplayer2.l.d0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b(bVar);
            }
        });
    }

    public int pc() {
        int i;
        synchronized (this.acH) {
            i = this.aaa;
        }
        return i;
    }
}
