package com.google.common.io;

import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableList;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CharSource {

    private static class a extends CharSource {
        private static final Splitter a = Splitter.onPattern("\r\n|\n|\r");
        protected final CharSequence b;

        /* JADX INFO: renamed from: com.google.common.io.CharSource$a$a, reason: collision with other inner class name */
        class C0270a extends AbstractIterator<String> {
            Iterator<String> c;

            C0270a() {
                this.c = a.a.h(a.this.b).iterator();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public String b() {
                if (this.c.hasNext()) {
                    String next = this.c.next();
                    if (this.c.hasNext() || !next.isEmpty()) {
                        return next;
                    }
                }
                return c();
            }
        }

        protected a(CharSequence charSequence) {
            this.b = (CharSequence) Preconditions.checkNotNull(charSequence);
        }

        private Iterator<String> h() {
            return new C0270a();
        }

        @Override // com.google.common.io.CharSource
        public Reader c() {
            return new f(this.b);
        }

        @Override // com.google.common.io.CharSource
        public String d() {
            return this.b.toString();
        }

        @Override // com.google.common.io.CharSource
        public String e() {
            Iterator<String> itH = h();
            if (itH.hasNext()) {
                return itH.next();
            }
            return null;
        }

        @Override // com.google.common.io.CharSource
        public <T> T f(j<T> jVar) throws IOException {
            Iterator<String> itH = h();
            while (itH.hasNext() && jVar.a(itH.next())) {
            }
            return jVar.getResult();
        }

        public String toString() {
            String strTruncate = Ascii.truncate(this.b, 30, "...");
            StringBuilder sb = new StringBuilder(String.valueOf(strTruncate).length() + 17);
            sb.append("CharSource.wrap(");
            sb.append(strTruncate);
            sb.append(")");
            return sb.toString();
        }
    }

    private static final class b extends CharSource {
        private final Iterable<? extends CharSource> a;

        b(Iterable<? extends CharSource> iterable) {
            this.a = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.CharSource
        public Reader c() throws IOException {
            return new m(this.a.iterator());
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 19);
            sb.append("CharSource.concat(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static final class c extends d {
        private static final c c = new c();

        private c() {
            super("");
        }

        @Override // com.google.common.io.CharSource.a
        public String toString() {
            return "CharSource.empty()";
        }
    }

    private static class d extends a {
        protected d(String str) {
            super(str);
        }

        @Override // com.google.common.io.CharSource
        public long a(Appendable appendable) throws IOException {
            appendable.append(this.b);
            return this.b.length();
        }

        @Override // com.google.common.io.CharSource.a, com.google.common.io.CharSource
        public Reader c() {
            return new StringReader((String) this.b);
        }
    }

    protected CharSource() {
    }

    public static CharSource concat(Iterable<? extends CharSource> iterable) {
        return new b(iterable);
    }

    public static CharSource concat(Iterator<? extends CharSource> it) {
        return concat(ImmutableList.copyOf(it));
    }

    public static CharSource concat(CharSource... charSourceArr) {
        return concat(ImmutableList.copyOf(charSourceArr));
    }

    public static CharSource empty() {
        return c.c;
    }

    public static CharSource wrap(CharSequence charSequence) {
        return charSequence instanceof String ? new d((String) charSequence) : new a(charSequence);
    }

    public long a(Appendable appendable) throws Throwable {
        Preconditions.checkNotNull(appendable);
        try {
            return CharStreams.copy((Reader) Closer.create().a(c()), appendable);
        } finally {
        }
    }

    public BufferedReader b() throws IOException {
        Reader readerC = c();
        return readerC instanceof BufferedReader ? (BufferedReader) readerC : new BufferedReader(readerC);
    }

    public abstract Reader c() throws IOException;

    public String d() throws Throwable {
        try {
            return CharStreams.toString((Reader) Closer.create().a(c()));
        } finally {
        }
    }

    public String e() throws Throwable {
        try {
            return ((BufferedReader) Closer.create().a(b())).readLine();
        } finally {
        }
    }

    public <T> T f(j<T> jVar) throws Throwable {
        Preconditions.checkNotNull(jVar);
        try {
            return (T) CharStreams.readLines((Reader) Closer.create().a(c()), jVar);
        } finally {
        }
    }
}
