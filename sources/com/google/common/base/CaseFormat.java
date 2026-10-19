package com.google.common.base;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public abstract class CaseFormat {
    public static final CaseFormat b;
    public static final CaseFormat c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final CaseFormat f3478d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CaseFormat f3479e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final CharMatcher f3481g;
    private final String h;
    public static final CaseFormat a = new a("LOWER_HYPHEN", 0, CharMatcher.is('-'), "-");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ CaseFormat[] f3480f = e();

    enum a extends CaseFormat {
        a(String str, int i, CharMatcher charMatcher, String str2) {
            super(str, i, charMatcher, str2, null);
        }
    }

    static {
        String str = "_";
        b = new CaseFormat("LOWER_UNDERSCORE", 1, CharMatcher.is('_'), str) { // from class: com.google.common.base.CaseFormat.b
            {
                a aVar = null;
            }
        };
        String str2 = "";
        c = new CaseFormat("LOWER_CAMEL", 2, CharMatcher.inRange('A', 'Z'), str2) { // from class: com.google.common.base.CaseFormat.c
            {
                a aVar = null;
            }
        };
        f3478d = new CaseFormat("UPPER_CAMEL", 3, CharMatcher.inRange('A', 'Z'), str2) { // from class: com.google.common.base.CaseFormat.d
            {
                a aVar = null;
            }
        };
        f3479e = new CaseFormat("UPPER_UNDERSCORE", 4, CharMatcher.is('_'), str) { // from class: com.google.common.base.CaseFormat.e
            {
                a aVar = null;
            }
        };
    }

    private CaseFormat(String str, int i, CharMatcher charMatcher, String str2) {
        this.f3481g = charMatcher;
        this.h = str2;
    }

    /* synthetic */ CaseFormat(String str, int i, CharMatcher charMatcher, String str2, a aVar) {
        this(str, i, charMatcher, str2);
    }

    private static /* synthetic */ CaseFormat[] e() {
        return new CaseFormat[]{a, b, c, f3478d, f3479e};
    }

    public static CaseFormat valueOf(String str) {
        return (CaseFormat) Enum.valueOf(CaseFormat.class, str);
    }

    public static CaseFormat[] values() {
        return (CaseFormat[]) f3480f.clone();
    }
}
