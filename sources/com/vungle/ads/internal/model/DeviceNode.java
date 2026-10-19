package com.vungle.ads.internal.model;

import com.json.v4;
import com.kidoz.sdk.api.general.utils.KidozParams;
import kotlin.Metadata;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: DeviceNode.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u0000 H2\u00020\u0001:\u0006EFGHIJB\u0083\u0001\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013Bq\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0014J\t\u0010,\u001a\u00020\u0005HÆ\u0003J\u0010\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010!J\u000b\u0010.\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\t\u00100\u001a\u00020\u0005HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u00102\u001a\u00020\u0005HÆ\u0003J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0086\u0001\u00107\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÆ\u0001¢\u0006\u0002\u00108J\u0013\u00109\u001a\u00020:2\b\u0010;\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010<\u001a\u00020\u0003HÖ\u0001J\t\u0010=\u001a\u00020\u0005HÖ\u0001J!\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u00002\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DHÇ\u0001R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u001fR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010$\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u0016R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0016\"\u0004\b*\u0010\u001fR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001c¨\u0006K"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode;", "", "seen1", "", v4.q, "", "model", v4.y, v4.s0, v4.x, "w", "h", v4.R, "ifa", "lmt", KidozParams.EXTENSION_TYPE, "Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)V", "getCarrier", "()Ljava/lang/String;", "getExt", "()Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;", "setExt", "(Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)V", "getH", "()I", "getIfa", "setIfa", "(Ljava/lang/String;)V", "getLmt", "()Ljava/lang/Integer;", "setLmt", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getMake", "getModel", "getOs", "getOsv", "getUa", "setUa", "getW", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;)Lcom/vungle/ads/internal/model/DeviceNode;", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "AndroidAmazonExt", "CommonVungleExt", "Companion", "DeviceExt", "VungleExt", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
@Serializable
public final /* data */ class DeviceNode {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String carrier;
    private DeviceExt ext;
    private final int h;
    private String ifa;
    private Integer lmt;
    private final String make;
    private final String model;
    private final String os;
    private final String osv;
    private String ua;
    private final int w;

    /* JADX INFO: compiled from: DeviceNode.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 42\u00020\u0001:\u000234Bå\u0001\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\t\u001a\u00020\n\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\f\u001a\u00020\u0003\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\u0012\u001a\u00020\n\u0012\b\b\u0001\u0010\u0013\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0014\u001a\u00020\u0007\u0012\b\b\u0001\u0010\u0015\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0016\u001a\u00020\u0007\u0012\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b¢\u0006\u0002\u0010\u001cB\u001d\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u001dJ\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010'\u001a\u00020\u00072\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\t\u0010+\u001a\u00020\u0005HÖ\u0001J!\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202HÇ\u0001R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010!¨\u00065"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;", "Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;", "seen1", "", "androidId", "", "isGooglePlayServicesAvailable", "", "appSetId", "batteryLevel", "", "batteryState", "batterySaverEnabled", "connectionType", "connectionTypeDetail", "locale", "language", "timeZone", "volumeLevel", "soundEnabled", "isTv", "sdCardAvailable", "isSideloadEnabled", "osName", v4.w0, "amazonAdvertisingId", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;ZLjava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;)V", "getAmazonAdvertisingId", "()Ljava/lang/String;", "setAmazonAdvertisingId", "(Ljava/lang/String;)V", "getGaid", "setGaid", "component1", "component2", "copy", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class AndroidAmazonExt extends CommonVungleExt {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private String amazonAdvertisingId;
        private String gaid;

        /* JADX INFO: compiled from: DeviceNode.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/DeviceNode.AndroidAmazonExt.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<AndroidAmazonExt> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.DeviceNode.AndroidAmazonExt", aVar, 19);
                pluginGeneratedSerialDescriptor.j("android_id", true);
                pluginGeneratedSerialDescriptor.j("is_google_play_services_available", true);
                pluginGeneratedSerialDescriptor.j("app_set_id", true);
                pluginGeneratedSerialDescriptor.j("battery_level", true);
                pluginGeneratedSerialDescriptor.j("battery_state", true);
                pluginGeneratedSerialDescriptor.j("battery_saver_enabled", true);
                pluginGeneratedSerialDescriptor.j("connection_type", true);
                pluginGeneratedSerialDescriptor.j("connection_type_detail", true);
                pluginGeneratedSerialDescriptor.j("locale", true);
                pluginGeneratedSerialDescriptor.j("language", true);
                pluginGeneratedSerialDescriptor.j("time_zone", true);
                pluginGeneratedSerialDescriptor.j("volume_level", true);
                pluginGeneratedSerialDescriptor.j("sound_enabled", true);
                pluginGeneratedSerialDescriptor.j("is_tv", true);
                pluginGeneratedSerialDescriptor.j("sd_card_available", true);
                pluginGeneratedSerialDescriptor.j("is_sideload_enabled", true);
                pluginGeneratedSerialDescriptor.j("os_name", true);
                pluginGeneratedSerialDescriptor.j(v4.w0, true);
                pluginGeneratedSerialDescriptor.j("amazonAdvertisingId", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                StringSerializer stringSerializer = StringSerializer.a;
                BooleanSerializer booleanSerializer = BooleanSerializer.a;
                FloatSerializer floatSerializer = FloatSerializer.a;
                IntSerializer intSerializer = IntSerializer.a;
                return new KSerializer[]{BuiltinSerializersKt.getNullable(stringSerializer), booleanSerializer, BuiltinSerializersKt.getNullable(stringSerializer), floatSerializer, BuiltinSerializersKt.getNullable(stringSerializer), intSerializer, BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), floatSerializer, intSerializer, booleanSerializer, intSerializer, booleanSerializer, BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer)};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public AndroidAmazonExt deserialize(Decoder decoder) {
                Object objN;
                Object objN2;
                float fU;
                int i;
                float fU2;
                Object obj;
                Object obj2;
                boolean z;
                Object obj3;
                Object obj4;
                int i2;
                boolean z2;
                boolean z3;
                int i3;
                Object obj5;
                Object objN3;
                Object obj6;
                Object obj7;
                Object obj8;
                int i4;
                Object obj9;
                int i5;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor c = getB();
                CompositeDecoder compositeDecoderB = decoder.b(c);
                if (compositeDecoderB.p()) {
                    StringSerializer stringSerializer = StringSerializer.a;
                    Object objN4 = compositeDecoderB.n(c, 0, stringSerializer, null);
                    boolean zC = compositeDecoderB.C(c, 1);
                    Object objN5 = compositeDecoderB.n(c, 2, stringSerializer, null);
                    float fU3 = compositeDecoderB.u(c, 3);
                    Object objN6 = compositeDecoderB.n(c, 4, stringSerializer, null);
                    int i6 = compositeDecoderB.i(c, 5);
                    Object objN7 = compositeDecoderB.n(c, 6, stringSerializer, null);
                    Object objN8 = compositeDecoderB.n(c, 7, stringSerializer, null);
                    Object objN9 = compositeDecoderB.n(c, 8, stringSerializer, null);
                    Object objN10 = compositeDecoderB.n(c, 9, stringSerializer, null);
                    Object objN11 = compositeDecoderB.n(c, 10, stringSerializer, null);
                    float fU4 = compositeDecoderB.u(c, 11);
                    int i7 = compositeDecoderB.i(c, 12);
                    boolean zC2 = compositeDecoderB.C(c, 13);
                    int i8 = compositeDecoderB.i(c, 14);
                    boolean zC3 = compositeDecoderB.C(c, 15);
                    obj2 = objN4;
                    Object objN12 = compositeDecoderB.n(c, 16, stringSerializer, null);
                    Object objN13 = compositeDecoderB.n(c, 17, stringSerializer, null);
                    objN3 = compositeDecoderB.n(c, 18, stringSerializer, null);
                    obj5 = objN5;
                    fU = fU4;
                    i = i6;
                    fU2 = fU3;
                    z3 = zC;
                    z2 = zC3;
                    i4 = 524287;
                    objN2 = objN9;
                    i3 = i7;
                    obj3 = objN11;
                    obj6 = objN10;
                    objN = objN13;
                    obj8 = objN6;
                    i2 = i8;
                    z = zC2;
                    obj = objN12;
                    obj7 = objN8;
                    obj4 = objN7;
                } else {
                    int i9 = 18;
                    int i10 = 0;
                    Object objN14 = null;
                    Object objN15 = null;
                    Object objN16 = null;
                    Object objN17 = null;
                    Object objN18 = null;
                    objN = null;
                    Object objN19 = null;
                    Object objN20 = null;
                    objN2 = null;
                    Object objN21 = null;
                    Object objN22 = null;
                    boolean zC4 = false;
                    int i11 = 0;
                    boolean zC5 = false;
                    boolean zC6 = false;
                    int i12 = 0;
                    fU = 0.0f;
                    i = 0;
                    fU2 = 0.0f;
                    boolean z4 = true;
                    while (z4) {
                        int iO = compositeDecoderB.o(c);
                        switch (iO) {
                            case -1:
                                i9 = 18;
                                z4 = false;
                                break;
                            case 0:
                                obj9 = objN16;
                                i10 |= 1;
                                objN22 = compositeDecoderB.n(c, 0, StringSerializer.a, objN22);
                                objN16 = obj9;
                                i9 = 18;
                                break;
                            case 1:
                                obj9 = objN16;
                                zC6 = compositeDecoderB.C(c, 1);
                                i10 |= 2;
                                objN16 = obj9;
                                i9 = 18;
                                break;
                            case 2:
                                obj9 = objN16;
                                objN14 = compositeDecoderB.n(c, 2, StringSerializer.a, objN14);
                                i10 |= 4;
                                objN16 = obj9;
                                i9 = 18;
                                break;
                            case 3:
                                obj9 = objN16;
                                fU2 = compositeDecoderB.u(c, 3);
                                i10 |= 8;
                                objN16 = obj9;
                                i9 = 18;
                                break;
                            case 4:
                                obj9 = objN16;
                                objN17 = compositeDecoderB.n(c, 4, StringSerializer.a, objN17);
                                i10 |= 16;
                                objN16 = obj9;
                                i9 = 18;
                                break;
                            case 5:
                                obj9 = objN16;
                                i = compositeDecoderB.i(c, 5);
                                i10 |= 32;
                                objN16 = obj9;
                                i9 = 18;
                                break;
                            case 6:
                                obj9 = objN16;
                                objN21 = compositeDecoderB.n(c, 6, StringSerializer.a, objN21);
                                i10 |= 64;
                                objN16 = obj9;
                                i9 = 18;
                                break;
                            case 7:
                                obj9 = objN16;
                                objN15 = compositeDecoderB.n(c, 7, StringSerializer.a, objN15);
                                i10 |= 128;
                                objN16 = obj9;
                                i9 = 18;
                                break;
                            case 8:
                                obj9 = objN16;
                                objN2 = compositeDecoderB.n(c, 8, StringSerializer.a, objN2);
                                i10 |= 256;
                                objN16 = obj9;
                                i9 = 18;
                                break;
                            case 9:
                                obj9 = objN16;
                                objN20 = compositeDecoderB.n(c, 9, StringSerializer.a, objN20);
                                i10 |= 512;
                                objN16 = obj9;
                                i9 = 18;
                                break;
                            case 10:
                                obj9 = objN16;
                                objN19 = compositeDecoderB.n(c, 10, StringSerializer.a, objN19);
                                i10 |= 1024;
                                objN16 = obj9;
                                i9 = 18;
                                break;
                            case 11:
                                fU = compositeDecoderB.u(c, 11);
                                i10 |= 2048;
                                i9 = 18;
                                break;
                            case 12:
                                i12 = compositeDecoderB.i(c, 12);
                                i10 |= 4096;
                                i9 = 18;
                                break;
                            case 13:
                                i10 |= 8192;
                                zC4 = compositeDecoderB.C(c, 13);
                                i9 = 18;
                                break;
                            case 14:
                                i11 = compositeDecoderB.i(c, 14);
                                i10 |= 16384;
                                i9 = 18;
                                break;
                            case 15:
                                zC5 = compositeDecoderB.C(c, 15);
                                i10 |= 32768;
                                i9 = 18;
                                break;
                            case 16:
                                objN16 = compositeDecoderB.n(c, 16, StringSerializer.a, objN16);
                                i5 = 65536;
                                i10 |= i5;
                                i9 = 18;
                                break;
                            case 17:
                                objN = compositeDecoderB.n(c, 17, StringSerializer.a, objN);
                                i5 = 131072;
                                i10 |= i5;
                                i9 = 18;
                                break;
                            case 18:
                                objN18 = compositeDecoderB.n(c, i9, StringSerializer.a, objN18);
                                i10 |= 262144;
                                break;
                            default:
                                throw new UnknownFieldException(iO);
                        }
                    }
                    obj = objN16;
                    obj2 = objN22;
                    z = zC4;
                    obj3 = objN19;
                    obj4 = objN21;
                    i2 = i11;
                    z2 = zC5;
                    z3 = zC6;
                    i3 = i12;
                    obj5 = objN14;
                    objN3 = objN18;
                    obj6 = objN20;
                    obj7 = objN15;
                    obj8 = objN17;
                    i4 = i10;
                }
                compositeDecoderB.c(c);
                return new AndroidAmazonExt(i4, (String) obj2, z3, (String) obj5, fU2, (String) obj8, i, (String) obj4, (String) obj7, (String) objN2, (String) obj6, (String) obj3, fU, i3, z, i2, z2, (String) obj, (String) objN, (String) objN3, null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, AndroidAmazonExt value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor c = getB();
                CompositeEncoder compositeEncoderB = encoder.b(c);
                AndroidAmazonExt.write$Self(value, compositeEncoderB, c);
                compositeEncoderB.c(c);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.DeviceNode$AndroidAmazonExt$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: DeviceNode.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<AndroidAmazonExt> serializer() {
                return a.INSTANCE;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public AndroidAmazonExt() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AndroidAmazonExt(int i, String str, boolean z, String str2, float f2, String str3, int i2, String str4, String str5, String str6, String str7, String str8, float f3, int i3, boolean z2, int i4, boolean z3, String str9, String str10, String str11, SerializationConstructorMarker serializationConstructorMarker) {
            AndroidAmazonExt androidAmazonExt;
            super(i, str, z, str2, f2, str3, i2, str4, str5, str6, str7, str8, f3, i3, z2, i4, z3, str9, serializationConstructorMarker);
            if ((i & 0) != 0) {
                PluginExceptionsKt.throwMissingFieldException(i, 0, a.INSTANCE.getB());
            }
            if ((i & 131072) == 0) {
                androidAmazonExt = this;
                androidAmazonExt.gaid = null;
            } else {
                androidAmazonExt = this;
                androidAmazonExt.gaid = str10;
            }
            androidAmazonExt.amazonAdvertisingId = (i & 262144) != 0 ? str11 : null;
        }

        public AndroidAmazonExt(String str, String str2) {
            this.gaid = str;
            this.amazonAdvertisingId = str2;
        }

        public /* synthetic */ AndroidAmazonExt(String str, String str2, int i, n nVar) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
        }

        public static /* synthetic */ AndroidAmazonExt copy$default(AndroidAmazonExt androidAmazonExt, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = androidAmazonExt.gaid;
            }
            if ((i & 2) != 0) {
                str2 = androidAmazonExt.amazonAdvertisingId;
            }
            return androidAmazonExt.copy(str, str2);
        }

        public static final void write$Self(AndroidAmazonExt self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            CommonVungleExt.write$Self(self, output, serialDesc);
            if (output.z(serialDesc, 17) || self.gaid != null) {
                output.i(serialDesc, 17, StringSerializer.a, self.gaid);
            }
            if (output.z(serialDesc, 18) || self.amazonAdvertisingId != null) {
                output.i(serialDesc, 18, StringSerializer.a, self.amazonAdvertisingId);
            }
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getGaid() {
            return this.gaid;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getAmazonAdvertisingId() {
            return this.amazonAdvertisingId;
        }

        public final AndroidAmazonExt copy(String gaid, String amazonAdvertisingId) {
            return new AndroidAmazonExt(gaid, amazonAdvertisingId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AndroidAmazonExt)) {
                return false;
            }
            AndroidAmazonExt androidAmazonExt = (AndroidAmazonExt) other;
            return Intrinsics.areEqual(this.gaid, androidAmazonExt.gaid) && Intrinsics.areEqual(this.amazonAdvertisingId, androidAmazonExt.amazonAdvertisingId);
        }

        public final String getAmazonAdvertisingId() {
            return this.amazonAdvertisingId;
        }

        public final String getGaid() {
            return this.gaid;
        }

        public int hashCode() {
            String str = this.gaid;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.amazonAdvertisingId;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final void setAmazonAdvertisingId(String str) {
            this.amazonAdvertisingId = str;
        }

        public final void setGaid(String str) {
            this.gaid = str;
        }

        public String toString() {
            return "AndroidAmazonExt(gaid=" + this.gaid + ", amazonAdvertisingId=" + this.amazonAdvertisingId + ')';
        }
    }

    /* JADX INFO: compiled from: DeviceNode.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b9\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u0000 Z2\u00020\u0001:\u0002YZBÑ\u0001\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\t\u001a\u00020\n\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\f\u001a\u00020\u0003\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\u0012\u001a\u00020\n\u0012\b\b\u0001\u0010\u0013\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0014\u001a\u00020\u0007\u0012\b\b\u0001\u0010\u0015\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0016\u001a\u00020\u0007\u0012\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\u0002\u0010\u001aB\u0005¢\u0006\u0002\u0010\u001bJ!\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020XHÇ\u0001R&\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001c\u0010\u001b\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R&\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b!\u0010\u001b\u001a\u0004\b\"\u0010\u001e\"\u0004\b#\u0010 R$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b$\u0010\u001b\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R$\u0010\f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b)\u0010\u001b\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R&\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b.\u0010\u001b\u001a\u0004\b/\u0010\u001e\"\u0004\b0\u0010 R&\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b1\u0010\u001b\u001a\u0004\b2\u0010\u001e\"\u0004\b3\u0010 R&\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b4\u0010\u001b\u001a\u0004\b5\u0010\u001e\"\u0004\b6\u0010 R$\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b7\u0010\u001b\u001a\u0004\b\u0006\u00108\"\u0004\b9\u0010:R$\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b;\u0010\u001b\u001a\u0004\b\u0016\u00108\"\u0004\b<\u0010:R$\u0010\u0014\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b=\u0010\u001b\u001a\u0004\b\u0014\u00108\"\u0004\b>\u0010:R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u001e\"\u0004\b@\u0010 R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010\u001e\"\u0004\bB\u0010 R&\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bC\u0010\u001b\u001a\u0004\bD\u0010\u001e\"\u0004\bE\u0010 R$\u0010\u0015\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bF\u0010\u001b\u001a\u0004\bG\u0010+\"\u0004\bH\u0010-R$\u0010\u0013\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bI\u0010\u001b\u001a\u0004\bJ\u0010+\"\u0004\bK\u0010-R&\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bL\u0010\u001b\u001a\u0004\bM\u0010\u001e\"\u0004\bN\u0010 R$\u0010\u0012\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bO\u0010\u001b\u001a\u0004\bP\u0010&\"\u0004\bQ\u0010(¨\u0006[\u0080å\b\u0004\u0080å\b\u0006\u0080å\b\b\u0080å\b\t\u0080å\b\u000b\u0080å\b\f\u0080å\b\r\u0080å\b\u000e\u0080å\b\u000f\u0080å\b\u0010\u0080å\b\u0011\u0080å\b\u0012\u0080å\b\u0013\u0080å\b\u0014\u0080å\b\u0015\u0080å\b\u0016\u0080å\b\u0017"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;", "", "seen1", "", "androidId", "", "isGooglePlayServicesAvailable", "", "appSetId", "batteryLevel", "", "batteryState", "batterySaverEnabled", "connectionType", "connectionTypeDetail", "locale", "language", "timeZone", "volumeLevel", "soundEnabled", "isTv", "sdCardAvailable", "isSideloadEnabled", "osName", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;ZLjava/lang/String;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "()V", "getAndroidId$annotations", "getAndroidId", "()Ljava/lang/String;", "setAndroidId", "(Ljava/lang/String;)V", "getAppSetId$annotations", "getAppSetId", "setAppSetId", "getBatteryLevel$annotations", "getBatteryLevel", "()F", "setBatteryLevel", "(F)V", "getBatterySaverEnabled$annotations", "getBatterySaverEnabled", "()I", "setBatterySaverEnabled", "(I)V", "getBatteryState$annotations", "getBatteryState", "setBatteryState", "getConnectionType$annotations", "getConnectionType", "setConnectionType", "getConnectionTypeDetail$annotations", "getConnectionTypeDetail", "setConnectionTypeDetail", "isGooglePlayServicesAvailable$annotations", "()Z", "setGooglePlayServicesAvailable", "(Z)V", "isSideloadEnabled$annotations", "setSideloadEnabled", "isTv$annotations", "setTv", "getLanguage", "setLanguage", "getLocale", "setLocale", "getOsName$annotations", "getOsName", "setOsName", "getSdCardAvailable$annotations", "getSdCardAvailable", "setSdCardAvailable", "getSoundEnabled$annotations", "getSoundEnabled", "setSoundEnabled", "getTimeZone$annotations", "getTimeZone", "setTimeZone", "getVolumeLevel$annotations", "getVolumeLevel", "setVolumeLevel", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static class CommonVungleExt {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private String androidId;
        private String appSetId;
        private float batteryLevel;
        private int batterySaverEnabled;
        private String batteryState;
        private String connectionType;
        private String connectionTypeDetail;
        private boolean isGooglePlayServicesAvailable;
        private boolean isSideloadEnabled;
        private boolean isTv;
        private String language;
        private String locale;
        private String osName;
        private int sdCardAvailable;
        private int soundEnabled;
        private String timeZone;
        private float volumeLevel;

        /* JADX INFO: compiled from: DeviceNode.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/DeviceNode.CommonVungleExt.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<CommonVungleExt> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.DeviceNode.CommonVungleExt", aVar, 17);
                pluginGeneratedSerialDescriptor.j("android_id", true);
                pluginGeneratedSerialDescriptor.j("is_google_play_services_available", true);
                pluginGeneratedSerialDescriptor.j("app_set_id", true);
                pluginGeneratedSerialDescriptor.j("battery_level", true);
                pluginGeneratedSerialDescriptor.j("battery_state", true);
                pluginGeneratedSerialDescriptor.j("battery_saver_enabled", true);
                pluginGeneratedSerialDescriptor.j("connection_type", true);
                pluginGeneratedSerialDescriptor.j("connection_type_detail", true);
                pluginGeneratedSerialDescriptor.j("locale", true);
                pluginGeneratedSerialDescriptor.j("language", true);
                pluginGeneratedSerialDescriptor.j("time_zone", true);
                pluginGeneratedSerialDescriptor.j("volume_level", true);
                pluginGeneratedSerialDescriptor.j("sound_enabled", true);
                pluginGeneratedSerialDescriptor.j("is_tv", true);
                pluginGeneratedSerialDescriptor.j("sd_card_available", true);
                pluginGeneratedSerialDescriptor.j("is_sideload_enabled", true);
                pluginGeneratedSerialDescriptor.j("os_name", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                StringSerializer stringSerializer = StringSerializer.a;
                BooleanSerializer booleanSerializer = BooleanSerializer.a;
                FloatSerializer floatSerializer = FloatSerializer.a;
                IntSerializer intSerializer = IntSerializer.a;
                return new KSerializer[]{BuiltinSerializersKt.getNullable(stringSerializer), booleanSerializer, BuiltinSerializersKt.getNullable(stringSerializer), floatSerializer, BuiltinSerializersKt.getNullable(stringSerializer), intSerializer, BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), floatSerializer, intSerializer, booleanSerializer, intSerializer, booleanSerializer, BuiltinSerializersKt.getNullable(stringSerializer)};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public CommonVungleExt deserialize(Decoder decoder) {
                int i;
                Object objN;
                Object objN2;
                Object objN3;
                int i2;
                boolean zC;
                int i3;
                float fU;
                boolean z;
                Object obj;
                Object obj2;
                boolean z2;
                int i4;
                float f2;
                Object obj3;
                Object obj4;
                Object objN4;
                Object objN5;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor c = getB();
                CompositeDecoder compositeDecoderB = decoder.b(c);
                int i5 = 11;
                int i6 = 10;
                if (compositeDecoderB.p()) {
                    StringSerializer stringSerializer = StringSerializer.a;
                    Object objN6 = compositeDecoderB.n(c, 0, stringSerializer, null);
                    boolean zC2 = compositeDecoderB.C(c, 1);
                    Object objN7 = compositeDecoderB.n(c, 2, stringSerializer, null);
                    float fU2 = compositeDecoderB.u(c, 3);
                    Object objN8 = compositeDecoderB.n(c, 4, stringSerializer, null);
                    int i7 = compositeDecoderB.i(c, 5);
                    Object objN9 = compositeDecoderB.n(c, 6, stringSerializer, null);
                    Object objN10 = compositeDecoderB.n(c, 7, stringSerializer, null);
                    objN5 = compositeDecoderB.n(c, 8, stringSerializer, null);
                    Object objN11 = compositeDecoderB.n(c, 9, stringSerializer, null);
                    Object objN12 = compositeDecoderB.n(c, 10, stringSerializer, null);
                    float fU3 = compositeDecoderB.u(c, 11);
                    int i8 = compositeDecoderB.i(c, 12);
                    boolean zC3 = compositeDecoderB.C(c, 13);
                    int i9 = compositeDecoderB.i(c, 14);
                    boolean zC4 = compositeDecoderB.C(c, 15);
                    objN4 = compositeDecoderB.n(c, 16, stringSerializer, null);
                    zC = zC4;
                    i3 = i7;
                    fU = fU2;
                    obj = objN6;
                    i2 = i9;
                    obj4 = objN7;
                    f2 = fU3;
                    objN2 = objN9;
                    z = zC3;
                    z2 = zC2;
                    i4 = i8;
                    objN = objN11;
                    i = 131071;
                    obj2 = objN12;
                    objN3 = objN10;
                    obj3 = objN8;
                } else {
                    i = 0;
                    int i10 = 16;
                    Object objN13 = null;
                    Object objN14 = null;
                    Object objN15 = null;
                    objN = null;
                    Object objN16 = null;
                    objN2 = null;
                    objN3 = null;
                    Object objN17 = null;
                    Object objN18 = null;
                    boolean zC5 = false;
                    i2 = 0;
                    zC = false;
                    boolean zC6 = false;
                    int i11 = 0;
                    float fU4 = 0.0f;
                    i3 = 0;
                    fU = 0.0f;
                    boolean z3 = true;
                    while (z3) {
                        int iO = compositeDecoderB.o(c);
                        switch (iO) {
                            case -1:
                                i5 = 11;
                                i6 = 10;
                                z3 = false;
                                break;
                            case 0:
                                objN18 = compositeDecoderB.n(c, 0, StringSerializer.a, objN18);
                                i |= 1;
                                i10 = 16;
                                i5 = 11;
                                i6 = 10;
                                break;
                            case 1:
                                zC6 = compositeDecoderB.C(c, 1);
                                i |= 2;
                                i10 = 16;
                                i5 = 11;
                                break;
                            case 2:
                                objN13 = compositeDecoderB.n(c, 2, StringSerializer.a, objN13);
                                i |= 4;
                                i10 = 16;
                                i5 = 11;
                                break;
                            case 3:
                                fU = compositeDecoderB.u(c, 3);
                                i |= 8;
                                i10 = 16;
                                i5 = 11;
                                break;
                            case 4:
                                objN14 = compositeDecoderB.n(c, 4, StringSerializer.a, objN14);
                                i |= 16;
                                i10 = 16;
                                i5 = 11;
                                break;
                            case 5:
                                i3 = compositeDecoderB.i(c, 5);
                                i |= 32;
                                i10 = 16;
                                i5 = 11;
                                break;
                            case 6:
                                objN2 = compositeDecoderB.n(c, 6, StringSerializer.a, objN2);
                                i |= 64;
                                i10 = 16;
                                i5 = 11;
                                break;
                            case 7:
                                objN3 = compositeDecoderB.n(c, 7, StringSerializer.a, objN3);
                                i |= 128;
                                i10 = 16;
                                i5 = 11;
                                break;
                            case 8:
                                objN16 = compositeDecoderB.n(c, 8, StringSerializer.a, objN16);
                                i |= 256;
                                i10 = 16;
                                i5 = 11;
                                break;
                            case 9:
                                objN = compositeDecoderB.n(c, 9, StringSerializer.a, objN);
                                i |= 512;
                                i10 = 16;
                                i5 = 11;
                                break;
                            case 10:
                                objN15 = compositeDecoderB.n(c, i6, StringSerializer.a, objN15);
                                i |= 1024;
                                i10 = 16;
                                break;
                            case 11:
                                fU4 = compositeDecoderB.u(c, i5);
                                i |= 2048;
                                i10 = 16;
                                break;
                            case 12:
                                i11 = compositeDecoderB.i(c, 12);
                                i |= 4096;
                                i10 = 16;
                                break;
                            case 13:
                                i |= 8192;
                                zC5 = compositeDecoderB.C(c, 13);
                                i10 = 16;
                                break;
                            case 14:
                                i2 = compositeDecoderB.i(c, 14);
                                i |= 16384;
                                i10 = 16;
                                break;
                            case 15:
                                zC = compositeDecoderB.C(c, 15);
                                i |= 32768;
                                break;
                            case 16:
                                objN17 = compositeDecoderB.n(c, i10, StringSerializer.a, objN17);
                                i |= 65536;
                                break;
                            default:
                                throw new UnknownFieldException(iO);
                        }
                    }
                    z = zC5;
                    obj = objN18;
                    obj2 = objN15;
                    z2 = zC6;
                    i4 = i11;
                    f2 = fU4;
                    obj3 = objN14;
                    obj4 = objN13;
                    objN4 = objN17;
                    objN5 = objN16;
                }
                compositeDecoderB.c(c);
                return new CommonVungleExt(i, (String) obj, z2, (String) obj4, fU, (String) obj3, i3, (String) objN2, (String) objN3, (String) objN5, (String) objN, (String) obj2, f2, i4, z, i2, zC, (String) objN4, null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, CommonVungleExt value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor c = getB();
                CompositeEncoder compositeEncoderB = encoder.b(c);
                CommonVungleExt.write$Self(value, compositeEncoderB, c);
                compositeEncoderB.c(c);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.DeviceNode$CommonVungleExt$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: DeviceNode.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode$CommonVungleExt;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<CommonVungleExt> serializer() {
                return a.INSTANCE;
            }
        }

        public CommonVungleExt() {
            this.soundEnabled = 1;
            this.sdCardAvailable = 1;
        }

        public /* synthetic */ CommonVungleExt(int i, String str, boolean z, String str2, float f2, String str3, int i2, String str4, String str5, String str6, String str7, String str8, float f3, int i3, boolean z2, int i4, boolean z3, String str9, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 0) != 0) {
                PluginExceptionsKt.throwMissingFieldException(i, 0, a.INSTANCE.getB());
            }
            if ((i & 1) == 0) {
                this.androidId = null;
            } else {
                this.androidId = str;
            }
            if ((i & 2) == 0) {
                this.isGooglePlayServicesAvailable = false;
            } else {
                this.isGooglePlayServicesAvailable = z;
            }
            if ((i & 4) == 0) {
                this.appSetId = null;
            } else {
                this.appSetId = str2;
            }
            if ((i & 8) == 0) {
                this.batteryLevel = 0.0f;
            } else {
                this.batteryLevel = f2;
            }
            if ((i & 16) == 0) {
                this.batteryState = null;
            } else {
                this.batteryState = str3;
            }
            if ((i & 32) == 0) {
                this.batterySaverEnabled = 0;
            } else {
                this.batterySaverEnabled = i2;
            }
            if ((i & 64) == 0) {
                this.connectionType = null;
            } else {
                this.connectionType = str4;
            }
            if ((i & 128) == 0) {
                this.connectionTypeDetail = null;
            } else {
                this.connectionTypeDetail = str5;
            }
            if ((i & 256) == 0) {
                this.locale = null;
            } else {
                this.locale = str6;
            }
            if ((i & 512) == 0) {
                this.language = null;
            } else {
                this.language = str7;
            }
            if ((i & 1024) == 0) {
                this.timeZone = null;
            } else {
                this.timeZone = str8;
            }
            if ((i & 2048) == 0) {
                this.volumeLevel = 0.0f;
            } else {
                this.volumeLevel = f3;
            }
            if ((i & 4096) == 0) {
                this.soundEnabled = 1;
            } else {
                this.soundEnabled = i3;
            }
            if ((i & 8192) == 0) {
                this.isTv = false;
            } else {
                this.isTv = z2;
            }
            if ((i & 16384) == 0) {
                this.sdCardAvailable = 1;
            } else {
                this.sdCardAvailable = i4;
            }
            if ((32768 & i) == 0) {
                this.isSideloadEnabled = false;
            } else {
                this.isSideloadEnabled = z3;
            }
            if ((i & 65536) == 0) {
                this.osName = null;
            } else {
                this.osName = str9;
            }
        }

        public static /* synthetic */ void getAndroidId$annotations() {
        }

        public static /* synthetic */ void getAppSetId$annotations() {
        }

        public static /* synthetic */ void getBatteryLevel$annotations() {
        }

        public static /* synthetic */ void getBatterySaverEnabled$annotations() {
        }

        public static /* synthetic */ void getBatteryState$annotations() {
        }

        public static /* synthetic */ void getConnectionType$annotations() {
        }

        public static /* synthetic */ void getConnectionTypeDetail$annotations() {
        }

        public static /* synthetic */ void getOsName$annotations() {
        }

        public static /* synthetic */ void getSdCardAvailable$annotations() {
        }

        public static /* synthetic */ void getSoundEnabled$annotations() {
        }

        public static /* synthetic */ void getTimeZone$annotations() {
        }

        public static /* synthetic */ void getVolumeLevel$annotations() {
        }

        public static /* synthetic */ void isGooglePlayServicesAvailable$annotations() {
        }

        public static /* synthetic */ void isSideloadEnabled$annotations() {
        }

        public static /* synthetic */ void isTv$annotations() {
        }

        public static final void write$Self(CommonVungleExt self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.androidId != null) {
                output.i(serialDesc, 0, StringSerializer.a, self.androidId);
            }
            if (output.z(serialDesc, 1) || self.isGooglePlayServicesAvailable) {
                output.x(serialDesc, 1, self.isGooglePlayServicesAvailable);
            }
            if (output.z(serialDesc, 2) || self.appSetId != null) {
                output.i(serialDesc, 2, StringSerializer.a, self.appSetId);
            }
            if (output.z(serialDesc, 3) || !Intrinsics.areEqual((Object) Float.valueOf(self.batteryLevel), (Object) Float.valueOf(0.0f))) {
                output.s(serialDesc, 3, self.batteryLevel);
            }
            if (output.z(serialDesc, 4) || self.batteryState != null) {
                output.i(serialDesc, 4, StringSerializer.a, self.batteryState);
            }
            if (output.z(serialDesc, 5) || self.batterySaverEnabled != 0) {
                output.w(serialDesc, 5, self.batterySaverEnabled);
            }
            if (output.z(serialDesc, 6) || self.connectionType != null) {
                output.i(serialDesc, 6, StringSerializer.a, self.connectionType);
            }
            if (output.z(serialDesc, 7) || self.connectionTypeDetail != null) {
                output.i(serialDesc, 7, StringSerializer.a, self.connectionTypeDetail);
            }
            if (output.z(serialDesc, 8) || self.locale != null) {
                output.i(serialDesc, 8, StringSerializer.a, self.locale);
            }
            if (output.z(serialDesc, 9) || self.language != null) {
                output.i(serialDesc, 9, StringSerializer.a, self.language);
            }
            if (output.z(serialDesc, 10) || self.timeZone != null) {
                output.i(serialDesc, 10, StringSerializer.a, self.timeZone);
            }
            if (output.z(serialDesc, 11) || !Intrinsics.areEqual((Object) Float.valueOf(self.volumeLevel), (Object) Float.valueOf(0.0f))) {
                output.s(serialDesc, 11, self.volumeLevel);
            }
            if (output.z(serialDesc, 12) || self.soundEnabled != 1) {
                output.w(serialDesc, 12, self.soundEnabled);
            }
            if (output.z(serialDesc, 13) || self.isTv) {
                output.x(serialDesc, 13, self.isTv);
            }
            if (output.z(serialDesc, 14) || self.sdCardAvailable != 1) {
                output.w(serialDesc, 14, self.sdCardAvailable);
            }
            if (output.z(serialDesc, 15) || self.isSideloadEnabled) {
                output.x(serialDesc, 15, self.isSideloadEnabled);
            }
            if (output.z(serialDesc, 16) || self.osName != null) {
                output.i(serialDesc, 16, StringSerializer.a, self.osName);
            }
        }

        public final String getAndroidId() {
            return this.androidId;
        }

        public final String getAppSetId() {
            return this.appSetId;
        }

        public final float getBatteryLevel() {
            return this.batteryLevel;
        }

        public final int getBatterySaverEnabled() {
            return this.batterySaverEnabled;
        }

        public final String getBatteryState() {
            return this.batteryState;
        }

        public final String getConnectionType() {
            return this.connectionType;
        }

        public final String getConnectionTypeDetail() {
            return this.connectionTypeDetail;
        }

        public final String getLanguage() {
            return this.language;
        }

        public final String getLocale() {
            return this.locale;
        }

        public final String getOsName() {
            return this.osName;
        }

        public final int getSdCardAvailable() {
            return this.sdCardAvailable;
        }

        public final int getSoundEnabled() {
            return this.soundEnabled;
        }

        public final String getTimeZone() {
            return this.timeZone;
        }

        public final float getVolumeLevel() {
            return this.volumeLevel;
        }

        /* JADX INFO: renamed from: isGooglePlayServicesAvailable, reason: from getter */
        public final boolean getIsGooglePlayServicesAvailable() {
            return this.isGooglePlayServicesAvailable;
        }

        /* JADX INFO: renamed from: isSideloadEnabled, reason: from getter */
        public final boolean getIsSideloadEnabled() {
            return this.isSideloadEnabled;
        }

        /* JADX INFO: renamed from: isTv, reason: from getter */
        public final boolean getIsTv() {
            return this.isTv;
        }

        public final void setAndroidId(String str) {
            this.androidId = str;
        }

        public final void setAppSetId(String str) {
            this.appSetId = str;
        }

        public final void setBatteryLevel(float f2) {
            this.batteryLevel = f2;
        }

        public final void setBatterySaverEnabled(int i) {
            this.batterySaverEnabled = i;
        }

        public final void setBatteryState(String str) {
            this.batteryState = str;
        }

        public final void setConnectionType(String str) {
            this.connectionType = str;
        }

        public final void setConnectionTypeDetail(String str) {
            this.connectionTypeDetail = str;
        }

        public final void setGooglePlayServicesAvailable(boolean z) {
            this.isGooglePlayServicesAvailable = z;
        }

        public final void setLanguage(String str) {
            this.language = str;
        }

        public final void setLocale(String str) {
            this.locale = str;
        }

        public final void setOsName(String str) {
            this.osName = str;
        }

        public final void setSdCardAvailable(int i) {
            this.sdCardAvailable = i;
        }

        public final void setSideloadEnabled(boolean z) {
            this.isSideloadEnabled = z;
        }

        public final void setSoundEnabled(int i) {
            this.soundEnabled = i;
        }

        public final void setTimeZone(String str) {
            this.timeZone = str;
        }

        public final void setTv(boolean z) {
            this.isTv = z;
        }

        public final void setVolumeLevel(float f2) {
            this.volumeLevel = f2;
        }
    }

    /* JADX INFO: compiled from: DeviceNode.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB#\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J!\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aHÇ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;", "", "seen1", "", "vungle", "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/vungle/ads/internal/model/DeviceNode$VungleExt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;)V", "getVungle", "()Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class DeviceExt {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final VungleExt vungle;

        /* JADX INFO: compiled from: DeviceNode.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/DeviceNode.DeviceExt.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<DeviceExt> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.DeviceNode.DeviceExt", aVar, 1);
                pluginGeneratedSerialDescriptor.j("vungle", false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                return new KSerializer[]{VungleExt.a.INSTANCE};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public DeviceExt deserialize(Decoder decoder) {
                Object objY;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor c = getB();
                CompositeDecoder compositeDecoderB = decoder.b(c);
                SerializationConstructorMarker serializationConstructorMarker = null;
                int i = 1;
                if (compositeDecoderB.p()) {
                    objY = compositeDecoderB.y(c, 0, VungleExt.a.INSTANCE, null);
                } else {
                    objY = null;
                    int i2 = 0;
                    while (i != 0) {
                        int iO = compositeDecoderB.o(c);
                        if (iO == -1) {
                            i = 0;
                        } else {
                            if (iO != 0) {
                                throw new UnknownFieldException(iO);
                            }
                            objY = compositeDecoderB.y(c, 0, VungleExt.a.INSTANCE, objY);
                            i2 |= 1;
                        }
                    }
                    i = i2;
                }
                compositeDecoderB.c(c);
                return new DeviceExt(i, (VungleExt) objY, serializationConstructorMarker);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, DeviceExt value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor c = getB();
                CompositeEncoder compositeEncoderB = encoder.b(c);
                DeviceExt.write$Self(value, compositeEncoderB, c);
                compositeEncoderB.c(c);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.DeviceNode$DeviceExt$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: DeviceNode.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode$DeviceExt;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<DeviceExt> serializer() {
                return a.INSTANCE;
            }
        }

        public /* synthetic */ DeviceExt(int i, VungleExt vungleExt, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, a.INSTANCE.getB());
            }
            this.vungle = vungleExt;
        }

        public DeviceExt(VungleExt vungle) {
            Intrinsics.checkNotNullParameter(vungle, "vungle");
            this.vungle = vungle;
        }

        public static /* synthetic */ DeviceExt copy$default(DeviceExt deviceExt, VungleExt vungleExt, int i, Object obj) {
            if ((i & 1) != 0) {
                vungleExt = deviceExt.vungle;
            }
            return deviceExt.copy(vungleExt);
        }

        public static final void write$Self(DeviceExt self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.C(serialDesc, 0, VungleExt.a.INSTANCE, self.vungle);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final VungleExt getVungle() {
            return this.vungle;
        }

        public final DeviceExt copy(VungleExt vungle) {
            Intrinsics.checkNotNullParameter(vungle, "vungle");
            return new DeviceExt(vungle);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DeviceExt) && Intrinsics.areEqual(this.vungle, ((DeviceExt) other).vungle);
        }

        public final VungleExt getVungle() {
            return this.vungle;
        }

        public int hashCode() {
            return this.vungle.hashCode();
        }

        public String toString() {
            return "DeviceExt(vungle=" + this.vungle + ')';
        }
    }

    /* JADX INFO: compiled from: DeviceNode.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB-\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tB\u001d\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J!\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dHÇ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006 "}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;", "", "seen1", "", "android", "Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;", "amazon", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;)V", "getAmazon", "()Lcom/vungle/ads/internal/model/DeviceNode$AndroidAmazonExt;", "getAndroid", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class VungleExt {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final AndroidAmazonExt amazon;
        private final AndroidAmazonExt android;

        /* JADX INFO: compiled from: DeviceNode.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/DeviceNode.VungleExt.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<VungleExt> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.DeviceNode.VungleExt", aVar, 2);
                pluginGeneratedSerialDescriptor.j("android", true);
                pluginGeneratedSerialDescriptor.j("amazon", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                AndroidAmazonExt.a aVar = AndroidAmazonExt.a.INSTANCE;
                return new KSerializer[]{BuiltinSerializersKt.getNullable(aVar), BuiltinSerializersKt.getNullable(aVar)};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public VungleExt deserialize(Decoder decoder) {
                Object objN;
                Object objN2;
                int i;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor c = getB();
                CompositeDecoder compositeDecoderB = decoder.b(c);
                SerializationConstructorMarker serializationConstructorMarker = null;
                if (compositeDecoderB.p()) {
                    AndroidAmazonExt.a aVar = AndroidAmazonExt.a.INSTANCE;
                    objN2 = compositeDecoderB.n(c, 0, aVar, null);
                    objN = compositeDecoderB.n(c, 1, aVar, null);
                    i = 3;
                } else {
                    objN = null;
                    Object objN3 = null;
                    int i2 = 0;
                    boolean z = true;
                    while (z) {
                        int iO = compositeDecoderB.o(c);
                        if (iO == -1) {
                            z = false;
                        } else if (iO == 0) {
                            objN3 = compositeDecoderB.n(c, 0, AndroidAmazonExt.a.INSTANCE, objN3);
                            i2 |= 1;
                        } else {
                            if (iO != 1) {
                                throw new UnknownFieldException(iO);
                            }
                            objN = compositeDecoderB.n(c, 1, AndroidAmazonExt.a.INSTANCE, objN);
                            i2 |= 2;
                        }
                    }
                    objN2 = objN3;
                    i = i2;
                }
                compositeDecoderB.c(c);
                return new VungleExt(i, (AndroidAmazonExt) objN2, (AndroidAmazonExt) objN, serializationConstructorMarker);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, VungleExt value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor c = getB();
                CompositeEncoder compositeEncoderB = encoder.b(c);
                VungleExt.write$Self(value, compositeEncoderB, c);
                compositeEncoderB.c(c);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.DeviceNode$VungleExt$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: DeviceNode.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode$VungleExt$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode$VungleExt;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<VungleExt> serializer() {
                return a.INSTANCE;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public VungleExt() {
            this((AndroidAmazonExt) null, (AndroidAmazonExt) (0 == true ? 1 : 0), 3, (n) (0 == true ? 1 : 0));
        }

        public /* synthetic */ VungleExt(int i, AndroidAmazonExt androidAmazonExt, AndroidAmazonExt androidAmazonExt2, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 0) != 0) {
                PluginExceptionsKt.throwMissingFieldException(i, 0, a.INSTANCE.getB());
            }
            if ((i & 1) == 0) {
                this.android = null;
            } else {
                this.android = androidAmazonExt;
            }
            if ((i & 2) == 0) {
                this.amazon = null;
            } else {
                this.amazon = androidAmazonExt2;
            }
        }

        public VungleExt(AndroidAmazonExt androidAmazonExt, AndroidAmazonExt androidAmazonExt2) {
            this.android = androidAmazonExt;
            this.amazon = androidAmazonExt2;
        }

        public /* synthetic */ VungleExt(AndroidAmazonExt androidAmazonExt, AndroidAmazonExt androidAmazonExt2, int i, n nVar) {
            this((i & 1) != 0 ? null : androidAmazonExt, (i & 2) != 0 ? null : androidAmazonExt2);
        }

        public static /* synthetic */ VungleExt copy$default(VungleExt vungleExt, AndroidAmazonExt androidAmazonExt, AndroidAmazonExt androidAmazonExt2, int i, Object obj) {
            if ((i & 1) != 0) {
                androidAmazonExt = vungleExt.android;
            }
            if ((i & 2) != 0) {
                androidAmazonExt2 = vungleExt.amazon;
            }
            return vungleExt.copy(androidAmazonExt, androidAmazonExt2);
        }

        public static final void write$Self(VungleExt self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.android != null) {
                output.i(serialDesc, 0, AndroidAmazonExt.a.INSTANCE, self.android);
            }
            if (output.z(serialDesc, 1) || self.amazon != null) {
                output.i(serialDesc, 1, AndroidAmazonExt.a.INSTANCE, self.amazon);
            }
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AndroidAmazonExt getAndroid() {
            return this.android;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final AndroidAmazonExt getAmazon() {
            return this.amazon;
        }

        public final VungleExt copy(AndroidAmazonExt android2, AndroidAmazonExt amazon) {
            return new VungleExt(android2, amazon);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof VungleExt)) {
                return false;
            }
            VungleExt vungleExt = (VungleExt) other;
            return Intrinsics.areEqual(this.android, vungleExt.android) && Intrinsics.areEqual(this.amazon, vungleExt.amazon);
        }

        public final AndroidAmazonExt getAmazon() {
            return this.amazon;
        }

        public final AndroidAmazonExt getAndroid() {
            return this.android;
        }

        public int hashCode() {
            AndroidAmazonExt androidAmazonExt = this.android;
            int iHashCode = (androidAmazonExt == null ? 0 : androidAmazonExt.hashCode()) * 31;
            AndroidAmazonExt androidAmazonExt2 = this.amazon;
            return iHashCode + (androidAmazonExt2 != null ? androidAmazonExt2.hashCode() : 0);
        }

        public String toString() {
            return "VungleExt(android=" + this.android + ", amazon=" + this.amazon + ')';
        }
    }

    /* JADX INFO: compiled from: DeviceNode.kt */
    @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/DeviceNode.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a implements GeneratedSerializer<DeviceNode> {
        public static final a INSTANCE;
        public static final /* synthetic */ SerialDescriptor descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.DeviceNode", aVar, 11);
            pluginGeneratedSerialDescriptor.j(v4.q, false);
            pluginGeneratedSerialDescriptor.j("model", false);
            pluginGeneratedSerialDescriptor.j(v4.y, false);
            pluginGeneratedSerialDescriptor.j(v4.s0, true);
            pluginGeneratedSerialDescriptor.j(v4.x, false);
            pluginGeneratedSerialDescriptor.j("w", false);
            pluginGeneratedSerialDescriptor.j("h", false);
            pluginGeneratedSerialDescriptor.j(v4.R, true);
            pluginGeneratedSerialDescriptor.j("ifa", true);
            pluginGeneratedSerialDescriptor.j("lmt", true);
            pluginGeneratedSerialDescriptor.j(KidozParams.EXTENSION_TYPE, true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.GeneratedSerializer
        public KSerializer<?>[] childSerializers() {
            StringSerializer stringSerializer = StringSerializer.a;
            IntSerializer intSerializer = IntSerializer.a;
            return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, BuiltinSerializersKt.getNullable(stringSerializer), stringSerializer, intSerializer, intSerializer, BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(intSerializer), BuiltinSerializersKt.getNullable(DeviceExt.a.INSTANCE)};
        }

        @Override // kotlinx.serialization.DeserializationStrategy
        public DeviceNode deserialize(Decoder decoder) {
            Object objN;
            String strM;
            Object objN2;
            Object objN3;
            Object objN4;
            Object objN5;
            int i;
            String str;
            String str2;
            int i2;
            int i3;
            String str3;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor c = getB();
            CompositeDecoder compositeDecoderB = decoder.b(c);
            int i4 = 10;
            int i5 = 9;
            if (compositeDecoderB.p()) {
                String strM2 = compositeDecoderB.m(c, 0);
                String strM3 = compositeDecoderB.m(c, 1);
                String strM4 = compositeDecoderB.m(c, 2);
                StringSerializer stringSerializer = StringSerializer.a;
                objN5 = compositeDecoderB.n(c, 3, stringSerializer, null);
                String strM5 = compositeDecoderB.m(c, 4);
                int i6 = compositeDecoderB.i(c, 5);
                int i7 = compositeDecoderB.i(c, 6);
                objN4 = compositeDecoderB.n(c, 7, stringSerializer, null);
                Object objN6 = compositeDecoderB.n(c, 8, stringSerializer, null);
                objN2 = compositeDecoderB.n(c, 9, IntSerializer.a, null);
                objN3 = compositeDecoderB.n(c, 10, DeviceExt.a.INSTANCE, null);
                i2 = i7;
                i3 = i6;
                str3 = strM5;
                strM = strM3;
                str = strM2;
                str2 = strM4;
                objN = objN6;
                i = 2047;
            } else {
                Object objN7 = null;
                Object objN8 = null;
                objN = null;
                Object objN9 = null;
                Object objN10 = null;
                String strM6 = null;
                strM = null;
                String strM7 = null;
                String strM8 = null;
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                boolean z = true;
                while (z) {
                    int iO = compositeDecoderB.o(c);
                    switch (iO) {
                        case -1:
                            i4 = 10;
                            z = false;
                            break;
                        case 0:
                            strM6 = compositeDecoderB.m(c, 0);
                            i10 |= 1;
                            i4 = 10;
                            i5 = 9;
                            break;
                        case 1:
                            strM = compositeDecoderB.m(c, 1);
                            i10 |= 2;
                            i4 = 10;
                            i5 = 9;
                            break;
                        case 2:
                            strM7 = compositeDecoderB.m(c, 2);
                            i10 |= 4;
                            i4 = 10;
                            i5 = 9;
                            break;
                        case 3:
                            objN10 = compositeDecoderB.n(c, 3, StringSerializer.a, objN10);
                            i10 |= 8;
                            i4 = 10;
                            i5 = 9;
                            break;
                        case 4:
                            strM8 = compositeDecoderB.m(c, 4);
                            i10 |= 16;
                            i4 = 10;
                            break;
                        case 5:
                            i9 = compositeDecoderB.i(c, 5);
                            i10 |= 32;
                            break;
                        case 6:
                            i8 = compositeDecoderB.i(c, 6);
                            i10 |= 64;
                            break;
                        case 7:
                            objN9 = compositeDecoderB.n(c, 7, StringSerializer.a, objN9);
                            i10 |= 128;
                            break;
                        case 8:
                            objN = compositeDecoderB.n(c, 8, StringSerializer.a, objN);
                            i10 |= 256;
                            break;
                        case 9:
                            objN7 = compositeDecoderB.n(c, i5, IntSerializer.a, objN7);
                            i10 |= 512;
                            break;
                        case 10:
                            objN8 = compositeDecoderB.n(c, i4, DeviceExt.a.INSTANCE, objN8);
                            i10 |= 1024;
                            break;
                        default:
                            throw new UnknownFieldException(iO);
                    }
                }
                objN2 = objN7;
                objN3 = objN8;
                objN4 = objN9;
                objN5 = objN10;
                i = i10;
                str = strM6;
                str2 = strM7;
                i2 = i8;
                i3 = i9;
                str3 = strM8;
            }
            compositeDecoderB.c(c);
            return new DeviceNode(i, str, strM, str2, (String) objN5, str3, i3, i2, (String) objN4, (String) objN, (Integer) objN2, (DeviceExt) objN3, (SerializationConstructorMarker) null);
        }

        @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
        /* JADX INFO: renamed from: getDescriptor */
        public SerialDescriptor getB() {
            return descriptor;
        }

        @Override // kotlinx.serialization.SerializationStrategy
        public void serialize(Encoder encoder, DeviceNode value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor c = getB();
            CompositeEncoder compositeEncoderB = encoder.b(c);
            DeviceNode.write$Self(value, compositeEncoderB, c);
            compositeEncoderB.c(c);
        }

        @Override // kotlinx.serialization.internal.GeneratedSerializer
        public KSerializer<?>[] typeParametersSerializers() {
            return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
        }
    }

    /* JADX INFO: renamed from: com.vungle.ads.internal.model.DeviceNode$b, reason: from kotlin metadata */
    /* JADX INFO: compiled from: DeviceNode.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/DeviceNode$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/DeviceNode;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final KSerializer<DeviceNode> serializer() {
            return a.INSTANCE;
        }
    }

    public /* synthetic */ DeviceNode(int i, String str, String str2, String str3, String str4, String str5, int i2, int i3, String str6, String str7, Integer num, DeviceExt deviceExt, SerializationConstructorMarker serializationConstructorMarker) {
        if (119 != (i & 119)) {
            PluginExceptionsKt.throwMissingFieldException(i, 119, a.INSTANCE.getB());
        }
        this.make = str;
        this.model = str2;
        this.osv = str3;
        if ((i & 8) == 0) {
            this.carrier = null;
        } else {
            this.carrier = str4;
        }
        this.os = str5;
        this.w = i2;
        this.h = i3;
        if ((i & 128) == 0) {
            this.ua = null;
        } else {
            this.ua = str6;
        }
        if ((i & 256) == 0) {
            this.ifa = null;
        } else {
            this.ifa = str7;
        }
        if ((i & 512) == 0) {
            this.lmt = null;
        } else {
            this.lmt = num;
        }
        if ((i & 1024) == 0) {
            this.ext = null;
        } else {
            this.ext = deviceExt;
        }
    }

    public DeviceNode(String make, String model, String osv, String str, String os, int i, int i2, String str2, String str3, Integer num, DeviceExt deviceExt) {
        Intrinsics.checkNotNullParameter(make, "make");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(osv, "osv");
        Intrinsics.checkNotNullParameter(os, "os");
        this.make = make;
        this.model = model;
        this.osv = osv;
        this.carrier = str;
        this.os = os;
        this.w = i;
        this.h = i2;
        this.ua = str2;
        this.ifa = str3;
        this.lmt = num;
        this.ext = deviceExt;
    }

    public /* synthetic */ DeviceNode(String str, String str2, String str3, String str4, String str5, int i, int i2, String str6, String str7, Integer num, DeviceExt deviceExt, int i3, n nVar) {
        this(str, str2, str3, (i3 & 8) != 0 ? null : str4, str5, i, i2, (i3 & 128) != 0 ? null : str6, (i3 & 256) != 0 ? null : str7, (i3 & 512) != 0 ? null : num, (i3 & 1024) != 0 ? null : deviceExt);
    }

    public static final void write$Self(DeviceNode self, CompositeEncoder output, SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.y(serialDesc, 0, self.make);
        output.y(serialDesc, 1, self.model);
        output.y(serialDesc, 2, self.osv);
        if (output.z(serialDesc, 3) || self.carrier != null) {
            output.i(serialDesc, 3, StringSerializer.a, self.carrier);
        }
        output.y(serialDesc, 4, self.os);
        output.w(serialDesc, 5, self.w);
        output.w(serialDesc, 6, self.h);
        if (output.z(serialDesc, 7) || self.ua != null) {
            output.i(serialDesc, 7, StringSerializer.a, self.ua);
        }
        if (output.z(serialDesc, 8) || self.ifa != null) {
            output.i(serialDesc, 8, StringSerializer.a, self.ifa);
        }
        if (output.z(serialDesc, 9) || self.lmt != null) {
            output.i(serialDesc, 9, IntSerializer.a, self.lmt);
        }
        if (output.z(serialDesc, 10) || self.ext != null) {
            output.i(serialDesc, 10, DeviceExt.a.INSTANCE, self.ext);
        }
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMake() {
        return this.make;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getLmt() {
        return this.lmt;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final DeviceExt getExt() {
        return this.ext;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getModel() {
        return this.model;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOsv() {
        return this.osv;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCarrier() {
        return this.carrier;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getOs() {
        return this.os;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getW() {
        return this.w;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getH() {
        return this.h;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getUa() {
        return this.ua;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getIfa() {
        return this.ifa;
    }

    public final DeviceNode copy(String make, String model, String osv, String carrier, String os, int w, int h, String ua, String ifa, Integer lmt, DeviceExt ext) {
        Intrinsics.checkNotNullParameter(make, "make");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(osv, "osv");
        Intrinsics.checkNotNullParameter(os, "os");
        return new DeviceNode(make, model, osv, carrier, os, w, h, ua, ifa, lmt, ext);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DeviceNode)) {
            return false;
        }
        DeviceNode deviceNode = (DeviceNode) other;
        return Intrinsics.areEqual(this.make, deviceNode.make) && Intrinsics.areEqual(this.model, deviceNode.model) && Intrinsics.areEqual(this.osv, deviceNode.osv) && Intrinsics.areEqual(this.carrier, deviceNode.carrier) && Intrinsics.areEqual(this.os, deviceNode.os) && this.w == deviceNode.w && this.h == deviceNode.h && Intrinsics.areEqual(this.ua, deviceNode.ua) && Intrinsics.areEqual(this.ifa, deviceNode.ifa) && Intrinsics.areEqual(this.lmt, deviceNode.lmt) && Intrinsics.areEqual(this.ext, deviceNode.ext);
    }

    public final String getCarrier() {
        return this.carrier;
    }

    public final DeviceExt getExt() {
        return this.ext;
    }

    public final int getH() {
        return this.h;
    }

    public final String getIfa() {
        return this.ifa;
    }

    public final Integer getLmt() {
        return this.lmt;
    }

    public final String getMake() {
        return this.make;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getOs() {
        return this.os;
    }

    public final String getOsv() {
        return this.osv;
    }

    public final String getUa() {
        return this.ua;
    }

    public final int getW() {
        return this.w;
    }

    public int hashCode() {
        int iHashCode = ((((this.make.hashCode() * 31) + this.model.hashCode()) * 31) + this.osv.hashCode()) * 31;
        String str = this.carrier;
        int iHashCode2 = (((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.os.hashCode()) * 31) + this.w) * 31) + this.h) * 31;
        String str2 = this.ua;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.ifa;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.lmt;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        DeviceExt deviceExt = this.ext;
        return iHashCode5 + (deviceExt != null ? deviceExt.hashCode() : 0);
    }

    public final void setExt(DeviceExt deviceExt) {
        this.ext = deviceExt;
    }

    public final void setIfa(String str) {
        this.ifa = str;
    }

    public final void setLmt(Integer num) {
        this.lmt = num;
    }

    public final void setUa(String str) {
        this.ua = str;
    }

    public String toString() {
        return "DeviceNode(make=" + this.make + ", model=" + this.model + ", osv=" + this.osv + ", carrier=" + this.carrier + ", os=" + this.os + ", w=" + this.w + ", h=" + this.h + ", ua=" + this.ua + ", ifa=" + this.ifa + ", lmt=" + this.lmt + ", ext=" + this.ext + ')';
    }
}
