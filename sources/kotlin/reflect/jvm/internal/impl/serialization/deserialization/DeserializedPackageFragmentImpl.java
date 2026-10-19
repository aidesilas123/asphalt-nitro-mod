package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: DeserializedPackageFragmentImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class DeserializedPackageFragmentImpl extends l {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.d f9779g;
    private final s h;
    private ProtoBuf$PackageFragment i;
    private MemberScope j;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.a k;
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c l;

    /* JADX INFO: compiled from: DeserializedPackageFragmentImpl.kt */
    static final class a extends Lambda implements Function1<ClassId, d0> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final d0 invoke(ClassId it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c cVar = DeserializedPackageFragmentImpl.this.l;
            if (cVar != null) {
                return cVar;
            }
            d0 d0Var = d0.a;
            Intrinsics.checkExpressionValueIsNotNull(d0Var, "SourceElement.NO_SOURCE");
            return d0Var;
        }
    }

    /* JADX INFO: compiled from: DeserializedPackageFragmentImpl.kt */
    static final class b extends Lambda implements Function0<List<? extends Name>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<Name> invoke() {
            Collection<ClassId> collectionB = DeserializedPackageFragmentImpl.this.b0().b();
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectionB) {
                ClassId classId = (ClassId) obj;
                if ((classId.j() || ClassDeserializer.b.a().contains(classId)) ? false : true) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((ClassId) it.next()).h());
            }
            return arrayList2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedPackageFragmentImpl(FqName fqName, kotlin.reflect.jvm.internal.impl.storage.h storageManager, ModuleDescriptor module, ProtoBuf$PackageFragment proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.a metadataVersion, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c cVar) {
        super(fqName, storageManager, module);
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(module, "module");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(metadataVersion, "metadataVersion");
        this.k = metadataVersion;
        this.l = cVar;
        ProtoBuf$StringTable protoBuf$StringTableI = proto.I();
        Intrinsics.checkExpressionValueIsNotNull(protoBuf$StringTableI, "proto.strings");
        ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTableH = proto.H();
        Intrinsics.checkExpressionValueIsNotNull(protoBuf$QualifiedNameTableH, "proto.qualifiedNames");
        kotlin.reflect.jvm.internal.impl.metadata.deserialization.d dVar = new kotlin.reflect.jvm.internal.impl.metadata.deserialization.d(protoBuf$StringTableI, protoBuf$QualifiedNameTableH);
        this.f9779g = dVar;
        this.h = new s(proto, dVar, metadataVersion, new a());
        this.i = proto;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.l
    public void k0(j components) {
        Intrinsics.checkParameterIsNotNull(components, "components");
        ProtoBuf$PackageFragment protoBuf$PackageFragment = this.i;
        if (protoBuf$PackageFragment == null) {
            throw new IllegalStateException("Repeated call to DeserializedPackageFragmentImpl::initialize".toString());
        }
        this.i = null;
        ProtoBuf$Package protoBuf$PackageG = protoBuf$PackageFragment.G();
        Intrinsics.checkExpressionValueIsNotNull(protoBuf$PackageG, "proto.`package`");
        this.j = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d(this, protoBuf$PackageG, this.f9779g, this.k, this.l, components, new b());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
    public MemberScope m() {
        MemberScope memberScope = this.j;
        if (memberScope == null) {
            Intrinsics.throwUninitializedPropertyAccessException("_memberScope");
        }
        return memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.l
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public s b0() {
        return this.h;
    }
}
