package com.google.common.escape;

import com.google.common.base.Preconditions;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class Escapers {
    private static final d a = new a();

    class a extends c {
        a() {
        }

        @Override // com.google.common.escape.d
        public String a(String str) {
            return (String) Preconditions.checkNotNull(str);
        }

        @Override // com.google.common.escape.c
        protected char[] b(char c) {
            return null;
        }
    }

    public static final class b {
        private final Map<Character, String> a;
        private char b;
        private char c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f3844d;

        class a extends com.google.common.escape.b {

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private final char[] f3845f;

            a(Map map, char c, char c2) {
                super((Map<Character, String>) map, c, c2);
                this.f3845f = b.this.f3844d != null ? b.this.f3844d.toCharArray() : null;
            }

            @Override // com.google.common.escape.b
            protected char[] e(char c) {
                return this.f3845f;
            }
        }

        private b() {
            this.a = new HashMap();
            this.b = (char) 0;
            this.c = (char) 65535;
            this.f3844d = null;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        public b b(char c, String str) {
            Preconditions.checkNotNull(str);
            this.a.put(Character.valueOf(c), str);
            return this;
        }

        public d c() {
            return new a(this.a, this.b, this.c);
        }

        public b d(char c, char c2) {
            this.b = c;
            this.c = c2;
            return this;
        }

        public b e(String str) {
            this.f3844d = str;
            return this;
        }
    }

    private Escapers() {
    }

    private static String a(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }

    public static b builder() {
        return new b(null);
    }

    public static String computeReplacement(c cVar, char c) {
        return a(cVar.b(c));
    }

    public static String computeReplacement(f fVar, int i) {
        return a(fVar.c(i));
    }

    public static d nullEscaper() {
        return a;
    }
}
