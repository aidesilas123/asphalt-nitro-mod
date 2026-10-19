package kotlinx.serialization.json.internal;

import com.google.android.gms.ads.RequestConfiguration;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.modules.SerializersModuleCollector;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.m0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: PolymorphismValidator.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0002J\u001c\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0002JQ\u0010\u000e\u001a\u00020\b\"\b\b\u0000\u0010\u000f*\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000f0\f2/\u0010\u0012\u001a+\u0012\u001d\u0012\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00150\u0014¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00150\u0013H\u0016JF\u0010\u0019\u001a\u00020\b\"\b\b\u0000\u0010\u001a*\u00020\u0010\"\b\b\u0001\u0010\u001b*\u0002H\u001a2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u001a0\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u001b0\f2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u0015H\u0016JO\u0010\u001e\u001a\u00020\b\"\b\b\u0000\u0010\u001a*\u00020\u00102\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u001a0\f2-\u0010\u001f\u001a)\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b( \u0012\u000e\u0012\f\u0012\u0006\b\u0001\u0012\u0002H\u001a\u0018\u00010!0\u0013H\u0016JK\u0010\"\u001a\u00020\b\"\b\b\u0000\u0010\u001a*\u00020\u00102\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u001a0\f2)\u0010#\u001a%\u0012\u0013\u0012\u0011H\u001a¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b($\u0012\f\u0012\n\u0012\u0004\u0012\u0002H\u001a\u0018\u00010%0\u0013H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lkotlinx/serialization/json/internal/PolymorphismValidator;", "Lkotlinx/serialization/modules/SerializersModuleCollector;", "useArrayPolymorphism", "", "discriminator", "", "(ZLjava/lang/String;)V", "checkDiscriminatorCollisions", "", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "actualClass", "Lkotlin/reflect/KClass;", "checkKind", "contextual", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "kClass", IronSourceConstants.EVENTS_PROVIDER, "Lkotlin/Function1;", "", "Lkotlinx/serialization/KSerializer;", "Lkotlin/ParameterName;", "name", "typeArgumentsSerializers", "polymorphic", "Base", "Sub", "baseClass", "actualSerializer", "polymorphicDefaultDeserializer", "defaultDeserializerProvider", "className", "Lkotlinx/serialization/DeserializationStrategy;", "polymorphicDefaultSerializer", "defaultSerializerProvider", "value", "Lkotlinx/serialization/SerializationStrategy;", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class PolymorphismValidator implements SerializersModuleCollector {
    private final boolean a;
    private final String b;

    public PolymorphismValidator(boolean z, String discriminator) {
        Intrinsics.checkNotNullParameter(discriminator, "discriminator");
        this.a = z;
        this.b = discriminator;
    }

    private final void f(SerialDescriptor serialDescriptor, KClass<?> kClass) {
        int f10465d = serialDescriptor.getF10465d();
        for (int i = 0; i < f10465d; i++) {
            String strE = serialDescriptor.e(i);
            if (Intrinsics.areEqual(strE, this.b)) {
                throw new IllegalArgumentException("Polymorphic serializer for " + kClass + " has property '" + strE + "' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism");
            }
        }
    }

    private final void g(SerialDescriptor serialDescriptor, KClass<?> kClass) {
        SerialKind b = serialDescriptor.getB();
        if ((b instanceof PolymorphicKind) || Intrinsics.areEqual(b, SerialKind.a.a)) {
            throw new IllegalArgumentException("Serializer for " + kClass.s() + " can't be registered as a subclass for polymorphic serialization because its kind " + b + " is not concrete. To work with multiple hierarchies, register it as a base class.");
        }
        if (this.a) {
            return;
        }
        if (Intrinsics.areEqual(b, StructureKind.b.a) || Intrinsics.areEqual(b, StructureKind.c.a) || (b instanceof PrimitiveKind) || (b instanceof SerialKind.b)) {
            throw new IllegalArgumentException("Serializer for " + kClass.s() + " of kind " + b + " cannot be serialized polymorphically with class discriminator.");
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base, Sub extends Base> void a(KClass<Base> baseClass, KClass<Sub> actualClass, KSerializer<Sub> actualSerializer) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(actualClass, "actualClass");
        Intrinsics.checkNotNullParameter(actualSerializer, "actualSerializer");
        SerialDescriptor c = actualSerializer.getC();
        g(c, actualClass);
        if (this.a) {
            return;
        }
        f(c, actualClass);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base> void b(KClass<Base> baseClass, Function1<? super String, ? extends DeserializationStrategy<? extends Base>> defaultDeserializerProvider) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(defaultDeserializerProvider, "defaultDeserializerProvider");
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <T> void c(KClass<T> kClass, KSerializer<T> kSerializer) {
        SerializersModuleCollector.DefaultImpls.contextual(this, kClass, kSerializer);
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <Base> void d(KClass<Base> baseClass, Function1<? super Base, ? extends SerializationStrategy<? super Base>> defaultSerializerProvider) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(defaultSerializerProvider, "defaultSerializerProvider");
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public <T> void e(KClass<T> kClass, Function1<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> provider) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(provider, "provider");
    }
}
