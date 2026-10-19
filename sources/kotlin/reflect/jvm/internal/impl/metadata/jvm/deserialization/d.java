package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: JvmMetadataVersion.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d extends kotlin.reflect.jvm.internal.impl.metadata.deserialization.a {
    private final boolean j;
    public static final a i = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final d f9669g = new d(1, 1, 16);
    public static final d h = new d(new int[0]);

    /* JADX INFO: compiled from: JvmMetadataVersion.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(int... numbers) {
        this(numbers, false);
        Intrinsics.checkParameterIsNotNull(numbers, "numbers");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(int[] versionArray, boolean z) {
        super(Arrays.copyOf(versionArray, versionArray.length));
        Intrinsics.checkParameterIsNotNull(versionArray, "versionArray");
        this.j = z;
    }

    public boolean g() {
        if (a() == 1 && b() == 0) {
            return false;
        }
        return this.j ? e(f9669g) : a() == 1 && b() <= 4;
    }
}
