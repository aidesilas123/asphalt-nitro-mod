package com.iab.omid.library.jungroup.adsession.media;

import com.iab.omid.library.jungroup.adsession.l;
import com.iab.omid.library.jungroup.b.f;
import com.iab.omid.library.jungroup.b.g;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public final l a;

    public b(l lVar) {
        this.a = lVar;
    }

    public static b a(com.iab.omid.library.jungroup.adsession.b bVar) {
        l lVar = (l) bVar;
        com.iab.omid.library.jungroup.d.d.a("AdSession is null", bVar);
        if (!lVar.c()) {
            throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
        }
        if (lVar.f4957f) {
            throw new IllegalStateException("AdSession is started");
        }
        if (lVar.f4958g) {
            throw new IllegalStateException("AdSession is finished");
        }
        com.iab.omid.library.jungroup.publisher.a aVar = lVar.f4956e;
        if (aVar.c != null) {
            throw new IllegalStateException("MediaEvents already exists for AdSession");
        }
        b bVar2 = new b(lVar);
        aVar.c = bVar2;
        return bVar2;
    }

    public final void a() {
        a aVar = a.CLICK;
        com.iab.omid.library.jungroup.d.d.a(this.a);
        JSONObject jSONObject = new JSONObject();
        com.iab.omid.library.jungroup.d.b.a(jSONObject, "interactionType", aVar);
        f.a(this.a.f4956e.c(), "publishMediaEvent", "adUserInteraction", jSONObject);
    }

    public final void a(float f2) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("Invalid Media duration");
        }
        com.iab.omid.library.jungroup.d.d.a(this.a);
        JSONObject jSONObject = new JSONObject();
        com.iab.omid.library.jungroup.d.b.a(jSONObject, "duration", Float.valueOf(f2));
        com.iab.omid.library.jungroup.d.b.a(jSONObject, "mediaPlayerVolume", Float.valueOf(1.0f));
        com.iab.omid.library.jungroup.d.b.a(jSONObject, "deviceVolume", Float.valueOf(g.a().a));
        f.a(this.a.f4956e.c(), "publishMediaEvent", "start", jSONObject);
    }
}
