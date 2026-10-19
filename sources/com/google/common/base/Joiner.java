package com.google.common.base;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class Joiner {
    private final String a;

    class a extends Joiner {
        final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Joiner joiner, String str) {
            super(joiner, null);
            this.b = str;
        }

        @Override // com.google.common.base.Joiner
        CharSequence g(Object obj) {
            return obj == null ? this.b : Joiner.this.g(obj);
        }

        @Override // com.google.common.base.Joiner
        public Joiner h(String str) {
            throw new UnsupportedOperationException("already specified useForNull");
        }
    }

    public static final class b {
        private final Joiner a;
        private final String b;

        private b(Joiner joiner, String str) {
            this.a = joiner;
            this.b = (String) Preconditions.checkNotNull(str);
        }

        /* synthetic */ b(Joiner joiner, String str, a aVar) {
            this(joiner, str);
        }

        public <A extends Appendable> A a(A a, Iterator<? extends Map.Entry<?, ?>> it) throws IOException {
            Preconditions.checkNotNull(a);
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                a.append(this.a.g(next.getKey()));
                a.append(this.b);
                a.append(this.a.g(next.getValue()));
                while (it.hasNext()) {
                    a.append(this.a.a);
                    Map.Entry<?, ?> next2 = it.next();
                    a.append(this.a.g(next2.getKey()));
                    a.append(this.b);
                    a.append(this.a.g(next2.getValue()));
                }
            }
            return a;
        }

        public StringBuilder b(StringBuilder sb, Iterable<? extends Map.Entry<?, ?>> iterable) {
            return c(sb, iterable.iterator());
        }

        public StringBuilder c(StringBuilder sb, Iterator<? extends Map.Entry<?, ?>> it) {
            try {
                a(sb, it);
                return sb;
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    private Joiner(Joiner joiner) {
        this.a = joiner.a;
    }

    /* synthetic */ Joiner(Joiner joiner, a aVar) {
        this(joiner);
    }

    private Joiner(String str) {
        this.a = (String) Preconditions.checkNotNull(str);
    }

    public static Joiner on(char c) {
        return new Joiner(String.valueOf(c));
    }

    public static Joiner on(String str) {
        return new Joiner(str);
    }

    public <A extends Appendable> A b(A a2, Iterator<? extends Object> it) throws IOException {
        Preconditions.checkNotNull(a2);
        if (it.hasNext()) {
            a2.append(g(it.next()));
            while (it.hasNext()) {
                a2.append(this.a);
                a2.append(g(it.next()));
            }
        }
        return a2;
    }

    public final StringBuilder c(StringBuilder sb, Iterable<? extends Object> iterable) {
        return d(sb, iterable.iterator());
    }

    public final StringBuilder d(StringBuilder sb, Iterator<? extends Object> it) {
        try {
            b(sb, it);
            return sb;
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    public final String e(Iterable<? extends Object> iterable) {
        return f(iterable.iterator());
    }

    public final String f(Iterator<? extends Object> it) {
        return d(new StringBuilder(), it).toString();
    }

    CharSequence g(Object obj) {
        java.util.Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public Joiner h(String str) {
        Preconditions.checkNotNull(str);
        return new a(this, str);
    }

    public b i(String str) {
        return new b(this, str, null);
    }
}
