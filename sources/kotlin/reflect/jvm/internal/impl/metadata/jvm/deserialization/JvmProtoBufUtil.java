package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

/* JADX INFO: compiled from: JvmProtoBufUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class JvmProtoBufUtil {
    private static final ExtensionRegistryLite a;
    public static final JvmProtoBufUtil b = new JvmProtoBufUtil();

    static {
        ExtensionRegistryLite extensionRegistryLiteNewInstance = ExtensionRegistryLite.newInstance();
        JvmProtoBuf.registerAllExtensions(extensionRegistryLiteNewInstance);
        Intrinsics.checkExpressionValueIsNotNull(extensionRegistryLiteNewInstance, "ExtensionRegistryLite.ne…f::registerAllExtensions)");
        a = extensionRegistryLiteNewInstance;
    }

    private JvmProtoBufUtil() {
    }

    private final String e(ProtoBuf$Type protoBuf$Type, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar) {
        if (protoBuf$Type.f0()) {
            return ClassMapperLite.mapClass(bVar.b(protoBuf$Type.R()));
        }
        return null;
    }

    private final e f(InputStream inputStream, String[] strArr) throws IOException {
        JvmProtoBuf.StringTableTypes delimitedFrom = JvmProtoBuf.StringTableTypes.parseDelimitedFrom(inputStream, a);
        Intrinsics.checkExpressionValueIsNotNull(delimitedFrom, "JvmProtoBuf.StringTableT…this, EXTENSION_REGISTRY)");
        return new e(delimitedFrom, strArr);
    }

    public static /* synthetic */ c.a getJvmFieldSignature$default(JvmProtoBufUtil jvmProtoBufUtil, ProtoBuf$Property protoBuf$Property, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = true;
        }
        return jvmProtoBufUtil.c(protoBuf$Property, bVar, eVar, z);
    }

    public static final boolean isMovedFromInterfaceCompanion(ProtoBuf$Property proto) {
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Flags.b bVarA = b.b.a();
        Object objP = proto.p(JvmProtoBuf.f9632e);
        Intrinsics.checkExpressionValueIsNotNull(objP, "proto.getExtension(JvmProtoBuf.flags)");
        Boolean boolA = bVarA.a(((Number) objP).intValue());
        Intrinsics.checkExpressionValueIsNotNull(boolA, "JvmFlags.IS_MOVED_FROM_I…nsion(JvmProtoBuf.flags))");
        return boolA.booleanValue();
    }

    public static final Pair<e, ProtoBuf$Class> readClassDataFrom(byte[] bytes, String[] strings) {
        Intrinsics.checkParameterIsNotNull(bytes, "bytes");
        Intrinsics.checkParameterIsNotNull(strings, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        return new Pair<>(b.f(byteArrayInputStream, strings), ProtoBuf$Class.parseFrom(byteArrayInputStream, a));
    }

    public static final Pair<e, ProtoBuf$Class> readClassDataFrom(String[] data, String[] strings) {
        Intrinsics.checkParameterIsNotNull(data, "data");
        Intrinsics.checkParameterIsNotNull(strings, "strings");
        byte[] bArrDecodeBytes = BitEncoding.decodeBytes(data);
        Intrinsics.checkExpressionValueIsNotNull(bArrDecodeBytes, "BitEncoding.decodeBytes(data)");
        return readClassDataFrom(bArrDecodeBytes, strings);
    }

    public static final Pair<e, ProtoBuf$Function> readFunctionDataFrom(String[] data, String[] strings) {
        Intrinsics.checkParameterIsNotNull(data, "data");
        Intrinsics.checkParameterIsNotNull(strings, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(BitEncoding.decodeBytes(data));
        return new Pair<>(b.f(byteArrayInputStream, strings), ProtoBuf$Function.parseFrom(byteArrayInputStream, a));
    }

    public static final Pair<e, ProtoBuf$Package> readPackageDataFrom(byte[] bytes, String[] strings) {
        Intrinsics.checkParameterIsNotNull(bytes, "bytes");
        Intrinsics.checkParameterIsNotNull(strings, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        return new Pair<>(b.f(byteArrayInputStream, strings), ProtoBuf$Package.parseFrom(byteArrayInputStream, a));
    }

    public static final Pair<e, ProtoBuf$Package> readPackageDataFrom(String[] data, String[] strings) {
        Intrinsics.checkParameterIsNotNull(data, "data");
        Intrinsics.checkParameterIsNotNull(strings, "strings");
        byte[] bArrDecodeBytes = BitEncoding.decodeBytes(data);
        Intrinsics.checkExpressionValueIsNotNull(bArrDecodeBytes, "BitEncoding.decodeBytes(data)");
        return readPackageDataFrom(bArrDecodeBytes, strings);
    }

    public final ExtensionRegistryLite a() {
        return a;
    }

    public final c.b b(ProtoBuf$Constructor proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable) {
        String strJoinToString$default;
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        GeneratedMessageLite.f<ProtoBuf$Constructor, JvmProtoBuf.JvmMethodSignature> fVar = JvmProtoBuf.a;
        Intrinsics.checkExpressionValueIsNotNull(fVar, "JvmProtoBuf.constructorSignature");
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature = (JvmProtoBuf.JvmMethodSignature) ProtoBufUtilKt.getExtensionOrNull(proto, fVar);
        String string = (jvmMethodSignature == null || !jvmMethodSignature.t()) ? "<init>" : nameResolver.getString(jvmMethodSignature.r());
        if (jvmMethodSignature == null || !jvmMethodSignature.s()) {
            List<ProtoBuf$ValueParameter> listG = proto.G();
            Intrinsics.checkExpressionValueIsNotNull(listG, "proto.valueParameterList");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listG, 10));
            for (ProtoBuf$ValueParameter it : listG) {
                JvmProtoBufUtil jvmProtoBufUtil = b;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                String strE = jvmProtoBufUtil.e(ProtoTypeTableUtilKt.type(it, typeTable), nameResolver);
                if (strE == null) {
                    return null;
                }
                arrayList.add(strE);
            }
            strJoinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, "", "(", ")V", 0, null, null, 56, null);
        } else {
            strJoinToString$default = nameResolver.getString(jvmMethodSignature.q());
        }
        return new c.b(string, strJoinToString$default);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r4v2 java.lang.String, still in use, count: 2, list:
          (r4v2 java.lang.String) from 0x005a: IF  (r4v2 java.lang.String) != (null java.lang.String)  -> B:22:0x005c A[HIDDEN]
          (r4v2 java.lang.String) from 0x005c: PHI (r4v3 java.lang.String) = (r4v2 java.lang.String), (r4v5 java.lang.String) binds: [B:21:0x005a, B:19:0x0049] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:114)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    public final kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c.a c(kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r4, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b r5, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e r6, boolean r7) {
        /*
            r3 = this;
            java.lang.String r0 = "proto"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0)
            java.lang.String r0 = "nameResolver"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
            java.lang.String r0 = "typeTable"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r6, r0)
            kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$f<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property, kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmPropertySignature> r0 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.f9631d
            java.lang.String r1 = "JvmProtoBuf.propertySignature"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            java.lang.Object r0 = kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt.getExtensionOrNull(r4, r0)
            kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmPropertySignature r0 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmPropertySignature) r0
            r1 = 0
            if (r0 == 0) goto L66
            boolean r2 = r0.w()
            if (r2 == 0) goto L2a
            kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmFieldSignature r0 = r0.s()
            goto L2b
        L2a:
            r0 = r1
        L2b:
            if (r0 != 0) goto L30
            if (r7 == 0) goto L30
            return r1
        L30:
            if (r0 == 0) goto L3d
            boolean r7 = r0.t()
            if (r7 == 0) goto L3d
            int r7 = r0.r()
            goto L41
        L3d:
            int r7 = r4.O()
        L41:
            if (r0 == 0) goto L52
            boolean r2 = r0.s()
            if (r2 == 0) goto L52
            int r4 = r0.q()
            java.lang.String r4 = r5.getString(r4)
            goto L5c
        L52:
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type r4 = kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt.returnType(r4, r6)
            java.lang.String r4 = r3.e(r4, r5)
            if (r4 == 0) goto L66
        L5c:
            kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c$a r6 = new kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c$a
            java.lang.String r5 = r5.getString(r7)
            r6.<init>(r5, r4)
            return r6
        L66:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil.c(kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e, boolean):kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c$a");
    }

    public final c.b d(ProtoBuf$Function proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable) {
        String string;
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        GeneratedMessageLite.f<ProtoBuf$Function, JvmProtoBuf.JvmMethodSignature> fVar = JvmProtoBuf.b;
        Intrinsics.checkExpressionValueIsNotNull(fVar, "JvmProtoBuf.methodSignature");
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature = (JvmProtoBuf.JvmMethodSignature) ProtoBufUtilKt.getExtensionOrNull(proto, fVar);
        int iP = (jvmMethodSignature == null || !jvmMethodSignature.t()) ? proto.P() : jvmMethodSignature.r();
        if (jvmMethodSignature == null || !jvmMethodSignature.s()) {
            List listListOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(ProtoTypeTableUtilKt.receiverType(proto, typeTable));
            List<ProtoBuf$ValueParameter> listB0 = proto.b0();
            Intrinsics.checkExpressionValueIsNotNull(listB0, "proto.valueParameterList");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listB0, 10));
            for (ProtoBuf$ValueParameter it : listB0) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                arrayList.add(ProtoTypeTableUtilKt.type(it, typeTable));
            }
            List listPlus = CollectionsKt___CollectionsKt.plus((Collection) listListOfNotNull, (Iterable) arrayList);
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listPlus, 10));
            Iterator it2 = listPlus.iterator();
            while (it2.hasNext()) {
                String strE = b.e((ProtoBuf$Type) it2.next(), nameResolver);
                if (strE == null) {
                    return null;
                }
                arrayList2.add(strE);
            }
            String strE2 = e(ProtoTypeTableUtilKt.returnType(proto, typeTable), nameResolver);
            if (strE2 == null) {
                return null;
            }
            string = CollectionsKt___CollectionsKt.joinToString$default(arrayList2, "", "(", ")", 0, null, null, 56, null) + strE2;
        } else {
            string = nameResolver.getString(jvmMethodSignature.q());
        }
        return new c.b(nameResolver.getString(iP), string);
    }
}
