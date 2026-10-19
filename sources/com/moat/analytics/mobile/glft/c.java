package com.moat.analytics.mobile.glft;

import android.os.Handler;
import android.view.View;
import com.moat.analytics.mobile.glft.f;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
abstract class c<PlayerOrIMAAd> extends b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final MoatAdEventType[] f7643e = {MoatAdEventType.AD_EVT_FIRST_QUARTILE, MoatAdEventType.AD_EVT_MID_POINT, MoatAdEventType.AD_EVT_THIRD_QUARTILE};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Map<MoatAdEventType, Integer> f7644f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Handler f7645g;
    Map<String, String> h;
    WeakReference<PlayerOrIMAAd> i;
    WeakReference<View> j;
    private boolean k;
    private Double l;
    private final f m;
    private final String n;

    c(String str) {
        super(null, false, true);
        n.a(3, "MoatBaseVideoTracker", this, "Initializing.");
        this.n = str;
        f fVar = new f(a.a(), f.a.VIDEO);
        this.m = fVar;
        fVar.a(str);
        super.a(fVar.b);
        super.a(fVar.a);
        this.f7644f = new HashMap();
        this.f7645g = new Handler();
        this.k = false;
        this.l = Double.valueOf(1.0d);
    }

    private void b(MoatAdEvent moatAdEvent) {
        JSONObject jSONObjectA = a(moatAdEvent);
        n.a(3, "MoatBaseVideoTracker", this, String.format("Received event: %s", jSONObjectA.toString()));
        this.a.a(this.m.c, jSONObjectA);
        MoatAdEventType moatAdEventType = moatAdEvent.f7636d;
        if (moatAdEventType == MoatAdEventType.AD_EVT_COMPLETE || moatAdEventType == MoatAdEventType.AD_EVT_STOPPED || moatAdEventType == MoatAdEventType.AD_EVT_SKIPPED) {
            this.f7644f.put(moatAdEventType, 1);
            e();
        }
    }

    private void g() {
        Map<String, Object> mapD = d();
        Integer num = (Integer) mapD.get("width");
        Integer num2 = (Integer) mapD.get("height");
        Integer num3 = (Integer) mapD.get("duration");
        n.a(3, "MoatBaseVideoTracker", this, String.format(Locale.ROOT, "Player metadata: height = %d, width = %d, duration = %d", num2, num, num3));
        this.m.a(this.n, this.h, num, num2, num3);
        super.changeTargetView(this.j.get());
        super.startTracking();
    }

    JSONObject a(MoatAdEvent moatAdEvent) {
        if (Double.isNaN(moatAdEvent.c.doubleValue())) {
            try {
                moatAdEvent.c = Double.valueOf(p.a());
            } catch (Exception unused) {
                moatAdEvent.c = Double.valueOf(1.0d);
            }
        }
        Locale locale = Locale.ROOT;
        n.a(3, "MoatBaseVideoTracker", this, String.format(locale, "adVolume before adjusting for player volume %f", moatAdEvent.c));
        Double dValueOf = Double.valueOf(moatAdEvent.c.doubleValue() * this.l.doubleValue());
        moatAdEvent.c = dValueOf;
        n.a(3, "MoatBaseVideoTracker", this, String.format(locale, "adVolume after adjusting for player volume %f", dValueOf));
        return new JSONObject(moatAdEvent.a());
    }

    boolean a(Integer num, Integer num2) {
        return ((double) Math.abs(num2.intValue() - num.intValue())) <= Math.min(750.0d, ((double) num2.intValue()) * 0.05d);
    }

    public boolean a(Map<String, String> map, PlayerOrIMAAd playerorimaad, View view) {
        boolean z;
        String str;
        boolean z2 = false;
        if (map == null) {
            try {
                n.a(3, "MoatBaseVideoTracker", this, "trackVideoAd received null adIds object. Not tracking.");
                z = false;
            } catch (Exception e2) {
                l.a(e2);
            }
        } else {
            z = true;
        }
        if (view == null) {
            n.a(3, "MoatBaseVideoTracker", this, "trackVideoAd received null video view instance");
        }
        if (playerorimaad == null) {
            n.a(3, "MoatBaseVideoTracker", this, "trackVideoAd received null ad instance. Not tracking.");
            z = false;
        }
        if (z) {
            Object[] objArr = new Object[3];
            objArr[0] = new JSONObject(map).toString();
            objArr[1] = playerorimaad.toString();
            if (view != null) {
                str = view.getClass().getSimpleName() + "@" + view.hashCode();
            } else {
                str = "null";
            }
            objArr[2] = str;
            n.a(3, "MoatBaseVideoTracker", this, String.format("trackVideoAd tracking ids: %s | ad: %s | view: %s", objArr));
            this.h = map;
            this.i = new WeakReference<>(playerorimaad);
            this.j = new WeakReference<>(view);
            g();
        }
        z2 = z;
        StringBuilder sb = new StringBuilder();
        sb.append("Attempt to start tracking ad was ");
        sb.append(z2 ? "" : "un");
        sb.append("successful.");
        n.a(3, "MoatBaseVideoTracker", this, sb.toString());
        return z2;
    }

    @Override // com.moat.analytics.mobile.glft.b
    public void changeTargetView(View view) {
        String str;
        if (view != null) {
            str = view.getClass().getSimpleName() + "@" + view.hashCode();
        } else {
            str = "null";
        }
        n.a(3, "MoatBaseVideoTracker", this, "changing view to " + str);
        this.j = new WeakReference<>(view);
        try {
            super.changeTargetView(view);
        } catch (Exception e2) {
            l.a(e2);
        }
    }

    protected abstract Map<String, Object> d();

    public void dispatchEvent(MoatAdEvent moatAdEvent) {
        try {
            b(moatAdEvent);
        } catch (Exception e2) {
            l.a(e2);
        }
    }

    void e() {
        if (this.k) {
            return;
        }
        this.f7645g.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.glft.c.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    n.a(3, "MoatBaseVideoTracker", this, "Shutting down.");
                    c.this.m.a();
                } catch (Exception e2) {
                    l.a(e2);
                }
            }
        }, 500L);
        this.k = true;
    }

    boolean f() {
        return this.f7644f.containsKey(MoatAdEventType.AD_EVT_COMPLETE) || this.f7644f.containsKey(MoatAdEventType.AD_EVT_STOPPED) || this.f7644f.containsKey(MoatAdEventType.AD_EVT_SKIPPED);
    }

    public void setPlayerVolume(Double d2) {
        if (d2.equals(this.l)) {
            return;
        }
        n.a(3, "MoatBaseVideoTracker", this, String.format(Locale.ROOT, "player volume changed to %f ", d2));
        this.l = d2;
        dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_VOLUME_CHANGE, MoatAdEvent.a));
    }

    @Override // com.moat.analytics.mobile.glft.b
    public void stopTracking() {
        try {
            super.stopTracking();
            e();
        } catch (Exception e2) {
            l.a(e2);
        }
    }
}
