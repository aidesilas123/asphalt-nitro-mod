package com.google.common.base;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: JdkPattern.java */
/* JADX INFO: loaded from: classes3.dex */
final class g extends CommonPattern implements Serializable {
    private static final long serialVersionUID = 0;
    private final Pattern a;

    /* JADX INFO: compiled from: JdkPattern.java */
    private static final class a extends c {
        final Matcher a;

        a(Matcher matcher) {
            this.a = (Matcher) Preconditions.checkNotNull(matcher);
        }

        @Override // com.google.common.base.c
        public int a() {
            return this.a.end();
        }

        @Override // com.google.common.base.c
        public boolean b() {
            return this.a.find();
        }

        @Override // com.google.common.base.c
        public boolean c(int i) {
            return this.a.find(i);
        }

        @Override // com.google.common.base.c
        public boolean d() {
            return this.a.matches();
        }

        @Override // com.google.common.base.c
        public int e() {
            return this.a.start();
        }
    }

    g(Pattern pattern) {
        this.a = (Pattern) Preconditions.checkNotNull(pattern);
    }

    @Override // com.google.common.base.CommonPattern
    public int c() {
        return this.a.flags();
    }

    @Override // com.google.common.base.CommonPattern
    public c d(CharSequence charSequence) {
        return new a(this.a.matcher(charSequence));
    }

    @Override // com.google.common.base.CommonPattern
    public String e() {
        return this.a.pattern();
    }

    public String toString() {
        return this.a.toString();
    }
}
