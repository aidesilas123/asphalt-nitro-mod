package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.v;

/* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
/* JADX INFO: loaded from: classes5.dex */
final class SignatureEnhancementBuilder {
    private final Map<String, e> a = new LinkedHashMap();

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    public final class a {
        private final String a;
        final /* synthetic */ SignatureEnhancementBuilder b;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancementBuilder$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
        public final class C0531a {
            private final List<Pair<String, i>> a;
            private Pair<String, i> b;
            private final String c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ a f9371d;

            public C0531a(a aVar, String functionName) {
                Intrinsics.checkParameterIsNotNull(functionName, "functionName");
                this.f9371d = aVar;
                this.c = functionName;
                this.a = new ArrayList();
                this.b = TuplesKt.to("V", null);
            }

            public final Pair<String, e> a() {
                SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
                String strB = this.f9371d.b();
                String str = this.c;
                List<Pair<String, i>> list = this.a;
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Pair) it.next()).f());
                }
                String strJ = signatureBuildingComponents.j(strB, signatureBuildingComponents.i(str, arrayList, this.b.f()));
                i iVarG = this.b.g();
                List<Pair<String, i>> list2 = this.a;
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((i) ((Pair) it2.next()).g());
                }
                return TuplesKt.to(strJ, new e(iVarG, arrayList2));
            }

            public final void b(String type, JavaTypeQualifiers... qualifiers) {
                i iVar;
                Intrinsics.checkParameterIsNotNull(type, "type");
                Intrinsics.checkParameterIsNotNull(qualifiers, "qualifiers");
                List<Pair<String, i>> list = this.a;
                if (qualifiers.length == 0) {
                    iVar = null;
                } else {
                    Iterable<IndexedValue> iterableWithIndex = ArraysKt___ArraysKt.withIndex(qualifiers);
                    LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterableWithIndex, 10)), 16));
                    for (IndexedValue indexedValue : iterableWithIndex) {
                        linkedHashMap.put(Integer.valueOf(indexedValue.d()), (JavaTypeQualifiers) indexedValue.e());
                    }
                    iVar = new i(linkedHashMap);
                }
                list.add(TuplesKt.to(type, iVar));
            }

            public final void c(String type, JavaTypeQualifiers... qualifiers) {
                Intrinsics.checkParameterIsNotNull(type, "type");
                Intrinsics.checkParameterIsNotNull(qualifiers, "qualifiers");
                Iterable<IndexedValue> iterableWithIndex = ArraysKt___ArraysKt.withIndex(qualifiers);
                LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterableWithIndex, 10)), 16));
                for (IndexedValue indexedValue : iterableWithIndex) {
                    linkedHashMap.put(Integer.valueOf(indexedValue.d()), (JavaTypeQualifiers) indexedValue.e());
                }
                this.b = TuplesKt.to(type, new i(linkedHashMap));
            }

            public final void d(JvmPrimitiveType type) {
                Intrinsics.checkParameterIsNotNull(type, "type");
                this.b = TuplesKt.to(type.e(), null);
            }
        }

        public a(SignatureEnhancementBuilder signatureEnhancementBuilder, String className) {
            Intrinsics.checkParameterIsNotNull(className, "className");
            this.b = signatureEnhancementBuilder;
            this.a = className;
        }

        public final void a(String name, Function1<? super C0531a, v> block) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(block, "block");
            Map map = this.b.a;
            C0531a c0531a = new C0531a(this, name);
            block.invoke(c0531a);
            Pair<String, e> pairA = c0531a.a();
            map.put(pairA.f(), pairA.g());
        }

        public final String b() {
            return this.a;
        }
    }

    public final Map<String, e> a() {
        return this.a;
    }
}
