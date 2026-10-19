package com.json.mediationsdk;

import com.json.d1;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.impressionData.ImpressionData;
import com.json.mediationsdk.impressionData.ImpressionDataListener;
import com.json.mediationsdk.logger.IronLog;
import com.json.r;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m {
    private HashSet<ImpressionDataListener> a;
    protected r b;
    protected IronSourceSegment c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected AdInfo f6345d;

    public m(HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        new HashSet();
        this.a = hashSet;
        this.b = new r();
        this.c = ironSourceSegment;
    }

    protected void a(d1 d1Var, String str) {
        if (d1Var == null) {
            IronLog.INTERNAL.verbose("no auctionResponseItem or listener");
            return;
        }
        ImpressionData impressionDataA = d1Var.a(str);
        if (impressionDataA != null) {
            for (ImpressionDataListener impressionDataListener : this.a) {
                IronLog.CALLBACK.info("onImpressionSuccess " + impressionDataListener.getClass().getSimpleName() + ": " + impressionDataA);
                impressionDataListener.onImpressionSuccess(impressionDataA);
            }
        }
    }

    public void a(IronSourceSegment ironSourceSegment) {
        this.c = ironSourceSegment;
    }

    public void a(ImpressionData impressionData) {
        if (impressionData != null) {
            this.f6345d = new AdInfo(impressionData);
        }
    }

    public void a(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.a.remove(impressionDataListener);
        }
    }

    protected void b(IronSource.AD_UNIT ad_unit) {
        this.b.a(ad_unit, false);
    }

    public void b(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.a.add(impressionDataListener);
        }
    }

    public void c() {
        synchronized (this) {
            this.a.clear();
        }
    }

    protected void c(JSONObject jSONObject, IronSource.AD_UNIT ad_unit) {
        this.b.a(ad_unit, jSONObject != null ? jSONObject.optBoolean(d.f6255f, false) : false);
    }

    protected String e() {
        return "fallback_" + System.currentTimeMillis();
    }

    public void f() {
        this.f6345d = null;
    }
}
