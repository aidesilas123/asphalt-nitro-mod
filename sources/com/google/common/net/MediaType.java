package com.google.common.net;

import androidx.webkit.ProxyConfig;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Joiner;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.f;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import com.google.common.collect.b2;
import com.google.common.collect.z1;
import com.json.b4;
import com.json.o2;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class MediaType {
    private final String q1;
    private final String r1;
    private final ImmutableListMultimap<String, String> s1;
    private String t1;
    private int u1;
    private Optional<Charset> v1;
    private static final ImmutableListMultimap<String, String> a = ImmutableListMultimap.of(b4.K, Ascii.toLowerCase(com.google.common.base.b.c.name()));
    private static final CharMatcher b = CharMatcher.ascii().b(CharMatcher.javaIsoControl().k()).b(CharMatcher.isNot(' ')).b(CharMatcher.noneOf("()<>@,;:\\\"/[]?="));
    private static final CharMatcher c = CharMatcher.ascii().b(CharMatcher.noneOf("\"\\\r"));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final CharMatcher f3938d = CharMatcher.anyOf(" \t\r\n");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<MediaType, MediaType> f3939e = Maps.newHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final MediaType f3940f = d(ProxyConfig.MATCH_ALL_SCHEMES, ProxyConfig.MATCH_ALL_SCHEMES);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final MediaType f3941g = d("text", ProxyConfig.MATCH_ALL_SCHEMES);
    public static final MediaType h = d("image", ProxyConfig.MATCH_ALL_SCHEMES);
    public static final MediaType i = d("audio", ProxyConfig.MATCH_ALL_SCHEMES);
    public static final MediaType j = d("video", ProxyConfig.MATCH_ALL_SCHEMES);
    public static final MediaType k = d("application", ProxyConfig.MATCH_ALL_SCHEMES);
    public static final MediaType l = d("font", ProxyConfig.MATCH_ALL_SCHEMES);
    public static final MediaType m = e("text", "cache-manifest");
    public static final MediaType n = e("text", "css");
    public static final MediaType o = e("text", "csv");
    public static final MediaType p = e("text", "html");
    public static final MediaType q = e("text", "calendar");
    public static final MediaType r = e("text", "plain");
    public static final MediaType s = e("text", "javascript");
    public static final MediaType t = e("text", "tab-separated-values");
    public static final MediaType u = e("text", "vcard");
    public static final MediaType v = e("text", "vnd.wap.wml");
    public static final MediaType w = e("text", "xml");
    public static final MediaType x = e("text", "vtt");
    public static final MediaType y = d("image", "bmp");
    public static final MediaType z = d("image", "x-canon-crw");
    public static final MediaType A = d("image", "gif");
    public static final MediaType B = d("image", "vnd.microsoft.icon");
    public static final MediaType C = d("image", "jpeg");
    public static final MediaType D = d("image", "png");
    public static final MediaType E = d("image", "vnd.adobe.photoshop");
    public static final MediaType F = e("image", "svg+xml");
    public static final MediaType G = d("image", "tiff");
    public static final MediaType H = d("image", "webp");
    public static final MediaType I = d("image", "heif");
    public static final MediaType J = d("image", "jp2");
    public static final MediaType K = d("audio", "mp4");
    public static final MediaType L = d("audio", "mpeg");
    public static final MediaType M = d("audio", "ogg");
    public static final MediaType N = d("audio", "webm");
    public static final MediaType O = d("audio", "l16");
    public static final MediaType P = d("audio", "l24");
    public static final MediaType Q = d("audio", "basic");
    public static final MediaType R = d("audio", "aac");
    public static final MediaType S = d("audio", "vorbis");
    public static final MediaType T = d("audio", "x-ms-wma");
    public static final MediaType U = d("audio", "x-ms-wax");
    public static final MediaType V = d("audio", "vnd.rn-realaudio");
    public static final MediaType W = d("audio", "vnd.wave");
    public static final MediaType X = d("video", "mp4");
    public static final MediaType Y = d("video", "mpeg");
    public static final MediaType Z = d("video", "ogg");
    public static final MediaType a0 = d("video", "quicktime");
    public static final MediaType b0 = d("video", "webm");
    public static final MediaType c0 = d("video", "x-ms-wmv");
    public static final MediaType d0 = d("video", "x-flv");
    public static final MediaType e0 = d("video", "3gpp");
    public static final MediaType f0 = d("video", "3gpp2");
    public static final MediaType g0 = e("application", "xml");
    public static final MediaType h0 = e("application", "atom+xml");
    public static final MediaType i0 = d("application", "x-bzip2");
    public static final MediaType j0 = e("application", "dart");
    public static final MediaType k0 = d("application", "vnd.apple.pkpass");
    public static final MediaType l0 = d("application", "vnd.ms-fontobject");
    public static final MediaType m0 = d("application", "epub+zip");
    public static final MediaType n0 = d("application", "x-www-form-urlencoded");
    public static final MediaType o0 = d("application", "pkcs12");
    public static final MediaType p0 = d("application", "binary");
    public static final MediaType q0 = d("application", "geo+json");
    public static final MediaType r0 = d("application", "x-gzip");
    public static final MediaType s0 = d("application", "hal+json");
    public static final MediaType t0 = e("application", "javascript");
    public static final MediaType u0 = d("application", "jose");
    public static final MediaType v0 = d("application", "jose+json");
    public static final MediaType w0 = e("application", "json");
    public static final MediaType x0 = e("application", "manifest+json");
    public static final MediaType y0 = d("application", "vnd.google-earth.kml+xml");
    public static final MediaType z0 = d("application", "vnd.google-earth.kmz");
    public static final MediaType A0 = d("application", "mbox");
    public static final MediaType B0 = d("application", "x-apple-aspen-config");
    public static final MediaType C0 = d("application", "vnd.ms-excel");
    public static final MediaType D0 = d("application", "vnd.ms-outlook");
    public static final MediaType E0 = d("application", "vnd.ms-powerpoint");
    public static final MediaType F0 = d("application", "msword");
    public static final MediaType G0 = d("application", "dash+xml");
    public static final MediaType H0 = d("application", "wasm");
    public static final MediaType I0 = d("application", "x-nacl");
    public static final MediaType J0 = d("application", "x-pnacl");
    public static final MediaType K0 = d("application", "octet-stream");
    public static final MediaType L0 = d("application", "ogg");
    public static final MediaType M0 = d("application", "vnd.openxmlformats-officedocument.wordprocessingml.document");
    public static final MediaType N0 = d("application", "vnd.openxmlformats-officedocument.presentationml.presentation");
    public static final MediaType O0 = d("application", "vnd.openxmlformats-officedocument.spreadsheetml.sheet");
    public static final MediaType P0 = d("application", "vnd.oasis.opendocument.graphics");
    public static final MediaType Q0 = d("application", "vnd.oasis.opendocument.presentation");
    public static final MediaType R0 = d("application", "vnd.oasis.opendocument.spreadsheet");
    public static final MediaType S0 = d("application", "vnd.oasis.opendocument.text");
    public static final MediaType T0 = e("application", "opensearchdescription+xml");
    public static final MediaType U0 = d("application", "pdf");
    public static final MediaType V0 = d("application", "postscript");
    public static final MediaType W0 = d("application", "protobuf");
    public static final MediaType X0 = e("application", "rdf+xml");
    public static final MediaType Y0 = e("application", "rtf");
    public static final MediaType Z0 = d("application", "font-sfnt");
    public static final MediaType a1 = d("application", "x-shockwave-flash");
    public static final MediaType b1 = d("application", "vnd.sketchup.skp");
    public static final MediaType c1 = e("application", "soap+xml");
    public static final MediaType d1 = d("application", "x-tar");
    public static final MediaType e1 = d("application", "font-woff");
    public static final MediaType f1 = d("application", "font-woff2");
    public static final MediaType g1 = e("application", "xhtml+xml");
    public static final MediaType h1 = e("application", "xrd+xml");
    public static final MediaType i1 = d("application", "zip");
    public static final MediaType j1 = d("font", "collection");
    public static final MediaType k1 = d("font", "otf");
    public static final MediaType l1 = d("font", "sfnt");
    public static final MediaType m1 = d("font", "ttf");
    public static final MediaType n1 = d("font", "woff");
    public static final MediaType o1 = d("font", "woff2");
    private static final Joiner.b p1 = Joiner.on("; ").i(o2.i.b);

    private static final class a {
        final String a;
        int b = 0;

        a(String str) {
            this.a = str;
        }

        char a(char c) {
            Preconditions.checkState(e());
            Preconditions.checkState(f() == c);
            this.b++;
            return c;
        }

        char b(CharMatcher charMatcher) {
            Preconditions.checkState(e());
            char cF = f();
            Preconditions.checkState(charMatcher.h(cF));
            this.b++;
            return cF;
        }

        String c(CharMatcher charMatcher) {
            int i = this.b;
            String strD = d(charMatcher);
            Preconditions.checkState(this.b != i);
            return strD;
        }

        String d(CharMatcher charMatcher) {
            Preconditions.checkState(e());
            int i = this.b;
            this.b = charMatcher.k().f(this.a, i);
            return e() ? this.a.substring(i, this.b) : this.a.substring(i);
        }

        boolean e() {
            int i = this.b;
            return i >= 0 && i < this.a.length();
        }

        char f() {
            Preconditions.checkState(e());
            return this.a.charAt(this.b);
        }
    }

    private MediaType(String str, String str2, ImmutableListMultimap<String, String> immutableListMultimap) {
        this.q1 = str;
        this.r1 = str2;
        this.s1 = immutableListMultimap;
    }

    private static MediaType a(MediaType mediaType) {
        f3939e.put(mediaType, mediaType);
        return mediaType;
    }

    private String b() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.q1);
        sb.append('/');
        sb.append(this.r1);
        if (!this.s1.isEmpty()) {
            sb.append("; ");
            p1.b(sb, Multimaps.transformValues((z1) this.s1, (f) new f() { // from class: com.google.common.net.b
                @Override // com.google.common.base.f
                public final Object apply(Object obj) {
                    return MediaType.g((String) obj);
                }
            }).f());
        }
        return sb.toString();
    }

    private static MediaType c(String str, String str2, b2<String, String> b2Var) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        Preconditions.checkNotNull(b2Var);
        String strI = i(str);
        String strI2 = i(str2);
        Preconditions.checkArgument(!ProxyConfig.MATCH_ALL_SCHEMES.equals(strI) || ProxyConfig.MATCH_ALL_SCHEMES.equals(strI2), "A wildcard type cannot be used with a non-wildcard subtype");
        ImmutableListMultimap.a aVarBuilder = ImmutableListMultimap.builder();
        for (Map.Entry<String, String> entry : b2Var.f()) {
            String strI3 = i(entry.getKey());
            aVarBuilder.c(strI3, h(strI3, entry.getValue()));
        }
        MediaType mediaType = new MediaType(strI, strI2, aVarBuilder.f());
        return (MediaType) MoreObjects.firstNonNull(f3939e.get(mediaType), mediaType);
    }

    public static MediaType create(String str, String str2) {
        MediaType mediaTypeC = c(str, str2, ImmutableListMultimap.of());
        mediaTypeC.v1 = Optional.absent();
        return mediaTypeC;
    }

    private static MediaType d(String str, String str2) {
        MediaType mediaTypeA = a(new MediaType(str, str2, ImmutableListMultimap.of()));
        mediaTypeA.v1 = Optional.absent();
        return mediaTypeA;
    }

    private static MediaType e(String str, String str2) {
        MediaType mediaTypeA = a(new MediaType(str, str2, a));
        mediaTypeA.v1 = Optional.of(com.google.common.base.b.c);
        return mediaTypeA;
    }

    private static String f(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 16);
        sb.append('\"');
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\r' || cCharAt == '\\' || cCharAt == '\"') {
                sb.append('\\');
            }
            sb.append(cCharAt);
        }
        sb.append('\"');
        return sb.toString();
    }

    static /* synthetic */ String g(String str) {
        return (!b.i(str) || str.isEmpty()) ? f(str) : str;
    }

    private static String h(String str, String str2) {
        Preconditions.checkNotNull(str2);
        Preconditions.checkArgument(CharMatcher.ascii().i(str2), "parameter values must be ASCII: %s", str2);
        return b4.K.equals(str) ? Ascii.toLowerCase(str2) : str2;
    }

    private static String i(String str) {
        Preconditions.checkArgument(b.i(str));
        Preconditions.checkArgument(!str.isEmpty());
        return Ascii.toLowerCase(str);
    }

    private Map<String, ImmutableMultiset<String>> j() {
        return Maps.transformValues(this.s1.e(), new f() { // from class: com.google.common.net.a
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return ImmutableMultiset.copyOf((Collection) obj);
            }
        });
    }

    public static MediaType parse(String str) {
        String strC;
        Preconditions.checkNotNull(str);
        a aVar = new a(str);
        try {
            CharMatcher charMatcher = b;
            String strC2 = aVar.c(charMatcher);
            aVar.a('/');
            String strC3 = aVar.c(charMatcher);
            ImmutableListMultimap.a aVarBuilder = ImmutableListMultimap.builder();
            while (aVar.e()) {
                CharMatcher charMatcher2 = f3938d;
                aVar.d(charMatcher2);
                aVar.a(';');
                aVar.d(charMatcher2);
                CharMatcher charMatcher3 = b;
                String strC4 = aVar.c(charMatcher3);
                aVar.a(b4.R);
                if ('\"' == aVar.f()) {
                    aVar.a('\"');
                    StringBuilder sb = new StringBuilder();
                    while ('\"' != aVar.f()) {
                        if ('\\' == aVar.f()) {
                            aVar.a('\\');
                            sb.append(aVar.b(CharMatcher.ascii()));
                        } else {
                            sb.append(aVar.c(c));
                        }
                    }
                    strC = sb.toString();
                    aVar.a('\"');
                } else {
                    strC = aVar.c(charMatcher3);
                }
                aVarBuilder.c(strC4, strC);
            }
            return c(strC2, strC3, aVarBuilder.f());
        } catch (IllegalStateException e2) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 18);
            sb2.append("Could not parse '");
            sb2.append(str);
            sb2.append("'");
            throw new IllegalArgumentException(sb2.toString(), e2);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MediaType)) {
            return false;
        }
        MediaType mediaType = (MediaType) obj;
        return this.q1.equals(mediaType.q1) && this.r1.equals(mediaType.r1) && j().equals(mediaType.j());
    }

    public int hashCode() {
        int i2 = this.u1;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = Objects.hashCode(this.q1, this.r1, j());
        this.u1 = iHashCode;
        return iHashCode;
    }

    public String toString() {
        String str = this.t1;
        if (str != null) {
            return str;
        }
        String strB = b();
        this.t1 = strB;
        return strB;
    }
}
