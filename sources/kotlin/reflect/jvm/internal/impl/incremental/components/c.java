package kotlin.reflect.jvm.internal.impl.incremental.components;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LookupTracker.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface c {

    /* JADX INFO: compiled from: LookupTracker.kt */
    public static final class a implements c {
        public static final a a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.incremental.components.c
        public boolean a() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.incremental.components.c
        public void b(String filePath, Position position, String scopeFqName, ScopeKind scopeKind, String name) {
            Intrinsics.checkParameterIsNotNull(filePath, "filePath");
            Intrinsics.checkParameterIsNotNull(position, "position");
            Intrinsics.checkParameterIsNotNull(scopeFqName, "scopeFqName");
            Intrinsics.checkParameterIsNotNull(scopeKind, "scopeKind");
            Intrinsics.checkParameterIsNotNull(name, "name");
        }
    }

    boolean a();

    void b(String str, Position position, String str2, ScopeKind scopeKind, String str3);
}
