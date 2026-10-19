package kotlin.io.path;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PathWalkOption.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/io/path/PathWalkOption;", "", "(Ljava/lang/String;I)V", "INCLUDE_DIRECTORIES", "BREADTH_FIRST", "FOLLOW_LINKS", "kotlin-stdlib-jdk7"}, mv = {1, 9, 0}, xi = 48)
public final class PathWalkOption {
    public static final PathWalkOption a = new PathWalkOption("INCLUDE_DIRECTORIES", 0);
    public static final PathWalkOption b = new PathWalkOption("BREADTH_FIRST", 1);
    public static final PathWalkOption c = new PathWalkOption("FOLLOW_LINKS", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ PathWalkOption[] f8917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8918e;

    static {
        PathWalkOption[] pathWalkOptionArrE = e();
        f8917d = pathWalkOptionArrE;
        f8918e = EnumEntriesKt.enumEntries(pathWalkOptionArrE);
    }

    private PathWalkOption(String str, int i) {
    }

    private static final /* synthetic */ PathWalkOption[] e() {
        return new PathWalkOption[]{a, b, c};
    }

    public static EnumEntries<PathWalkOption> getEntries() {
        return f8918e;
    }

    public static PathWalkOption valueOf(String str) {
        return (PathWalkOption) Enum.valueOf(PathWalkOption.class, str);
    }

    public static PathWalkOption[] values() {
        return (PathWalkOption[]) f8917d.clone();
    }
}
