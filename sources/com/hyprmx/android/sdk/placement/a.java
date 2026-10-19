package com.hyprmx.android.sdk.placement;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.placement.c;
import java.util.LinkedHashSet;
import kotlin.v;

/* JADX INFO: loaded from: classes2.dex */
public interface a {
    v a(String str, c.a aVar);

    void a(String str);

    boolean b(String str);

    c getPlacement(String str);

    LinkedHashSet getPlacements();

    @RetainMethodSignature
    void onAdCleared(String str);

    @RetainMethodSignature
    void onAdExpired(String str);

    @RetainMethodSignature
    void onLoadAdFailure(String str, String str2);

    @RetainMethodSignature
    void onLoadAdSuccess(String str, boolean z);
}
