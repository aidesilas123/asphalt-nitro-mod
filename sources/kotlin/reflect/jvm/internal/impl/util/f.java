package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ModuleVisibilityHelper.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface f {

    /* JADX INFO: compiled from: ModuleVisibilityHelper.kt */
    public static final class a implements f {
        public static final a a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.f
        public boolean a(kotlin.reflect.jvm.internal.impl.descriptors.i what, kotlin.reflect.jvm.internal.impl.descriptors.i from) {
            Intrinsics.checkParameterIsNotNull(what, "what");
            Intrinsics.checkParameterIsNotNull(from, "from");
            return true;
        }
    }

    boolean a(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar2);
}
