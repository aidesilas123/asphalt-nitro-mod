package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.LinkedList;
import java.util.List;
import kotlin.Triple;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable;

/* JADX INFO: compiled from: NameResolverImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d implements b {
    private final ProtoBuf$StringTable a;
    private final ProtoBuf$QualifiedNameTable b;

    public d(ProtoBuf$StringTable strings, ProtoBuf$QualifiedNameTable qualifiedNames) {
        Intrinsics.checkParameterIsNotNull(strings, "strings");
        Intrinsics.checkParameterIsNotNull(qualifiedNames, "qualifiedNames");
        this.a = strings;
        this.b = qualifiedNames;
    }

    private final Triple<List<String>, List<String>, Boolean> c(int i) {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        boolean z = false;
        while (i != -1) {
            ProtoBuf$QualifiedNameTable.QualifiedName proto = this.b.p(i);
            ProtoBuf$StringTable protoBuf$StringTable = this.a;
            Intrinsics.checkExpressionValueIsNotNull(proto, "proto");
            String strP = protoBuf$StringTable.p(proto.t());
            ProtoBuf$QualifiedNameTable.QualifiedName.Kind kindR = proto.r();
            if (kindR == null) {
                Intrinsics.throwNpe();
            }
            int i2 = c.a[kindR.ordinal()];
            if (i2 == 1) {
                linkedList2.addFirst(strP);
            } else if (i2 == 2) {
                linkedList.addFirst(strP);
            } else if (i2 == 3) {
                linkedList2.addFirst(strP);
                z = true;
            }
            i = proto.s();
        }
        return new Triple<>(linkedList, linkedList2, Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.b
    public boolean a(int i) {
        return c(i).i().booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.b
    public String b(int i) {
        Triple<List<String>, List<String>, Boolean> tripleC = c(i);
        List<String> listC = tripleC.c();
        String strJoinToString$default = CollectionsKt___CollectionsKt.joinToString$default(tripleC.d(), ".", null, null, 0, null, null, 62, null);
        if (listC.isEmpty()) {
            return strJoinToString$default;
        }
        return CollectionsKt___CollectionsKt.joinToString$default(listC, "/", null, null, 0, null, null, 62, null) + '/' + strJoinToString$default;
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.b
    public String getString(int i) {
        String strP = this.a.p(i);
        Intrinsics.checkExpressionValueIsNotNull(strP, "strings.getString(index)");
        return strP;
    }
}
