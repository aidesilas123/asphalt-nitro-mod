package io.didomi.drawable.remote;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.g;
import com.google.gson.j;
import com.google.gson.m;
import com.google.gson.n;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003J'\u0010\n\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0012¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/remote/GSONInterfaceAdapter;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/google/gson/JsonSerializer;", "Lcom/google/gson/JsonDeserializer;", "Lcom/google/gson/JsonElement;", "jsonElement", "Ljava/lang/reflect/Type;", "type", "Lcom/google/gson/JsonDeserializationContext;", "jsonDeserializationContext", "deserialize", "(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;", "Lcom/google/gson/JsonSerializationContext;", "jsonSerializationContext", "Lcom/google/gson/JsonObject;", "a", "(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonObject;", "Ljava/lang/Class;", "Ljava/lang/Class;", "typeClass", "android_release"}, mv = {1, 8, 0})
public final class GSONInterfaceAdapter<T> implements n<T>, f<T> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Class<?> typeClass;

    @Override // com.google.gson.n
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public j serialize(T t, Type type, m jsonSerializationContext) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(jsonSerializationContext, "jsonSerializationContext");
        return new j();
    }

    @Override // com.google.gson.f
    public T deserialize(g jsonElement, Type type, e jsonDeserializationContext) {
        Intrinsics.checkNotNullParameter(jsonElement, "jsonElement");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(jsonDeserializationContext, "jsonDeserializationContext");
        return (T) jsonDeserializationContext.a(jsonElement.f(), this.typeClass);
    }
}
