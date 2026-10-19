package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public interface KW {
    boolean startActivity(Context context, Intent intent, String str) throws Exception;

    boolean startActivityForResult(Intent intent, int i, Activity activity, String str) throws Exception;
}
