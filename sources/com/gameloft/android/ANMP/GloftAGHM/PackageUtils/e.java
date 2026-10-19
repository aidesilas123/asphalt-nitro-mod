package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import androidx.webkit.ProxyConfig;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: ProxySelectorImp.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends ProxySelector {
    ProxySelector a;

    e(ProxySelector proxySelector) {
        this.a = null;
        this.a = proxySelector;
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        if (!ProxyConfig.MATCH_HTTP.equalsIgnoreCase(uri.getScheme()) && !"socket".equalsIgnoreCase(uri.getScheme())) {
            return this.a.select(uri);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Proxy.NO_PROXY);
        return arrayList;
    }
}
