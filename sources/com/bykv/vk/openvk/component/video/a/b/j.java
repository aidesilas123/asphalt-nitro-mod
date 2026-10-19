package com.bykv.vk.openvk.component.video.a.b;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: SkipProxySelector.java */
/* JADX INFO: loaded from: classes.dex */
class j extends ProxySelector {
    private static final List<Proxy> a = Collections.singletonList(Proxy.NO_PROXY);
    private final ProxySelector b = ProxySelector.getDefault();
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f452d;

    private j(String str, int i) {
        this.c = str;
        this.f452d = i;
    }

    static void a(String str, int i) {
        ProxySelector.setDefault(new j(str, i));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.b.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        if (uri != null) {
            return (this.c.equalsIgnoreCase(uri.getHost()) && this.f452d == uri.getPort()) ? a : this.b.select(uri);
        }
        throw new IllegalArgumentException("URI can't be null");
    }
}
