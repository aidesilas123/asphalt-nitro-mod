package kotlin.reflect.jvm.internal;

import com.json.o2;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.b;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c;
import kotlin.reflect.jvm.internal.impl.name.NameUtils;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;

/* JADX INFO: compiled from: RuntimeTypeMapper.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class c {

    /* JADX INFO: compiled from: RuntimeTypeMapper.kt */
    public static final class a extends c {
        private final Field a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Field field) {
            super(null);
            Intrinsics.checkParameterIsNotNull(field, "field");
            this.a = field;
        }

        @Override // kotlin.reflect.jvm.internal.c
        public String a() {
            StringBuilder sb = new StringBuilder();
            sb.append(JvmAbi.getterName(this.a.getName()));
            sb.append("()");
            Class<?> type = this.a.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "field.type");
            sb.append(ReflectClassUtilKt.getDesc(type));
            return sb.toString();
        }

        public final Field b() {
            return this.a;
        }
    }

    /* JADX INFO: compiled from: RuntimeTypeMapper.kt */
    public static final class b extends c {
        private final Method a;
        private final Method b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Method getterMethod, Method method) {
            super(null);
            Intrinsics.checkParameterIsNotNull(getterMethod, "getterMethod");
            this.a = getterMethod;
            this.b = method;
        }

        @Override // kotlin.reflect.jvm.internal.c
        public String a() {
            return RuntimeTypeMapperKt.a(this.a);
        }

        public final Method b() {
            return this.a;
        }

        public final Method c() {
            return this.b;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RuntimeTypeMapper.kt */
    public static final class C0508c extends c {
        private final String a;
        private final y b;
        private final ProtoBuf$Property c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final JvmProtoBuf.JvmPropertySignature f9015d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b f9016e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.e f9017f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0508c(y descriptor, ProtoBuf$Property proto, JvmProtoBuf.JvmPropertySignature signature, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable) {
            String string;
            super(null);
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(proto, "proto");
            Intrinsics.checkParameterIsNotNull(signature, "signature");
            Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
            Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
            this.b = descriptor;
            this.c = proto;
            this.f9015d = signature;
            this.f9016e = nameResolver;
            this.f9017f = typeTable;
            if (signature.x()) {
                StringBuilder sb = new StringBuilder();
                JvmProtoBuf.JvmMethodSignature jvmMethodSignatureT = signature.t();
                Intrinsics.checkExpressionValueIsNotNull(jvmMethodSignatureT, "signature.getter");
                sb.append(nameResolver.getString(jvmMethodSignatureT.r()));
                JvmProtoBuf.JvmMethodSignature jvmMethodSignatureT2 = signature.t();
                Intrinsics.checkExpressionValueIsNotNull(jvmMethodSignatureT2, "signature.getter");
                sb.append(nameResolver.getString(jvmMethodSignatureT2.q()));
                string = sb.toString();
            } else {
                c.a jvmFieldSignature$default = JvmProtoBufUtil.getJvmFieldSignature$default(JvmProtoBufUtil.b, proto, nameResolver, typeTable, false, 8, null);
                if (jvmFieldSignature$default == null) {
                    throw new o("No field signature for property: " + descriptor);
                }
                String strD = jvmFieldSignature$default.d();
                string = JvmAbi.getterName(strD) + c() + "()" + jvmFieldSignature$default.e();
            }
            this.a = string;
        }

        private final String c() {
            String string;
            kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = this.b.b();
            Intrinsics.checkExpressionValueIsNotNull(iVarB, "descriptor.containingDeclaration");
            if (Intrinsics.areEqual(this.b.getVisibility(), Visibilities.f9099d) && (iVarB instanceof DeserializedClassDescriptor)) {
                ProtoBuf$Class protoBuf$ClassI0 = ((DeserializedClassDescriptor) iVarB).I0();
                GeneratedMessageLite.f<ProtoBuf$Class, Integer> fVar = JvmProtoBuf.i;
                Intrinsics.checkExpressionValueIsNotNull(fVar, "JvmProtoBuf.classModuleName");
                Integer num = (Integer) ProtoBufUtilKt.getExtensionOrNull(protoBuf$ClassI0, fVar);
                if (num == null || (string = this.f9016e.getString(num.intValue())) == null) {
                    string = o2.h.Z;
                }
                return "$" + NameUtils.sanitizeAsJavaIdentifier(string);
            }
            if (!Intrinsics.areEqual(this.b.getVisibility(), Visibilities.a) || !(iVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.s)) {
                return "";
            }
            y yVar = this.b;
            if (yVar == null) {
                throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.serialization.deserialization.descriptors.DeserializedPropertyDescriptor");
            }
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c cVarR0 = ((kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e) yVar).R0();
            if (!(cVarR0 instanceof kotlin.reflect.jvm.internal.impl.load.kotlin.f)) {
                return "";
            }
            kotlin.reflect.jvm.internal.impl.load.kotlin.f fVar2 = (kotlin.reflect.jvm.internal.impl.load.kotlin.f) cVarR0;
            if (fVar2.e() == null) {
                return "";
            }
            return "$" + fVar2.g().e();
        }

        @Override // kotlin.reflect.jvm.internal.c
        public String a() {
            return this.a;
        }

        public final y b() {
            return this.b;
        }

        public final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b d() {
            return this.f9016e;
        }

        public final ProtoBuf$Property e() {
            return this.c;
        }

        public final JvmProtoBuf.JvmPropertySignature f() {
            return this.f9015d;
        }

        public final kotlin.reflect.jvm.internal.impl.metadata.deserialization.e g() {
            return this.f9017f;
        }
    }

    /* JADX INFO: compiled from: RuntimeTypeMapper.kt */
    public static final class d extends c {
        private final b.e a;
        private final b.e b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(b.e getterSignature, b.e eVar) {
            super(null);
            Intrinsics.checkParameterIsNotNull(getterSignature, "getterSignature");
            this.a = getterSignature;
            this.b = eVar;
        }

        @Override // kotlin.reflect.jvm.internal.c
        public String a() {
            return this.a.a();
        }

        public final b.e b() {
            return this.a;
        }

        public final b.e c() {
            return this.b;
        }
    }

    private c() {
    }

    public /* synthetic */ c(kotlin.jvm.internal.n nVar) {
        this();
    }

    public abstract String a();
}
