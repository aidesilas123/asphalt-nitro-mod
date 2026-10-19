package com.google.common.net;

import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.thirdparty.publicsuffix.PublicSuffixType;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class InternetDomainName {
    private static final CharMatcher a = CharMatcher.anyOf(".。．｡");
    private static final Splitter b = Splitter.on('.');
    private static final Joiner c = Joiner.on('.');

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final CharMatcher f3934d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final CharMatcher f3935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final CharMatcher f3936f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final CharMatcher f3937g;
    private final String h;
    private final ImmutableList<String> i;
    private final int j;
    private final int k;

    static {
        CharMatcher charMatcherAnyOf = CharMatcher.anyOf("-_");
        f3934d = charMatcherAnyOf;
        CharMatcher charMatcherInRange = CharMatcher.inRange('0', '9');
        f3935e = charMatcherInRange;
        CharMatcher charMatcherL = CharMatcher.inRange('a', 'z').l(CharMatcher.inRange('A', 'Z'));
        f3936f = charMatcherL;
        f3937g = charMatcherInRange.l(charMatcherL).l(charMatcherAnyOf);
    }

    InternetDomainName(String str) {
        String lowerCase = Ascii.toLowerCase(a.n(str, '.'));
        lowerCase = lowerCase.endsWith(".") ? lowerCase.substring(0, lowerCase.length() - 1) : lowerCase;
        Preconditions.checkArgument(lowerCase.length() <= 253, "Domain name too long: '%s':", lowerCase);
        this.h = lowerCase;
        ImmutableList<String> immutableListCopyOf = ImmutableList.copyOf(b.h(lowerCase));
        this.i = immutableListCopyOf;
        Preconditions.checkArgument(immutableListCopyOf.size() <= 127, "Domain has too many parts: '%s'", lowerCase);
        Preconditions.checkArgument(f(immutableListCopyOf), "Not a valid domain name: '%s'", lowerCase);
        this.j = a(Optional.absent());
        this.k = a(Optional.of(PublicSuffixType.REGISTRY));
    }

    private int a(Optional<PublicSuffixType> optional) {
        int size = this.i.size();
        for (int i = 0; i < size; i++) {
            String strE = c.e(this.i.subList(i, size));
            if (c(optional, Optional.fromNullable(com.google.thirdparty.publicsuffix.a.a.get(strE)))) {
                return i;
            }
            if (com.google.thirdparty.publicsuffix.a.c.containsKey(strE)) {
                return i + 1;
            }
            if (d(optional, strE)) {
                return i;
            }
        }
        return -1;
    }

    private static boolean c(Optional<PublicSuffixType> optional, Optional<PublicSuffixType> optional2) {
        return optional.d() ? optional.equals(optional2) : optional2.d();
    }

    private static boolean d(Optional<PublicSuffixType> optional, String str) {
        List<String> listI = b.e(2).i(str);
        return listI.size() == 2 && c(optional, Optional.fromNullable(com.google.thirdparty.publicsuffix.a.b.get(listI.get(1))));
    }

    private static boolean e(String str, boolean z) {
        if (str.length() >= 1 && str.length() <= 63) {
            if (!f3937g.i(CharMatcher.ascii().o(str))) {
                return false;
            }
            CharMatcher charMatcher = f3934d;
            if (!charMatcher.h(str.charAt(0)) && !charMatcher.h(str.charAt(str.length() - 1))) {
                return (z && f3935e.h(str.charAt(0))) ? false : true;
            }
        }
        return false;
    }

    private static boolean f(List<String> list) {
        int size = list.size() - 1;
        if (!e(list.get(size), true)) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!e(list.get(i), false)) {
                return false;
            }
        }
        return true;
    }

    public static InternetDomainName from(String str) {
        return new InternetDomainName((String) Preconditions.checkNotNull(str));
    }

    public static boolean isValid(String str) {
        try {
            from(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public boolean b() {
        return this.j != -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InternetDomainName) {
            return this.h.equals(((InternetDomainName) obj).h);
        }
        return false;
    }

    public int hashCode() {
        return this.h.hashCode();
    }

    public String toString() {
        return this.h;
    }
}
