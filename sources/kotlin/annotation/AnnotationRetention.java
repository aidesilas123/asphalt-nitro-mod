package kotlin.annotation;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Annotations.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/annotation/AnnotationRetention;", "", "(Ljava/lang/String;I)V", "SOURCE", "BINARY", "RUNTIME", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class AnnotationRetention {
    public static final AnnotationRetention a = new AnnotationRetention("SOURCE", 0);
    public static final AnnotationRetention b = new AnnotationRetention("BINARY", 1);
    public static final AnnotationRetention c = new AnnotationRetention("RUNTIME", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AnnotationRetention[] f8835d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8836e;

    static {
        AnnotationRetention[] annotationRetentionArrE = e();
        f8835d = annotationRetentionArrE;
        f8836e = EnumEntriesKt.enumEntries(annotationRetentionArrE);
    }

    private AnnotationRetention(String str, int i) {
    }

    private static final /* synthetic */ AnnotationRetention[] e() {
        return new AnnotationRetention[]{a, b, c};
    }

    public static EnumEntries<AnnotationRetention> getEntries() {
        return f8836e;
    }

    public static AnnotationRetention valueOf(String str) {
        return (AnnotationRetention) Enum.valueOf(AnnotationRetention.class, str);
    }

    public static AnnotationRetention[] values() {
        return (AnnotationRetention[]) f8835d.clone();
    }
}
