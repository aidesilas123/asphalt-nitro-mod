package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: JvmBytecodeBinaryVersion.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a extends kotlin.reflect.jvm.internal.impl.metadata.deserialization.a {
    public static final C0538a i = new C0538a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f9668g = new a(1, 0, 3);
    public static final a h = new a(new int[0]);

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: JvmBytecodeBinaryVersion.kt */
    public static final class C0538a {
        private C0538a() {
        }

        public /* synthetic */ C0538a(n nVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(int... numbers) {
        super(Arrays.copyOf(numbers, numbers.length));
        Intrinsics.checkParameterIsNotNull(numbers, "numbers");
    }
}
