package com.moat.analytics.mobile.glft;

import android.view.View;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
abstract class g<PlayerOrIMAAd> extends c<PlayerOrIMAAd> {
    int k;
    private a l;
    private int m;
    private double n;
    private int o;
    private int p;

    protected enum a {
        UNINITIALIZED,
        PAUSED,
        PLAYING,
        STOPPED,
        COMPLETED
    }

    g(String str) {
        super(str);
        this.o = Integer.MIN_VALUE;
        this.k = Integer.MIN_VALUE;
        this.m = Integer.MIN_VALUE;
        this.n = Double.NaN;
        this.p = 0;
        this.l = a.UNINITIALIZED;
    }

    private void k() {
        ((c) this).f7645g.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.glft.g.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (((c) g.this).i.get() != null && !g.this.f() && Boolean.valueOf(g.this.j()).booleanValue()) {
                        ((c) g.this).f7645g.postDelayed(this, 200L);
                    } else {
                        g gVar = g.this;
                        gVar.e();
                    }
                } catch (Exception e2) {
                    g.this.e();
                    l.a(e2);
                }
            }
        }, 200L);
    }

    @Override // com.moat.analytics.mobile.glft.c
    protected JSONObject a(MoatAdEvent moatAdEvent) {
        Integer numValueOf;
        int i;
        if (moatAdEvent.b.equals(MoatAdEvent.a)) {
            try {
                numValueOf = g();
            } catch (Exception unused) {
                numValueOf = Integer.valueOf(this.m);
            }
            moatAdEvent.b = numValueOf;
        } else {
            numValueOf = moatAdEvent.b;
        }
        if (moatAdEvent.b.intValue() < 0 || (moatAdEvent.b.intValue() == 0 && moatAdEvent.f7636d == MoatAdEventType.AD_EVT_COMPLETE && this.m > 0)) {
            numValueOf = Integer.valueOf(this.m);
            moatAdEvent.b = numValueOf;
        }
        if (moatAdEvent.f7636d == MoatAdEventType.AD_EVT_COMPLETE) {
            if (numValueOf.intValue() == Integer.MIN_VALUE || (i = this.k) == Integer.MIN_VALUE || !a(numValueOf, Integer.valueOf(i))) {
                this.l = a.STOPPED;
                moatAdEvent.f7636d = MoatAdEventType.AD_EVT_STOPPED;
            } else {
                this.l = a.COMPLETED;
            }
        }
        return super.a(moatAdEvent);
    }

    @Override // com.moat.analytics.mobile.glft.c
    public boolean a(Map<String, String> map, PlayerOrIMAAd playerorimaad, View view) {
        try {
            k();
        } catch (Exception e2) {
            l.a(e2);
        }
        return super.a(map, playerorimaad, view);
    }

    protected abstract Integer g();

    protected abstract boolean h();

    protected abstract Integer i();

    boolean j() {
        a aVar;
        if (((c) this).i.get() == null || f()) {
            return false;
        }
        try {
            int iIntValue = g().intValue();
            if (this.m >= 0 && iIntValue < 0) {
                return false;
            }
            this.m = iIntValue;
            if (iIntValue == 0) {
                return true;
            }
            int iIntValue2 = i().intValue();
            boolean zH = h();
            double d2 = ((double) iIntValue2) / 4.0d;
            double dA = p.a();
            MoatAdEventType moatAdEventType = null;
            if (iIntValue > this.o) {
                this.o = iIntValue;
            }
            if (this.k == Integer.MIN_VALUE) {
                this.k = iIntValue2;
            }
            if (zH) {
                a aVar2 = this.l;
                if (aVar2 == a.UNINITIALIZED) {
                    moatAdEventType = MoatAdEventType.AD_EVT_START;
                    aVar = a.PLAYING;
                } else if (aVar2 == a.PAUSED) {
                    moatAdEventType = MoatAdEventType.AD_EVT_PLAYING;
                    aVar = a.PLAYING;
                } else {
                    int iFloor = ((int) Math.floor(((double) iIntValue) / d2)) - 1;
                    if (iFloor > -1 && iFloor < 3) {
                        MoatAdEventType moatAdEventType2 = c.f7643e[iFloor];
                        if (!((c) this).f7644f.containsKey(moatAdEventType2)) {
                            ((c) this).f7644f.put(moatAdEventType2, 1);
                            moatAdEventType = moatAdEventType2;
                        }
                    }
                }
                this.l = aVar;
            } else {
                a aVar3 = this.l;
                a aVar4 = a.PAUSED;
                if (aVar3 != aVar4) {
                    moatAdEventType = MoatAdEventType.AD_EVT_PAUSED;
                    this.l = aVar4;
                }
            }
            boolean z = moatAdEventType != null;
            if (!z && !Double.isNaN(this.n) && Math.abs(this.n - dA) > 0.05d) {
                moatAdEventType = MoatAdEventType.AD_EVT_VOLUME_CHANGE;
                z = true;
            }
            if (z) {
                dispatchEvent(new MoatAdEvent(moatAdEventType, Integer.valueOf(iIntValue), Double.valueOf(dA)));
            }
            this.n = dA;
            this.p = 0;
            return true;
        } catch (Exception unused) {
            int i = this.p;
            this.p = i + 1;
            return i < 5;
        }
    }

    @Override // com.moat.analytics.mobile.glft.c, com.moat.analytics.mobile.glft.b
    public void stopTracking() {
        try {
            dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_COMPLETE));
        } catch (Exception e2) {
            l.a(e2);
        }
    }
}
