package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.calls.b;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;

/* JADX INFO: compiled from: KPropertyImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KPropertyImplKt {

    /* JADX INFO: compiled from: KPropertyImpl.kt */
    static final class a extends Lambda implements Function0<Boolean> {
        final /* synthetic */ KPropertyImpl.a a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(KPropertyImpl.a aVar) {
            super(0);
            this.a = aVar;
        }

        public final boolean c() {
            return this.a.a().z().getAnnotations().N(UtilKt.getJVM_STATIC());
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(c());
        }
    }

    /* JADX INFO: compiled from: KPropertyImpl.kt */
    static final class b extends Lambda implements Function0<Boolean> {
        final /* synthetic */ KPropertyImpl.a a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(KPropertyImpl.a aVar) {
            super(0);
            this.a = aVar;
        }

        public final boolean c() {
            return !TypeUtils.isNullableType(this.a.a().z().getType());
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(c());
        }
    }

    /* JADX INFO: compiled from: KPropertyImpl.kt */
    static final class c extends Lambda implements Function1<Field, kotlin.reflect.jvm.internal.calls.b<? extends Field>> {
        final /* synthetic */ KPropertyImpl.a a;
        final /* synthetic */ boolean b;
        final /* synthetic */ b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ a f9010d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(KPropertyImpl.a aVar, boolean z, b bVar, a aVar2) {
            super(1);
            this.a = aVar;
            this.b = z;
            this.c = bVar;
            this.f9010d = aVar2;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.calls.b<Field> invoke(Field field) {
            Intrinsics.checkParameterIsNotNull(field, "field");
            return (KPropertyImplKt.b(this.a.a().z()) || !Modifier.isStatic(field.getModifiers())) ? this.b ? this.a.B() ? new b.f.a(field, KPropertyImplKt.getBoundReceiver(this.a)) : new b.f.c(field) : this.a.B() ? new b.g.a(field, this.c.c(), KPropertyImplKt.getBoundReceiver(this.a)) : new b.g.c(field, this.c.c()) : this.f9010d.c() ? this.b ? this.a.B() ? new b.f.C0510b(field) : new b.f.d(field) : this.a.B() ? new b.g.C0511b(field, this.c.c()) : new b.g.d(field, this.c.c()) : this.b ? new b.f.e(field) : new b.g.e(field, this.c.c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final kotlin.reflect.jvm.internal.calls.Caller<?> a(kotlin.reflect.jvm.internal.KPropertyImpl.a<?, ?> r7, boolean r8) {
        /*
            Method dump skipped, instruction units count: 602
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KPropertyImplKt.a(kotlin.reflect.jvm.internal.KPropertyImpl$a, boolean):kotlin.reflect.jvm.internal.calls.Caller");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(y yVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.i containingDeclaration = yVar.b();
        Intrinsics.checkExpressionValueIsNotNull(containingDeclaration, "containingDeclaration");
        if (!DescriptorUtils.isCompanionObject(containingDeclaration)) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = containingDeclaration.b();
        return !(DescriptorUtils.isInterface(iVarB) || DescriptorUtils.isAnnotationClass(iVarB)) || ((yVar instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e) && JvmProtoBufUtil.isMovedFromInterfaceCompanion(((kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e) yVar).X()));
    }

    public static final Object getBoundReceiver(KPropertyImpl.a<?, ?> boundReceiver) {
        Intrinsics.checkParameterIsNotNull(boundReceiver, "$this$boundReceiver");
        return boundReceiver.a().D();
    }
}
