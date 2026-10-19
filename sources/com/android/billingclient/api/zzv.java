package com.android.billingclient.api;

import android.app.Activity;
import android.os.Bundle;
import android.os.ResultReceiver;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zzv implements Callable {
    public final /* synthetic */ BillingClientImpl a;
    public final /* synthetic */ Bundle b;
    public final /* synthetic */ Activity c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ResultReceiver f184d;

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        this.a.P(this.b, this.c, this.f184d);
        return null;
    }
}
