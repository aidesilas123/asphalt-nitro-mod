package com.json.sdk.service.Connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.json.c5;
import com.json.d5;
import com.json.l2;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class BroadcastReceiverStrategy implements c5 {
    private final d5 a;
    private BroadcastReceiver b = new a();

    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String strB = l2.b(context);
            if (strB.equals("none")) {
                BroadcastReceiverStrategy.this.a.a();
            } else {
                BroadcastReceiverStrategy.this.a.a(strB, new JSONObject());
            }
        }
    }

    public BroadcastReceiverStrategy(d5 d5Var) {
        this.a = d5Var;
    }

    @Override // com.json.c5
    public void a() {
        this.b = null;
    }

    @Override // com.json.c5
    public void a(Context context) {
        try {
            context.unregisterReceiver(this.b);
        } catch (IllegalArgumentException unused) {
        } catch (Exception e2) {
            Log.e("ContentValues", "unregisterConnectionReceiver - " + e2);
        }
    }

    @Override // com.json.c5
    public void b(Context context) {
        try {
            context.registerReceiver(this.b, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.json.c5
    public JSONObject c(Context context) {
        return new JSONObject();
    }
}
