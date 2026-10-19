package com.iab.omid.library.jungroup.adsession;

import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.UUID;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends b {
    public static final /* synthetic */ int k = 0;
    public final d a;
    public final c b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.iab.omid.library.jungroup.e.a f4955d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.iab.omid.library.jungroup.publisher.a f4956e;
    public boolean i;
    public boolean j;
    public final ArrayList c = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4957f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4958g = false;
    public final String h = UUID.randomUUID().toString();

    static {
        Pattern.compile("^[a-zA-Z0-9 ]+$");
    }

    public l(c cVar, d dVar) {
        com.iab.omid.library.jungroup.publisher.a bVar;
        this.b = cVar;
        this.a = dVar;
        a(null);
        if (dVar.a() == e.HTML || dVar.a() == e.JAVASCRIPT) {
            bVar = new com.iab.omid.library.jungroup.publisher.b(dVar.d());
        } else {
            bVar = new com.iab.omid.library.jungroup.publisher.c(dVar.c(), dVar.b());
        }
        this.f4956e = bVar;
        this.f4956e.a();
        com.iab.omid.library.jungroup.b.a.a().a(this);
        this.f4956e.a(cVar);
    }

    @Override // com.iab.omid.library.jungroup.adsession.b
    public final void a() {
        if (this.f4957f) {
            return;
        }
        this.f4957f = true;
        com.iab.omid.library.jungroup.b.a aVar = com.iab.omid.library.jungroup.b.a.c;
        boolean z = aVar.b.size() > 0;
        aVar.b.add(this);
        if (!z) {
            com.iab.omid.library.jungroup.b.g gVarA = com.iab.omid.library.jungroup.b.g.a();
            gVarA.getClass();
            com.iab.omid.library.jungroup.b.b bVar = com.iab.omid.library.jungroup.b.b.f4960d;
            bVar.c = gVarA;
            bVar.a = true;
            bVar.b = false;
            bVar.a();
            com.iab.omid.library.jungroup.walking.b.h.getClass();
            if (com.iab.omid.library.jungroup.walking.b.j == null) {
                Handler handler = new Handler(Looper.getMainLooper());
                com.iab.omid.library.jungroup.walking.b.j = handler;
                handler.post(com.iab.omid.library.jungroup.walking.b.k);
                com.iab.omid.library.jungroup.walking.b.j.postDelayed(com.iab.omid.library.jungroup.walking.b.l, 200L);
            }
            com.iab.omid.library.jungroup.a.d dVar = gVarA.f4963d;
            int streamVolume = dVar.b.getStreamVolume(3);
            int streamMaxVolume = dVar.b.getStreamMaxVolume(3);
            dVar.c.getClass();
            float f2 = 1.0f;
            if (streamMaxVolume <= 0 || streamVolume <= 0) {
                f2 = 0.0f;
            } else {
                float f3 = streamVolume / streamMaxVolume;
                if (f3 <= 1.0f) {
                    f2 = f3;
                }
            }
            dVar.f4941e = f2;
            com.iab.omid.library.jungroup.b.g gVar = (com.iab.omid.library.jungroup.b.g) dVar.f4940d;
            gVar.a = f2;
            if (gVar.f4964e == null) {
                gVar.f4964e = aVar;
            }
            Iterator it = Collections.unmodifiableCollection(gVar.f4964e.b).iterator();
            while (it.hasNext()) {
                com.iab.omid.library.jungroup.b.f.a(((l) it.next()).f4956e.c(), "setDeviceVolume", Float.valueOf(f2));
            }
            dVar.a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, dVar);
        }
        com.iab.omid.library.jungroup.b.f.a(this.f4956e.c(), "setDeviceVolume", Float.valueOf(com.iab.omid.library.jungroup.b.g.a().a));
        this.f4956e.a(this, this.a);
    }

    public final void a(View view) {
        this.f4955d = new com.iab.omid.library.jungroup.e.a(view);
    }

    @Override // com.iab.omid.library.jungroup.adsession.b
    public final void a(View view, g gVar) {
        com.iab.omid.library.jungroup.b.c cVar;
        if (this.f4958g) {
            return;
        }
        Iterator it = this.c.iterator();
        while (true) {
            if (!it.hasNext()) {
                cVar = null;
                break;
            } else {
                cVar = (com.iab.omid.library.jungroup.b.c) it.next();
                if (cVar.a.get() == view) {
                    break;
                }
            }
        }
        if (cVar == null) {
            this.c.add(new com.iab.omid.library.jungroup.b.c(view, gVar));
        }
    }

    public final boolean b() {
        return i.NATIVE == this.b.a;
    }

    public final boolean c() {
        return i.NATIVE == this.b.b;
    }
}
