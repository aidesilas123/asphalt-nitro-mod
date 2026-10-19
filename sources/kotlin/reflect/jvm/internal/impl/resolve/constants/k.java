package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;

/* JADX INFO: compiled from: constantValues.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class k extends g<kotlin.v> {
    public static final a b = new a(null);

    /* JADX INFO: compiled from: constantValues.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final k a(String message) {
            Intrinsics.checkParameterIsNotNull(message, "message");
            return new b(message);
        }
    }

    /* JADX INFO: compiled from: constantValues.kt */
    public static final class b extends k {
        private final String c;

        public b(String message) {
            Intrinsics.checkParameterIsNotNull(message, "message");
            this.c = message;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.types.y a(ModuleDescriptor module) {
            Intrinsics.checkParameterIsNotNull(module, "module");
            kotlin.reflect.jvm.internal.impl.types.y yVarCreateErrorType = ErrorUtils.createErrorType(this.c);
            Intrinsics.checkExpressionValueIsNotNull(yVarCreateErrorType, "ErrorUtils.createErrorType(message)");
            return yVarCreateErrorType;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
        public String toString() {
            return this.c;
        }
    }

    public k() {
        super(kotlin.v.a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public kotlin.v b() {
        throw new UnsupportedOperationException();
    }
}
