package com.iab.omid.library.gameloft.b;

import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    @SuppressLint({"StaticFieldLeak"})
    private static b a = new b();
    private Context b;
    private BroadcastReceiver c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f4886f;

    public interface a {
        void a(boolean z);
    }

    private b() {
    }

    public static b a() {
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (this.f4885e != z) {
            this.f4885e = z;
            if (this.f4884d) {
                g();
                a aVar = this.f4886f;
                if (aVar != null) {
                    aVar.a(d());
                }
            }
        }
    }

    private void e() {
        this.c = new BroadcastReceiver() { // from class: com.iab.omid.library.gameloft.b.b.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                KeyguardManager keyguardManager;
                if (intent == null) {
                    return;
                }
                if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    b.this.a(true);
                } else {
                    if (!"android.intent.action.USER_PRESENT".equals(intent.getAction()) && (!"android.intent.action.SCREEN_ON".equals(intent.getAction()) || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null || keyguardManager.inKeyguardRestrictedInputMode())) {
                        return;
                    }
                    b.this.a(false);
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.b.registerReceiver(this.c, intentFilter);
    }

    private void f() {
        BroadcastReceiver broadcastReceiver;
        Context context = this.b;
        if (context == null || (broadcastReceiver = this.c) == null) {
            return;
        }
        context.unregisterReceiver(broadcastReceiver);
        this.c = null;
    }

    private void g() {
        boolean z = !this.f4885e;
        Iterator<com.iab.omid.library.gameloft.adsession.a> it = com.iab.omid.library.gameloft.b.a.a().b().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(z);
        }
    }

    public void a(@NonNull Context context) {
        this.b = context.getApplicationContext();
    }

    public void a(a aVar) {
        this.f4886f = aVar;
    }

    public void b() {
        e();
        this.f4884d = true;
        g();
    }

    public void c() {
        f();
        this.f4884d = false;
        this.f4885e = false;
        this.f4886f = null;
    }

    public boolean d() {
        return !this.f4885e;
    }
}
