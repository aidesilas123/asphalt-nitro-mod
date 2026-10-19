package kotlinx.serialization.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;

/* JADX INFO: renamed from: kotlinx.serialization.internal.o, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Caching.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\f\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B3\u0012,\u0010\u0003\u001a(\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t0\u0004¢\u0006\u0002\u0010\nJB\u0010\u000e\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t0\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0013\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\fH\u0002¢\u0006\u0002\u0010\u0015R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR4\u0010\u0003\u001a(\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t0\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"Lkotlinx/serialization/internal/ClassValueParametrizedCache;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/serialization/internal/ParametrizedSerializerCache;", "compute", "Lkotlin/Function2;", "Lkotlin/reflect/KClass;", "", "", "Lkotlin/reflect/KType;", "Lkotlinx/serialization/KSerializer;", "(Lkotlin/jvm/functions/Function2;)V", "classValue", "kotlinx/serialization/internal/ClassValueParametrizedCache$initClassValue$1", "Lkotlinx/serialization/internal/ClassValueParametrizedCache$initClassValue$1;", "get", "Lkotlin/Result;", "key", "types", "get-gIAlu-s", "(Lkotlin/reflect/KClass;Ljava/util/List;)Ljava/lang/Object;", "initClassValue", "()Lkotlinx/serialization/internal/ClassValueParametrizedCache$initClassValue$1;", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
final class ClassValueParametrizedCache<T> implements ParametrizedSerializerCache<T> {
    private final Function2<KClass<Object>, List<? extends KType>, KSerializer<T>> a;
    private final a b;

    /* JADX INFO: renamed from: kotlinx.serialization.internal.o$a */
    /* JADX INFO: compiled from: Caching.kt */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001J\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0014¨\u0006\u0006"}, d2 = {"kotlinx/serialization/internal/ClassValueParametrizedCache$initClassValue$1", "Ljava/lang/ClassValue;", "Lkotlinx/serialization/internal/ParametrizedCacheEntry;", "computeValue", "type", "Ljava/lang/Class;", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class a extends ClassValue<ParametrizedCacheEntry<T>> {
        a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ClassValueParametrizedCache(Function2<? super KClass<Object>, ? super List<? extends KType>, ? extends KSerializer<T>> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.a = compute;
        this.b = b();
    }

    private final a b() {
        return new a();
    }

    @Override // kotlinx.serialization.internal.ParametrizedSerializerCache
    public Object a(KClass<Object> key, List<? extends KType> types) {
        Object objM1238constructorimpl;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(types, "types");
        ConcurrentHashMap concurrentHashMap = ((ParametrizedCacheEntry) this.b.get(JvmClassMappingKt.getJavaClass((KClass) key))).a;
        Object obj = concurrentHashMap.get(types);
        if (obj == null) {
            try {
                Result.a aVar = Result.a;
                objM1238constructorimpl = Result.m1238constructorimpl(this.a.invoke(key, types));
            } catch (Throwable th) {
                Result.a aVar2 = Result.a;
                objM1238constructorimpl = Result.m1238constructorimpl(ResultKt.createFailure(th));
            }
            Result resultM1237boximpl = Result.m1237boximpl(objM1238constructorimpl);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(types, resultM1237boximpl);
            obj = objPutIfAbsent == null ? resultM1237boximpl : objPutIfAbsent;
        }
        Intrinsics.checkNotNullExpressionValue(obj, "serializers.getOrPut(typ… { producer() }\n        }");
        return ((Result) obj).getB();
    }
}
