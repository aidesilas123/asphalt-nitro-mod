package com.google.common.io;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class Resources {

    class a implements j<List<String>> {
        final List<String> a = Lists.newArrayList();

        a() {
        }

        @Override // com.google.common.io.j
        public boolean a(String str) {
            this.a.add(str);
            return true;
        }

        @Override // com.google.common.io.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<String> getResult() {
            return this.a;
        }
    }

    private static final class b extends ByteSource {
        private final URL a;

        private b(URL url) {
            this.a = (URL) Preconditions.checkNotNull(url);
        }

        /* synthetic */ b(URL url, a aVar) {
            this(url);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream f() throws IOException {
            return this.a.openStream();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 24);
            sb.append("Resources.asByteSource(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private Resources() {
    }

    public static ByteSource asByteSource(URL url) {
        return new b(url, null);
    }

    public static CharSource asCharSource(URL url, Charset charset) {
        return asByteSource(url).a(charset);
    }

    public static void copy(URL url, OutputStream outputStream) throws Throwable {
        asByteSource(url).d(outputStream);
    }

    public static URL getResource(Class<?> cls, String str) {
        URL resource = cls.getResource(str);
        Preconditions.checkArgument(resource != null, "resource %s relative to %s not found.", str, cls.getName());
        return resource;
    }

    public static URL getResource(String str) {
        URL resource = ((ClassLoader) MoreObjects.firstNonNull(Thread.currentThread().getContextClassLoader(), Resources.class.getClassLoader())).getResource(str);
        Preconditions.checkArgument(resource != null, "resource %s not found.", str);
        return resource;
    }

    public static <T> T readLines(URL url, Charset charset, j<T> jVar) throws IOException {
        return (T) asCharSource(url, charset).f(jVar);
    }

    public static List<String> readLines(URL url, Charset charset) throws IOException {
        return (List) readLines(url, charset, new a());
    }

    public static byte[] toByteArray(URL url) throws IOException {
        return asByteSource(url).h();
    }

    public static String toString(URL url, Charset charset) throws IOException {
        return asCharSource(url, charset).d();
    }
}
