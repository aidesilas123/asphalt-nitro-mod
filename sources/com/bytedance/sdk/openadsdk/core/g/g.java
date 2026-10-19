package com.bytedance.sdk.openadsdk.core.g;

import android.util.Pair;
import android.view.View;
import com.iab.omid.library.bytedance2.adsession.AdEvents;
import com.iab.omid.library.bytedance2.adsession.AdSession;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.bytedance2.adsession.media.Position;
import com.iab.omid.library.bytedance2.adsession.media.VastProperties;
import java.util.Set;

/* JADX INFO: compiled from: ViewabilityTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {
    protected String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected VastProperties f1532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AdSession f1533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AdEvents f1534f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1535g = false;
    protected boolean a = false;
    protected int b = 0;

    public g(AdSession adSession, AdEvents adEvents, View view) {
        this.f1533e = adSession;
        this.f1534f = adEvents;
        this.c = adSession.getAdSessionId();
        a(view);
    }

    void a(float f2, boolean z) {
    }

    public void a(int i) {
        int i2;
        int i3;
        if (this.f1533e == null || this.f1534f == null) {
            return;
        }
        boolean z = false;
        if (e.c()) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4 && (i3 = this.b) != 0 && i3 != 4) {
                            this.f1533e.finish();
                            this.a = false;
                            z = true;
                        }
                    } else if (!this.f1535g && ((i2 = this.b) == 1 || i2 == 2)) {
                        this.f1534f.impressionOccurred();
                        this.f1535g = true;
                        z = true;
                    }
                } else if (this.b == 0) {
                    this.f1533e.start();
                    if (this.f1532d == null) {
                        this.f1532d = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
                    }
                    this.f1534f.loaded(this.f1532d);
                    this.a = true;
                    this.f1532d = null;
                    z = true;
                }
            } else if (this.b == 0) {
                this.f1533e.start();
                this.f1534f.loaded();
                this.a = true;
                z = true;
            }
        }
        if (z) {
            this.b = i;
        }
    }

    void a(View view) {
        AdSession adSession;
        if (view == null || (adSession = this.f1533e) == null) {
            return;
        }
        adSession.registerAdView(view);
    }

    public void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose) {
        AdSession adSession = this.f1533e;
        if (adSession != null) {
            adSession.addFriendlyObstruction(view, friendlyObstructionPurpose, null);
        }
    }

    public void a(Set<Pair<View, FriendlyObstructionPurpose>> set) {
        for (Pair<View, FriendlyObstructionPurpose> pair : set) {
            a((View) pair.first, (FriendlyObstructionPurpose) pair.second);
        }
    }

    public void a(boolean z) {
    }

    public void a(boolean z, float f2) {
    }

    boolean a() {
        return this.a;
    }

    void b() {
        a(1);
    }

    void b(int i) {
    }

    void c() {
        a(4);
    }

    public void d() {
        a(3);
    }
}
