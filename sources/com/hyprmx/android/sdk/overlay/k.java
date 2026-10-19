package com.hyprmx.android.sdk.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.hyprmx.android.sdk.core.w;
import kotlin.coroutines.Continuation;
import kotlin.v;

/* JADX INFO: loaded from: classes2.dex */
public interface k {
    Object a(Context context, int i, int i2, Intent intent, w wVar, Continuation<? super v> continuation);

    void a(Activity activity);
}
