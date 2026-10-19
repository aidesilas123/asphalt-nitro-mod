package com.tapjoy.internal;

import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes4.dex */
public final class z6 extends q implements Observer {
    public static final /* synthetic */ int b = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f8026e;
    public final HashMap c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a4 f8025d = new a4();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final o6 f8027f = new o6();

    static {
        q.a = new z6();
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        n2 n2Var = a3.a;
    }
}
