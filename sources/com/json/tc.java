package com.json;

import android.content.Context;
import com.json.mediationsdk.d0;
import com.json.mediationsdk.utils.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\n"}, d2 = {"Lcom/ironsource/tc;", "", "Landroid/content/Context;", "context", "Lcom/ironsource/mediationsdk/utils/d;", "tokenSettings", "Lorg/json/JSONObject;", "a", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class tc {
    public final JSONObject a(Context context, d tokenSettings) throws Exception {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tokenSettings, "tokenSettings");
        return d0.b(tokenSettings, context);
    }
}
