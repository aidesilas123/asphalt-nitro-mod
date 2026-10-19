package okhttp3;

import androidx.webkit.ProxyConfig;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.json.mediationsdk.logger.IronSourceError;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* JADX INFO: renamed from: okhttp3.a, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Address.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000f\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015\u0012\u0006\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010\u001bJ\u000f\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0002\b(J\u0013\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015H\u0007¢\u0006\u0002\b)J\r\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\b*J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0015\u0010.\u001a\u00020,2\u0006\u0010/\u001a\u00020\u0000H\u0000¢\u0006\u0002\b0J\b\u00101\u001a\u00020\u0005H\u0016J\u000f\u0010\f\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0002\b2J\u0013\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0007¢\u0006\u0002\b3J\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007¢\u0006\u0002\b4J\r\u0010\u0010\u001a\u00020\u0011H\u0007¢\u0006\u0002\b5J\r\u0010\u0019\u001a\u00020\u001aH\u0007¢\u0006\u0002\b6J\r\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b7J\u000f\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007¢\u0006\u0002\b8J\b\u00109\u001a\u00020\u0003H\u0016J\r\u0010%\u001a\u00020&H\u0007¢\u0006\u0002\b:R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u001cR\u0019\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00158G¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u001dR\u0013\u0010\u0006\u001a\u00020\u00078\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u001eR\u0015\u0010\f\u001a\u0004\u0018\u00010\r8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u001fR\u0019\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158G¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u001dR\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010 R\u0013\u0010\u0010\u001a\u00020\u00118\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010!R\u0013\u0010\u0019\u001a\u00020\u001a8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\"R\u0013\u0010\b\u001a\u00020\t8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010#R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010$R\u0013\u0010%\u001a\u00020&8G¢\u0006\b\n\u0000\u001a\u0004\b%\u0010'¨\u0006;"}, d2 = {"Lokhttp3/Address;", "", "uriHost", "", "uriPort", "", AppLovinSdkExtraParameterKey.DO_NOT_SELL, "Lokhttp3/Dns;", "socketFactory", "Ljavax/net/SocketFactory;", "sslSocketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "hostnameVerifier", "Ljavax/net/ssl/HostnameVerifier;", "certificatePinner", "Lokhttp3/CertificatePinner;", "proxyAuthenticator", "Lokhttp3/Authenticator;", "proxy", "Ljava/net/Proxy;", "protocols", "", "Lokhttp3/Protocol;", "connectionSpecs", "Lokhttp3/ConnectionSpec;", "proxySelector", "Ljava/net/ProxySelector;", "(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V", "()Lokhttp3/CertificatePinner;", "()Ljava/util/List;", "()Lokhttp3/Dns;", "()Ljavax/net/ssl/HostnameVerifier;", "()Ljava/net/Proxy;", "()Lokhttp3/Authenticator;", "()Ljava/net/ProxySelector;", "()Ljavax/net/SocketFactory;", "()Ljavax/net/ssl/SSLSocketFactory;", "url", "Lokhttp3/HttpUrl;", "()Lokhttp3/HttpUrl;", "-deprecated_certificatePinner", "-deprecated_connectionSpecs", "-deprecated_dns", "equals", "", "other", "equalsNonHost", "that", "equalsNonHost$okhttp", "hashCode", "-deprecated_hostnameVerifier", "-deprecated_protocols", "-deprecated_proxy", "-deprecated_proxyAuthenticator", "-deprecated_proxySelector", "-deprecated_socketFactory", "-deprecated_sslSocketFactory", "toString", "-deprecated_url", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class Address {
    private final Dns a;
    private final SocketFactory b;
    private final SSLSocketFactory c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HostnameVerifier f10624d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CertificatePinner f10625e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Authenticator f10626f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Proxy f10627g;
    private final ProxySelector h;
    private final HttpUrl i;
    private final List<Protocol> j;
    private final List<ConnectionSpec> k;

    public Address(String uriHost, int i, Dns dns, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, CertificatePinner certificatePinner, Authenticator proxyAuthenticator, Proxy proxy, List<? extends Protocol> protocols, List<ConnectionSpec> connectionSpecs, ProxySelector proxySelector) {
        Intrinsics.checkNotNullParameter(uriHost, "uriHost");
        Intrinsics.checkNotNullParameter(dns, "dns");
        Intrinsics.checkNotNullParameter(socketFactory, "socketFactory");
        Intrinsics.checkNotNullParameter(proxyAuthenticator, "proxyAuthenticator");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        Intrinsics.checkNotNullParameter(connectionSpecs, "connectionSpecs");
        Intrinsics.checkNotNullParameter(proxySelector, "proxySelector");
        this.a = dns;
        this.b = socketFactory;
        this.c = sSLSocketFactory;
        this.f10624d = hostnameVerifier;
        this.f10625e = certificatePinner;
        this.f10626f = proxyAuthenticator;
        this.f10627g = proxy;
        this.h = proxySelector;
        this.i = new HttpUrl.Builder().v(sSLSocketFactory != null ? "https" : ProxyConfig.MATCH_HTTP).l(uriHost).r(i).a();
        this.j = Util.toImmutableList(protocols);
        this.k = Util.toImmutableList(connectionSpecs);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final CertificatePinner getF10625e() {
        return this.f10625e;
    }

    public final List<ConnectionSpec> b() {
        return this.k;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final Dns getA() {
        return this.a;
    }

    public final boolean d(Address that) {
        Intrinsics.checkNotNullParameter(that, "that");
        return Intrinsics.areEqual(this.a, that.a) && Intrinsics.areEqual(this.f10626f, that.f10626f) && Intrinsics.areEqual(this.j, that.j) && Intrinsics.areEqual(this.k, that.k) && Intrinsics.areEqual(this.h, that.h) && Intrinsics.areEqual(this.f10627g, that.f10627g) && Intrinsics.areEqual(this.c, that.c) && Intrinsics.areEqual(this.f10624d, that.f10624d) && Intrinsics.areEqual(this.f10625e, that.f10625e) && this.i.getF10577g() == that.i.getF10577g();
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final HostnameVerifier getF10624d() {
        return this.f10624d;
    }

    public boolean equals(Object other) {
        if (other instanceof Address) {
            Address address = (Address) other;
            if (Intrinsics.areEqual(this.i, address.i) && d(address)) {
                return true;
            }
        }
        return false;
    }

    public final List<Protocol> f() {
        return this.j;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final Proxy getF10627g() {
        return this.f10627g;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final Authenticator getF10626f() {
        return this.f10626f;
    }

    public int hashCode() {
        return ((((((((((((((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.i.hashCode()) * 31) + this.a.hashCode()) * 31) + this.f10626f.hashCode()) * 31) + this.j.hashCode()) * 31) + this.k.hashCode()) * 31) + this.h.hashCode()) * 31) + Objects.hashCode(this.f10627g)) * 31) + Objects.hashCode(this.c)) * 31) + Objects.hashCode(this.f10624d)) * 31) + Objects.hashCode(this.f10625e);
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final ProxySelector getH() {
        return this.h;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final SocketFactory getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final SSLSocketFactory getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final HttpUrl getI() {
        return this.i;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Address{");
        sb.append(this.i.getF10576f());
        sb.append(':');
        sb.append(this.i.getF10577g());
        sb.append(", ");
        Object obj = this.f10627g;
        if (obj != null) {
            str = "proxy=";
        } else {
            obj = this.h;
            str = "proxySelector=";
        }
        sb.append(Intrinsics.stringPlus(str, obj));
        sb.append('}');
        return sb.toString();
    }
}
