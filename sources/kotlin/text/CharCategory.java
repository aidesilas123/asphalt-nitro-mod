package kotlin.text;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.n;
import kotlin.ranges.IntRange;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CharCategoryJVM.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\f\n\u0002\b \b\u0086\u0081\u0002\u0018\u0000 -2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001-B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0086\u0002R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,¨\u0006."}, d2 = {"Lkotlin/text/CharCategory;", "", "value", "", "code", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getCode", "()Ljava/lang/String;", "getValue", "()I", "contains", "", "char", "", "UNASSIGNED", "UPPERCASE_LETTER", "LOWERCASE_LETTER", "TITLECASE_LETTER", "MODIFIER_LETTER", "OTHER_LETTER", "NON_SPACING_MARK", "ENCLOSING_MARK", "COMBINING_SPACING_MARK", "DECIMAL_DIGIT_NUMBER", "LETTER_NUMBER", "OTHER_NUMBER", "SPACE_SEPARATOR", "LINE_SEPARATOR", "PARAGRAPH_SEPARATOR", "CONTROL", "FORMAT", "PRIVATE_USE", "SURROGATE", "DASH_PUNCTUATION", "START_PUNCTUATION", "END_PUNCTUATION", "CONNECTOR_PUNCTUATION", "OTHER_PUNCTUATION", "MATH_SYMBOL", "CURRENCY_SYMBOL", "MODIFIER_SYMBOL", "OTHER_SYMBOL", "INITIAL_QUOTE_PUNCTUATION", "FINAL_QUOTE_PUNCTUATION", "Companion", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class CharCategory {
    private static final /* synthetic */ CharCategory[] F;
    private static final /* synthetic */ EnumEntries G;
    public static final a a;
    private final int H;
    private final String I;
    public static final CharCategory b = new CharCategory("UNASSIGNED", 0, 0, "Cn");
    public static final CharCategory c = new CharCategory("UPPERCASE_LETTER", 1, 1, "Lu");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final CharCategory f9939d = new CharCategory("LOWERCASE_LETTER", 2, 2, "Ll");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CharCategory f9940e = new CharCategory("TITLECASE_LETTER", 3, 3, "Lt");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final CharCategory f9941f = new CharCategory("MODIFIER_LETTER", 4, 4, "Lm");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final CharCategory f9942g = new CharCategory("OTHER_LETTER", 5, 5, "Lo");
    public static final CharCategory h = new CharCategory("NON_SPACING_MARK", 6, 6, "Mn");
    public static final CharCategory i = new CharCategory("ENCLOSING_MARK", 7, 7, "Me");
    public static final CharCategory j = new CharCategory("COMBINING_SPACING_MARK", 8, 8, "Mc");
    public static final CharCategory k = new CharCategory("DECIMAL_DIGIT_NUMBER", 9, 9, "Nd");
    public static final CharCategory l = new CharCategory("LETTER_NUMBER", 10, 10, "Nl");
    public static final CharCategory m = new CharCategory("OTHER_NUMBER", 11, 11, "No");
    public static final CharCategory n = new CharCategory("SPACE_SEPARATOR", 12, 12, "Zs");
    public static final CharCategory o = new CharCategory("LINE_SEPARATOR", 13, 13, "Zl");
    public static final CharCategory p = new CharCategory("PARAGRAPH_SEPARATOR", 14, 14, "Zp");
    public static final CharCategory q = new CharCategory("CONTROL", 15, 15, "Cc");
    public static final CharCategory r = new CharCategory("FORMAT", 16, 16, "Cf");
    public static final CharCategory s = new CharCategory("PRIVATE_USE", 17, 18, "Co");
    public static final CharCategory t = new CharCategory("SURROGATE", 18, 19, "Cs");
    public static final CharCategory u = new CharCategory("DASH_PUNCTUATION", 19, 20, "Pd");
    public static final CharCategory v = new CharCategory("START_PUNCTUATION", 20, 21, "Ps");
    public static final CharCategory w = new CharCategory("END_PUNCTUATION", 21, 22, "Pe");
    public static final CharCategory x = new CharCategory("CONNECTOR_PUNCTUATION", 22, 23, "Pc");
    public static final CharCategory y = new CharCategory("OTHER_PUNCTUATION", 23, 24, "Po");
    public static final CharCategory z = new CharCategory("MATH_SYMBOL", 24, 25, "Sm");
    public static final CharCategory A = new CharCategory("CURRENCY_SYMBOL", 25, 26, "Sc");
    public static final CharCategory B = new CharCategory("MODIFIER_SYMBOL", 26, 27, "Sk");
    public static final CharCategory C = new CharCategory("OTHER_SYMBOL", 27, 28, "So");
    public static final CharCategory D = new CharCategory("INITIAL_QUOTE_PUNCTUATION", 28, 29, "Pi");
    public static final CharCategory E = new CharCategory("FINAL_QUOTE_PUNCTUATION", 29, 30, "Pf");

    /* JADX INFO: compiled from: CharCategoryJVM.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/text/CharCategory$Companion;", "", "()V", "valueOf", "Lkotlin/text/CharCategory;", "category", "", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final CharCategory a(int i) {
            if (new IntRange(0, 16).l(i)) {
                return CharCategory.getEntries().get(i);
            }
            if (new IntRange(18, 30).l(i)) {
                return CharCategory.getEntries().get(i - 1);
            }
            throw new IllegalArgumentException("Category #" + i + " is not defined.");
        }
    }

    static {
        CharCategory[] charCategoryArrE = e();
        F = charCategoryArrE;
        G = EnumEntriesKt.enumEntries(charCategoryArrE);
        a = new a(null);
    }

    private CharCategory(String str, int i2, int i3, String str2) {
        this.H = i3;
        this.I = str2;
    }

    private static final /* synthetic */ CharCategory[] e() {
        return new CharCategory[]{b, c, f9939d, f9940e, f9941f, f9942g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E};
    }

    public static EnumEntries<CharCategory> getEntries() {
        return G;
    }

    public static CharCategory valueOf(String str) {
        return (CharCategory) Enum.valueOf(CharCategory.class, str);
    }

    public static CharCategory[] values() {
        return (CharCategory[]) F.clone();
    }
}
