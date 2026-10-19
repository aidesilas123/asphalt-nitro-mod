package com.vungle.ads.internal.model;

import android.util.Base64;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import com.vungle.ads.internal.model.AdPayload;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;
import java.util.zip.GZIPInputStream;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.l0;
import kotlin.jvm.internal.n;
import kotlin.text.Charsets;
import kotlin.v;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: BidPayload.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 22\u00020\u0001:\u000212BG\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rB/\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\bHÆ\u0003J8\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\b\u0010\"\u001a\u0004\u0018\u00010\nJ\b\u0010#\u001a\u0004\u0018\u00010\u0006J\b\u0010$\u001a\u0004\u0018\u00010\u0006J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020'H\u0002J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\t\u0010)\u001a\u00020\u0006HÖ\u0001J!\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200HÇ\u0001R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00148\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0015\u0010\u0016R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018¨\u00063"}, d2 = {"Lcom/vungle/ads/internal/model/BidPayload;", "", "seen1", "", "version", "adunit", "", "impression", "", "ad", "Lcom/vungle/ads/internal/model/AdPayload;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V", "getAdunit", "()Ljava/lang/String;", "getImpression", "()Ljava/util/List;", "json", "Lkotlinx/serialization/json/Json;", "getJson$annotations", "()V", MobileAdsBridge.versionMethodName, "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/vungle/ads/internal/model/BidPayload;", "equals", "", "other", "getAdPayload", "getEventId", "getPlacementId", "gzipDecode", "compressed", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
@Serializable
public final class BidPayload {
    public static final c Companion = new c(null);
    private final AdPayload ad;
    private final String adunit;
    private final List<String> impression;
    private final Json json;
    private final Integer version;

    /* JADX INFO: compiled from: BidPayload.kt */
    @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/BidPayload.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/BidPayload;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a implements GeneratedSerializer<BidPayload> {
        public static final a INSTANCE;
        public static final /* synthetic */ SerialDescriptor descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.BidPayload", aVar, 4);
            pluginGeneratedSerialDescriptor.j("version", true);
            pluginGeneratedSerialDescriptor.j("adunit", true);
            pluginGeneratedSerialDescriptor.j("impression", true);
            pluginGeneratedSerialDescriptor.j("ad", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.GeneratedSerializer
        public KSerializer<?>[] childSerializers() {
            StringSerializer stringSerializer = StringSerializer.a;
            return new KSerializer[]{BuiltinSerializersKt.getNullable(IntSerializer.a), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(new ArrayListSerializer(stringSerializer)), BuiltinSerializersKt.getNullable(AdPayload.a.INSTANCE)};
        }

        @Override // kotlinx.serialization.DeserializationStrategy
        public BidPayload deserialize(Decoder decoder) {
            Object objN;
            int i;
            Object objN2;
            Object objN3;
            Object objN4;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor b = getB();
            CompositeDecoder compositeDecoderB = decoder.b(b);
            if (compositeDecoderB.p()) {
                objN = compositeDecoderB.n(b, 0, IntSerializer.a, null);
                StringSerializer stringSerializer = StringSerializer.a;
                objN2 = compositeDecoderB.n(b, 1, stringSerializer, null);
                objN3 = compositeDecoderB.n(b, 2, new ArrayListSerializer(stringSerializer), null);
                objN4 = compositeDecoderB.n(b, 3, AdPayload.a.INSTANCE, null);
                i = 15;
            } else {
                objN = null;
                Object objN5 = null;
                Object objN6 = null;
                Object objN7 = null;
                int i2 = 0;
                boolean z = true;
                while (z) {
                    int iO = compositeDecoderB.o(b);
                    if (iO == -1) {
                        z = false;
                    } else if (iO == 0) {
                        objN = compositeDecoderB.n(b, 0, IntSerializer.a, objN);
                        i2 |= 1;
                    } else if (iO == 1) {
                        objN5 = compositeDecoderB.n(b, 1, StringSerializer.a, objN5);
                        i2 |= 2;
                    } else if (iO == 2) {
                        objN6 = compositeDecoderB.n(b, 2, new ArrayListSerializer(StringSerializer.a), objN6);
                        i2 |= 4;
                    } else {
                        if (iO != 3) {
                            throw new UnknownFieldException(iO);
                        }
                        objN7 = compositeDecoderB.n(b, 3, AdPayload.a.INSTANCE, objN7);
                        i2 |= 8;
                    }
                }
                i = i2;
                objN2 = objN5;
                objN3 = objN6;
                objN4 = objN7;
            }
            compositeDecoderB.c(b);
            return new BidPayload(i, (Integer) objN, (String) objN2, (List) objN3, (AdPayload) objN4, null);
        }

        @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
        /* JADX INFO: renamed from: getDescriptor */
        public SerialDescriptor getB() {
            return descriptor;
        }

        @Override // kotlinx.serialization.SerializationStrategy
        public void serialize(Encoder encoder, BidPayload value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor b = getB();
            CompositeEncoder compositeEncoderB = encoder.b(b);
            BidPayload.write$Self(value, compositeEncoderB, b);
            compositeEncoderB.c(b);
        }

        @Override // kotlinx.serialization.internal.GeneratedSerializer
        public KSerializer<?>[] typeParametersSerializers() {
            return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
        }
    }

    /* JADX INFO: compiled from: BidPayload.kt */
    @Metadata(mv = {1, 7, 1}, xi = 48)
    static final class b extends Lambda implements Function1<JsonBuilder, v> {
        public static final b INSTANCE = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(JsonBuilder jsonBuilder) {
            invoke2(jsonBuilder);
            return v.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(JsonBuilder Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
        }
    }

    /* JADX INFO: compiled from: BidPayload.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/BidPayload$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/BidPayload;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class c {
        private c() {
        }

        public /* synthetic */ c(n nVar) {
            this();
        }

        public final KSerializer<BidPayload> serializer() {
            return a.INSTANCE;
        }
    }

    /* JADX INFO: compiled from: BidPayload.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/serialization/json/JsonBuilder;", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class d extends Lambda implements Function1<JsonBuilder, v> {
        public static final d INSTANCE = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(JsonBuilder jsonBuilder) {
            invoke2(jsonBuilder);
            return v.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(JsonBuilder Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
        }
    }

    public BidPayload() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ BidPayload(int i, Integer num, String str, List list, AdPayload adPayload, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 0) != 0) {
            PluginExceptionsKt.throwMissingFieldException(i, 0, a.INSTANCE.getB());
        }
        AdPayload adPayload2 = null;
        if ((i & 1) == 0) {
            this.version = null;
        } else {
            this.version = num;
        }
        if ((i & 2) == 0) {
            this.adunit = null;
        } else {
            this.adunit = str;
        }
        if ((i & 4) == 0) {
            this.impression = null;
        } else {
            this.impression = list;
        }
        Json jsonJson$default = JsonKt.Json$default(null, b.INSTANCE, 1, null);
        this.json = jsonJson$default;
        if ((i & 8) != 0) {
            this.ad = adPayload;
            return;
        }
        String str2 = this.adunit;
        if (str2 != null) {
            l0 l0Var = new l0();
            byte[] bArrDecode = Base64.decode(str2, 0);
            T tGzipDecode = bArrDecode != null ? gzipDecode(bArrDecode) : 0;
            l0Var.a = tGzipDecode;
            if (((String) tGzipDecode) != null) {
                KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(jsonJson$default.getC(), Reflection.typeOf(AdPayload.class));
                Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                adPayload2 = (AdPayload) jsonJson$default.b(kSerializerSerializer, (String) tGzipDecode);
            }
        }
        this.ad = adPayload2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BidPayload(Integer num, String str, List<String> list) {
        this.version = num;
        this.adunit = str;
        this.impression = list;
        AdPayload adPayload = null;
        Json jsonJson$default = JsonKt.Json$default(null, d.INSTANCE, 1, null);
        this.json = jsonJson$default;
        if (str != null) {
            l0 l0Var = new l0();
            byte[] bArrDecode = Base64.decode(str, 0);
            T tGzipDecode = bArrDecode != null ? gzipDecode(bArrDecode) : 0;
            l0Var.a = tGzipDecode;
            if (((String) tGzipDecode) != null) {
                KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(jsonJson$default.getC(), Reflection.typeOf(AdPayload.class));
                Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                adPayload = (AdPayload) jsonJson$default.b(kSerializerSerializer, (String) tGzipDecode);
            }
        }
        this.ad = adPayload;
    }

    public /* synthetic */ BidPayload(Integer num, String str, List list, int i, n nVar) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BidPayload copy$default(BidPayload bidPayload, Integer num, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            num = bidPayload.version;
        }
        if ((i & 2) != 0) {
            str = bidPayload.adunit;
        }
        if ((i & 4) != 0) {
            list = bidPayload.impression;
        }
        return bidPayload.copy(num, str, list);
    }

    private static /* synthetic */ void getJson$annotations() {
    }

    private final String gzipDecode(byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream, 32);
        StringBuilder sb = new StringBuilder();
        byte[] bArr2 = new byte[32];
        while (true) {
            int i = gZIPInputStream.read(bArr2);
            if (i == -1) {
                gZIPInputStream.close();
                byteArrayInputStream.close();
                String string = sb.toString();
                Intrinsics.checkNotNullExpressionValue(string, "result.toString()");
                return string;
            }
            sb.append(new String(bArr2, 0, i, Charsets.b));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void write$Self(com.vungle.ads.internal.model.BidPayload r8, kotlinx.serialization.encoding.CompositeEncoder r9, kotlinx.serialization.descriptors.SerialDescriptor r10) {
        /*
            java.lang.String r0 = "self"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "output"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "serialDesc"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            r0 = 0
            boolean r1 = r9.z(r10, r0)
            r2 = 1
            if (r1 == 0) goto L19
        L17:
            r1 = 1
            goto L1f
        L19:
            java.lang.Integer r1 = r8.version
            if (r1 == 0) goto L1e
            goto L17
        L1e:
            r1 = 0
        L1f:
            if (r1 == 0) goto L28
            kotlinx.serialization.internal.i0 r1 = kotlinx.serialization.internal.IntSerializer.a
            java.lang.Integer r3 = r8.version
            r9.i(r10, r0, r1, r3)
        L28:
            boolean r1 = r9.z(r10, r2)
            if (r1 == 0) goto L30
        L2e:
            r1 = 1
            goto L36
        L30:
            java.lang.String r1 = r8.adunit
            if (r1 == 0) goto L35
            goto L2e
        L35:
            r1 = 0
        L36:
            if (r1 == 0) goto L3f
            kotlinx.serialization.internal.j1 r1 = kotlinx.serialization.internal.StringSerializer.a
            java.lang.String r3 = r8.adunit
            r9.i(r10, r2, r1, r3)
        L3f:
            r1 = 2
            boolean r3 = r9.z(r10, r1)
            if (r3 == 0) goto L48
        L46:
            r3 = 1
            goto L4e
        L48:
            java.util.List<java.lang.String> r3 = r8.impression
            if (r3 == 0) goto L4d
            goto L46
        L4d:
            r3 = 0
        L4e:
            if (r3 == 0) goto L5c
            kotlinx.serialization.internal.c r3 = new kotlinx.serialization.internal.c
            kotlinx.serialization.internal.j1 r4 = kotlinx.serialization.internal.StringSerializer.a
            r3.<init>(r4)
            java.util.List<java.lang.String> r4 = r8.impression
            r9.i(r10, r1, r3, r4)
        L5c:
            r1 = 3
            boolean r3 = r9.z(r10, r1)
            if (r3 == 0) goto L65
        L63:
            r0 = 1
            goto La9
        L65:
            com.vungle.ads.internal.model.AdPayload r3 = r8.ad
            java.lang.String r4 = r8.adunit
            r5 = 0
            if (r4 == 0) goto La2
            kotlin.jvm.internal.l0 r6 = new kotlin.jvm.internal.l0
            r6.<init>()
            byte[] r4 = android.util.Base64.decode(r4, r0)
            if (r4 == 0) goto L7c
            java.lang.String r4 = r8.gzipDecode(r4)
            goto L7d
        L7c:
            r4 = r5
        L7d:
            r6.a = r4
            r6 = r4
            java.lang.String r6 = (java.lang.String) r6
            if (r6 == 0) goto La2
            kotlinx.serialization.json.Json r5 = r8.json
            java.lang.String r4 = (java.lang.String) r4
            kotlinx.serialization.modules.SerializersModule r6 = r5.getC()
            java.lang.Class<com.vungle.ads.internal.model.AdPayload> r7 = com.vungle.ads.internal.model.AdPayload.class
            kotlin.reflect.KType r7 = kotlin.jvm.internal.Reflection.typeOf(r7)
            kotlinx.serialization.c r6 = kotlinx.serialization.SerializersKt.serializer(r6, r7)
            java.lang.String r7 = "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6, r7)
            java.lang.Object r4 = r5.b(r6, r4)
            com.vungle.ads.internal.model.AdPayload r4 = (com.vungle.ads.internal.model.AdPayload) r4
            r5 = r4
        La2:
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r5)
            if (r3 != 0) goto La9
            goto L63
        La9:
            if (r0 == 0) goto Lb2
            com.vungle.ads.internal.model.AdPayload$a r0 = com.vungle.ads.internal.model.AdPayload.a.INSTANCE
            com.vungle.ads.internal.model.AdPayload r8 = r8.ad
            r9.i(r10, r1, r0, r8)
        Lb2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.model.BidPayload.write$Self(com.vungle.ads.internal.model.BidPayload, kotlinx.serialization.encoding.CompositeEncoder, kotlinx.serialization.descriptors.SerialDescriptor):void");
    }

    public final Integer component1() {
        return this.version;
    }

    public final String component2() {
        return this.adunit;
    }

    public final List<String> component3() {
        return this.impression;
    }

    public final BidPayload copy(Integer num, String str, List<String> list) {
        return new BidPayload(num, str, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BidPayload)) {
            return false;
        }
        BidPayload bidPayload = (BidPayload) obj;
        return Intrinsics.areEqual(this.version, bidPayload.version) && Intrinsics.areEqual(this.adunit, bidPayload.adunit) && Intrinsics.areEqual(this.impression, bidPayload.impression);
    }

    public final AdPayload getAdPayload() {
        return this.ad;
    }

    public final String getAdunit() {
        return this.adunit;
    }

    public final String getEventId() {
        AdPayload adPayload = this.ad;
        if (adPayload != null) {
            return adPayload.eventId();
        }
        return null;
    }

    public final List<String> getImpression() {
        return this.impression;
    }

    public final String getPlacementId() {
        AdPayload adPayload = this.ad;
        if (adPayload != null) {
            return adPayload.placementId();
        }
        return null;
    }

    public final Integer getVersion() {
        return this.version;
    }

    public int hashCode() {
        Integer num = this.version;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.adunit;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<String> list = this.impression;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "BidPayload(version=" + this.version + ", adunit=" + this.adunit + ", impression=" + this.impression + ')';
    }
}
