package com.hyprmx.android.sdk.utility;

import android.content.Context;
import kotlin.coroutines.Continuation;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public interface a {
    Object a(Context context, String str, Continuation<? super Boolean> continuation);

    Object a(Context context, Continuation<? super Boolean> continuation);

    Object b(Context context, Continuation<? super JSONObject> continuation);
}
