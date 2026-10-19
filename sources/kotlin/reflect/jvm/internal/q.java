package kotlin.reflect.jvm.internal;

import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: ReflectionObjectRenderer.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class q {
    public static final q b = new q();
    private static final DescriptorRenderer a = DescriptorRenderer.f9727f;

    /* JADX INFO: compiled from: ReflectionObjectRenderer.kt */
    static final class a extends Lambda implements Function1<ValueParameterDescriptor, String> {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(ValueParameterDescriptor it) {
            q qVar = q.b;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            u type = it.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "it.type");
            return qVar.h(type);
        }
    }

    /* JADX INFO: compiled from: ReflectionObjectRenderer.kt */
    static final class b extends Lambda implements Function1<ValueParameterDescriptor, String> {
        public static final b a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(ValueParameterDescriptor it) {
            q qVar = q.b;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            u type = it.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "it.type");
            return qVar.h(type);
        }
    }

    private q() {
    }

    private final void a(StringBuilder sb, b0 b0Var) {
        if (b0Var != null) {
            u type = b0Var.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "receiver.type");
            sb.append(h(type));
            sb.append(".");
        }
    }

    private final void b(StringBuilder sb, kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        b0 instanceReceiverParameter = UtilKt.getInstanceReceiverParameter(aVar);
        b0 b0VarK = aVar.K();
        a(sb, instanceReceiverParameter);
        boolean z = (instanceReceiverParameter == null || b0VarK == null) ? false : true;
        if (z) {
            sb.append("(");
        }
        a(sb, b0VarK);
        if (z) {
            sb.append(")");
        }
    }

    private final String c(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        if (aVar instanceof y) {
            return g((y) aVar);
        }
        if (aVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.o) {
            return d((kotlin.reflect.jvm.internal.impl.descriptors.o) aVar);
        }
        throw new IllegalStateException(("Illegal callable: " + aVar).toString());
    }

    public final String d(kotlin.reflect.jvm.internal.impl.descriptors.o descriptor) {
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        StringBuilder sb = new StringBuilder();
        sb.append("fun ");
        q qVar = b;
        qVar.b(sb, descriptor);
        DescriptorRenderer descriptorRenderer = a;
        Name name = descriptor.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "descriptor.name");
        sb.append(descriptorRenderer.t(name, true));
        List<ValueParameterDescriptor> listG = descriptor.g();
        Intrinsics.checkExpressionValueIsNotNull(listG, "descriptor.valueParameters");
        CollectionsKt___CollectionsKt.joinTo$default(listG, sb, ", ", "(", ")", 0, null, a.a, 48, null);
        sb.append(": ");
        u returnType = descriptor.getReturnType();
        if (returnType == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(returnType, "descriptor.returnType!!");
        sb.append(qVar.h(returnType));
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String e(kotlin.reflect.jvm.internal.impl.descriptors.o invoke) {
        Intrinsics.checkParameterIsNotNull(invoke, "invoke");
        StringBuilder sb = new StringBuilder();
        q qVar = b;
        qVar.b(sb, invoke);
        List<ValueParameterDescriptor> listG = invoke.g();
        Intrinsics.checkExpressionValueIsNotNull(listG, "invoke.valueParameters");
        CollectionsKt___CollectionsKt.joinTo$default(listG, sb, ", ", "(", ")", 0, null, b.a, 48, null);
        sb.append(" -> ");
        u returnType = invoke.getReturnType();
        if (returnType == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(returnType, "invoke.returnType!!");
        sb.append(qVar.h(returnType));
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String f(KParameterImpl parameter) {
        Intrinsics.checkParameterIsNotNull(parameter, "parameter");
        StringBuilder sb = new StringBuilder();
        int i = p.a[parameter.getKind().ordinal()];
        if (i == 1) {
            sb.append("extension receiver parameter");
        } else if (i == 2) {
            sb.append("instance parameter");
        } else if (i == 3) {
            sb.append("parameter #" + parameter.j() + ' ' + parameter.getName());
        }
        sb.append(" of ");
        sb.append(b.c(parameter.a().z()));
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String g(y descriptor) {
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        StringBuilder sb = new StringBuilder();
        sb.append(descriptor.J() ? "var " : "val ");
        q qVar = b;
        qVar.b(sb, descriptor);
        DescriptorRenderer descriptorRenderer = a;
        Name name = descriptor.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "descriptor.name");
        sb.append(descriptorRenderer.t(name, true));
        sb.append(": ");
        u type = descriptor.getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "descriptor.type");
        sb.append(qVar.h(type));
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String h(u type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        return a.u(type);
    }

    public final String i(i0 typeParameter) {
        Intrinsics.checkParameterIsNotNull(typeParameter, "typeParameter");
        StringBuilder sb = new StringBuilder();
        int i = p.b[typeParameter.j().ordinal()];
        if (i == 2) {
            sb.append("in ");
        } else if (i == 3) {
            sb.append("out ");
        }
        sb.append(typeParameter.getName());
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
