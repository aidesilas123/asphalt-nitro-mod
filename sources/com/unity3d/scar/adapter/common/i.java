package com.unity3d.scar.adapter.common;

import android.app.Activity;
import android.content.Context;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: ScarAdapterBase.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class i implements d {
    protected com.unity3d.scar.adapter.common.l.c a;
    protected Map<String, com.unity3d.scar.adapter.common.scarads.a> b = new ConcurrentHashMap();
    protected com.unity3d.scar.adapter.common.scarads.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected b<j> f8063d;

    /* JADX INFO: compiled from: ScarAdapterBase.java */
    class a implements Runnable {
        final /* synthetic */ Activity a;

        a(Activity activity) {
            this.a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.c.show(this.a);
        }
    }

    public i(b<j> bVar) {
        this.f8063d = bVar;
    }

    @Override // com.unity3d.scar.adapter.common.d
    public void a(Context context, boolean z, com.unity3d.scar.adapter.common.l.b bVar) {
        this.a.a(context, z, bVar);
    }

    @Override // com.unity3d.scar.adapter.common.d
    public void b(Context context, String str, UnityAdFormat unityAdFormat, com.unity3d.scar.adapter.common.l.b bVar) {
        this.a.b(context, str, unityAdFormat, bVar);
    }

    @Override // com.unity3d.scar.adapter.common.d
    public void d(Activity activity, String str, String str2) {
        com.unity3d.scar.adapter.common.scarads.a aVar = this.b.get(str2);
        if (aVar != null) {
            this.c = aVar;
            Utils.runOnUiThread(new a(activity));
            return;
        }
        this.f8063d.handleError(GMAAdsError.NoAdsError(str2, str, "Could not find ad for placement '" + str2 + "'."));
    }
}
