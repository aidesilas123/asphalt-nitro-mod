package org.greenrobot.eventbus.android;

import android.os.Looper;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.e;
import org.greenrobot.eventbus.f;
import org.greenrobot.eventbus.j;

/* JADX INFO: compiled from: DefaultAndroidMainThreadSupport.java */
/* JADX INFO: loaded from: classes5.dex */
public class b implements f {
    @Override // org.greenrobot.eventbus.f
    public j a(EventBus eventBus) {
        return new e(eventBus, Looper.getMainLooper(), 10);
    }

    @Override // org.greenrobot.eventbus.f
    public boolean b() {
        return Looper.getMainLooper() == Looper.myLooper();
    }
}
