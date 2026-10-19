package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.IOException;
import java.io.InputStream;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragmentImpl;
import kotlin.reflect.jvm.internal.impl.storage.h;

/* JADX INFO: compiled from: BuiltInsPackageFragmentImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b extends DeserializedPackageFragmentImpl implements kotlin.reflect.jvm.internal.impl.builtins.b {
    public static final a m = new a(null);
    private final boolean n;

    /* JADX INFO: compiled from: BuiltInsPackageFragmentImpl.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final b a(FqName fqName, h storageManager, ModuleDescriptor module, InputStream inputStream, boolean z) throws IOException {
            Intrinsics.checkParameterIsNotNull(fqName, "fqName");
            Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
            Intrinsics.checkParameterIsNotNull(module, "module");
            Intrinsics.checkParameterIsNotNull(inputStream, "inputStream");
            try {
                kotlin.reflect.jvm.internal.impl.metadata.builtins.a aVarA = kotlin.reflect.jvm.internal.impl.metadata.builtins.a.i.a(inputStream);
                if (aVarA == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("version");
                }
                if (aVarA.g()) {
                    ProtoBuf$PackageFragment proto = ProtoBuf$PackageFragment.parseFrom(inputStream, kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.n.e());
                    CloseableKt.closeFinally(inputStream, null);
                    Intrinsics.checkExpressionValueIsNotNull(proto, "proto");
                    return new b(fqName, storageManager, module, proto, aVarA, z, null);
                }
                throw new UnsupportedOperationException("Kotlin built-in definition format version is not supported: expected " + kotlin.reflect.jvm.internal.impl.metadata.builtins.a.f9618g + ", actual " + aVarA + ". Please update Kotlin");
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(inputStream, th);
                    throw th2;
                }
            }
        }
    }

    private b(FqName fqName, h hVar, ModuleDescriptor moduleDescriptor, ProtoBuf$PackageFragment protoBuf$PackageFragment, kotlin.reflect.jvm.internal.impl.metadata.builtins.a aVar, boolean z) {
        super(fqName, hVar, moduleDescriptor, protoBuf$PackageFragment, aVar, null);
        this.n = z;
    }

    public /* synthetic */ b(FqName fqName, h hVar, ModuleDescriptor moduleDescriptor, ProtoBuf$PackageFragment protoBuf$PackageFragment, kotlin.reflect.jvm.internal.impl.metadata.builtins.a aVar, boolean z, n nVar) {
        this(fqName, hVar, moduleDescriptor, protoBuf$PackageFragment, aVar, z);
    }
}
