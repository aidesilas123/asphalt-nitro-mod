package com.json;

import android.app.Activity;
import android.content.Context;
import com.json.mediationsdk.IronSourceSegment;
import com.json.mediationsdk.impressionData.ImpressionDataListener;
import com.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes2.dex */
public interface n5 extends m5 {
    void a(Activity activity, Placement placement);

    void a(Context context, boolean z);

    @Override // com.json.m5
    /* synthetic */ void a(IronSourceSegment ironSourceSegment);

    @Override // com.json.m5
    /* synthetic */ void a(ImpressionDataListener impressionDataListener);

    @Override // com.json.m5
    /* synthetic */ void b(ImpressionDataListener impressionDataListener);

    @Override // com.json.m5
    /* synthetic */ void c();

    boolean d();
}
