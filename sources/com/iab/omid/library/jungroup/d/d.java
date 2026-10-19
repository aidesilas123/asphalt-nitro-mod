package com.iab.omid.library.jungroup.d;

import com.iab.omid.library.jungroup.adsession.l;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    public static void a(l lVar) {
        if (!lVar.f4957f) {
            throw new IllegalStateException("AdSession is not started");
        }
        if (lVar.f4958g) {
            throw new IllegalStateException("AdSession is finished");
        }
    }

    public static void a(String str, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }
}
