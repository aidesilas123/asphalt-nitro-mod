package com.google.firebase.iid;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: com.google.firebase:firebase-iid@@21.1.0 */
/* JADX INFO: loaded from: classes3.dex */
class SyncTask implements Runnable {
    private final long a;
    private final PowerManager.WakeLock b;
    private final FirebaseInstanceId c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    ExecutorService f4095d = FirebaseIidExecutors.b();

    /* JADX INFO: compiled from: com.google.firebase:firebase-iid@@21.1.0 */
    @VisibleForTesting
    static class ConnectivityChangeReceiver extends BroadcastReceiver {
        private SyncTask a;

        public ConnectivityChangeReceiver(SyncTask syncTask) {
            this.a = syncTask;
        }

        public void a() {
            if (FirebaseInstanceId.q()) {
                Log.d("FirebaseInstanceId", "Connectivity change received registered");
            }
            this.a.b().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SyncTask syncTask = this.a;
            if (syncTask != null && syncTask.c()) {
                if (FirebaseInstanceId.q()) {
                    Log.d("FirebaseInstanceId", "Connectivity changed. Starting background sync.");
                }
                this.a.c.f(this.a, 0L);
                this.a.b().unregisterReceiver(this);
                this.a = null;
            }
        }
    }

    @VisibleForTesting
    SyncTask(FirebaseInstanceId firebaseInstanceId, long j) {
        this.c = firebaseInstanceId;
        this.a = j;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) b().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.b = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
    }

    Context b() {
        return this.c.g().i();
    }

    boolean c() {
        ConnectivityManager connectivityManager = (ConnectivityManager) b().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @VisibleForTesting
    boolean d() throws IOException {
        if (!this.c.E(this.c.o())) {
            return true;
        }
        try {
            if (this.c.d() == null) {
                Log.e("FirebaseInstanceId", "Token retrieval failed: null");
                return false;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Token successfully retrieved");
            }
            return true;
        } catch (IOException e2) {
            if (!GmsRpc.f(e2.getMessage())) {
                if (e2.getMessage() != null) {
                    throw e2;
                }
                Log.w("FirebaseInstanceId", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            }
            String message = e2.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 52);
            sb.append("Token retrieval failed: ");
            sb.append(message);
            sb.append(". Will retry token retrieval");
            Log.w("FirebaseInstanceId", sb.toString());
            return false;
        } catch (SecurityException unused) {
            Log.w("FirebaseInstanceId", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public void run() {
        if (ServiceStarter.getInstance().b(b())) {
            this.b.acquire();
        }
        try {
            try {
                this.c.B(true);
                if (!this.c.r()) {
                    this.c.B(false);
                    if (!ServiceStarter.getInstance().b(b())) {
                        return;
                    }
                } else if (!ServiceStarter.getInstance().a(b()) || c()) {
                    if (d()) {
                        this.c.B(false);
                    } else {
                        this.c.D(this.a);
                    }
                    if (!ServiceStarter.getInstance().b(b())) {
                        return;
                    }
                } else {
                    new ConnectivityChangeReceiver(this).a();
                    if (!ServiceStarter.getInstance().b(b())) {
                        return;
                    }
                }
            } catch (IOException e2) {
                String message = e2.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 93);
                sb.append("Topic sync or token retrieval failed on hard failure exceptions: ");
                sb.append(message);
                sb.append(". Won't retry the operation.");
                Log.e("FirebaseInstanceId", sb.toString());
                this.c.B(false);
                if (!ServiceStarter.getInstance().b(b())) {
                    return;
                }
            }
            this.b.release();
        } catch (Throwable th) {
            if (ServiceStarter.getInstance().b(b())) {
                this.b.release();
            }
            throw th;
        }
    }
}
