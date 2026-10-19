package com.json.sdk;

import android.app.Activity;
import android.content.Context;
import com.json.ib;
import com.json.u7;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class SSAFactory {
    public static ib getPublisherInstance(Activity activity) throws Exception {
        return u7.b((Context) activity);
    }

    public static ib getPublisherTestInstance(Activity activity, int i) throws Exception {
        return u7.a(activity, i);
    }
}
