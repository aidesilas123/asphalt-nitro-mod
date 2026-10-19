package com.json;

import android.content.Context;
import com.json.mediationsdk.impressionData.ImpressionDataListener;
import com.json.mediationsdk.logger.LogListener;
import com.json.mediationsdk.model.InterstitialPlacement;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.sdk.OfferwallListener;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface y7 extends v9, b9, d7 {
    void a(Context context, boolean z);

    /* synthetic */ void a(ImpressionDataListener impressionDataListener);

    /* synthetic */ void a(LogListener logListener);

    @Override // com.json.v9
    /* synthetic */ void a(OfferwallListener offerwallListener);

    @Override // com.json.v9
    /* synthetic */ void a(String str, String str2);

    void a(Map<String, String> map);

    void a(boolean z);

    String b(Context context);

    void b();

    /* synthetic */ void b(ImpressionDataListener impressionDataListener);

    @Override // com.json.v9
    /* synthetic */ void c();

    void d();

    void e();

    boolean e(String str);

    void f();

    InterstitialPlacement g(String str);

    @Override // com.json.v9
    /* synthetic */ void getOfferwallCredits();

    void h(String str);

    Placement i(String str);

    @Override // com.json.v9
    /* synthetic */ boolean isOfferwallAvailable();

    @Override // com.json.v9
    /* synthetic */ void j(String str);
}
