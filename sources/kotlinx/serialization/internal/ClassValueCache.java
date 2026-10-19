package kotlinx.serialization.internal;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;

/* JADX INFO: compiled from: Caching.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000+\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003*\u0001\t\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B%\u0012\u001e\u0010\u0003\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00060\u0004¢\u0006\u0002\u0010\u0007J\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0005H\u0016J\u0013\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0002¢\u0006\u0002\u0010\u000fR\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR&\u0010\u0003\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lkotlinx/serialization/internal/ClassValueCache;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/serialization/internal/SerializerCache;", "compute", "Lkotlin/Function1;", "Lkotlin/reflect/KClass;", "Lkotlinx/serialization/KSerializer;", "(Lkotlin/jvm/functions/Function1;)V", "classValue", "kotlinx/serialization/internal/ClassValueCache$initClassValue$1", "Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;", "get", "key", "", "initClassValue", "()Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
final class ClassValueCache<T> implements SerializerCache<T> {
    private final Function1<KClass<?>, KSerializer<T>> a;
    private final a b;

    /* JADX INFO: compiled from: Caching.kt */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001J\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0014¨\u0006\u0006"}, d2 = {"kotlinx/serialization/internal/ClassValueCache$initClassValue$1", "Ljava/lang/ClassValue;", "Lkotlinx/serialization/internal/CacheEntry;", "computeValue", "type", "Ljava/lang/Class;", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class a extends ClassValue<CacheEntry<T>> {
        final /* synthetic */ ClassValueCache<T> a;

        a(ClassValueCache<T> classValueCache) {
            this.a = classValueCache;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ClassValueCache(Function1<? super KClass<?>, ? extends KSerializer<T>> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.a = compute;
        this.b = b();
    }

    private final a b() {
        return new a(this);
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public KSerializer<T> a(KClass<Object> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.b.get(JvmClassMappingKt.getJavaClass((KClass) key)).a;
    }
}
