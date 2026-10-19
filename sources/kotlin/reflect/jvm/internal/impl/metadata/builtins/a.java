package kotlin.reflect.jvm.internal.impl.metadata.builtins;

import java.io.DataInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: BuiltInsBinaryVersion.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a extends kotlin.reflect.jvm.internal.impl.metadata.deserialization.a {
    public static final C0536a i = new C0536a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f9618g = new a(1, 0, 7);
    public static final a h = new a(new int[0]);

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.metadata.builtins.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BuiltInsBinaryVersion.kt */
    public static final class C0536a {
        private C0536a() {
        }

        public /* synthetic */ C0536a(n nVar) {
            this();
        }

        public final a a(InputStream stream) {
            Intrinsics.checkParameterIsNotNull(stream, "stream");
            DataInputStream dataInputStream = new DataInputStream(stream);
            IntRange intRange = new IntRange(1, dataInputStream.readInt());
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRange, 10));
            Iterator<Integer> it = intRange.iterator();
            while (it.hasNext()) {
                ((IntIterator) it).nextInt();
                arrayList.add(Integer.valueOf(dataInputStream.readInt()));
            }
            int[] intArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
            return new a(Arrays.copyOf(intArray, intArray.length));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(int... numbers) {
        super(Arrays.copyOf(numbers, numbers.length));
        Intrinsics.checkParameterIsNotNull(numbers, "numbers");
    }

    public boolean g() {
        return e(f9618g);
    }
}
