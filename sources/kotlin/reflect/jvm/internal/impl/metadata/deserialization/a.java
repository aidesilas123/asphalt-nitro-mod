package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: BinaryVersion.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class a {
    public static final C0537a a = new C0537a(null);
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f9623d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<Integer> f9624e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int[] f9625f;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.deserialization.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BinaryVersion.kt */
    public static final class C0537a {
        private C0537a() {
        }

        public /* synthetic */ C0537a(n nVar) {
            this();
        }
    }

    public a(int... numbers) {
        Intrinsics.checkParameterIsNotNull(numbers, "numbers");
        this.f9625f = numbers;
        Integer orNull = ArraysKt___ArraysKt.getOrNull(numbers, 0);
        this.b = orNull != null ? orNull.intValue() : -1;
        Integer orNull2 = ArraysKt___ArraysKt.getOrNull(numbers, 1);
        this.c = orNull2 != null ? orNull2.intValue() : -1;
        Integer orNull3 = ArraysKt___ArraysKt.getOrNull(numbers, 2);
        this.f9623d = orNull3 != null ? orNull3.intValue() : -1;
        this.f9624e = numbers.length > 3 ? CollectionsKt___CollectionsKt.toList(ArraysKt___ArraysJvmKt.asList(numbers).subList(3, numbers.length)) : CollectionsKt__CollectionsKt.emptyList();
    }

    public final int a() {
        return this.b;
    }

    public final int b() {
        return this.c;
    }

    public final boolean c(int i, int i2, int i3) {
        int i4 = this.b;
        if (i4 > i) {
            return true;
        }
        if (i4 < i) {
            return false;
        }
        int i5 = this.c;
        if (i5 > i2) {
            return true;
        }
        return i5 >= i2 && this.f9623d >= i3;
    }

    public final boolean d(a version) {
        Intrinsics.checkParameterIsNotNull(version, "version");
        return c(version.b, version.c, version.f9623d);
    }

    protected final boolean e(a ourVersion) {
        Intrinsics.checkParameterIsNotNull(ourVersion, "ourVersion");
        int i = this.b;
        if (i == 0) {
            if (ourVersion.b == 0 && this.c == ourVersion.c) {
                return true;
            }
        } else if (i == ourVersion.b && this.c <= ourVersion.c) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj != null && Intrinsics.areEqual(getClass(), obj.getClass())) {
            a aVar = (a) obj;
            if (this.b == aVar.b && this.c == aVar.c && this.f9623d == aVar.f9623d && Intrinsics.areEqual(this.f9624e, aVar.f9624e)) {
                return true;
            }
        }
        return false;
    }

    public final int[] f() {
        return this.f9625f;
    }

    public int hashCode() {
        int i = this.b;
        int i2 = i + (i * 31) + this.c;
        int i3 = i2 + (i2 * 31) + this.f9623d;
        return i3 + (i3 * 31) + this.f9624e.hashCode();
    }

    public String toString() {
        int[] iArrF = f();
        ArrayList arrayList = new ArrayList();
        int length = iArrF.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArrF[i];
            if (!(i2 != -1)) {
                break;
            }
            arrayList.add(Integer.valueOf(i2));
        }
        return arrayList.isEmpty() ? "unknown" : CollectionsKt___CollectionsKt.joinToString$default(arrayList, ".", null, null, 0, null, null, 62, null);
    }
}
