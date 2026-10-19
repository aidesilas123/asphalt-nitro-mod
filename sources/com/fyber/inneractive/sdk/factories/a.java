package com.fyber.inneractive.sdk.factories;

import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public final Set<InterfaceC0158a> a = new HashSet();

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.factories.a$a, reason: collision with other inner class name */
    public interface InterfaceC0158a {
        boolean a(InneractiveAdSpot inneractiveAdSpot);

        com.fyber.inneractive.sdk.interfaces.b b(InneractiveAdSpot inneractiveAdSpot);
    }

    public static class b {
        public static a a = new a();
    }
}
