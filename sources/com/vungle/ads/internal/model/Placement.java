package com.vungle.ads.internal.model;

import com.facebook.internal.AnalyticsEvents;
import com.json.o2;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: ConfigPayload.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\t\n\u0002\b\u001b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 S2\u00020\u0001:\u0002RSB\u0093\u0001\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0001\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\n\u0012\u0010\b\u0001\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\n\u0012\b\b\u0001\u0010\f\u001a\u00020\u0003\u0012\b\b\u0001\u0010\r\u001a\u00020\b\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013Ba\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\n\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0014J\t\u00104\u001a\u00020\u0005HÆ\u0003J\t\u00105\u001a\u00020\u0005HÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010#J\u000f\u00107\u001a\b\u0012\u0004\u0012\u00020\u00050\nHÆ\u0003J\u000f\u00108\u001a\b\u0012\u0004\u0012\u00020\u00050\nHÆ\u0003J\t\u00109\u001a\u00020\u0003HÆ\u0003J\t\u0010:\u001a\u00020\bHÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0005HÆ\u0003Jn\u0010<\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\n2\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010=J\u0013\u0010>\u001a\u00020\b2\b\u0010?\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010@\u001a\u00020\u0003HÖ\u0001J\u0006\u0010A\u001a\u00020\bJ\u0006\u0010B\u001a\u00020\bJ\u0006\u0010C\u001a\u00020\bJ\u0006\u0010D\u001a\u00020\bJ\u0006\u0010E\u001a\u00020\bJ\u0006\u0010F\u001a\u00020\bJ\u0006\u0010G\u001a\u00020\bJ\u000e\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020-J\t\u0010K\u001a\u00020\u0005HÖ\u0001J!\u0010L\u001a\u00020I2\u0006\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020QHÇ\u0001R\u001c\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\r\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0016\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0016\u001a\u0004\b \u0010\u001bR \u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010$\u0012\u0004\b!\u0010\u0016\u001a\u0004\b\"\u0010#R\u0011\u0010\u000f\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u001eR\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b%\u0010\u0016\u001a\u0004\b&\u0010\u001bR\"\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b'\u0010\u0016\u001a\u0004\b(\u0010)R\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b*\u0010\u0016\u001a\u0004\b+\u0010)R(\u0010,\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0002\u00103\u0012\u0004\b.\u0010\u0016\u001a\u0004\b/\u00100\"\u0004\b1\u00102¨\u0006T"}, d2 = {"Lcom/vungle/ads/internal/model/Placement;", "", "seen1", "", "identifier", "", "referenceId", "incentivized", "", "supportedTemplateTypes", "", "supportedAdFormats", "adRefreshDuration", "headerBidding", o2.h.O, "isIncentivized", "placementAdType", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;)V", "getAdRefreshDuration$annotations", "()V", "getAdRefreshDuration", "()I", "getAdSize$annotations", "getAdSize", "()Ljava/lang/String;", "getHeaderBidding$annotations", "getHeaderBidding", "()Z", "getIdentifier$annotations", "getIdentifier", "getIncentivized$annotations", "getIncentivized", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getReferenceId$annotations", "getReferenceId", "getSupportedAdFormats$annotations", "getSupportedAdFormats", "()Ljava/util/List;", "getSupportedTemplateTypes$annotations", "getSupportedTemplateTypes", "wakeupTime", "", "getWakeupTime$annotations", "getWakeupTime", "()Ljava/lang/Long;", "setWakeupTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;IZLjava/lang/String;)Lcom/vungle/ads/internal/model/Placement;", "equals", "other", "hashCode", o2.u, "isBannerNonMREC", "isDefault", "isInterstitial", "isMREC", "isNative", "isRewardedVideo", "snooze", "", "sleepTime", "toString", "write$Self", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
@Serializable
public final /* data */ class Placement {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int adRefreshDuration;
    private final String adSize;
    private final boolean headerBidding;
    private final String identifier;
    private final Boolean incentivized;
    private final boolean isIncentivized;
    private final String placementAdType;
    private final String referenceId;
    private final List<String> supportedAdFormats;
    private final List<String> supportedTemplateTypes;
    private Long wakeupTime;

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/Placement.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/Placement;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a implements GeneratedSerializer<Placement> {
        public static final a INSTANCE;
        public static final /* synthetic */ SerialDescriptor descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.Placement", aVar, 10);
            pluginGeneratedSerialDescriptor.j("id", false);
            pluginGeneratedSerialDescriptor.j("reference_id", false);
            pluginGeneratedSerialDescriptor.j("is_incentivized", true);
            pluginGeneratedSerialDescriptor.j("supported_template_types", true);
            pluginGeneratedSerialDescriptor.j("supported_ad_formats", true);
            pluginGeneratedSerialDescriptor.j("ad_refresh_duration", true);
            pluginGeneratedSerialDescriptor.j("header_bidding", true);
            pluginGeneratedSerialDescriptor.j("ad_size", true);
            pluginGeneratedSerialDescriptor.j("isIncentivized", true);
            pluginGeneratedSerialDescriptor.j("placementAdType", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.GeneratedSerializer
        public KSerializer<?>[] childSerializers() {
            StringSerializer stringSerializer = StringSerializer.a;
            BooleanSerializer booleanSerializer = BooleanSerializer.a;
            return new KSerializer[]{stringSerializer, stringSerializer, BuiltinSerializersKt.getNullable(booleanSerializer), new ArrayListSerializer(stringSerializer), new ArrayListSerializer(stringSerializer), IntSerializer.a, booleanSerializer, BuiltinSerializersKt.getNullable(stringSerializer), booleanSerializer, stringSerializer};
        }

        @Override // kotlinx.serialization.DeserializationStrategy
        public Placement deserialize(Decoder decoder) {
            String strM;
            boolean z;
            Object objN;
            Object objY;
            Object objY2;
            Object objN2;
            boolean z2;
            int i;
            String str;
            int i2;
            String str2;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor descriptor2 = getB();
            CompositeDecoder compositeDecoderB = decoder.b(descriptor2);
            int i3 = 9;
            if (compositeDecoderB.p()) {
                String strM2 = compositeDecoderB.m(descriptor2, 0);
                String strM3 = compositeDecoderB.m(descriptor2, 1);
                objN2 = compositeDecoderB.n(descriptor2, 2, BooleanSerializer.a, null);
                StringSerializer stringSerializer = StringSerializer.a;
                objY2 = compositeDecoderB.y(descriptor2, 3, new ArrayListSerializer(stringSerializer), null);
                objY = compositeDecoderB.y(descriptor2, 4, new ArrayListSerializer(stringSerializer), null);
                int i4 = compositeDecoderB.i(descriptor2, 5);
                boolean zC = compositeDecoderB.C(descriptor2, 6);
                objN = compositeDecoderB.n(descriptor2, 7, stringSerializer, null);
                boolean zC2 = compositeDecoderB.C(descriptor2, 8);
                str2 = strM2;
                strM = compositeDecoderB.m(descriptor2, 9);
                z = zC;
                i2 = i4;
                z2 = zC2;
                str = strM3;
                i = 1023;
            } else {
                Object objN3 = null;
                Object objY3 = null;
                Object objY4 = null;
                Object objN4 = null;
                String strM4 = null;
                String strM5 = null;
                strM = null;
                boolean zC3 = false;
                int i5 = 0;
                boolean zC4 = false;
                int i6 = 0;
                boolean z3 = true;
                while (z3) {
                    int iO = compositeDecoderB.o(descriptor2);
                    switch (iO) {
                        case -1:
                            i3 = 9;
                            z3 = false;
                            break;
                        case 0:
                            strM4 = compositeDecoderB.m(descriptor2, 0);
                            i6 |= 1;
                            i3 = 9;
                            break;
                        case 1:
                            strM5 = compositeDecoderB.m(descriptor2, 1);
                            i6 |= 2;
                            i3 = 9;
                            break;
                        case 2:
                            objN4 = compositeDecoderB.n(descriptor2, 2, BooleanSerializer.a, objN4);
                            i6 |= 4;
                            i3 = 9;
                            break;
                        case 3:
                            objY4 = compositeDecoderB.y(descriptor2, 3, new ArrayListSerializer(StringSerializer.a), objY4);
                            i6 |= 8;
                            i3 = 9;
                            break;
                        case 4:
                            objY3 = compositeDecoderB.y(descriptor2, 4, new ArrayListSerializer(StringSerializer.a), objY3);
                            i6 |= 16;
                            i3 = 9;
                            break;
                        case 5:
                            i5 = compositeDecoderB.i(descriptor2, 5);
                            i6 |= 32;
                            break;
                        case 6:
                            zC3 = compositeDecoderB.C(descriptor2, 6);
                            i6 |= 64;
                            break;
                        case 7:
                            objN3 = compositeDecoderB.n(descriptor2, 7, StringSerializer.a, objN3);
                            i6 |= 128;
                            break;
                        case 8:
                            zC4 = compositeDecoderB.C(descriptor2, 8);
                            i6 |= 256;
                            break;
                        case 9:
                            strM = compositeDecoderB.m(descriptor2, i3);
                            i6 |= 512;
                            break;
                        default:
                            throw new UnknownFieldException(iO);
                    }
                }
                z = zC3;
                objN = objN3;
                objY = objY3;
                objY2 = objY4;
                objN2 = objN4;
                z2 = zC4;
                i = i6;
                str = strM5;
                i2 = i5;
                str2 = strM4;
            }
            compositeDecoderB.c(descriptor2);
            return new Placement(i, str2, str, (Boolean) objN2, (List) objY2, (List) objY, i2, z, (String) objN, z2, strM, null);
        }

        @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
        /* JADX INFO: renamed from: getDescriptor */
        public SerialDescriptor getB() {
            return descriptor;
        }

        @Override // kotlinx.serialization.SerializationStrategy
        public void serialize(Encoder encoder, Placement value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor descriptor2 = getB();
            CompositeEncoder compositeEncoderB = encoder.b(descriptor2);
            Placement.write$Self(value, compositeEncoderB, descriptor2);
            compositeEncoderB.c(descriptor2);
        }

        @Override // kotlinx.serialization.internal.GeneratedSerializer
        public KSerializer<?>[] typeParametersSerializers() {
            return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
        }
    }

    /* JADX INFO: renamed from: com.vungle.ads.internal.model.Placement$b, reason: from kotlin metadata */
    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/Placement$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/Placement;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final KSerializer<Placement> serializer() {
            return a.INSTANCE;
        }
    }

    public /* synthetic */ Placement(int i, String str, String str2, Boolean bool, List list, List list2, int i2, boolean z, String str3, boolean z2, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, a.INSTANCE.getB());
        }
        this.identifier = str;
        this.referenceId = str2;
        if ((i & 4) == 0) {
            this.incentivized = Boolean.FALSE;
        } else {
            this.incentivized = bool;
        }
        if ((i & 8) == 0) {
            this.supportedTemplateTypes = CollectionsKt__CollectionsKt.emptyList();
        } else {
            this.supportedTemplateTypes = list;
        }
        if ((i & 16) == 0) {
            this.supportedAdFormats = CollectionsKt__CollectionsKt.emptyList();
        } else {
            this.supportedAdFormats = list2;
        }
        if ((i & 32) == 0) {
            this.adRefreshDuration = Integer.MIN_VALUE;
        } else {
            this.adRefreshDuration = i2;
        }
        if ((i & 64) == 0) {
            this.headerBidding = false;
        } else {
            this.headerBidding = z;
        }
        if ((i & 128) == 0) {
            this.adSize = null;
        } else {
            this.adSize = str3;
        }
        if ((i & 256) == 0) {
            Boolean bool2 = this.incentivized;
            this.isIncentivized = bool2 != null ? bool2.booleanValue() : false;
        } else {
            this.isIncentivized = z2;
        }
        this.wakeupTime = null;
        if ((i & 512) != 0) {
            this.placementAdType = str4;
        } else {
            List<String> list3 = this.supportedTemplateTypes;
            this.placementAdType = list3.contains("banner") ? "TYPE_BANNER" : list3.contains("mrec") ? "TYPE_MREC" : list3.contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE) ? "TYPE_NATIVE" : "TYPE_DEFAULT";
        }
    }

    public Placement(String identifier, String referenceId, Boolean bool, List<String> supportedTemplateTypes, List<String> supportedAdFormats, int i, boolean z, String str) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(referenceId, "referenceId");
        Intrinsics.checkNotNullParameter(supportedTemplateTypes, "supportedTemplateTypes");
        Intrinsics.checkNotNullParameter(supportedAdFormats, "supportedAdFormats");
        this.identifier = identifier;
        this.referenceId = referenceId;
        this.incentivized = bool;
        this.supportedTemplateTypes = supportedTemplateTypes;
        this.supportedAdFormats = supportedAdFormats;
        this.adRefreshDuration = i;
        this.headerBidding = z;
        this.adSize = str;
        this.isIncentivized = bool != null ? bool.booleanValue() : false;
        this.placementAdType = supportedTemplateTypes.contains("banner") ? "TYPE_BANNER" : supportedTemplateTypes.contains("mrec") ? "TYPE_MREC" : supportedTemplateTypes.contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE) ? "TYPE_NATIVE" : "TYPE_DEFAULT";
    }

    public /* synthetic */ Placement(String str, String str2, Boolean bool, List list, List list2, int i, boolean z, String str3, int i2, n nVar) {
        this(str, str2, (i2 & 4) != 0 ? Boolean.FALSE : bool, (i2 & 8) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i2 & 16) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list2, (i2 & 32) != 0 ? Integer.MIN_VALUE : i, (i2 & 64) != 0 ? false : z, (i2 & 128) != 0 ? null : str3);
    }

    public static /* synthetic */ void getAdRefreshDuration$annotations() {
    }

    public static /* synthetic */ void getAdSize$annotations() {
    }

    public static /* synthetic */ void getHeaderBidding$annotations() {
    }

    public static /* synthetic */ void getIdentifier$annotations() {
    }

    public static /* synthetic */ void getIncentivized$annotations() {
    }

    public static /* synthetic */ void getReferenceId$annotations() {
    }

    public static /* synthetic */ void getSupportedAdFormats$annotations() {
    }

    public static /* synthetic */ void getSupportedTemplateTypes$annotations() {
    }

    public static /* synthetic */ void getWakeupTime$annotations() {
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void write$Self(com.vungle.ads.internal.model.Placement r6, kotlinx.serialization.encoding.CompositeEncoder r7, kotlinx.serialization.descriptors.SerialDescriptor r8) {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.model.Placement.write$Self(com.vungle.ads.internal.model.Placement, kotlinx.serialization.encoding.CompositeEncoder, kotlinx.serialization.descriptors.SerialDescriptor):void");
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getIdentifier() {
        return this.identifier;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getReferenceId() {
        return this.referenceId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Boolean getIncentivized() {
        return this.incentivized;
    }

    public final List<String> component4() {
        return this.supportedTemplateTypes;
    }

    public final List<String> component5() {
        return this.supportedAdFormats;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getAdRefreshDuration() {
        return this.adRefreshDuration;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getHeaderBidding() {
        return this.headerBidding;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getAdSize() {
        return this.adSize;
    }

    public final Placement copy(String identifier, String referenceId, Boolean incentivized, List<String> supportedTemplateTypes, List<String> supportedAdFormats, int adRefreshDuration, boolean headerBidding, String adSize) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(referenceId, "referenceId");
        Intrinsics.checkNotNullParameter(supportedTemplateTypes, "supportedTemplateTypes");
        Intrinsics.checkNotNullParameter(supportedAdFormats, "supportedAdFormats");
        return new Placement(identifier, referenceId, incentivized, supportedTemplateTypes, supportedAdFormats, adRefreshDuration, headerBidding, adSize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Placement)) {
            return false;
        }
        Placement placement = (Placement) other;
        return Intrinsics.areEqual(this.identifier, placement.identifier) && Intrinsics.areEqual(this.referenceId, placement.referenceId) && Intrinsics.areEqual(this.incentivized, placement.incentivized) && Intrinsics.areEqual(this.supportedTemplateTypes, placement.supportedTemplateTypes) && Intrinsics.areEqual(this.supportedAdFormats, placement.supportedAdFormats) && this.adRefreshDuration == placement.adRefreshDuration && this.headerBidding == placement.headerBidding && Intrinsics.areEqual(this.adSize, placement.adSize);
    }

    public final int getAdRefreshDuration() {
        return this.adRefreshDuration;
    }

    public final String getAdSize() {
        return this.adSize;
    }

    public final boolean getHeaderBidding() {
        return this.headerBidding;
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final Boolean getIncentivized() {
        return this.incentivized;
    }

    public final String getReferenceId() {
        return this.referenceId;
    }

    public final List<String> getSupportedAdFormats() {
        return this.supportedAdFormats;
    }

    public final List<String> getSupportedTemplateTypes() {
        return this.supportedTemplateTypes;
    }

    public final Long getWakeupTime() {
        return this.wakeupTime;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    public int hashCode() {
        int iHashCode = ((this.identifier.hashCode() * 31) + this.referenceId.hashCode()) * 31;
        Boolean bool = this.incentivized;
        int iHashCode2 = (((((((iHashCode + (bool == null ? 0 : bool.hashCode())) * 31) + this.supportedTemplateTypes.hashCode()) * 31) + this.supportedAdFormats.hashCode()) * 31) + this.adRefreshDuration) * 31;
        boolean z = this.headerBidding;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode2 + r1) * 31;
        String str = this.adSize;
        return i + (str != null ? str.hashCode() : 0);
    }

    public final boolean isBanner() {
        return Intrinsics.areEqual(this.placementAdType, "TYPE_BANNER") || isMREC();
    }

    public final boolean isBannerNonMREC() {
        return Intrinsics.areEqual(this.placementAdType, "TYPE_BANNER");
    }

    public final boolean isDefault() {
        return Intrinsics.areEqual(this.placementAdType, "TYPE_DEFAULT");
    }

    /* JADX INFO: renamed from: isIncentivized, reason: from getter */
    public final boolean getIsIncentivized() {
        return this.isIncentivized;
    }

    public final boolean isInterstitial() {
        return isDefault() && !this.isIncentivized;
    }

    public final boolean isMREC() {
        return Intrinsics.areEqual(this.placementAdType, "TYPE_MREC");
    }

    public final boolean isNative() {
        return Intrinsics.areEqual(this.placementAdType, "TYPE_NATIVE");
    }

    public final boolean isRewardedVideo() {
        return isDefault() && this.isIncentivized;
    }

    public final void setWakeupTime(Long l) {
        this.wakeupTime = l;
    }

    public final void snooze(long sleepTime) {
        this.wakeupTime = Long.valueOf(System.currentTimeMillis() + (sleepTime * ((long) 1000)));
    }

    public String toString() {
        return "Placement(identifier=" + this.identifier + ", referenceId=" + this.referenceId + ", incentivized=" + this.incentivized + ", supportedTemplateTypes=" + this.supportedTemplateTypes + ", supportedAdFormats=" + this.supportedAdFormats + ", adRefreshDuration=" + this.adRefreshDuration + ", headerBidding=" + this.headerBidding + ", adSize=" + this.adSize + ')';
    }
}
