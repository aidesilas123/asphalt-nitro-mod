package com.iab.omid.library.jungroup.adsession;

import com.json.o2;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public final l a;

    public a(l lVar) {
        this.a = lVar;
    }

    public static a a(b bVar) {
        l lVar = (l) bVar;
        com.iab.omid.library.jungroup.publisher.a aVar = lVar.f4956e;
        if (aVar.b != null) {
            throw new IllegalStateException("AdEvents already exists for AdSession");
        }
        if (lVar.f4958g) {
            throw new IllegalStateException("AdSession is finished");
        }
        a aVar2 = new a(lVar);
        aVar.b = aVar2;
        return aVar2;
    }

    public final void a() {
        l lVar = this.a;
        if (lVar.f4958g) {
            throw new IllegalStateException("AdSession is finished");
        }
        if (!lVar.b()) {
            throw new IllegalStateException("Impression event is not expected from the Native AdSession");
        }
        l lVar2 = this.a;
        if (!(lVar2.f4957f && !lVar2.f4958g)) {
            try {
                lVar2.a();
            } catch (Exception unused) {
            }
        }
        l lVar3 = this.a;
        if (lVar3.f4957f && !lVar3.f4958g) {
            if (lVar3.i) {
                throw new IllegalStateException("Impression event can only be sent once");
            }
            com.iab.omid.library.jungroup.b.f.a(lVar3.f4956e.c(), "publishImpressionEvent", new Object[0]);
            lVar3.i = true;
        }
    }

    public final void a(com.iab.omid.library.jungroup.adsession.media.d dVar) {
        com.iab.omid.library.jungroup.d.d.a(this.a);
        if (!this.a.b()) {
            throw new IllegalStateException("Impression event is not expected from the Native AdSession");
        }
        l lVar = this.a;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", dVar.a);
            if (dVar.a) {
                jSONObject.put("skipOffset", dVar.b);
            }
            jSONObject.put("autoPlay", dVar.c);
            jSONObject.put(o2.h.L, dVar.f4959d);
        } catch (JSONException e2) {
            com.iab.omid.library.jungroup.d.c.a("VastProperties: JSON error", e2);
        }
        if (lVar.j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
        com.iab.omid.library.jungroup.b.f.a(lVar.f4956e.c(), "publishLoadedEvent", jSONObject);
        lVar.j = true;
    }
}
