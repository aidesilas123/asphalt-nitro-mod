package com.iab.omid.library.applovin.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends ContentObserver {
    private final Context a;
    private final AudioManager b;
    private final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f4775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f4776e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.a = context;
        this.b = (AudioManager) context.getSystemService("audio");
        this.c = aVar;
        this.f4775d = cVar;
    }

    private float a() {
        return this.c.a(this.b.getStreamVolume(3), this.b.getStreamMaxVolume(3));
    }

    private boolean a(float f2) {
        return f2 != this.f4776e;
    }

    private void b() {
        this.f4775d.a(this.f4776e);
    }

    public void c() {
        this.f4776e = a();
        b();
        this.a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void d() {
        this.a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float fA = a();
        if (a(fA)) {
            this.f4776e = fA;
            b();
        }
    }
}
