package com.iab.omid.library.jungroup.a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import com.iab.omid.library.jungroup.adsession.l;
import com.iab.omid.library.jungroup.b.f;
import com.iab.omid.library.jungroup.b.g;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends ContentObserver {
    public final Context a;
    public final AudioManager b;
    public final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c f4940d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f4941e;

    public d(Handler handler, Context context, a aVar, g gVar) {
        super(handler);
        this.a = context;
        this.b = (AudioManager) context.getSystemService("audio");
        this.c = aVar;
        this.f4940d = gVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        int streamVolume = this.b.getStreamVolume(3);
        int streamMaxVolume = this.b.getStreamMaxVolume(3);
        this.c.getClass();
        float f2 = 1.0f;
        if (streamMaxVolume <= 0 || streamVolume <= 0) {
            f2 = 0.0f;
        } else {
            float f3 = streamVolume / streamMaxVolume;
            if (f3 <= 1.0f) {
                f2 = f3;
            }
        }
        if (f2 != this.f4941e) {
            this.f4941e = f2;
            g gVar = (g) this.f4940d;
            gVar.a = f2;
            if (gVar.f4964e == null) {
                gVar.f4964e = com.iab.omid.library.jungroup.b.a.c;
            }
            Iterator it = Collections.unmodifiableCollection(gVar.f4964e.b).iterator();
            while (it.hasNext()) {
                f.a(((l) it.next()).f4956e.c(), "setDeviceVolume", Float.valueOf(f2));
            }
        }
    }
}
