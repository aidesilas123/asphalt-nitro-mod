package kotlin.annotation;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Annotations.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lkotlin/annotation/AnnotationTarget;", "", "(Ljava/lang/String;I)V", "CLASS", "ANNOTATION_CLASS", "TYPE_PARAMETER", "PROPERTY", "FIELD", "LOCAL_VARIABLE", "VALUE_PARAMETER", "CONSTRUCTOR", "FUNCTION", "PROPERTY_GETTER", "PROPERTY_SETTER", "TYPE", "EXPRESSION", "FILE", "TYPEALIAS", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class AnnotationTarget {
    public static final AnnotationTarget a = new AnnotationTarget("CLASS", 0);
    public static final AnnotationTarget b = new AnnotationTarget("ANNOTATION_CLASS", 1);
    public static final AnnotationTarget c = new AnnotationTarget("TYPE_PARAMETER", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final AnnotationTarget f8837d = new AnnotationTarget("PROPERTY", 3);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AnnotationTarget f8838e = new AnnotationTarget("FIELD", 4);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final AnnotationTarget f8839f = new AnnotationTarget("LOCAL_VARIABLE", 5);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final AnnotationTarget f8840g = new AnnotationTarget("VALUE_PARAMETER", 6);
    public static final AnnotationTarget h = new AnnotationTarget("CONSTRUCTOR", 7);
    public static final AnnotationTarget i = new AnnotationTarget("FUNCTION", 8);
    public static final AnnotationTarget j = new AnnotationTarget("PROPERTY_GETTER", 9);
    public static final AnnotationTarget k = new AnnotationTarget("PROPERTY_SETTER", 10);
    public static final AnnotationTarget l = new AnnotationTarget("TYPE", 11);
    public static final AnnotationTarget m = new AnnotationTarget("EXPRESSION", 12);
    public static final AnnotationTarget n = new AnnotationTarget("FILE", 13);
    public static final AnnotationTarget o = new AnnotationTarget("TYPEALIAS", 14);
    private static final /* synthetic */ AnnotationTarget[] p;
    private static final /* synthetic */ EnumEntries q;

    static {
        AnnotationTarget[] annotationTargetArrE = e();
        p = annotationTargetArrE;
        q = EnumEntriesKt.enumEntries(annotationTargetArrE);
    }

    private AnnotationTarget(String str, int i2) {
    }

    private static final /* synthetic */ AnnotationTarget[] e() {
        return new AnnotationTarget[]{a, b, c, f8837d, f8838e, f8839f, f8840g, h, i, j, k, l, m, n, o};
    }

    public static EnumEntries<AnnotationTarget> getEntries() {
        return q;
    }

    public static AnnotationTarget valueOf(String str) {
        return (AnnotationTarget) Enum.valueOf(AnnotationTarget.class, str);
    }

    public static AnnotationTarget[] values() {
        return (AnnotationTarget[]) p.clone();
    }
}
