package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;

/* JADX INFO: compiled from: ContractDeserializer.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface i {
    public static final a a = a.b;

    /* JADX INFO: compiled from: ContractDeserializer.kt */
    public static final class a {
        static final /* synthetic */ a b = new a();
        private static final i a = new C0548a();

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.i$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ContractDeserializer.kt */
        public static final class C0548a implements i {
            C0548a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.i
            public Pair a(ProtoBuf$Function proto, kotlin.reflect.jvm.internal.impl.descriptors.o ownerFunction, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable, TypeDeserializer typeDeserializer) {
                Intrinsics.checkParameterIsNotNull(proto, "proto");
                Intrinsics.checkParameterIsNotNull(ownerFunction, "ownerFunction");
                Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
                Intrinsics.checkParameterIsNotNull(typeDeserializer, "typeDeserializer");
                return null;
            }
        }

        private a() {
        }

        public final i a() {
            return a;
        }
    }

    Pair<a.InterfaceC0516a<?>, Object> a(ProtoBuf$Function protoBuf$Function, kotlin.reflect.jvm.internal.impl.descriptors.o oVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar, TypeDeserializer typeDeserializer);
}
