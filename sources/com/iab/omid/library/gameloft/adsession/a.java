package com.iab.omid.library.gameloft.adsession;

import android.view.View;
import com.iab.omid.library.gameloft.d.e;
import com.iab.omid.library.gameloft.publisher.AdSessionStatePublisher;
import com.iab.omid.library.gameloft.publisher.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class a extends AdSession {
    private final AdSessionContext a;
    private final AdSessionConfiguration b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.iab.omid.library.gameloft.e.a f4876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdSessionStatePublisher f4877e;
    private boolean i;
    private final List<com.iab.omid.library.gameloft.e.a> c = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4878f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4879g = false;
    private String h = UUID.randomUUID().toString();

    a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this.b = adSessionConfiguration;
        this.a = adSessionContext;
        c(null);
        this.f4877e = adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML ? new com.iab.omid.library.gameloft.publisher.a(adSessionContext.getWebView()) : new b(adSessionContext.getVerificationScriptResources(), adSessionContext.getOmidJsScriptContent());
        this.f4877e.a();
        com.iab.omid.library.gameloft.b.a.a().a(this);
        this.f4877e.a(adSessionConfiguration);
    }

    private com.iab.omid.library.gameloft.e.a a(View view) {
        for (com.iab.omid.library.gameloft.e.a aVar : this.c) {
            if (aVar.get() == view) {
                return aVar;
            }
        }
        return null;
    }

    private void b(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    private void c(View view) {
        this.f4876d = new com.iab.omid.library.gameloft.e.a(view);
    }

    private void d(View view) {
        Collection<a> collectionB = com.iab.omid.library.gameloft.b.a.a().b();
        if (collectionB == null || collectionB.size() <= 0) {
            return;
        }
        for (a aVar : collectionB) {
            if (aVar != this && aVar.c() == view) {
                aVar.f4876d.clear();
            }
        }
    }

    private void i() {
        if (this.i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    public List<com.iab.omid.library.gameloft.e.a> a() {
        return this.c;
    }

    @Override // com.iab.omid.library.gameloft.adsession.AdSession
    public void addFriendlyObstruction(View view) {
        if (this.f4879g) {
            return;
        }
        b(view);
        if (a(view) == null) {
            this.c.add(new com.iab.omid.library.gameloft.e.a(view));
        }
    }

    void b() {
        i();
        getAdSessionStatePublisher().g();
        this.i = true;
    }

    public View c() {
        return this.f4876d.get();
    }

    public boolean d() {
        return this.f4878f && !this.f4879g;
    }

    public boolean e() {
        return this.f4878f;
    }

    @Override // com.iab.omid.library.gameloft.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (this.f4879g) {
            throw new IllegalStateException("AdSession is finished");
        }
        e.a(errorType, "Error type is null");
        e.a(str, "Message is null");
        getAdSessionStatePublisher().a(errorType, str);
    }

    public boolean f() {
        return this.f4879g;
    }

    @Override // com.iab.omid.library.gameloft.adsession.AdSession
    public void finish() {
        if (this.f4879g) {
            return;
        }
        this.f4876d.clear();
        removeAllFriendlyObstructions();
        this.f4879g = true;
        getAdSessionStatePublisher().f();
        com.iab.omid.library.gameloft.b.a.a().c(this);
        getAdSessionStatePublisher().b();
        this.f4877e = null;
    }

    public boolean g() {
        return this.b.isNativeImpressionOwner();
    }

    @Override // com.iab.omid.library.gameloft.adsession.AdSession
    public String getAdSessionId() {
        return this.h;
    }

    @Override // com.iab.omid.library.gameloft.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f4877e;
    }

    public boolean h() {
        return this.b.isNativeVideoEventsOwner();
    }

    @Override // com.iab.omid.library.gameloft.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f4879g) {
            return;
        }
        e.a(view, "AdView is null");
        if (c() == view) {
            return;
        }
        c(view);
        getAdSessionStatePublisher().h();
        d(view);
    }

    @Override // com.iab.omid.library.gameloft.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f4879g) {
            return;
        }
        this.c.clear();
    }

    @Override // com.iab.omid.library.gameloft.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f4879g) {
            return;
        }
        b(view);
        com.iab.omid.library.gameloft.e.a aVarA = a(view);
        if (aVarA != null) {
            this.c.remove(aVarA);
        }
    }

    @Override // com.iab.omid.library.gameloft.adsession.AdSession
    public void start() {
        if (this.f4878f) {
            return;
        }
        this.f4878f = true;
        com.iab.omid.library.gameloft.b.a.a().b(this);
        this.f4877e.a(com.iab.omid.library.gameloft.b.e.a().d());
        this.f4877e.a(this, this.a);
    }
}
