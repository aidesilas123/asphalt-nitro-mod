package com.google.common.base;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CharMatcher implements com.google.common.base.k<Character> {

    private static final class a extends CharMatcher {
        final CharMatcher a;
        final CharMatcher b;

        a(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.a = (CharMatcher) Preconditions.checkNotNull(charMatcher);
            this.b = (CharMatcher) Preconditions.checkNotNull(charMatcher2);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return this.a.h(c) && this.b.h(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 19 + strValueOf2.length());
            sb.append("CharMatcher.and(");
            sb.append(strValueOf);
            sb.append(", ");
            sb.append(strValueOf2);
            sb.append(")");
            return sb.toString();
        }
    }

    static final class a0 extends t {
        static final int b = Integer.numberOfLeadingZeros(31);
        static final a0 c = new a0();

        a0() {
            super("CharMatcher.whitespace()");
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c2) {
            return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c2) >>> b) == c2;
        }
    }

    private static final class b extends t {
        static final b b = new b();

        private b() {
            super("CharMatcher.any()");
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher b(CharMatcher charMatcher) {
            return (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public int d(CharSequence charSequence) {
            return charSequence.length();
        }

        @Override // com.google.common.base.CharMatcher
        public int e(CharSequence charSequence) {
            return charSequence.length() == 0 ? -1 : 0;
        }

        @Override // com.google.common.base.CharMatcher
        public int f(CharSequence charSequence, int i) {
            int length = charSequence.length();
            Preconditions.checkPositionIndex(i, length);
            if (i == length) {
                return -1;
            }
            return i;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean i(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean j(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.CharMatcher.g, com.google.common.base.CharMatcher
        public CharMatcher k() {
            return CharMatcher.none();
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher l(CharMatcher charMatcher) {
            Preconditions.checkNotNull(charMatcher);
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public String m(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return "";
        }

        @Override // com.google.common.base.CharMatcher
        public String n(CharSequence charSequence, char c) {
            char[] cArr = new char[charSequence.length()];
            Arrays.fill(cArr, c);
            return new String(cArr);
        }
    }

    private static final class c extends CharMatcher {
        private final char[] a;

        public c(CharSequence charSequence) {
            char[] charArray = charSequence.toString().toCharArray();
            this.a = charArray;
            Arrays.sort(charArray);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return Arrays.binarySearch(this.a, c) >= 0;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.anyOf(\"");
            for (char c : this.a) {
                sb.append(CharMatcher.p(c));
            }
            sb.append("\")");
            return sb.toString();
        }
    }

    private static final class d extends t {
        static final d b = new d();

        d() {
            super("CharMatcher.ascii()");
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return c <= 127;
        }
    }

    private static final class e extends CharMatcher {
        static final CharMatcher a = new e();

        private e() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            if (c != ' ' && c != 133 && c != 5760) {
                if (c == 8199) {
                    return false;
                }
                if (c != 8287 && c != 12288 && c != 8232 && c != 8233) {
                    switch (c) {
                        case '\t':
                        case '\n':
                        case 11:
                        case '\f':
                        case '\r':
                            break;
                        default:
                            return c >= 8192 && c <= 8202;
                    }
                }
            }
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.breakingWhitespace()";
        }
    }

    private static final class f extends y {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final f f3482d = new f();

        private f() {
            super("CharMatcher.digit()", r(), q());
        }

        private static char[] q() {
            char[] cArr = new char[37];
            for (int i = 0; i < 37; i++) {
                cArr[i] = (char) ("0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０".charAt(i) + '\t');
            }
            return cArr;
        }

        private static char[] r() {
            return "0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０".toCharArray();
        }
    }

    static abstract class g extends CharMatcher {
        g() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher k() {
            return new v(this);
        }
    }

    private static final class h extends CharMatcher {
        private final com.google.common.base.k<? super Character> a;

        h(com.google.common.base.k<? super Character> kVar) {
            this.a = (com.google.common.base.k) Preconditions.checkNotNull(kVar);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean apply(Character ch) {
            return this.a.apply(Preconditions.checkNotNull(ch));
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return this.a.apply(Character.valueOf(c));
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 26);
            sb.append("CharMatcher.forPredicate(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static final class i extends g {
        private final char a;
        private final char b;

        i(char c, char c2) {
            Preconditions.checkArgument(c2 >= c);
            this.a = c;
            this.b = c2;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return this.a <= c && c <= this.b;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strP = CharMatcher.p(this.a);
            String strP2 = CharMatcher.p(this.b);
            StringBuilder sb = new StringBuilder(String.valueOf(strP).length() + 27 + String.valueOf(strP2).length());
            sb.append("CharMatcher.inRange('");
            sb.append(strP);
            sb.append("', '");
            sb.append(strP2);
            sb.append("')");
            return sb.toString();
        }
    }

    private static final class j extends y {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final j f3483d = new j();

        private j() {
            super("CharMatcher.invisible()", "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u0890\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9".toCharArray(), "  \u00ad\u0605\u061c\u06dd\u070f\u0891\u08e2\u1680\u180e\u200f \u2064\u206f\u3000\uf8ff\ufeff\ufffb".toCharArray());
        }
    }

    private static final class k extends g {
        private final char a;

        k(char c) {
            this.a = c;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher b(CharMatcher charMatcher) {
            return charMatcher.h(this.a) ? this : CharMatcher.none();
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return c == this.a;
        }

        @Override // com.google.common.base.CharMatcher.g, com.google.common.base.CharMatcher
        public CharMatcher k() {
            return CharMatcher.isNot(this.a);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher l(CharMatcher charMatcher) {
            return charMatcher.h(this.a) ? charMatcher : super.l(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public String n(CharSequence charSequence, char c) {
            return charSequence.toString().replace(this.a, c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strP = CharMatcher.p(this.a);
            StringBuilder sb = new StringBuilder(String.valueOf(strP).length() + 18);
            sb.append("CharMatcher.is('");
            sb.append(strP);
            sb.append("')");
            return sb.toString();
        }
    }

    private static final class l extends g {
        private final char a;
        private final char b;

        l(char c, char c2) {
            this.a = c;
            this.b = c2;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return c == this.a || c == this.b;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strP = CharMatcher.p(this.a);
            String strP2 = CharMatcher.p(this.b);
            StringBuilder sb = new StringBuilder(String.valueOf(strP).length() + 21 + String.valueOf(strP2).length());
            sb.append("CharMatcher.anyOf(\"");
            sb.append(strP);
            sb.append(strP2);
            sb.append("\")");
            return sb.toString();
        }
    }

    private static final class m extends g {
        private final char a;

        m(char c) {
            this.a = c;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher b(CharMatcher charMatcher) {
            return charMatcher.h(this.a) ? super.b(charMatcher) : charMatcher;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return c != this.a;
        }

        @Override // com.google.common.base.CharMatcher.g, com.google.common.base.CharMatcher
        public CharMatcher k() {
            return CharMatcher.is(this.a);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher l(CharMatcher charMatcher) {
            return charMatcher.h(this.a) ? CharMatcher.any() : this;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strP = CharMatcher.p(this.a);
            StringBuilder sb = new StringBuilder(String.valueOf(strP).length() + 21);
            sb.append("CharMatcher.isNot('");
            sb.append(strP);
            sb.append("')");
            return sb.toString();
        }
    }

    private static final class n extends CharMatcher {
        static final n a = new n();

        private n() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return Character.isDigit(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaDigit()";
        }
    }

    private static final class o extends t {
        static final o b = new o();

        private o() {
            super("CharMatcher.javaIsoControl()");
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return c <= 31 || (c >= 127 && c <= 159);
        }
    }

    private static final class p extends CharMatcher {
        static final p a = new p();

        private p() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return Character.isLetter(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaLetter()";
        }
    }

    private static final class q extends CharMatcher {
        static final q a = new q();

        private q() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return Character.isLetterOrDigit(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaLetterOrDigit()";
        }
    }

    private static final class r extends CharMatcher {
        static final r a = new r();

        private r() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return Character.isLowerCase(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaLowerCase()";
        }
    }

    private static final class s extends CharMatcher {
        static final s a = new s();

        private s() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return Character.isUpperCase(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaUpperCase()";
        }
    }

    static abstract class t extends g {
        private final String a;

        t(String str) {
            this.a = (String) Preconditions.checkNotNull(str);
        }

        @Override // com.google.common.base.CharMatcher
        public final String toString() {
            return this.a;
        }
    }

    private static class u extends CharMatcher {
        final CharMatcher a;

        u(CharMatcher charMatcher) {
            this.a = (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public int d(CharSequence charSequence) {
            return charSequence.length() - this.a.d(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return !this.a.h(c);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean i(CharSequence charSequence) {
            return this.a.j(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean j(CharSequence charSequence) {
            return this.a.i(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher k() {
            return this.a;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 9);
            sb.append(strValueOf);
            sb.append(".negate()");
            return sb.toString();
        }
    }

    static class v extends u {
        v(CharMatcher charMatcher) {
            super(charMatcher);
        }
    }

    private static final class w extends t {
        static final w b = new w();

        private w() {
            super("CharMatcher.none()");
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher b(CharMatcher charMatcher) {
            Preconditions.checkNotNull(charMatcher);
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public int d(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return 0;
        }

        @Override // com.google.common.base.CharMatcher
        public int e(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public int f(CharSequence charSequence, int i) {
            Preconditions.checkPositionIndex(i, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean i(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean j(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return true;
        }

        @Override // com.google.common.base.CharMatcher.g, com.google.common.base.CharMatcher
        public CharMatcher k() {
            return CharMatcher.any();
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher l(CharMatcher charMatcher) {
            return (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public String m(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String n(CharSequence charSequence, char c) {
            return charSequence.toString();
        }
    }

    private static final class x extends CharMatcher {
        final CharMatcher a;
        final CharMatcher b;

        x(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.a = (CharMatcher) Preconditions.checkNotNull(charMatcher);
            this.b = (CharMatcher) Preconditions.checkNotNull(charMatcher2);
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            return this.a.h(c) || this.b.h(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 18 + strValueOf2.length());
            sb.append("CharMatcher.or(");
            sb.append(strValueOf);
            sb.append(", ");
            sb.append(strValueOf2);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class y extends CharMatcher {
        private final String a;
        private final char[] b;
        private final char[] c;

        y(String str, char[] cArr, char[] cArr2) {
            this.a = str;
            this.b = cArr;
            this.c = cArr2;
            Preconditions.checkArgument(cArr.length == cArr2.length);
            int i = 0;
            while (i < cArr.length) {
                Preconditions.checkArgument(cArr[i] <= cArr2[i]);
                int i2 = i + 1;
                if (i2 < cArr.length) {
                    Preconditions.checkArgument(cArr2[i] < cArr[i2]);
                }
                i = i2;
            }
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.k
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean h(char c) {
            int iBinarySearch = Arrays.binarySearch(this.b, c);
            if (iBinarySearch >= 0) {
                return true;
            }
            int i = (~iBinarySearch) - 1;
            return i >= 0 && c <= this.c[i];
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return this.a;
        }
    }

    private static final class z extends y {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final z f3484d = new z();

        private z() {
            super("CharMatcher.singleWidth()", "\u0000־א׳\u0600ݐ\u0e00Ḁ℀ﭐﹰ｡".toCharArray(), "ӹ־ת״ۿݿ\u0e7f₯℺﷿\ufeffￜ".toCharArray());
        }
    }

    protected CharMatcher() {
    }

    public static CharMatcher any() {
        return b.b;
    }

    public static CharMatcher anyOf(CharSequence charSequence) {
        int length = charSequence.length();
        return length != 0 ? length != 1 ? length != 2 ? new c(charSequence) : g(charSequence.charAt(0), charSequence.charAt(1)) : is(charSequence.charAt(0)) : none();
    }

    public static CharMatcher ascii() {
        return d.b;
    }

    public static CharMatcher breakingWhitespace() {
        return e.a;
    }

    @Deprecated
    public static CharMatcher digit() {
        return f.f3482d;
    }

    public static CharMatcher forPredicate(com.google.common.base.k<? super Character> kVar) {
        return kVar instanceof CharMatcher ? (CharMatcher) kVar : new h(kVar);
    }

    private static l g(char c2, char c3) {
        return new l(c2, c3);
    }

    public static CharMatcher inRange(char c2, char c3) {
        return new i(c2, c3);
    }

    @Deprecated
    public static CharMatcher invisible() {
        return j.f3483d;
    }

    public static CharMatcher is(char c2) {
        return new k(c2);
    }

    public static CharMatcher isNot(char c2) {
        return new m(c2);
    }

    @Deprecated
    public static CharMatcher javaDigit() {
        return n.a;
    }

    public static CharMatcher javaIsoControl() {
        return o.b;
    }

    @Deprecated
    public static CharMatcher javaLetter() {
        return p.a;
    }

    @Deprecated
    public static CharMatcher javaLetterOrDigit() {
        return q.a;
    }

    @Deprecated
    public static CharMatcher javaLowerCase() {
        return r.a;
    }

    @Deprecated
    public static CharMatcher javaUpperCase() {
        return s.a;
    }

    public static CharMatcher none() {
        return w.b;
    }

    public static CharMatcher noneOf(CharSequence charSequence) {
        return anyOf(charSequence).k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String p(char c2) {
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = "0123456789ABCDEF".charAt(c2 & 15);
            c2 = (char) (c2 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    @Deprecated
    public static CharMatcher singleWidth() {
        return z.f3484d;
    }

    public static CharMatcher whitespace() {
        return a0.c;
    }

    public CharMatcher b(CharMatcher charMatcher) {
        return new a(this, charMatcher);
    }

    @Override // com.google.common.base.k
    @Deprecated
    /* JADX INFO: renamed from: c */
    public boolean apply(Character ch) {
        return h(ch.charValue());
    }

    public int d(CharSequence charSequence) {
        int i2 = 0;
        for (int i3 = 0; i3 < charSequence.length(); i3++) {
            if (h(charSequence.charAt(i3))) {
                i2++;
            }
        }
        return i2;
    }

    public int e(CharSequence charSequence) {
        return f(charSequence, 0);
    }

    public int f(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        Preconditions.checkPositionIndex(i2, length);
        while (i2 < length) {
            if (h(charSequence.charAt(i2))) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public abstract boolean h(char c2);

    public boolean i(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!h(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public boolean j(CharSequence charSequence) {
        return e(charSequence) == -1;
    }

    public CharMatcher k() {
        return new u(this);
    }

    public CharMatcher l(CharMatcher charMatcher) {
        return new x(this, charMatcher);
    }

    public String m(CharSequence charSequence) {
        String string = charSequence.toString();
        int iE = e(string);
        if (iE == -1) {
            return string;
        }
        char[] charArray = string.toCharArray();
        int i2 = 1;
        while (true) {
            iE++;
            while (iE != charArray.length) {
                if (h(charArray[iE])) {
                    break;
                }
                charArray[iE - i2] = charArray[iE];
                iE++;
            }
            return new String(charArray, 0, iE - i2);
            i2++;
        }
    }

    public String n(CharSequence charSequence, char c2) {
        String string = charSequence.toString();
        int iE = e(string);
        if (iE == -1) {
            return string;
        }
        char[] charArray = string.toCharArray();
        charArray[iE] = c2;
        while (true) {
            iE++;
            if (iE >= charArray.length) {
                return new String(charArray);
            }
            if (h(charArray[iE])) {
                charArray[iE] = c2;
            }
        }
    }

    public String o(CharSequence charSequence) {
        return k().m(charSequence);
    }

    public String toString() {
        return super.toString();
    }
}
