package com.fyber.inneractive.sdk.factories;

import com.fyber.inneractive.sdk.util.IAlog;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public final HashMap<com.fyber.inneractive.sdk.response.a, InterfaceC0159b> a = new HashMap<>();

    public static class a {
        public static b a = new b();
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.factories.b$b, reason: collision with other inner class name */
    public interface InterfaceC0159b {
        com.fyber.inneractive.sdk.interfaces.a a();

        com.fyber.inneractive.sdk.response.b b();
    }

    public com.fyber.inneractive.sdk.response.b a(com.fyber.inneractive.sdk.response.a aVar) {
        InterfaceC0159b interfaceC0159b = this.a.get(aVar);
        if (interfaceC0159b != null) {
            return interfaceC0159b.b();
        }
        return null;
    }

    public void a(com.fyber.inneractive.sdk.response.a aVar, InterfaceC0159b interfaceC0159b) {
        if (this.a.containsKey(aVar)) {
            IAlog.e("Handler already exists for ad type %s! : %s", aVar, this.a.get(aVar));
        } else {
            this.a.put(aVar, interfaceC0159b);
        }
    }
}
