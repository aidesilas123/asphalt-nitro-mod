package com.fyber.inneractive.sdk.util;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.fyber.inneractive.sdk.util.v;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class u extends BroadcastReceiver {
    public final /* synthetic */ v a;

    public u(v vVar) {
        this.a = vVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean zIsKeyguardLocked;
        v vVar = this.a;
        vVar.getClass();
        IAlog.a("%sonReceive. action = %s", IAlog.a(vVar), intent.getAction());
        v vVar2 = this.a;
        synchronized (vVar2) {
            try {
                zIsKeyguardLocked = ((KeyguardManager) context.getSystemService("keyguard")).isKeyguardLocked();
            } catch (Exception unused) {
                IAlog.a("%sFailed to get lock screen status", IAlog.a(vVar2));
                zIsKeyguardLocked = false;
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                vVar2.b = true;
            } else if (("android.intent.action.SCREEN_ON".equals(intent.getAction()) && !zIsKeyguardLocked) || "android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                vVar2.b = false;
            }
            IAlog.a("%sNew screen state is locked: %s. number of listeners: %d", IAlog.a(vVar2), Boolean.valueOf(vVar2.b), Integer.valueOf(vVar2.a.size()));
            Iterator<v.b> it = vVar2.a.iterator();
            while (it.hasNext()) {
                it.next().c(vVar2.b);
            }
        }
    }
}
