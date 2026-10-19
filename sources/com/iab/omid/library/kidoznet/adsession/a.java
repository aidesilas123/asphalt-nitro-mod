package com.iab.omid.library.kidoznet.adsession;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.kidoznet.internal.c;
import com.iab.omid.library.kidoznet.internal.e;
import com.iab.omid.library.kidoznet.internal.h;
import com.iab.omid.library.kidoznet.publisher.AdSessionStatePublisher;
import com.iab.omid.library.kidoznet.publisher.b;
import com.iab.omid.library.kidoznet.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a extends AdSession {
    private static final Pattern l = Pattern.compile("^[a-zA-Z0-9 ]+$");
    private final AdSessionContext a;
    private final AdSessionConfiguration b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.iab.omid.library.kidoznet.weakreference.a f4979d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdSessionStatePublisher f4980e;
    private boolean i;
    private boolean j;
    private PossibleObstructionListener k;
    private final List<e> c = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4981f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4982g = false;
    private final String h = UUID.randomUUID().toString();

    a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this.b = adSessionConfiguration;
        this.a = adSessionContext;
        d(null);
        this.f4980e = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.kidoznet.publisher.a(adSessionContext.getWebView()) : new b(adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f4980e.i();
        c.c().a(this);
        this.f4980e.a(adSessionConfiguration);
    }

    private void a() {
        if (this.i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private static void a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    private void a(String str) {
        if (str != null) {
            if (str.length() > 50) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason over 50 characters in length");
            }
            if (!l.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
            }
        }
    }

    private e b(View view) {
        for (e eVar : this.c) {
            if (eVar.c().get() == view) {
                return eVar;
            }
        }
        return null;
    }

    private void b() {
        if (this.j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    private void c(View view) {
        Collection<a> collectionB = c.c().b();
        if (collectionB == null || collectionB.isEmpty()) {
            return;
        }
        for (a aVar : collectionB) {
            if (aVar != this && aVar.c() == view) {
                aVar.f4979d.clear();
            }
        }
    }

    private void d(View view) {
        this.f4979d = new com.iab.omid.library.kidoznet.weakreference.a(view);
    }

    public void a(List<com.iab.omid.library.kidoznet.weakreference.a> list) {
        if (e()) {
            ArrayList arrayList = new ArrayList();
            Iterator<com.iab.omid.library.kidoznet.weakreference.a> it = list.iterator();
            while (it.hasNext()) {
                View view = it.next().get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.k.onPossibleObstructionsDetected(this.h, arrayList);
        }
    }

    void a(@NonNull JSONObject jSONObject) {
        b();
        getAdSessionStatePublisher().a(jSONObject);
        this.j = true;
    }

    @Override // com.iab.omid.library.kidoznet.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        if (this.f4982g) {
            return;
        }
        a(view);
        a(str);
        if (b(view) == null) {
            this.c.add(new e(view, friendlyObstructionPurpose, str));
        }
    }

    public View c() {
        return this.f4979d.get();
    }

    public List<e> d() {
        return this.c;
    }

    public boolean e() {
        return this.k != null;
    }

    @Override // com.iab.omid.library.kidoznet.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (this.f4982g) {
            throw new IllegalStateException("AdSession is finished");
        }
        g.a(errorType, "Error type is null");
        g.a(str, "Message is null");
        getAdSessionStatePublisher().a(errorType, str);
    }

    public boolean f() {
        return this.f4981f && !this.f4982g;
    }

    @Override // com.iab.omid.library.kidoznet.adsession.AdSession
    public void finish() {
        if (this.f4982g) {
            return;
        }
        this.f4979d.clear();
        removeAllFriendlyObstructions();
        this.f4982g = true;
        getAdSessionStatePublisher().f();
        c.c().b(this);
        getAdSessionStatePublisher().b();
        this.f4980e = null;
        this.k = null;
    }

    public boolean g() {
        return this.f4982g;
    }

    @Override // com.iab.omid.library.kidoznet.adsession.AdSession
    public String getAdSessionId() {
        return this.h;
    }

    @Override // com.iab.omid.library.kidoznet.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f4980e;
    }

    public boolean h() {
        return this.b.isNativeImpressionOwner();
    }

    public boolean i() {
        return this.b.isNativeMediaEventsOwner();
    }

    public boolean j() {
        return this.f4981f;
    }

    void k() {
        a();
        getAdSessionStatePublisher().g();
        this.i = true;
    }

    void l() {
        b();
        getAdSessionStatePublisher().h();
        this.j = true;
    }

    @Override // com.iab.omid.library.kidoznet.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f4982g) {
            return;
        }
        g.a(view, "AdView is null");
        if (c() == view) {
            return;
        }
        d(view);
        getAdSessionStatePublisher().a();
        c(view);
    }

    @Override // com.iab.omid.library.kidoznet.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f4982g) {
            return;
        }
        this.c.clear();
    }

    @Override // com.iab.omid.library.kidoznet.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f4982g) {
            return;
        }
        a(view);
        e eVarB = b(view);
        if (eVarB != null) {
            this.c.remove(eVarB);
        }
    }

    @Override // com.iab.omid.library.kidoznet.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.k = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.kidoznet.adsession.AdSession
    public void start() {
        if (this.f4981f) {
            return;
        }
        this.f4981f = true;
        c.c().c(this);
        this.f4980e.a(h.c().b());
        this.f4980e.a(com.iab.omid.library.kidoznet.internal.a.a().b());
        this.f4980e.a(this, this.a);
    }
}
