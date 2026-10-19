package com.json.environment;

import android.app.Activity;
import android.content.Context;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class ContextProvider {
    private static volatile ContextProvider a;
    private Activity b;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ConcurrentHashMap<String, a> f6088d = new ConcurrentHashMap<>();

    public interface a {
        void onPause(Activity activity);

        void onResume(Activity activity);
    }

    private ContextProvider() {
    }

    public static ContextProvider getInstance() {
        if (a == null) {
            synchronized (ContextProvider.class) {
                if (a == null) {
                    a = new ContextProvider();
                }
            }
        }
        return a;
    }

    public Context getApplicationContext() {
        Activity activity;
        Context context = this.c;
        return (context != null || (activity = this.b) == null) ? context : activity.getApplicationContext();
    }

    public Activity getCurrentActiveActivity() {
        return this.b;
    }

    public void onPause(Activity activity) {
        if (activity != null) {
            Iterator<a> it = this.f6088d.values().iterator();
            while (it.hasNext()) {
                it.next().onPause(activity);
            }
        }
    }

    public void onResume(Activity activity) {
        if (activity != null) {
            this.b = activity;
            Iterator<a> it = this.f6088d.values().iterator();
            while (it.hasNext()) {
                it.next().onResume(this.b);
            }
        }
    }

    public void registerLifeCycleListener(a aVar) {
        this.f6088d.put(aVar.getClass().getSimpleName(), aVar);
    }

    public void updateActivity(Activity activity) {
        if (activity != null) {
            this.b = activity;
        }
    }

    public void updateAppContext(Context context) {
        if (context != null) {
            this.c = context;
        }
    }
}
