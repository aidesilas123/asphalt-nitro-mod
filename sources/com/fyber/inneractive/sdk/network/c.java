package com.fyber.inneractive.sdk.network;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c implements com.fyber.inneractive.sdk.util.j0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Handler f2101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2102e;
    public final BlockingQueue<JSONObject> a = new LinkedBlockingQueue();
    public JSONArray b = new JSONArray();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2103f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2104g = false;
    public final HandlerThread c = new HandlerThread("EventCollectorHandlerThread", 0);

    public class a implements Runnable {
        public final /* synthetic */ int a;
        public final /* synthetic */ long b;

        public a(int i, long j) {
            this.a = i;
            this.b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f2101d.sendEmptyMessageDelayed(this.a, this.b);
        }
    }

    public void a(int i) {
        this.f2103f = true;
        this.f2102e = i;
        Handler handler = this.f2101d;
        if (handler != null && handler.hasMessages(12312329)) {
            this.f2101d.removeMessages(12312329);
        }
        a(12312329, this.f2102e * 1000);
    }

    public final void a(int i, long j) {
        Handler handler = this.f2101d;
        if (handler != null) {
            handler.post(new a(i, j));
        }
    }

    @Override // com.fyber.inneractive.sdk.util.j0
    public void handleMessage(Message message) {
        String string;
        int i = message.what;
        if (i == 12312329 || i == 20150330) {
            if (this.f2103f && this.a.size() > 0) {
                while (true) {
                    JSONObject jSONObjectPoll = null;
                    string = null;
                    if (this.a.size() <= 0) {
                        break;
                    }
                    try {
                        jSONObjectPoll = this.a.poll();
                    } catch (Throwable unused) {
                    }
                    if (jSONObjectPoll != null) {
                        this.b.put(jSONObjectPoll);
                    }
                }
                if (this.b.length() > 0) {
                    JSONArray jSONArray = this.b;
                    String strB = com.fyber.inneractive.sdk.config.a.b();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    try {
                        string = jSONArray.toString();
                    } catch (Throwable unused2) {
                    }
                    if (string != null) {
                        i0 i0Var = new i0(new e(this, strB, jSONArray, jCurrentTimeMillis), strB, string, x.a().b());
                        IAConfigManager.M.s.a.offer(i0Var);
                        i0Var.a(q0.QUEUED);
                    }
                    this.b = new JSONArray();
                }
            }
            Handler handler = this.f2101d;
            if (handler != null) {
                handler.removeMessages(12312329);
                a(12312329, this.f2102e * 1000);
            }
        }
    }
}
