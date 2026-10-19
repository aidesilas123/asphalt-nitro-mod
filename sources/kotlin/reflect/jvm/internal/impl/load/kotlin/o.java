package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PackagePartProvider.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface o {

    /* JADX INFO: compiled from: PackagePartProvider.kt */
    public static final class a implements o {
        public static final a a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o
        public List<String> a(String packageFqName) {
            Intrinsics.checkParameterIsNotNull(packageFqName, "packageFqName");
            return CollectionsKt__CollectionsKt.emptyList();
        }
    }

    List<String> a(String str);
}
