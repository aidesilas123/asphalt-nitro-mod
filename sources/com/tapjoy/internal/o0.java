package com.tapjoy.internal;

import com.tapjoy.TJCacheListener;
import com.tapjoy.TapjoyCache;
import com.tapjoy.TapjoyLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public final class o0 extends Thread {
    public final /* synthetic */ JSONArray a;
    public final /* synthetic */ TJCacheListener b;
    public final /* synthetic */ TapjoyCache c;

    public o0(TapjoyCache tapjoyCache, JSONArray jSONArray, TJCacheListener tJCacheListener) {
        this.c = tapjoyCache;
        this.a = jSONArray;
        this.b = tJCacheListener;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        TapjoyLog.d("TapjoyCache", "Starting to cache asset group size of " + this.a.length());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.a.length(); i++) {
            try {
                Future<Boolean> futureC = this.c.c(this.a.getJSONObject(i));
                if (futureC != null) {
                    arrayList.add(futureC);
                }
            } catch (JSONException unused) {
                TapjoyLog.e("TapjoyCache", "Failed to load JSON object from JSONArray");
            }
        }
        Iterator it = arrayList.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            try {
            } catch (InterruptedException e2) {
                TapjoyLog.e("TapjoyCache", "Caching thread failed: " + e2.toString());
            } catch (ExecutionException e3) {
                TapjoyLog.e("TapjoyCache", "Caching thread failed: " + e3.toString());
            }
            if (!((Boolean) ((Future) it.next()).get()).booleanValue()) {
                i2 = 2;
            }
        }
        TapjoyLog.d("TapjoyCache", "Finished caching group");
        TJCacheListener tJCacheListener = this.b;
        if (tJCacheListener != null) {
            tJCacheListener.onCachingComplete(i2);
        }
    }
}
