package com.google.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class Splitter {
    private final CharMatcher a;
    private final boolean b;
    private final g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3490d;

    class a implements g {
        final /* synthetic */ CharMatcher a;

        /* JADX INFO: renamed from: com.google.common.base.Splitter$a$a, reason: collision with other inner class name */
        class C0243a extends f {
            C0243a(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.google.common.base.Splitter.f
            int f(int i) {
                return i + 1;
            }

            @Override // com.google.common.base.Splitter.f
            int g(int i) {
                return a.this.a.f(this.c, i);
            }
        }

        a(CharMatcher charMatcher) {
            this.a = charMatcher;
        }

        @Override // com.google.common.base.Splitter.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public f a(Splitter splitter, CharSequence charSequence) {
            return new C0243a(splitter, charSequence);
        }
    }

    class b implements g {
        final /* synthetic */ String a;

        class a extends f {
            a(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.google.common.base.Splitter.f
            public int f(int i) {
                return i + b.this.a.length();
            }

            /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
            
                r6 = r6 + 1;
             */
            @Override // com.google.common.base.Splitter.f
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public int g(int r6) {
                /*
                    r5 = this;
                    com.google.common.base.Splitter$b r0 = com.google.common.base.Splitter.b.this
                    java.lang.String r0 = r0.a
                    int r0 = r0.length()
                    java.lang.CharSequence r1 = r5.c
                    int r1 = r1.length()
                    int r1 = r1 - r0
                Lf:
                    if (r6 > r1) goto L2d
                    r2 = 0
                L12:
                    if (r2 >= r0) goto L2c
                    java.lang.CharSequence r3 = r5.c
                    int r4 = r2 + r6
                    char r3 = r3.charAt(r4)
                    com.google.common.base.Splitter$b r4 = com.google.common.base.Splitter.b.this
                    java.lang.String r4 = r4.a
                    char r4 = r4.charAt(r2)
                    if (r3 == r4) goto L29
                    int r6 = r6 + 1
                    goto Lf
                L29:
                    int r2 = r2 + 1
                    goto L12
                L2c:
                    return r6
                L2d:
                    r6 = -1
                    return r6
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.base.Splitter.b.a.g(int):int");
            }
        }

        b(String str) {
            this.a = str;
        }

        @Override // com.google.common.base.Splitter.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public f a(Splitter splitter, CharSequence charSequence) {
            return new a(splitter, charSequence);
        }
    }

    class c implements g {
        final /* synthetic */ CommonPattern a;

        class a extends f {
            final /* synthetic */ com.google.common.base.c h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(c cVar, Splitter splitter, CharSequence charSequence, com.google.common.base.c cVar2) {
                super(splitter, charSequence);
                this.h = cVar2;
            }

            @Override // com.google.common.base.Splitter.f
            public int f(int i) {
                return this.h.a();
            }

            @Override // com.google.common.base.Splitter.f
            public int g(int i) {
                if (this.h.c(i)) {
                    return this.h.e();
                }
                return -1;
            }
        }

        c(CommonPattern commonPattern) {
            this.a = commonPattern;
        }

        @Override // com.google.common.base.Splitter.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public f a(Splitter splitter, CharSequence charSequence) {
            return new a(this, splitter, charSequence, this.a.d(charSequence));
        }
    }

    class d implements g {
        final /* synthetic */ int a;

        class a extends f {
            a(Splitter splitter, CharSequence charSequence) {
                super(splitter, charSequence);
            }

            @Override // com.google.common.base.Splitter.f
            public int f(int i) {
                return i;
            }

            @Override // com.google.common.base.Splitter.f
            public int g(int i) {
                int i2 = i + d.this.a;
                if (i2 < this.c.length()) {
                    return i2;
                }
                return -1;
            }
        }

        d(int i) {
            this.a = i;
        }

        @Override // com.google.common.base.Splitter.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public f a(Splitter splitter, CharSequence charSequence) {
            return new a(splitter, charSequence);
        }
    }

    class e implements Iterable<String> {
        final /* synthetic */ CharSequence a;

        e(CharSequence charSequence) {
            this.a = charSequence;
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            return Splitter.this.j(this.a);
        }

        public String toString() {
            Joiner joinerOn = Joiner.on(", ");
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            StringBuilder sbC = joinerOn.c(sb, this);
            sbC.append(']');
            return sbC.toString();
        }
    }

    private static abstract class f extends AbstractIterator<String> {
        final CharSequence c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final CharMatcher f3491d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final boolean f3492e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f3493f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f3494g;

        protected f(Splitter splitter, CharSequence charSequence) {
            this.f3491d = splitter.a;
            this.f3492e = splitter.b;
            this.f3494g = splitter.f3490d;
            this.c = charSequence;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.AbstractIterator
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public String b() {
            int iG;
            int i = this.f3493f;
            while (true) {
                int i2 = this.f3493f;
                if (i2 == -1) {
                    return c();
                }
                iG = g(i2);
                if (iG == -1) {
                    iG = this.c.length();
                    this.f3493f = -1;
                } else {
                    this.f3493f = f(iG);
                }
                int i3 = this.f3493f;
                if (i3 == i) {
                    int i4 = i3 + 1;
                    this.f3493f = i4;
                    if (i4 > this.c.length()) {
                        this.f3493f = -1;
                    }
                } else {
                    while (i < iG && this.f3491d.h(this.c.charAt(i))) {
                        i++;
                    }
                    while (iG > i && this.f3491d.h(this.c.charAt(iG - 1))) {
                        iG--;
                    }
                    if (!this.f3492e || i != iG) {
                        break;
                    }
                    i = this.f3493f;
                }
            }
            int i5 = this.f3494g;
            if (i5 == 1) {
                iG = this.c.length();
                this.f3493f = -1;
                while (iG > i && this.f3491d.h(this.c.charAt(iG - 1))) {
                    iG--;
                }
            } else {
                this.f3494g = i5 - 1;
            }
            return this.c.subSequence(i, iG).toString();
        }

        abstract int f(int i);

        abstract int g(int i);
    }

    private interface g {
        Iterator<String> a(Splitter splitter, CharSequence charSequence);
    }

    private Splitter(g gVar) {
        this(gVar, false, CharMatcher.none(), Integer.MAX_VALUE);
    }

    private Splitter(g gVar, boolean z, CharMatcher charMatcher, int i) {
        this.c = gVar;
        this.b = z;
        this.a = charMatcher;
        this.f3490d = i;
    }

    public static Splitter fixedLength(int i) {
        Preconditions.checkArgument(i > 0, "The length may not be less than 1");
        return new Splitter(new d(i));
    }

    private static Splitter g(CommonPattern commonPattern) {
        Preconditions.checkArgument(!commonPattern.d("").d(), "The pattern may not match the empty string: %s", commonPattern);
        return new Splitter(new c(commonPattern));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Iterator<String> j(CharSequence charSequence) {
        return this.c.a(this, charSequence);
    }

    public static Splitter on(char c2) {
        return on(CharMatcher.is(c2));
    }

    public static Splitter on(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(new a(charMatcher));
    }

    public static Splitter on(String str) {
        Preconditions.checkArgument(str.length() != 0, "The separator may not be the empty string.");
        return str.length() == 1 ? on(str.charAt(0)) : new Splitter(new b(str));
    }

    public static Splitter on(Pattern pattern) {
        return g(new com.google.common.base.g(pattern));
    }

    public static Splitter onPattern(String str) {
        return g(j.a(str));
    }

    public Splitter e(int i) {
        Preconditions.checkArgument(i > 0, "must be greater than zero: %s", i);
        return new Splitter(this.c, this.b, this.a, i);
    }

    public Splitter f() {
        return new Splitter(this.c, true, this.a, this.f3490d);
    }

    public Iterable<String> h(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        return new e(charSequence);
    }

    public List<String> i(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        Iterator<String> itJ = j(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itJ.hasNext()) {
            arrayList.add(itJ.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Splitter k() {
        return l(CharMatcher.whitespace());
    }

    public Splitter l(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(this.c, this.b, charMatcher, this.f3490d);
    }
}
