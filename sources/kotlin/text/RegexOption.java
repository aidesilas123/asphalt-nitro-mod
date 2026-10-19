package kotlin.text;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.n;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Regex.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lkotlin/text/RegexOption;", "", "Lkotlin/text/FlagEnum;", "value", "", "mask", "(Ljava/lang/String;III)V", "getMask", "()I", "getValue", "IGNORE_CASE", "MULTILINE", "LITERAL", "UNIX_LINES", "COMMENTS", "DOT_MATCHES_ALL", "CANON_EQ", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class RegexOption implements FlagEnum {
    public static final RegexOption a;
    public static final RegexOption b;
    public static final RegexOption c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final RegexOption f9965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final RegexOption f9966e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final RegexOption f9967f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final RegexOption f9968g;
    private static final /* synthetic */ RegexOption[] h;
    private static final /* synthetic */ EnumEntries i;
    private final int j;
    private final int k;

    static {
        int i2 = 2;
        a = new RegexOption("IGNORE_CASE", 0, i2, 0, 2, null);
        int i3 = 0;
        int i4 = 2;
        n nVar = null;
        b = new RegexOption("MULTILINE", 1, 8, i3, i4, nVar);
        int i5 = 0;
        int i6 = 2;
        n nVar2 = null;
        c = new RegexOption("LITERAL", i2, 16, i5, i6, nVar2);
        f9965d = new RegexOption("UNIX_LINES", 3, 1, i3, i4, nVar);
        f9966e = new RegexOption("COMMENTS", 4, 4, i5, i6, nVar2);
        f9967f = new RegexOption("DOT_MATCHES_ALL", 5, 32, i3, i4, nVar);
        f9968g = new RegexOption("CANON_EQ", 6, 128, i5, i6, nVar2);
        RegexOption[] regexOptionArrE = e();
        h = regexOptionArrE;
        i = EnumEntriesKt.enumEntries(regexOptionArrE);
    }

    private RegexOption(String str, int i2, int i3, int i4) {
        this.j = i3;
        this.k = i4;
    }

    /* synthetic */ RegexOption(String str, int i2, int i3, int i4, int i5, n nVar) {
        this(str, i2, i3, (i5 & 2) != 0 ? i3 : i4);
    }

    private static final /* synthetic */ RegexOption[] e() {
        return new RegexOption[]{a, b, c, f9965d, f9966e, f9967f, f9968g};
    }

    public static EnumEntries<RegexOption> getEntries() {
        return i;
    }

    public static RegexOption valueOf(String str) {
        return (RegexOption) Enum.valueOf(RegexOption.class, str);
    }

    public static RegexOption[] values() {
        return (RegexOption[]) h.clone();
    }

    @Override // kotlin.text.FlagEnum
    /* JADX INFO: renamed from: getValue, reason: from getter */
    public int getJ() {
        return this.j;
    }
}
