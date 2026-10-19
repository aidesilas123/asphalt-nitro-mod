package com.applovin.exoplayer2.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Splitter {
    private final int limit;
    private final boolean omitEmptyStrings;
    private final b strategy;
    private final CharMatcher trimmer;

    private static abstract class a extends com.applovin.exoplayer2.common.base.b<String> {
        int limit;
        final CharSequence oT;
        int oU = 0;
        final boolean omitEmptyStrings;
        final CharMatcher trimmer;

        protected a(Splitter splitter, CharSequence charSequence) {
            this.trimmer = splitter.trimmer;
            this.omitEmptyStrings = splitter.omitEmptyStrings;
            this.limit = splitter.limit;
            this.oT = charSequence;
        }

        abstract int aP(int i);

        abstract int aQ(int i);

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.applovin.exoplayer2.common.base.b
        /* JADX INFO: renamed from: fa, reason: merged with bridge method [inline-methods] */
        public String eT() {
            int iAP;
            int i = this.oU;
            while (true) {
                int i2 = this.oU;
                if (i2 == -1) {
                    return eU();
                }
                iAP = aP(i2);
                if (iAP == -1) {
                    iAP = this.oT.length();
                    this.oU = -1;
                } else {
                    this.oU = aQ(iAP);
                }
                int i3 = this.oU;
                if (i3 == i) {
                    int i4 = i3 + 1;
                    this.oU = i4;
                    if (i4 > this.oT.length()) {
                        this.oU = -1;
                    }
                } else {
                    while (i < iAP && this.trimmer.matches(this.oT.charAt(i))) {
                        i++;
                    }
                    while (iAP > i && this.trimmer.matches(this.oT.charAt(iAP - 1))) {
                        iAP--;
                    }
                    if (!this.omitEmptyStrings || i != iAP) {
                        break;
                    }
                    i = this.oU;
                }
            }
            int i5 = this.limit;
            if (i5 == 1) {
                iAP = this.oT.length();
                this.oU = -1;
                while (iAP > i && this.trimmer.matches(this.oT.charAt(iAP - 1))) {
                    iAP--;
                }
            } else {
                this.limit = i5 - 1;
            }
            return this.oT.subSequence(i, iAP).toString();
        }
    }

    private interface b {
        Iterator<String> b(Splitter splitter, CharSequence charSequence);
    }

    private Splitter(b bVar) {
        this(bVar, false, CharMatcher.none(), Integer.MAX_VALUE);
    }

    private Splitter(b bVar, boolean z, CharMatcher charMatcher, int i) {
        this.strategy = bVar;
        this.omitEmptyStrings = z;
        this.trimmer = charMatcher;
        this.limit = i;
    }

    public static Splitter fixedLength(final int i) {
        Preconditions.checkArgument(i > 0, "The length may not be less than 1");
        return new Splitter(new b() { // from class: com.applovin.exoplayer2.common.base.Splitter.3
            @Override // com.applovin.exoplayer2.common.base.Splitter.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a b(Splitter splitter, CharSequence charSequence) {
                return new a(splitter, charSequence) { // from class: com.applovin.exoplayer2.common.base.Splitter.3.1
                    @Override // com.applovin.exoplayer2.common.base.Splitter.a
                    public int aP(int i2) {
                        int i3 = i2 + i;
                        if (i3 < this.oT.length()) {
                            return i3;
                        }
                        return -1;
                    }

                    @Override // com.applovin.exoplayer2.common.base.Splitter.a
                    public int aQ(int i2) {
                        return i2;
                    }
                };
            }
        });
    }

    public static Splitter on(char c) {
        return on(CharMatcher.is(c));
    }

    public static Splitter on(final CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(new b() { // from class: com.applovin.exoplayer2.common.base.Splitter.1
            @Override // com.applovin.exoplayer2.common.base.Splitter.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a b(Splitter splitter, CharSequence charSequence) {
                return new a(splitter, charSequence) { // from class: com.applovin.exoplayer2.common.base.Splitter.1.1
                    @Override // com.applovin.exoplayer2.common.base.Splitter.a
                    int aP(int i) {
                        return charMatcher.indexIn(this.oT, i);
                    }

                    @Override // com.applovin.exoplayer2.common.base.Splitter.a
                    int aQ(int i) {
                        return i + 1;
                    }
                };
            }
        });
    }

    public static Splitter on(final String str) {
        Preconditions.checkArgument(str.length() != 0, "The separator may not be the empty string.");
        return str.length() == 1 ? on(str.charAt(0)) : new Splitter(new b() { // from class: com.applovin.exoplayer2.common.base.Splitter.2
            @Override // com.applovin.exoplayer2.common.base.Splitter.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a b(Splitter splitter, CharSequence charSequence) {
                return new a(splitter, charSequence) { // from class: com.applovin.exoplayer2.common.base.Splitter.2.1
                    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
                    
                        r6 = r6 + 1;
                     */
                    @Override // com.applovin.exoplayer2.common.base.Splitter.a
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public int aP(int r6) {
                        /*
                            r5 = this;
                            com.applovin.exoplayer2.common.base.Splitter$2 r0 = com.applovin.exoplayer2.common.base.Splitter.AnonymousClass2.this
                            java.lang.String r0 = r1
                            int r0 = r0.length()
                            java.lang.CharSequence r1 = r5.oT
                            int r1 = r1.length()
                            int r1 = r1 - r0
                        Lf:
                            if (r6 > r1) goto L2d
                            r2 = 0
                        L12:
                            if (r2 >= r0) goto L2c
                            java.lang.CharSequence r3 = r5.oT
                            int r4 = r2 + r6
                            char r3 = r3.charAt(r4)
                            com.applovin.exoplayer2.common.base.Splitter$2 r4 = com.applovin.exoplayer2.common.base.Splitter.AnonymousClass2.this
                            java.lang.String r4 = r1
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
                        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.common.base.Splitter.AnonymousClass2.AnonymousClass1.aP(int):int");
                    }

                    @Override // com.applovin.exoplayer2.common.base.Splitter.a
                    public int aQ(int i) {
                        return i + str.length();
                    }
                };
            }
        });
    }

    private Iterator<String> splittingIterator(CharSequence charSequence) {
        return this.strategy.b(this, charSequence);
    }

    public Splitter limit(int i) {
        Preconditions.checkArgument(i > 0, "must be greater than zero: %s", i);
        return new Splitter(this.strategy, this.omitEmptyStrings, this.trimmer, i);
    }

    public Splitter omitEmptyStrings() {
        return new Splitter(this.strategy, true, this.trimmer, this.limit);
    }

    public List<String> splitToList(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        Iterator<String> itSplittingIterator = splittingIterator(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itSplittingIterator.hasNext()) {
            arrayList.add(itSplittingIterator.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Splitter trimResults() {
        return trimResults(CharMatcher.whitespace());
    }

    public Splitter trimResults(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(this.strategy, this.omitEmptyStrings, charMatcher, this.limit);
    }
}
