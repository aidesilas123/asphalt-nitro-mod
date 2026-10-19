package com.vungle.ads.internal.model;

import com.json.b4;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.vungle.ads.internal.model.CleverCache;
import com.vungle.ads.internal.model.Placement;
import java.util.List;
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
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bA\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0087\b\u0018\u0000 m2\u00020\u0001:\rlmnopqrstuvwxBË\u0001\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0001\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\b\u0001\u0010!\u001a\u0004\u0018\u00010\"\u0012\b\u0010#\u001a\u0004\u0018\u00010$¢\u0006\u0002\u0010%B¿\u0001\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"¢\u0006\u0002\u0010&J\u000b\u0010P\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010Q\u001a\u0004\u0018\u00010\u0018HÆ\u0003¢\u0006\u0002\u00105J\u000b\u0010R\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u001eHÆ\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010 HÆ\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\"HÆ\u0003J\u0011\u0010W\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0016HÆ\u0003JÈ\u0001\u0010_\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"HÆ\u0001¢\u0006\u0002\u0010`J\u0013\u0010a\u001a\u00020\u00182\b\u0010b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010c\u001a\u00020\u0003HÖ\u0001J\t\u0010d\u001a\u00020\u001aHÖ\u0001J!\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020\u00002\u0006\u0010h\u001a\u00020i2\u0006\u0010j\u001a\u00020kHÇ\u0001R\u001e\u0010!\u001a\u0004\u0018\u00010\"8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b-\u0010(\u001a\u0004\b.\u0010/R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b0\u0010(\u001a\u0004\b1\u00102R \u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u00106\u0012\u0004\b3\u0010(\u001a\u0004\b4\u00105R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b;\u0010(\u001a\u0004\b\u0013\u0010<R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b=\u0010(\u001a\u0004\b\u0015\u0010>R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b?\u0010(\u001a\u0004\b@\u0010AR\u001e\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bB\u0010(\u001a\u0004\bC\u0010DR\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bE\u0010FR\u001e\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bG\u0010(\u001a\u0004\bH\u0010IR\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bJ\u0010(\u001a\u0004\bK\u0010LR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bM\u0010(\u001a\u0004\bN\u0010O¨\u0006y"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload;", "", "seen1", "", "endpoints", "Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;", "placements", "", "Lcom/vungle/ads/internal/model/Placement;", "config", "Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings;", "gdpr", "Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;", "loggingEnabled", "Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings;", "crashReport", "Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings;", "viewability", "Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings;", "isAdDownloadOptEnabled", "Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings;", "isReportIncentivizedEnabled", "Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings;", "disableAdId", "", "configExtension", "", "template", "Lcom/vungle/ads/internal/model/ConfigPayload$Template;", "logMetricsSettings", "Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;", "session", "Lcom/vungle/ads/internal/model/ConfigPayload$Session;", "cleverCache", "Lcom/vungle/ads/internal/model/CleverCache;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/vungle/ads/internal/model/ConfigPayload$Endpoints;Ljava/util/List;Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings;Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings;Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings;Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings;Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings;Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings;Ljava/lang/Boolean;Ljava/lang/String;Lcom/vungle/ads/internal/model/ConfigPayload$Template;Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;Lcom/vungle/ads/internal/model/ConfigPayload$Session;Lcom/vungle/ads/internal/model/CleverCache;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;Ljava/util/List;Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings;Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings;Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings;Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings;Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings;Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings;Ljava/lang/Boolean;Ljava/lang/String;Lcom/vungle/ads/internal/model/ConfigPayload$Template;Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;Lcom/vungle/ads/internal/model/ConfigPayload$Session;Lcom/vungle/ads/internal/model/CleverCache;)V", "getCleverCache$annotations", "()V", "getCleverCache", "()Lcom/vungle/ads/internal/model/CleverCache;", "getConfig", "()Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings;", "getConfigExtension$annotations", "getConfigExtension", "()Ljava/lang/String;", "getCrashReport$annotations", "getCrashReport", "()Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings;", "getDisableAdId$annotations", "getDisableAdId", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getEndpoints", "()Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;", "getGdpr", "()Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;", "isAdDownloadOptEnabled$annotations", "()Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings;", "isReportIncentivizedEnabled$annotations", "()Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings;", "getLogMetricsSettings$annotations", "getLogMetricsSettings", "()Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;", "getLoggingEnabled$annotations", "getLoggingEnabled", "()Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings;", "getPlacements", "()Ljava/util/List;", "getSession$annotations", "getSession", "()Lcom/vungle/ads/internal/model/ConfigPayload$Session;", "getTemplate$annotations", "getTemplate", "()Lcom/vungle/ads/internal/model/ConfigPayload$Template;", "getViewability$annotations", "getViewability", "()Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;Ljava/util/List;Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings;Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings;Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings;Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings;Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings;Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings;Ljava/lang/Boolean;Ljava/lang/String;Lcom/vungle/ads/internal/model/ConfigPayload$Template;Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;Lcom/vungle/ads/internal/model/ConfigPayload$Session;Lcom/vungle/ads/internal/model/CleverCache;)Lcom/vungle/ads/internal/model/ConfigPayload;", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "ConfigSettings", "CrashReportSettings", "Endpoints", "GDPRSettings", "LoadOptimizationSettings", "LogMetricsSettings", "LoggingSettings", "ReportIncentivizedSettings", "Session", "Template", "ViewabilitySettings", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
@Serializable
public final /* data */ class ConfigPayload {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final CleverCache cleverCache;
    private final ConfigSettings config;
    private final String configExtension;
    private final CrashReportSettings crashReport;
    private final Boolean disableAdId;
    private final Endpoints endpoints;
    private final GDPRSettings gdpr;
    private final LoadOptimizationSettings isAdDownloadOptEnabled;
    private final ReportIncentivizedSettings isReportIncentivizedEnabled;
    private final LogMetricsSettings logMetricsSettings;
    private final LoggingSettings loggingEnabled;
    private final List<Placement> placements;
    private final Session session;
    private final Template template;
    private final ViewabilitySettings viewability;

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001c\u001dB#\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J!\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bHÇ\u0001R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u001e"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings;", "", "seen1", "", "refreshTime", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(I)V", "getRefreshTime$annotations", "()V", "getRefreshTime", "()I", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class ConfigSettings {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final int refreshTime;

        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.ConfigSettings.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<ConfigSettings> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload.ConfigSettings", aVar, 1);
                pluginGeneratedSerialDescriptor.j("refresh_time", false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                return new KSerializer[]{IntSerializer.a};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public ConfigSettings deserialize(Decoder decoder) {
                int i;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor b = getB();
                CompositeDecoder compositeDecoderB = decoder.b(b);
                int i2 = 1;
                if (compositeDecoderB.p()) {
                    i = compositeDecoderB.i(b, 0);
                } else {
                    i = 0;
                    int i3 = 0;
                    while (i2 != 0) {
                        int iO = compositeDecoderB.o(b);
                        if (iO == -1) {
                            i2 = 0;
                        } else {
                            if (iO != 0) {
                                throw new UnknownFieldException(iO);
                            }
                            i = compositeDecoderB.i(b, 0);
                            i3 |= 1;
                        }
                    }
                    i2 = i3;
                }
                compositeDecoderB.c(b);
                return new ConfigSettings(i2, i, null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, ConfigSettings value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor b = getB();
                CompositeEncoder compositeEncoderB = encoder.b(b);
                ConfigSettings.write$Self(value, compositeEncoderB, b);
                compositeEncoderB.c(b);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.ConfigPayload$ConfigSettings$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<ConfigSettings> serializer() {
                return a.INSTANCE;
            }
        }

        public ConfigSettings(int i) {
            this.refreshTime = i;
        }

        public /* synthetic */ ConfigSettings(int i, int i2, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, a.INSTANCE.getB());
            }
            this.refreshTime = i2;
        }

        public static /* synthetic */ ConfigSettings copy$default(ConfigSettings configSettings, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = configSettings.refreshTime;
            }
            return configSettings.copy(i);
        }

        public static /* synthetic */ void getRefreshTime$annotations() {
        }

        public static final void write$Self(ConfigSettings self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.w(serialDesc, 0, self.refreshTime);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getRefreshTime() {
            return this.refreshTime;
        }

        public final ConfigSettings copy(int refreshTime) {
            return new ConfigSettings(refreshTime);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ConfigSettings) && this.refreshTime == ((ConfigSettings) other).refreshTime;
        }

        public final int getRefreshTime() {
            return this.refreshTime;
        }

        public int hashCode() {
            return this.refreshTime;
        }

        public String toString() {
            return "ConfigSettings(refreshTime=" + this.refreshTime + ')';
        }
    }

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0002%&B7\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB\u001f\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\bHÆ\u0003J'\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\bHÖ\u0001J!\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$HÇ\u0001R\u001c\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0015¨\u0006'"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings;", "", "seen1", "", b4.r, "", "maxSendAmount", "collectFilter", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(ZILjava/lang/String;)V", "getCollectFilter$annotations", "()V", "getCollectFilter", "()Ljava/lang/String;", "getEnabled", "()Z", "getMaxSendAmount$annotations", "getMaxSendAmount", "()I", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class CrashReportSettings {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String collectFilter;
        private final boolean enabled;
        private final int maxSendAmount;

        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.CrashReportSettings.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<CrashReportSettings> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload.CrashReportSettings", aVar, 3);
                pluginGeneratedSerialDescriptor.j(b4.r, true);
                pluginGeneratedSerialDescriptor.j("max_send_amount", false);
                pluginGeneratedSerialDescriptor.j("collect_filter", false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                return new KSerializer[]{BooleanSerializer.a, IntSerializer.a, StringSerializer.a};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public CrashReportSettings deserialize(Decoder decoder) {
                boolean z;
                String strM;
                int i;
                int i2;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor b = getB();
                CompositeDecoder compositeDecoderB = decoder.b(b);
                if (compositeDecoderB.p()) {
                    boolean zC = compositeDecoderB.C(b, 0);
                    int i3 = compositeDecoderB.i(b, 1);
                    z = zC;
                    strM = compositeDecoderB.m(b, 2);
                    i = i3;
                    i2 = 7;
                } else {
                    String strM2 = null;
                    boolean zC2 = false;
                    int i4 = 0;
                    int i5 = 0;
                    boolean z2 = true;
                    while (z2) {
                        int iO = compositeDecoderB.o(b);
                        if (iO == -1) {
                            z2 = false;
                        } else if (iO == 0) {
                            zC2 = compositeDecoderB.C(b, 0);
                            i5 |= 1;
                        } else if (iO == 1) {
                            i4 = compositeDecoderB.i(b, 1);
                            i5 |= 2;
                        } else {
                            if (iO != 2) {
                                throw new UnknownFieldException(iO);
                            }
                            strM2 = compositeDecoderB.m(b, 2);
                            i5 |= 4;
                        }
                    }
                    z = zC2;
                    strM = strM2;
                    i = i4;
                    i2 = i5;
                }
                compositeDecoderB.c(b);
                return new CrashReportSettings(i2, z, i, strM, (SerializationConstructorMarker) null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, CrashReportSettings value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor b = getB();
                CompositeEncoder compositeEncoderB = encoder.b(b);
                CrashReportSettings.write$Self(value, compositeEncoderB, b);
                compositeEncoderB.c(b);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.ConfigPayload$CrashReportSettings$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<CrashReportSettings> serializer() {
                return a.INSTANCE;
            }
        }

        public /* synthetic */ CrashReportSettings(int i, boolean z, int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (6 != (i & 6)) {
                PluginExceptionsKt.throwMissingFieldException(i, 6, a.INSTANCE.getB());
            }
            if ((i & 1) == 0) {
                this.enabled = false;
            } else {
                this.enabled = z;
            }
            this.maxSendAmount = i2;
            this.collectFilter = str;
        }

        public CrashReportSettings(boolean z, int i, String collectFilter) {
            Intrinsics.checkNotNullParameter(collectFilter, "collectFilter");
            this.enabled = z;
            this.maxSendAmount = i;
            this.collectFilter = collectFilter;
        }

        public /* synthetic */ CrashReportSettings(boolean z, int i, String str, int i2, n nVar) {
            this((i2 & 1) != 0 ? false : z, i, str);
        }

        public static /* synthetic */ CrashReportSettings copy$default(CrashReportSettings crashReportSettings, boolean z, int i, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                z = crashReportSettings.enabled;
            }
            if ((i2 & 2) != 0) {
                i = crashReportSettings.maxSendAmount;
            }
            if ((i2 & 4) != 0) {
                str = crashReportSettings.collectFilter;
            }
            return crashReportSettings.copy(z, i, str);
        }

        public static /* synthetic */ void getCollectFilter$annotations() {
        }

        public static /* synthetic */ void getMaxSendAmount$annotations() {
        }

        public static final void write$Self(CrashReportSettings self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.enabled) {
                output.x(serialDesc, 0, self.enabled);
            }
            output.w(serialDesc, 1, self.maxSendAmount);
            output.y(serialDesc, 2, self.collectFilter);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getEnabled() {
            return this.enabled;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getMaxSendAmount() {
            return this.maxSendAmount;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getCollectFilter() {
            return this.collectFilter;
        }

        public final CrashReportSettings copy(boolean enabled, int maxSendAmount, String collectFilter) {
            Intrinsics.checkNotNullParameter(collectFilter, "collectFilter");
            return new CrashReportSettings(enabled, maxSendAmount, collectFilter);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CrashReportSettings)) {
                return false;
            }
            CrashReportSettings crashReportSettings = (CrashReportSettings) other;
            return this.enabled == crashReportSettings.enabled && this.maxSendAmount == crashReportSettings.maxSendAmount && Intrinsics.areEqual(this.collectFilter, crashReportSettings.collectFilter);
        }

        public final String getCollectFilter() {
            return this.collectFilter;
        }

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final int getMaxSendAmount() {
            return this.maxSendAmount;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7 */
        public int hashCode() {
            boolean z = this.enabled;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            return (((r0 * 31) + this.maxSendAmount) * 31) + this.collectFilter.hashCode();
        }

        public String toString() {
            return "CrashReportSettings(enabled=" + this.enabled + ", maxSendAmount=" + this.maxSendAmount + ", collectFilter=" + this.collectFilter + ')';
        }
    }

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 -2\u00020\u0001:\u0002,-BU\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fBA\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\rJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003JE\u0010\u001f\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\t\u0010$\u001a\u00020\u0005HÖ\u0001J!\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+HÇ\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R\u001e\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u000f\u001a\u0004\b\u0017\u0010\u0011R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0018\u0010\u000f\u001a\u0004\b\u0019\u0010\u0011¨\u0006."}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;", "", "seen1", "", "adsEndpoint", "", "riEndpoint", "mraidEndpoint", "metricsEndpoint", "errorLogsEndpoint", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAdsEndpoint$annotations", "()V", "getAdsEndpoint", "()Ljava/lang/String;", "getErrorLogsEndpoint$annotations", "getErrorLogsEndpoint", "getMetricsEndpoint$annotations", "getMetricsEndpoint", "getMraidEndpoint$annotations", "getMraidEndpoint", "getRiEndpoint$annotations", "getRiEndpoint", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class Endpoints {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String adsEndpoint;
        private final String errorLogsEndpoint;
        private final String metricsEndpoint;
        private final String mraidEndpoint;
        private final String riEndpoint;

        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.Endpoints.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<Endpoints> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload.Endpoints", aVar, 5);
                pluginGeneratedSerialDescriptor.j(CampaignUnit.JSON_KEY_ADS, true);
                pluginGeneratedSerialDescriptor.j("ri", true);
                pluginGeneratedSerialDescriptor.j("mraid_js", true);
                pluginGeneratedSerialDescriptor.j("metrics", true);
                pluginGeneratedSerialDescriptor.j("error_logs", true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                StringSerializer stringSerializer = StringSerializer.a;
                return new KSerializer[]{BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer), BuiltinSerializersKt.getNullable(stringSerializer)};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public Endpoints deserialize(Decoder decoder) {
                Object objN;
                int i;
                Object objN2;
                Object objN3;
                Object objN4;
                Object objN5;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor b = getB();
                CompositeDecoder compositeDecoderB = decoder.b(b);
                Object objN6 = null;
                if (compositeDecoderB.p()) {
                    StringSerializer stringSerializer = StringSerializer.a;
                    objN2 = compositeDecoderB.n(b, 0, stringSerializer, null);
                    objN3 = compositeDecoderB.n(b, 1, stringSerializer, null);
                    Object objN7 = compositeDecoderB.n(b, 2, stringSerializer, null);
                    objN4 = compositeDecoderB.n(b, 3, stringSerializer, null);
                    objN5 = compositeDecoderB.n(b, 4, stringSerializer, null);
                    objN = objN7;
                    i = 31;
                } else {
                    Object objN8 = null;
                    objN = null;
                    Object objN9 = null;
                    Object objN10 = null;
                    int i2 = 0;
                    boolean z = true;
                    while (z) {
                        int iO = compositeDecoderB.o(b);
                        if (iO == -1) {
                            z = false;
                        } else if (iO == 0) {
                            objN6 = compositeDecoderB.n(b, 0, StringSerializer.a, objN6);
                            i2 |= 1;
                        } else if (iO == 1) {
                            objN8 = compositeDecoderB.n(b, 1, StringSerializer.a, objN8);
                            i2 |= 2;
                        } else if (iO == 2) {
                            objN = compositeDecoderB.n(b, 2, StringSerializer.a, objN);
                            i2 |= 4;
                        } else if (iO == 3) {
                            objN9 = compositeDecoderB.n(b, 3, StringSerializer.a, objN9);
                            i2 |= 8;
                        } else {
                            if (iO != 4) {
                                throw new UnknownFieldException(iO);
                            }
                            objN10 = compositeDecoderB.n(b, 4, StringSerializer.a, objN10);
                            i2 |= 16;
                        }
                    }
                    i = i2;
                    objN2 = objN6;
                    objN3 = objN8;
                    objN4 = objN9;
                    objN5 = objN10;
                }
                compositeDecoderB.c(b);
                return new Endpoints(i, (String) objN2, (String) objN3, (String) objN, (String) objN4, (String) objN5, (SerializationConstructorMarker) null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, Endpoints value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor b = getB();
                CompositeEncoder compositeEncoderB = encoder.b(b);
                Endpoints.write$Self(value, compositeEncoderB, b);
                compositeEncoderB.c(b);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.ConfigPayload$Endpoints$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<Endpoints> serializer() {
                return a.INSTANCE;
            }
        }

        public Endpoints() {
            this((String) null, (String) null, (String) null, (String) null, (String) null, 31, (n) null);
        }

        public /* synthetic */ Endpoints(int i, String str, String str2, String str3, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 0) != 0) {
                PluginExceptionsKt.throwMissingFieldException(i, 0, a.INSTANCE.getB());
            }
            if ((i & 1) == 0) {
                this.adsEndpoint = null;
            } else {
                this.adsEndpoint = str;
            }
            if ((i & 2) == 0) {
                this.riEndpoint = null;
            } else {
                this.riEndpoint = str2;
            }
            if ((i & 4) == 0) {
                this.mraidEndpoint = null;
            } else {
                this.mraidEndpoint = str3;
            }
            if ((i & 8) == 0) {
                this.metricsEndpoint = null;
            } else {
                this.metricsEndpoint = str4;
            }
            if ((i & 16) == 0) {
                this.errorLogsEndpoint = null;
            } else {
                this.errorLogsEndpoint = str5;
            }
        }

        public Endpoints(String str, String str2, String str3, String str4, String str5) {
            this.adsEndpoint = str;
            this.riEndpoint = str2;
            this.mraidEndpoint = str3;
            this.metricsEndpoint = str4;
            this.errorLogsEndpoint = str5;
        }

        public /* synthetic */ Endpoints(String str, String str2, String str3, String str4, String str5, int i, n nVar) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5);
        }

        public static /* synthetic */ Endpoints copy$default(Endpoints endpoints, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
            if ((i & 1) != 0) {
                str = endpoints.adsEndpoint;
            }
            if ((i & 2) != 0) {
                str2 = endpoints.riEndpoint;
            }
            String str6 = str2;
            if ((i & 4) != 0) {
                str3 = endpoints.mraidEndpoint;
            }
            String str7 = str3;
            if ((i & 8) != 0) {
                str4 = endpoints.metricsEndpoint;
            }
            String str8 = str4;
            if ((i & 16) != 0) {
                str5 = endpoints.errorLogsEndpoint;
            }
            return endpoints.copy(str, str6, str7, str8, str5);
        }

        public static /* synthetic */ void getAdsEndpoint$annotations() {
        }

        public static /* synthetic */ void getErrorLogsEndpoint$annotations() {
        }

        public static /* synthetic */ void getMetricsEndpoint$annotations() {
        }

        public static /* synthetic */ void getMraidEndpoint$annotations() {
        }

        public static /* synthetic */ void getRiEndpoint$annotations() {
        }

        public static final void write$Self(Endpoints self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.z(serialDesc, 0) || self.adsEndpoint != null) {
                output.i(serialDesc, 0, StringSerializer.a, self.adsEndpoint);
            }
            if (output.z(serialDesc, 1) || self.riEndpoint != null) {
                output.i(serialDesc, 1, StringSerializer.a, self.riEndpoint);
            }
            if (output.z(serialDesc, 2) || self.mraidEndpoint != null) {
                output.i(serialDesc, 2, StringSerializer.a, self.mraidEndpoint);
            }
            if (output.z(serialDesc, 3) || self.metricsEndpoint != null) {
                output.i(serialDesc, 3, StringSerializer.a, self.metricsEndpoint);
            }
            if (output.z(serialDesc, 4) || self.errorLogsEndpoint != null) {
                output.i(serialDesc, 4, StringSerializer.a, self.errorLogsEndpoint);
            }
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getAdsEndpoint() {
            return this.adsEndpoint;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getRiEndpoint() {
            return this.riEndpoint;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getMraidEndpoint() {
            return this.mraidEndpoint;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getMetricsEndpoint() {
            return this.metricsEndpoint;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getErrorLogsEndpoint() {
            return this.errorLogsEndpoint;
        }

        public final Endpoints copy(String adsEndpoint, String riEndpoint, String mraidEndpoint, String metricsEndpoint, String errorLogsEndpoint) {
            return new Endpoints(adsEndpoint, riEndpoint, mraidEndpoint, metricsEndpoint, errorLogsEndpoint);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Endpoints)) {
                return false;
            }
            Endpoints endpoints = (Endpoints) other;
            return Intrinsics.areEqual(this.adsEndpoint, endpoints.adsEndpoint) && Intrinsics.areEqual(this.riEndpoint, endpoints.riEndpoint) && Intrinsics.areEqual(this.mraidEndpoint, endpoints.mraidEndpoint) && Intrinsics.areEqual(this.metricsEndpoint, endpoints.metricsEndpoint) && Intrinsics.areEqual(this.errorLogsEndpoint, endpoints.errorLogsEndpoint);
        }

        public final String getAdsEndpoint() {
            return this.adsEndpoint;
        }

        public final String getErrorLogsEndpoint() {
            return this.errorLogsEndpoint;
        }

        public final String getMetricsEndpoint() {
            return this.metricsEndpoint;
        }

        public final String getMraidEndpoint() {
            return this.mraidEndpoint;
        }

        public final String getRiEndpoint() {
            return this.riEndpoint;
        }

        public int hashCode() {
            String str = this.adsEndpoint;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.riEndpoint;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.mraidEndpoint;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.metricsEndpoint;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.errorLogsEndpoint;
            return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
        }

        public String toString() {
            return "Endpoints(adsEndpoint=" + this.adsEndpoint + ", riEndpoint=" + this.riEndpoint + ", mraidEndpoint=" + this.mraidEndpoint + ", metricsEndpoint=" + this.metricsEndpoint + ", errorLogsEndpoint=" + this.errorLogsEndpoint + ')';
        }
    }

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 12\u00020\u0001:\u000201B_\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eB5\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0002\u0010\u000fJ\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0007HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J\t\u0010!\u001a\u00020\u0007HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\t\u0010#\u001a\u00020\u0007HÆ\u0003JE\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010%\u001a\u00020\u00052\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020\u0007HÖ\u0001J!\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/HÇ\u0001R\u001c\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u000b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u001c\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013R\u001c\u0010\t\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0019\u0010\u0013R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001a\u0010\u0011\u001a\u0004\b\u001b\u0010\u0013R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0011\u001a\u0004\b\u0004\u0010\u001d¨\u00062"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;", "", "seen1", "", "isCountryDataProtected", "", "consentTitle", "", "consentMessage", "consentMessageVersion", "buttonAccept", "buttonDeny", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getButtonAccept$annotations", "()V", "getButtonAccept", "()Ljava/lang/String;", "getButtonDeny$annotations", "getButtonDeny", "getConsentMessage$annotations", "getConsentMessage", "getConsentMessageVersion$annotations", "getConsentMessageVersion", "getConsentTitle$annotations", "getConsentTitle", "isCountryDataProtected$annotations", "()Z", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class GDPRSettings {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String buttonAccept;
        private final String buttonDeny;
        private final String consentMessage;
        private final String consentMessageVersion;
        private final String consentTitle;
        private final boolean isCountryDataProtected;

        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.GDPRSettings.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<GDPRSettings> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload.GDPRSettings", aVar, 6);
                pluginGeneratedSerialDescriptor.j("is_country_data_protected", false);
                pluginGeneratedSerialDescriptor.j("consent_title", false);
                pluginGeneratedSerialDescriptor.j("consent_message", false);
                pluginGeneratedSerialDescriptor.j("consent_message_version", false);
                pluginGeneratedSerialDescriptor.j("button_accept", false);
                pluginGeneratedSerialDescriptor.j("button_deny", false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                StringSerializer stringSerializer = StringSerializer.a;
                return new KSerializer[]{BooleanSerializer.a, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public GDPRSettings deserialize(Decoder decoder) {
                String strM;
                String str;
                boolean z;
                String str2;
                int i;
                String str3;
                String str4;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor b = getB();
                CompositeDecoder compositeDecoderB = decoder.b(b);
                if (compositeDecoderB.p()) {
                    boolean zC = compositeDecoderB.C(b, 0);
                    String strM2 = compositeDecoderB.m(b, 1);
                    String strM3 = compositeDecoderB.m(b, 2);
                    String strM4 = compositeDecoderB.m(b, 3);
                    String strM5 = compositeDecoderB.m(b, 4);
                    z = zC;
                    strM = compositeDecoderB.m(b, 5);
                    str2 = strM4;
                    str = strM5;
                    str3 = strM3;
                    str4 = strM2;
                    i = 63;
                } else {
                    String strM6 = null;
                    String strM7 = null;
                    String strM8 = null;
                    String strM9 = null;
                    String strM10 = null;
                    boolean zC2 = false;
                    int i2 = 0;
                    boolean z2 = true;
                    while (z2) {
                        int iO = compositeDecoderB.o(b);
                        switch (iO) {
                            case -1:
                                z2 = false;
                                continue;
                            case 0:
                                zC2 = compositeDecoderB.C(b, 0);
                                i2 |= 1;
                                continue;
                            case 1:
                                strM10 = compositeDecoderB.m(b, 1);
                                i2 |= 2;
                                break;
                            case 2:
                                strM9 = compositeDecoderB.m(b, 2);
                                i2 |= 4;
                                break;
                            case 3:
                                strM7 = compositeDecoderB.m(b, 3);
                                i2 |= 8;
                                break;
                            case 4:
                                strM8 = compositeDecoderB.m(b, 4);
                                i2 |= 16;
                                break;
                            case 5:
                                strM6 = compositeDecoderB.m(b, 5);
                                i2 |= 32;
                                break;
                            default:
                                throw new UnknownFieldException(iO);
                        }
                    }
                    strM = strM6;
                    str = strM8;
                    z = zC2;
                    int i3 = i2;
                    str2 = strM7;
                    i = i3;
                    String str5 = strM10;
                    str3 = strM9;
                    str4 = str5;
                }
                compositeDecoderB.c(b);
                return new GDPRSettings(i, z, str4, str3, str2, str, strM, null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, GDPRSettings value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor b = getB();
                CompositeEncoder compositeEncoderB = encoder.b(b);
                GDPRSettings.write$Self(value, compositeEncoderB, b);
                compositeEncoderB.c(b);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.ConfigPayload$GDPRSettings$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<GDPRSettings> serializer() {
                return a.INSTANCE;
            }
        }

        public /* synthetic */ GDPRSettings(int i, boolean z, String str, String str2, String str3, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
            if (63 != (i & 63)) {
                PluginExceptionsKt.throwMissingFieldException(i, 63, a.INSTANCE.getB());
            }
            this.isCountryDataProtected = z;
            this.consentTitle = str;
            this.consentMessage = str2;
            this.consentMessageVersion = str3;
            this.buttonAccept = str4;
            this.buttonDeny = str5;
        }

        public GDPRSettings(boolean z, String consentTitle, String consentMessage, String consentMessageVersion, String buttonAccept, String buttonDeny) {
            Intrinsics.checkNotNullParameter(consentTitle, "consentTitle");
            Intrinsics.checkNotNullParameter(consentMessage, "consentMessage");
            Intrinsics.checkNotNullParameter(consentMessageVersion, "consentMessageVersion");
            Intrinsics.checkNotNullParameter(buttonAccept, "buttonAccept");
            Intrinsics.checkNotNullParameter(buttonDeny, "buttonDeny");
            this.isCountryDataProtected = z;
            this.consentTitle = consentTitle;
            this.consentMessage = consentMessage;
            this.consentMessageVersion = consentMessageVersion;
            this.buttonAccept = buttonAccept;
            this.buttonDeny = buttonDeny;
        }

        public static /* synthetic */ GDPRSettings copy$default(GDPRSettings gDPRSettings, boolean z, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
            if ((i & 1) != 0) {
                z = gDPRSettings.isCountryDataProtected;
            }
            if ((i & 2) != 0) {
                str = gDPRSettings.consentTitle;
            }
            String str6 = str;
            if ((i & 4) != 0) {
                str2 = gDPRSettings.consentMessage;
            }
            String str7 = str2;
            if ((i & 8) != 0) {
                str3 = gDPRSettings.consentMessageVersion;
            }
            String str8 = str3;
            if ((i & 16) != 0) {
                str4 = gDPRSettings.buttonAccept;
            }
            String str9 = str4;
            if ((i & 32) != 0) {
                str5 = gDPRSettings.buttonDeny;
            }
            return gDPRSettings.copy(z, str6, str7, str8, str9, str5);
        }

        public static /* synthetic */ void getButtonAccept$annotations() {
        }

        public static /* synthetic */ void getButtonDeny$annotations() {
        }

        public static /* synthetic */ void getConsentMessage$annotations() {
        }

        public static /* synthetic */ void getConsentMessageVersion$annotations() {
        }

        public static /* synthetic */ void getConsentTitle$annotations() {
        }

        public static /* synthetic */ void isCountryDataProtected$annotations() {
        }

        public static final void write$Self(GDPRSettings self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.x(serialDesc, 0, self.isCountryDataProtected);
            output.y(serialDesc, 1, self.consentTitle);
            output.y(serialDesc, 2, self.consentMessage);
            output.y(serialDesc, 3, self.consentMessageVersion);
            output.y(serialDesc, 4, self.buttonAccept);
            output.y(serialDesc, 5, self.buttonDeny);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsCountryDataProtected() {
            return this.isCountryDataProtected;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getConsentTitle() {
            return this.consentTitle;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getConsentMessage() {
            return this.consentMessage;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getConsentMessageVersion() {
            return this.consentMessageVersion;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getButtonAccept() {
            return this.buttonAccept;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getButtonDeny() {
            return this.buttonDeny;
        }

        public final GDPRSettings copy(boolean isCountryDataProtected, String consentTitle, String consentMessage, String consentMessageVersion, String buttonAccept, String buttonDeny) {
            Intrinsics.checkNotNullParameter(consentTitle, "consentTitle");
            Intrinsics.checkNotNullParameter(consentMessage, "consentMessage");
            Intrinsics.checkNotNullParameter(consentMessageVersion, "consentMessageVersion");
            Intrinsics.checkNotNullParameter(buttonAccept, "buttonAccept");
            Intrinsics.checkNotNullParameter(buttonDeny, "buttonDeny");
            return new GDPRSettings(isCountryDataProtected, consentTitle, consentMessage, consentMessageVersion, buttonAccept, buttonDeny);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof GDPRSettings)) {
                return false;
            }
            GDPRSettings gDPRSettings = (GDPRSettings) other;
            return this.isCountryDataProtected == gDPRSettings.isCountryDataProtected && Intrinsics.areEqual(this.consentTitle, gDPRSettings.consentTitle) && Intrinsics.areEqual(this.consentMessage, gDPRSettings.consentMessage) && Intrinsics.areEqual(this.consentMessageVersion, gDPRSettings.consentMessageVersion) && Intrinsics.areEqual(this.buttonAccept, gDPRSettings.buttonAccept) && Intrinsics.areEqual(this.buttonDeny, gDPRSettings.buttonDeny);
        }

        public final String getButtonAccept() {
            return this.buttonAccept;
        }

        public final String getButtonDeny() {
            return this.buttonDeny;
        }

        public final String getConsentMessage() {
            return this.consentMessage;
        }

        public final String getConsentMessageVersion() {
            return this.consentMessageVersion;
        }

        public final String getConsentTitle() {
            return this.consentTitle;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v12 */
        /* JADX WARN: Type inference failed for: r0v13 */
        public int hashCode() {
            boolean z = this.isCountryDataProtected;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            return (((((((((r0 * 31) + this.consentTitle.hashCode()) * 31) + this.consentMessage.hashCode()) * 31) + this.consentMessageVersion.hashCode()) * 31) + this.buttonAccept.hashCode()) * 31) + this.buttonDeny.hashCode();
        }

        public final boolean isCountryDataProtected() {
            return this.isCountryDataProtected;
        }

        public String toString() {
            return "GDPRSettings(isCountryDataProtected=" + this.isCountryDataProtected + ", consentTitle=" + this.consentTitle + ", consentMessage=" + this.consentMessage + ", consentMessageVersion=" + this.consentMessageVersion + ", buttonAccept=" + this.buttonAccept + ", buttonDeny=" + this.buttonDeny + ')';
        }
    }

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB!\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J!\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019HÇ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings;", "", "seen1", "", b4.r, "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Z)V", "getEnabled", "()Z", "component1", "copy", "equals", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class LoadOptimizationSettings {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final boolean enabled;

        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.LoadOptimizationSettings.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<LoadOptimizationSettings> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload.LoadOptimizationSettings", aVar, 1);
                pluginGeneratedSerialDescriptor.j(b4.r, false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                return new KSerializer[]{BooleanSerializer.a};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public LoadOptimizationSettings deserialize(Decoder decoder) {
                boolean zC;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor b = getB();
                CompositeDecoder compositeDecoderB = decoder.b(b);
                int i = 1;
                if (compositeDecoderB.p()) {
                    zC = compositeDecoderB.C(b, 0);
                } else {
                    zC = false;
                    int i2 = 0;
                    while (i != 0) {
                        int iO = compositeDecoderB.o(b);
                        if (iO == -1) {
                            i = 0;
                        } else {
                            if (iO != 0) {
                                throw new UnknownFieldException(iO);
                            }
                            zC = compositeDecoderB.C(b, 0);
                            i2 |= 1;
                        }
                    }
                    i = i2;
                }
                compositeDecoderB.c(b);
                return new LoadOptimizationSettings(i, zC, null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, LoadOptimizationSettings value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor b = getB();
                CompositeEncoder compositeEncoderB = encoder.b(b);
                LoadOptimizationSettings.write$Self(value, compositeEncoderB, b);
                compositeEncoderB.c(b);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.ConfigPayload$LoadOptimizationSettings$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<LoadOptimizationSettings> serializer() {
                return a.INSTANCE;
            }
        }

        public /* synthetic */ LoadOptimizationSettings(int i, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, a.INSTANCE.getB());
            }
            this.enabled = z;
        }

        public LoadOptimizationSettings(boolean z) {
            this.enabled = z;
        }

        public static /* synthetic */ LoadOptimizationSettings copy$default(LoadOptimizationSettings loadOptimizationSettings, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = loadOptimizationSettings.enabled;
            }
            return loadOptimizationSettings.copy(z);
        }

        public static final void write$Self(LoadOptimizationSettings self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.x(serialDesc, 0, self.enabled);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getEnabled() {
            return this.enabled;
        }

        public final LoadOptimizationSettings copy(boolean enabled) {
            return new LoadOptimizationSettings(enabled);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof LoadOptimizationSettings) && this.enabled == ((LoadOptimizationSettings) other).enabled;
        }

        public final boolean getEnabled() {
            return this.enabled;
        }

        public int hashCode() {
            boolean z = this.enabled;
            if (z) {
                return 1;
            }
            return z ? 1 : 0;
        }

        public String toString() {
            return "LoadOptimizationSettings(enabled=" + this.enabled + ')';
        }
    }

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \"2\u00020\u0001:\u0002!\"B-\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tB\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J\u001d\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J!\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 HÇ\u0001R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u0011¨\u0006#"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;", "", "seen1", "", "errorLogLevel", "metricsEnabled", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IIZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(IZ)V", "getErrorLogLevel$annotations", "()V", "getErrorLogLevel", "()I", "getMetricsEnabled$annotations", "getMetricsEnabled", "()Z", "component1", "component2", "copy", "equals", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class LogMetricsSettings {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final int errorLogLevel;
        private final boolean metricsEnabled;

        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.LogMetricsSettings.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<LogMetricsSettings> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload.LogMetricsSettings", aVar, 2);
                pluginGeneratedSerialDescriptor.j("error_log_level", false);
                pluginGeneratedSerialDescriptor.j("metrics_is_enabled", false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                return new KSerializer[]{IntSerializer.a, BooleanSerializer.a};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public LogMetricsSettings deserialize(Decoder decoder) {
                int i;
                boolean zC;
                int i2;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor b = getB();
                CompositeDecoder compositeDecoderB = decoder.b(b);
                if (compositeDecoderB.p()) {
                    i = compositeDecoderB.i(b, 0);
                    zC = compositeDecoderB.C(b, 1);
                    i2 = 3;
                } else {
                    i = 0;
                    boolean zC2 = false;
                    int i3 = 0;
                    boolean z = true;
                    while (z) {
                        int iO = compositeDecoderB.o(b);
                        if (iO == -1) {
                            z = false;
                        } else if (iO == 0) {
                            i = compositeDecoderB.i(b, 0);
                            i3 |= 1;
                        } else {
                            if (iO != 1) {
                                throw new UnknownFieldException(iO);
                            }
                            zC2 = compositeDecoderB.C(b, 1);
                            i3 |= 2;
                        }
                    }
                    zC = zC2;
                    i2 = i3;
                }
                compositeDecoderB.c(b);
                return new LogMetricsSettings(i2, i, zC, null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, LogMetricsSettings value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor b = getB();
                CompositeEncoder compositeEncoderB = encoder.b(b);
                LogMetricsSettings.write$Self(value, compositeEncoderB, b);
                compositeEncoderB.c(b);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.ConfigPayload$LogMetricsSettings$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<LogMetricsSettings> serializer() {
                return a.INSTANCE;
            }
        }

        public /* synthetic */ LogMetricsSettings(int i, int i2, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, a.INSTANCE.getB());
            }
            this.errorLogLevel = i2;
            this.metricsEnabled = z;
        }

        public LogMetricsSettings(int i, boolean z) {
            this.errorLogLevel = i;
            this.metricsEnabled = z;
        }

        public static /* synthetic */ LogMetricsSettings copy$default(LogMetricsSettings logMetricsSettings, int i, boolean z, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = logMetricsSettings.errorLogLevel;
            }
            if ((i2 & 2) != 0) {
                z = logMetricsSettings.metricsEnabled;
            }
            return logMetricsSettings.copy(i, z);
        }

        public static /* synthetic */ void getErrorLogLevel$annotations() {
        }

        public static /* synthetic */ void getMetricsEnabled$annotations() {
        }

        public static final void write$Self(LogMetricsSettings self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.w(serialDesc, 0, self.errorLogLevel);
            output.x(serialDesc, 1, self.metricsEnabled);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getErrorLogLevel() {
            return this.errorLogLevel;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getMetricsEnabled() {
            return this.metricsEnabled;
        }

        public final LogMetricsSettings copy(int errorLogLevel, boolean metricsEnabled) {
            return new LogMetricsSettings(errorLogLevel, metricsEnabled);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof LogMetricsSettings)) {
                return false;
            }
            LogMetricsSettings logMetricsSettings = (LogMetricsSettings) other;
            return this.errorLogLevel == logMetricsSettings.errorLogLevel && this.metricsEnabled == logMetricsSettings.metricsEnabled;
        }

        public final int getErrorLogLevel() {
            return this.errorLogLevel;
        }

        public final boolean getMetricsEnabled() {
            return this.metricsEnabled;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v2 */
        /* JADX WARN: Type inference failed for: r1v3 */
        public int hashCode() {
            int i = this.errorLogLevel * 31;
            boolean z = this.metricsEnabled;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return i + r1;
        }

        public String toString() {
            return "LogMetricsSettings(errorLogLevel=" + this.errorLogLevel + ", metricsEnabled=" + this.metricsEnabled + ')';
        }
    }

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB!\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\u000f\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J!\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019HÇ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings;", "", "seen1", "", b4.r, "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Z)V", "getEnabled", "()Z", "component1", "copy", "equals", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class LoggingSettings {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final boolean enabled;

        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.LoggingSettings.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<LoggingSettings> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload.LoggingSettings", aVar, 1);
                pluginGeneratedSerialDescriptor.j(b4.r, true);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                return new KSerializer[]{BooleanSerializer.a};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public LoggingSettings deserialize(Decoder decoder) {
                boolean zC;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor b = getB();
                CompositeDecoder compositeDecoderB = decoder.b(b);
                int i = 1;
                if (compositeDecoderB.p()) {
                    zC = compositeDecoderB.C(b, 0);
                } else {
                    zC = false;
                    int i2 = 0;
                    while (i != 0) {
                        int iO = compositeDecoderB.o(b);
                        if (iO == -1) {
                            i = 0;
                        } else {
                            if (iO != 0) {
                                throw new UnknownFieldException(iO);
                            }
                            zC = compositeDecoderB.C(b, 0);
                            i2 |= 1;
                        }
                    }
                    i = i2;
                }
                compositeDecoderB.c(b);
                return new LoggingSettings(i, zC, (SerializationConstructorMarker) null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, LoggingSettings value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor b = getB();
                CompositeEncoder compositeEncoderB = encoder.b(b);
                LoggingSettings.write$Self(value, compositeEncoderB, b);
                compositeEncoderB.c(b);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.ConfigPayload$LoggingSettings$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<LoggingSettings> serializer() {
                return a.INSTANCE;
            }
        }

        public LoggingSettings() {
            this(false, 1, (n) null);
        }

        public /* synthetic */ LoggingSettings(int i, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 0) != 0) {
                PluginExceptionsKt.throwMissingFieldException(i, 0, a.INSTANCE.getB());
            }
            if ((i & 1) == 0) {
                this.enabled = false;
            } else {
                this.enabled = z;
            }
        }

        public LoggingSettings(boolean z) {
            this.enabled = z;
        }

        public /* synthetic */ LoggingSettings(boolean z, int i, n nVar) {
            this((i & 1) != 0 ? false : z);
        }

        public static /* synthetic */ LoggingSettings copy$default(LoggingSettings loggingSettings, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = loggingSettings.enabled;
            }
            return loggingSettings.copy(z);
        }

        public static final void write$Self(LoggingSettings self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            boolean z = true;
            if (!output.z(serialDesc, 0) && !self.enabled) {
                z = false;
            }
            if (z) {
                output.x(serialDesc, 0, self.enabled);
            }
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getEnabled() {
            return this.enabled;
        }

        public final LoggingSettings copy(boolean enabled) {
            return new LoggingSettings(enabled);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof LoggingSettings) && this.enabled == ((LoggingSettings) other).enabled;
        }

        public final boolean getEnabled() {
            return this.enabled;
        }

        public int hashCode() {
            boolean z = this.enabled;
            if (z) {
                return 1;
            }
            return z ? 1 : 0;
        }

        public String toString() {
            return "LoggingSettings(enabled=" + this.enabled + ')';
        }
    }

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB!\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J!\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019HÇ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings;", "", "seen1", "", b4.r, "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Z)V", "getEnabled", "()Z", "component1", "copy", "equals", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class ReportIncentivizedSettings {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final boolean enabled;

        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.ReportIncentivizedSettings.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<ReportIncentivizedSettings> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload.ReportIncentivizedSettings", aVar, 1);
                pluginGeneratedSerialDescriptor.j(b4.r, false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                return new KSerializer[]{BooleanSerializer.a};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public ReportIncentivizedSettings deserialize(Decoder decoder) {
                boolean zC;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor b = getB();
                CompositeDecoder compositeDecoderB = decoder.b(b);
                int i = 1;
                if (compositeDecoderB.p()) {
                    zC = compositeDecoderB.C(b, 0);
                } else {
                    zC = false;
                    int i2 = 0;
                    while (i != 0) {
                        int iO = compositeDecoderB.o(b);
                        if (iO == -1) {
                            i = 0;
                        } else {
                            if (iO != 0) {
                                throw new UnknownFieldException(iO);
                            }
                            zC = compositeDecoderB.C(b, 0);
                            i2 |= 1;
                        }
                    }
                    i = i2;
                }
                compositeDecoderB.c(b);
                return new ReportIncentivizedSettings(i, zC, null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, ReportIncentivizedSettings value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor b = getB();
                CompositeEncoder compositeEncoderB = encoder.b(b);
                ReportIncentivizedSettings.write$Self(value, compositeEncoderB, b);
                compositeEncoderB.c(b);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.ConfigPayload$ReportIncentivizedSettings$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<ReportIncentivizedSettings> serializer() {
                return a.INSTANCE;
            }
        }

        public /* synthetic */ ReportIncentivizedSettings(int i, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, a.INSTANCE.getB());
            }
            this.enabled = z;
        }

        public ReportIncentivizedSettings(boolean z) {
            this.enabled = z;
        }

        public static /* synthetic */ ReportIncentivizedSettings copy$default(ReportIncentivizedSettings reportIncentivizedSettings, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = reportIncentivizedSettings.enabled;
            }
            return reportIncentivizedSettings.copy(z);
        }

        public static final void write$Self(ReportIncentivizedSettings self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.x(serialDesc, 0, self.enabled);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getEnabled() {
            return this.enabled;
        }

        public final ReportIncentivizedSettings copy(boolean enabled) {
            return new ReportIncentivizedSettings(enabled);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ReportIncentivizedSettings) && this.enabled == ((ReportIncentivizedSettings) other).enabled;
        }

        public final boolean getEnabled() {
            return this.enabled;
        }

        public int hashCode() {
            boolean z = this.enabled;
            if (z) {
                return 1;
            }
            return z ? 1 : 0;
        }

        public String toString() {
            return "ReportIncentivizedSettings(enabled=" + this.enabled + ')';
        }
    }

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0002%&B7\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J'\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J!\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$HÇ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\r\u001a\u0004\b\u0014\u0010\u0012¨\u0006'"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$Session;", "", "seen1", "", b4.r, "", "limit", "timeout", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZIILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(ZII)V", "getEnabled$annotations", "()V", "getEnabled", "()Z", "getLimit$annotations", "getLimit", "()I", "getTimeout$annotations", "getTimeout", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class Session {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final boolean enabled;
        private final int limit;
        private final int timeout;

        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.Session.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$Session;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<Session> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload.Session", aVar, 3);
                pluginGeneratedSerialDescriptor.j(b4.r, false);
                pluginGeneratedSerialDescriptor.j("limit", false);
                pluginGeneratedSerialDescriptor.j("timeout", false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                IntSerializer intSerializer = IntSerializer.a;
                return new KSerializer[]{BooleanSerializer.a, intSerializer, intSerializer};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public Session deserialize(Decoder decoder) {
                boolean z;
                int i;
                int i2;
                int i3;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor b = getB();
                CompositeDecoder compositeDecoderB = decoder.b(b);
                if (compositeDecoderB.p()) {
                    boolean zC = compositeDecoderB.C(b, 0);
                    int i4 = compositeDecoderB.i(b, 1);
                    z = zC;
                    i = compositeDecoderB.i(b, 2);
                    i2 = i4;
                    i3 = 7;
                } else {
                    boolean zC2 = false;
                    int i5 = 0;
                    int i6 = 0;
                    int i7 = 0;
                    boolean z2 = true;
                    while (z2) {
                        int iO = compositeDecoderB.o(b);
                        if (iO == -1) {
                            z2 = false;
                        } else if (iO == 0) {
                            zC2 = compositeDecoderB.C(b, 0);
                            i7 |= 1;
                        } else if (iO == 1) {
                            i6 = compositeDecoderB.i(b, 1);
                            i7 |= 2;
                        } else {
                            if (iO != 2) {
                                throw new UnknownFieldException(iO);
                            }
                            i5 = compositeDecoderB.i(b, 2);
                            i7 |= 4;
                        }
                    }
                    z = zC2;
                    i = i5;
                    i2 = i6;
                    i3 = i7;
                }
                compositeDecoderB.c(b);
                return new Session(i3, z, i2, i, null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, Session value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor b = getB();
                CompositeEncoder compositeEncoderB = encoder.b(b);
                Session.write$Self(value, compositeEncoderB, b);
                compositeEncoderB.c(b);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.ConfigPayload$Session$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$Session$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$Session;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<Session> serializer() {
                return a.INSTANCE;
            }
        }

        public /* synthetic */ Session(int i, boolean z, int i2, int i3, SerializationConstructorMarker serializationConstructorMarker) {
            if (7 != (i & 7)) {
                PluginExceptionsKt.throwMissingFieldException(i, 7, a.INSTANCE.getB());
            }
            this.enabled = z;
            this.limit = i2;
            this.timeout = i3;
        }

        public Session(boolean z, int i, int i2) {
            this.enabled = z;
            this.limit = i;
            this.timeout = i2;
        }

        public static /* synthetic */ Session copy$default(Session session, boolean z, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                z = session.enabled;
            }
            if ((i3 & 2) != 0) {
                i = session.limit;
            }
            if ((i3 & 4) != 0) {
                i2 = session.timeout;
            }
            return session.copy(z, i, i2);
        }

        public static /* synthetic */ void getEnabled$annotations() {
        }

        public static /* synthetic */ void getLimit$annotations() {
        }

        public static /* synthetic */ void getTimeout$annotations() {
        }

        public static final void write$Self(Session self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.x(serialDesc, 0, self.enabled);
            output.w(serialDesc, 1, self.limit);
            output.w(serialDesc, 2, self.timeout);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getEnabled() {
            return this.enabled;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getLimit() {
            return this.limit;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getTimeout() {
            return this.timeout;
        }

        public final Session copy(boolean enabled, int limit, int timeout) {
            return new Session(enabled, limit, timeout);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Session)) {
                return false;
            }
            Session session = (Session) other;
            return this.enabled == session.enabled && this.limit == session.limit && this.timeout == session.timeout;
        }

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final int getLimit() {
            return this.limit;
        }

        public final int getTimeout() {
            return this.timeout;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7 */
        public int hashCode() {
            boolean z = this.enabled;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            return (((r0 * 31) + this.limit) * 31) + this.timeout;
        }

        public String toString() {
            return "Session(enabled=" + this.enabled + ", limit=" + this.limit + ", timeout=" + this.timeout + ')';
        }
    }

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001c\u001dB#\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J!\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bHÇ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u001e"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$Template;", "", "seen1", "", "heartbeatEnabled", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Z)V", "getHeartbeatEnabled$annotations", "()V", "getHeartbeatEnabled", "()Z", "component1", "copy", "equals", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class Template {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final boolean heartbeatEnabled;

        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.Template.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$Template;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<Template> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload.Template", aVar, 1);
                pluginGeneratedSerialDescriptor.j("heartbeat_check_enabled", false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                return new KSerializer[]{BooleanSerializer.a};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public Template deserialize(Decoder decoder) {
                boolean zC;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor b = getB();
                CompositeDecoder compositeDecoderB = decoder.b(b);
                int i = 1;
                if (compositeDecoderB.p()) {
                    zC = compositeDecoderB.C(b, 0);
                } else {
                    zC = false;
                    int i2 = 0;
                    while (i != 0) {
                        int iO = compositeDecoderB.o(b);
                        if (iO == -1) {
                            i = 0;
                        } else {
                            if (iO != 0) {
                                throw new UnknownFieldException(iO);
                            }
                            zC = compositeDecoderB.C(b, 0);
                            i2 |= 1;
                        }
                    }
                    i = i2;
                }
                compositeDecoderB.c(b);
                return new Template(i, zC, null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, Template value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor b = getB();
                CompositeEncoder compositeEncoderB = encoder.b(b);
                Template.write$Self(value, compositeEncoderB, b);
                compositeEncoderB.c(b);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.ConfigPayload$Template$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$Template$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$Template;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<Template> serializer() {
                return a.INSTANCE;
            }
        }

        public /* synthetic */ Template(int i, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, a.INSTANCE.getB());
            }
            this.heartbeatEnabled = z;
        }

        public Template(boolean z) {
            this.heartbeatEnabled = z;
        }

        public static /* synthetic */ Template copy$default(Template template, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = template.heartbeatEnabled;
            }
            return template.copy(z);
        }

        public static /* synthetic */ void getHeartbeatEnabled$annotations() {
        }

        public static final void write$Self(Template self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.x(serialDesc, 0, self.heartbeatEnabled);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getHeartbeatEnabled() {
            return this.heartbeatEnabled;
        }

        public final Template copy(boolean heartbeatEnabled) {
            return new Template(heartbeatEnabled);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Template) && this.heartbeatEnabled == ((Template) other).heartbeatEnabled;
        }

        public final boolean getHeartbeatEnabled() {
            return this.heartbeatEnabled;
        }

        public int hashCode() {
            boolean z = this.heartbeatEnabled;
            if (z) {
                return 1;
            }
            return z ? 1 : 0;
        }

        public String toString() {
            return "Template(heartbeatEnabled=" + this.heartbeatEnabled + ')';
        }
    }

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001a\u001bB!\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J!\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019HÇ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings;", "", "seen1", "", "om", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Z)V", "getOm", "()Z", "component1", "copy", "equals", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    @Serializable
    public static final /* data */ class ViewabilitySettings {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final boolean om;

        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.ViewabilitySettings.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a implements GeneratedSerializer<ViewabilitySettings> {
            public static final a INSTANCE;
            public static final /* synthetic */ SerialDescriptor descriptor;

            static {
                a aVar = new a();
                INSTANCE = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload.ViewabilitySettings", aVar, 1);
                pluginGeneratedSerialDescriptor.j("om", false);
                descriptor = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] childSerializers() {
                return new KSerializer[]{BooleanSerializer.a};
            }

            @Override // kotlinx.serialization.DeserializationStrategy
            public ViewabilitySettings deserialize(Decoder decoder) {
                boolean zC;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor b = getB();
                CompositeDecoder compositeDecoderB = decoder.b(b);
                int i = 1;
                if (compositeDecoderB.p()) {
                    zC = compositeDecoderB.C(b, 0);
                } else {
                    zC = false;
                    int i2 = 0;
                    while (i != 0) {
                        int iO = compositeDecoderB.o(b);
                        if (iO == -1) {
                            i = 0;
                        } else {
                            if (iO != 0) {
                                throw new UnknownFieldException(iO);
                            }
                            zC = compositeDecoderB.C(b, 0);
                            i2 |= 1;
                        }
                    }
                    i = i2;
                }
                compositeDecoderB.c(b);
                return new ViewabilitySettings(i, zC, null);
            }

            @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
            /* JADX INFO: renamed from: getDescriptor */
            public SerialDescriptor getB() {
                return descriptor;
            }

            @Override // kotlinx.serialization.SerializationStrategy
            public void serialize(Encoder encoder, ViewabilitySettings value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor b = getB();
                CompositeEncoder compositeEncoderB = encoder.b(b);
                ViewabilitySettings.write$Self(value, compositeEncoderB, b);
                compositeEncoderB.c(b);
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public KSerializer<?>[] typeParametersSerializers() {
                return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.model.ConfigPayload$ViewabilitySettings$b, reason: from kotlin metadata */
        /* JADX INFO: compiled from: ConfigPayload.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final KSerializer<ViewabilitySettings> serializer() {
                return a.INSTANCE;
            }
        }

        public /* synthetic */ ViewabilitySettings(int i, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, a.INSTANCE.getB());
            }
            this.om = z;
        }

        public ViewabilitySettings(boolean z) {
            this.om = z;
        }

        public static /* synthetic */ ViewabilitySettings copy$default(ViewabilitySettings viewabilitySettings, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = viewabilitySettings.om;
            }
            return viewabilitySettings.copy(z);
        }

        public static final void write$Self(ViewabilitySettings self, CompositeEncoder output, SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.x(serialDesc, 0, self.om);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getOm() {
            return this.om;
        }

        public final ViewabilitySettings copy(boolean om) {
            return new ViewabilitySettings(om);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ViewabilitySettings) && this.om == ((ViewabilitySettings) other).om;
        }

        public final boolean getOm() {
            return this.om;
        }

        public int hashCode() {
            boolean z = this.om;
            if (z) {
                return 1;
            }
            return z ? 1 : 0;
        }

        public String toString() {
            return "ViewabilitySettings(om=" + this.om + ')';
        }
    }

    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/vungle/ads/internal/model/ConfigPayload.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a implements GeneratedSerializer<ConfigPayload> {
        public static final a INSTANCE;
        public static final /* synthetic */ SerialDescriptor descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.ConfigPayload", aVar, 15);
            pluginGeneratedSerialDescriptor.j("endpoints", true);
            pluginGeneratedSerialDescriptor.j("placements", true);
            pluginGeneratedSerialDescriptor.j("config", true);
            pluginGeneratedSerialDescriptor.j("gdpr", true);
            pluginGeneratedSerialDescriptor.j("logging", true);
            pluginGeneratedSerialDescriptor.j("crash_report", true);
            pluginGeneratedSerialDescriptor.j("viewability", true);
            pluginGeneratedSerialDescriptor.j("ad_load_optimization", true);
            pluginGeneratedSerialDescriptor.j("ri", true);
            pluginGeneratedSerialDescriptor.j("disable_ad_id", true);
            pluginGeneratedSerialDescriptor.j("config_extension", true);
            pluginGeneratedSerialDescriptor.j("template", true);
            pluginGeneratedSerialDescriptor.j("log_metrics", true);
            pluginGeneratedSerialDescriptor.j("session", true);
            pluginGeneratedSerialDescriptor.j("reuse_assets", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override // kotlinx.serialization.internal.GeneratedSerializer
        public KSerializer<?>[] childSerializers() {
            return new KSerializer[]{BuiltinSerializersKt.getNullable(Endpoints.a.INSTANCE), BuiltinSerializersKt.getNullable(new ArrayListSerializer(Placement.a.INSTANCE)), BuiltinSerializersKt.getNullable(ConfigSettings.a.INSTANCE), BuiltinSerializersKt.getNullable(GDPRSettings.a.INSTANCE), BuiltinSerializersKt.getNullable(LoggingSettings.a.INSTANCE), BuiltinSerializersKt.getNullable(CrashReportSettings.a.INSTANCE), BuiltinSerializersKt.getNullable(ViewabilitySettings.a.INSTANCE), BuiltinSerializersKt.getNullable(LoadOptimizationSettings.a.INSTANCE), BuiltinSerializersKt.getNullable(ReportIncentivizedSettings.a.INSTANCE), BuiltinSerializersKt.getNullable(BooleanSerializer.a), BuiltinSerializersKt.getNullable(StringSerializer.a), BuiltinSerializersKt.getNullable(Template.a.INSTANCE), BuiltinSerializersKt.getNullable(LogMetricsSettings.a.INSTANCE), BuiltinSerializersKt.getNullable(Session.a.INSTANCE), BuiltinSerializersKt.getNullable(CleverCache.a.INSTANCE)};
        }

        @Override // kotlinx.serialization.DeserializationStrategy
        public ConfigPayload deserialize(Decoder decoder) {
            Object objN;
            Object obj;
            Object objN2;
            Object obj2;
            Object objN3;
            int i;
            Object obj3;
            Object objN4;
            Object obj4;
            Object objN5;
            Object objN6;
            Object objN7;
            Object objN8;
            Object objN9;
            Object objN10;
            Object objN11;
            Object obj5;
            Object obj6;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor b = getB();
            CompositeDecoder compositeDecoderB = decoder.b(b);
            if (compositeDecoderB.p()) {
                Object objN12 = compositeDecoderB.n(b, 0, Endpoints.a.INSTANCE, null);
                Object objN13 = compositeDecoderB.n(b, 1, new ArrayListSerializer(Placement.a.INSTANCE), null);
                Object objN14 = compositeDecoderB.n(b, 2, ConfigSettings.a.INSTANCE, null);
                objN2 = compositeDecoderB.n(b, 3, GDPRSettings.a.INSTANCE, null);
                objN = compositeDecoderB.n(b, 4, LoggingSettings.a.INSTANCE, null);
                objN11 = compositeDecoderB.n(b, 5, CrashReportSettings.a.INSTANCE, null);
                objN10 = compositeDecoderB.n(b, 6, ViewabilitySettings.a.INSTANCE, null);
                objN9 = compositeDecoderB.n(b, 7, LoadOptimizationSettings.a.INSTANCE, null);
                objN8 = compositeDecoderB.n(b, 8, ReportIncentivizedSettings.a.INSTANCE, null);
                objN7 = compositeDecoderB.n(b, 9, BooleanSerializer.a, null);
                objN6 = compositeDecoderB.n(b, 10, StringSerializer.a, null);
                objN5 = compositeDecoderB.n(b, 11, Template.a.INSTANCE, null);
                objN3 = compositeDecoderB.n(b, 12, LogMetricsSettings.a.INSTANCE, null);
                Object objN15 = compositeDecoderB.n(b, 13, Session.a.INSTANCE, null);
                obj4 = objN13;
                obj3 = objN14;
                i = 32767;
                objN4 = compositeDecoderB.n(b, 14, CleverCache.a.INSTANCE, null);
                obj2 = objN15;
                obj = objN12;
            } else {
                Object objN16 = null;
                Object objN17 = null;
                Object objN18 = null;
                Object objN19 = null;
                Object objN20 = null;
                Object objN21 = null;
                Object objN22 = null;
                Object objN23 = null;
                Object objN24 = null;
                objN = null;
                Object objN25 = null;
                Object objN26 = null;
                Object objN27 = null;
                Object objN28 = null;
                Object objN29 = null;
                int i2 = 0;
                boolean z = true;
                while (z) {
                    Object obj7 = objN19;
                    int iO = compositeDecoderB.o(b);
                    switch (iO) {
                        case -1:
                            objN19 = obj7;
                            objN17 = objN17;
                            objN16 = objN16;
                            z = false;
                            break;
                        case 0:
                            objN19 = compositeDecoderB.n(b, 0, Endpoints.a.INSTANCE, obj7);
                            i2 |= 1;
                            objN17 = objN17;
                            objN16 = objN16;
                            break;
                        case 1:
                            objN16 = compositeDecoderB.n(b, 1, new ArrayListSerializer(Placement.a.INSTANCE), objN16);
                            i2 |= 2;
                            objN17 = objN17;
                            objN28 = objN28;
                            objN19 = obj7;
                            break;
                        case 2:
                            obj5 = objN16;
                            obj6 = objN17;
                            objN18 = compositeDecoderB.n(b, 2, ConfigSettings.a.INSTANCE, objN18);
                            i2 |= 4;
                            objN17 = obj6;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        case 3:
                            obj5 = objN16;
                            obj6 = objN17;
                            objN27 = compositeDecoderB.n(b, 3, GDPRSettings.a.INSTANCE, objN27);
                            i2 |= 8;
                            objN17 = obj6;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        case 4:
                            obj5 = objN16;
                            obj6 = objN17;
                            objN = compositeDecoderB.n(b, 4, LoggingSettings.a.INSTANCE, objN);
                            i2 |= 16;
                            objN17 = obj6;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        case 5:
                            obj5 = objN16;
                            obj6 = objN17;
                            objN26 = compositeDecoderB.n(b, 5, CrashReportSettings.a.INSTANCE, objN26);
                            i2 |= 32;
                            objN17 = obj6;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        case 6:
                            obj5 = objN16;
                            obj6 = objN17;
                            objN24 = compositeDecoderB.n(b, 6, ViewabilitySettings.a.INSTANCE, objN24);
                            i2 |= 64;
                            objN17 = obj6;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        case 7:
                            obj5 = objN16;
                            obj6 = objN17;
                            objN23 = compositeDecoderB.n(b, 7, LoadOptimizationSettings.a.INSTANCE, objN23);
                            i2 |= 128;
                            objN17 = obj6;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        case 8:
                            obj5 = objN16;
                            obj6 = objN17;
                            objN22 = compositeDecoderB.n(b, 8, ReportIncentivizedSettings.a.INSTANCE, objN22);
                            i2 |= 256;
                            objN17 = obj6;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        case 9:
                            obj5 = objN16;
                            obj6 = objN17;
                            objN25 = compositeDecoderB.n(b, 9, BooleanSerializer.a, objN25);
                            i2 |= 512;
                            objN17 = obj6;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        case 10:
                            obj5 = objN16;
                            obj6 = objN17;
                            objN21 = compositeDecoderB.n(b, 10, StringSerializer.a, objN21);
                            i2 |= 1024;
                            objN17 = obj6;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        case 11:
                            obj5 = objN16;
                            obj6 = objN17;
                            objN20 = compositeDecoderB.n(b, 11, Template.a.INSTANCE, objN20);
                            i2 |= 2048;
                            objN17 = obj6;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        case 12:
                            obj5 = objN16;
                            objN28 = compositeDecoderB.n(b, 12, LogMetricsSettings.a.INSTANCE, objN28);
                            i2 |= 4096;
                            objN17 = objN17;
                            objN29 = objN29;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        case 13:
                            obj5 = objN16;
                            obj6 = objN17;
                            objN29 = compositeDecoderB.n(b, 13, Session.a.INSTANCE, objN29);
                            i2 |= 8192;
                            objN17 = obj6;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        case 14:
                            obj5 = objN16;
                            objN17 = compositeDecoderB.n(b, 14, CleverCache.a.INSTANCE, objN17);
                            i2 |= 16384;
                            objN19 = obj7;
                            objN16 = obj5;
                            break;
                        default:
                            throw new UnknownFieldException(iO);
                    }
                }
                Object obj8 = objN16;
                Object obj9 = objN17;
                obj = objN19;
                objN2 = objN27;
                obj2 = objN29;
                objN3 = objN28;
                i = i2;
                obj3 = objN18;
                objN4 = obj9;
                obj4 = obj8;
                Object obj10 = objN26;
                objN5 = objN20;
                objN6 = objN21;
                objN7 = objN25;
                objN8 = objN22;
                objN9 = objN23;
                objN10 = objN24;
                objN11 = obj10;
            }
            compositeDecoderB.c(b);
            return new ConfigPayload(i, (Endpoints) obj, (List) obj4, (ConfigSettings) obj3, (GDPRSettings) objN2, (LoggingSettings) objN, (CrashReportSettings) objN11, (ViewabilitySettings) objN10, (LoadOptimizationSettings) objN9, (ReportIncentivizedSettings) objN8, (Boolean) objN7, (String) objN6, (Template) objN5, (LogMetricsSettings) objN3, (Session) obj2, (CleverCache) objN4, (SerializationConstructorMarker) null);
        }

        @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
        /* JADX INFO: renamed from: getDescriptor */
        public SerialDescriptor getB() {
            return descriptor;
        }

        @Override // kotlinx.serialization.SerializationStrategy
        public void serialize(Encoder encoder, ConfigPayload value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor b = getB();
            CompositeEncoder compositeEncoderB = encoder.b(b);
            ConfigPayload.write$Self(value, compositeEncoderB, b);
            compositeEncoderB.c(b);
        }

        @Override // kotlinx.serialization.internal.GeneratedSerializer
        public KSerializer<?>[] typeParametersSerializers() {
            return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
        }
    }

    /* JADX INFO: renamed from: com.vungle.ads.internal.model.ConfigPayload$b, reason: from kotlin metadata */
    /* JADX INFO: compiled from: ConfigPayload.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/ConfigPayload$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/vungle/ads/internal/model/ConfigPayload;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final KSerializer<ConfigPayload> serializer() {
            return a.INSTANCE;
        }
    }

    public ConfigPayload() {
        this((Endpoints) null, (List) null, (ConfigSettings) null, (GDPRSettings) null, (LoggingSettings) null, (CrashReportSettings) null, (ViewabilitySettings) null, (LoadOptimizationSettings) null, (ReportIncentivizedSettings) null, (Boolean) null, (String) null, (Template) null, (LogMetricsSettings) null, (Session) null, (CleverCache) null, 32767, (n) null);
    }

    public /* synthetic */ ConfigPayload(int i, Endpoints endpoints, List list, ConfigSettings configSettings, GDPRSettings gDPRSettings, LoggingSettings loggingSettings, CrashReportSettings crashReportSettings, ViewabilitySettings viewabilitySettings, LoadOptimizationSettings loadOptimizationSettings, ReportIncentivizedSettings reportIncentivizedSettings, Boolean bool, String str, Template template, LogMetricsSettings logMetricsSettings, Session session, CleverCache cleverCache, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 0) != 0) {
            PluginExceptionsKt.throwMissingFieldException(i, 0, a.INSTANCE.getB());
        }
        if ((i & 1) == 0) {
            this.endpoints = null;
        } else {
            this.endpoints = endpoints;
        }
        if ((i & 2) == 0) {
            this.placements = null;
        } else {
            this.placements = list;
        }
        if ((i & 4) == 0) {
            this.config = null;
        } else {
            this.config = configSettings;
        }
        if ((i & 8) == 0) {
            this.gdpr = null;
        } else {
            this.gdpr = gDPRSettings;
        }
        if ((i & 16) == 0) {
            this.loggingEnabled = null;
        } else {
            this.loggingEnabled = loggingSettings;
        }
        if ((i & 32) == 0) {
            this.crashReport = null;
        } else {
            this.crashReport = crashReportSettings;
        }
        if ((i & 64) == 0) {
            this.viewability = null;
        } else {
            this.viewability = viewabilitySettings;
        }
        if ((i & 128) == 0) {
            this.isAdDownloadOptEnabled = null;
        } else {
            this.isAdDownloadOptEnabled = loadOptimizationSettings;
        }
        if ((i & 256) == 0) {
            this.isReportIncentivizedEnabled = null;
        } else {
            this.isReportIncentivizedEnabled = reportIncentivizedSettings;
        }
        this.disableAdId = (i & 512) == 0 ? Boolean.TRUE : bool;
        if ((i & 1024) == 0) {
            this.configExtension = null;
        } else {
            this.configExtension = str;
        }
        if ((i & 2048) == 0) {
            this.template = null;
        } else {
            this.template = template;
        }
        if ((i & 4096) == 0) {
            this.logMetricsSettings = null;
        } else {
            this.logMetricsSettings = logMetricsSettings;
        }
        if ((i & 8192) == 0) {
            this.session = null;
        } else {
            this.session = session;
        }
        if ((i & 16384) == 0) {
            this.cleverCache = null;
        } else {
            this.cleverCache = cleverCache;
        }
    }

    public ConfigPayload(Endpoints endpoints, List<Placement> list, ConfigSettings configSettings, GDPRSettings gDPRSettings, LoggingSettings loggingSettings, CrashReportSettings crashReportSettings, ViewabilitySettings viewabilitySettings, LoadOptimizationSettings loadOptimizationSettings, ReportIncentivizedSettings reportIncentivizedSettings, Boolean bool, String str, Template template, LogMetricsSettings logMetricsSettings, Session session, CleverCache cleverCache) {
        this.endpoints = endpoints;
        this.placements = list;
        this.config = configSettings;
        this.gdpr = gDPRSettings;
        this.loggingEnabled = loggingSettings;
        this.crashReport = crashReportSettings;
        this.viewability = viewabilitySettings;
        this.isAdDownloadOptEnabled = loadOptimizationSettings;
        this.isReportIncentivizedEnabled = reportIncentivizedSettings;
        this.disableAdId = bool;
        this.configExtension = str;
        this.template = template;
        this.logMetricsSettings = logMetricsSettings;
        this.session = session;
        this.cleverCache = cleverCache;
    }

    public /* synthetic */ ConfigPayload(Endpoints endpoints, List list, ConfigSettings configSettings, GDPRSettings gDPRSettings, LoggingSettings loggingSettings, CrashReportSettings crashReportSettings, ViewabilitySettings viewabilitySettings, LoadOptimizationSettings loadOptimizationSettings, ReportIncentivizedSettings reportIncentivizedSettings, Boolean bool, String str, Template template, LogMetricsSettings logMetricsSettings, Session session, CleverCache cleverCache, int i, n nVar) {
        this((i & 1) != 0 ? null : endpoints, (i & 2) != 0 ? null : list, (i & 4) != 0 ? null : configSettings, (i & 8) != 0 ? null : gDPRSettings, (i & 16) != 0 ? null : loggingSettings, (i & 32) != 0 ? null : crashReportSettings, (i & 64) != 0 ? null : viewabilitySettings, (i & 128) != 0 ? null : loadOptimizationSettings, (i & 256) != 0 ? null : reportIncentivizedSettings, (i & 512) != 0 ? Boolean.TRUE : bool, (i & 1024) != 0 ? null : str, (i & 2048) != 0 ? null : template, (i & 4096) != 0 ? null : logMetricsSettings, (i & 8192) != 0 ? null : session, (i & 16384) == 0 ? cleverCache : null);
    }

    public static /* synthetic */ void getCleverCache$annotations() {
    }

    public static /* synthetic */ void getConfigExtension$annotations() {
    }

    public static /* synthetic */ void getCrashReport$annotations() {
    }

    public static /* synthetic */ void getDisableAdId$annotations() {
    }

    public static /* synthetic */ void getLogMetricsSettings$annotations() {
    }

    public static /* synthetic */ void getLoggingEnabled$annotations() {
    }

    public static /* synthetic */ void getSession$annotations() {
    }

    public static /* synthetic */ void getTemplate$annotations() {
    }

    public static /* synthetic */ void getViewability$annotations() {
    }

    public static /* synthetic */ void isAdDownloadOptEnabled$annotations() {
    }

    public static /* synthetic */ void isReportIncentivizedEnabled$annotations() {
    }

    public static final void write$Self(ConfigPayload self, CompositeEncoder output, SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.endpoints != null) {
            output.i(serialDesc, 0, Endpoints.a.INSTANCE, self.endpoints);
        }
        if (output.z(serialDesc, 1) || self.placements != null) {
            output.i(serialDesc, 1, new ArrayListSerializer(Placement.a.INSTANCE), self.placements);
        }
        if (output.z(serialDesc, 2) || self.config != null) {
            output.i(serialDesc, 2, ConfigSettings.a.INSTANCE, self.config);
        }
        if (output.z(serialDesc, 3) || self.gdpr != null) {
            output.i(serialDesc, 3, GDPRSettings.a.INSTANCE, self.gdpr);
        }
        if (output.z(serialDesc, 4) || self.loggingEnabled != null) {
            output.i(serialDesc, 4, LoggingSettings.a.INSTANCE, self.loggingEnabled);
        }
        if (output.z(serialDesc, 5) || self.crashReport != null) {
            output.i(serialDesc, 5, CrashReportSettings.a.INSTANCE, self.crashReport);
        }
        if (output.z(serialDesc, 6) || self.viewability != null) {
            output.i(serialDesc, 6, ViewabilitySettings.a.INSTANCE, self.viewability);
        }
        if (output.z(serialDesc, 7) || self.isAdDownloadOptEnabled != null) {
            output.i(serialDesc, 7, LoadOptimizationSettings.a.INSTANCE, self.isAdDownloadOptEnabled);
        }
        if (output.z(serialDesc, 8) || self.isReportIncentivizedEnabled != null) {
            output.i(serialDesc, 8, ReportIncentivizedSettings.a.INSTANCE, self.isReportIncentivizedEnabled);
        }
        if (output.z(serialDesc, 9) || !Intrinsics.areEqual(self.disableAdId, Boolean.TRUE)) {
            output.i(serialDesc, 9, BooleanSerializer.a, self.disableAdId);
        }
        if (output.z(serialDesc, 10) || self.configExtension != null) {
            output.i(serialDesc, 10, StringSerializer.a, self.configExtension);
        }
        if (output.z(serialDesc, 11) || self.template != null) {
            output.i(serialDesc, 11, Template.a.INSTANCE, self.template);
        }
        if (output.z(serialDesc, 12) || self.logMetricsSettings != null) {
            output.i(serialDesc, 12, LogMetricsSettings.a.INSTANCE, self.logMetricsSettings);
        }
        if (output.z(serialDesc, 13) || self.session != null) {
            output.i(serialDesc, 13, Session.a.INSTANCE, self.session);
        }
        if (output.z(serialDesc, 14) || self.cleverCache != null) {
            output.i(serialDesc, 14, CleverCache.a.INSTANCE, self.cleverCache);
        }
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Endpoints getEndpoints() {
        return this.endpoints;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Boolean getDisableAdId() {
        return this.disableAdId;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getConfigExtension() {
        return this.configExtension;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Template getTemplate() {
        return this.template;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final LogMetricsSettings getLogMetricsSettings() {
        return this.logMetricsSettings;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final Session getSession() {
        return this.session;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final CleverCache getCleverCache() {
        return this.cleverCache;
    }

    public final List<Placement> component2() {
        return this.placements;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ConfigSettings getConfig() {
        return this.config;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final GDPRSettings getGdpr() {
        return this.gdpr;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final LoggingSettings getLoggingEnabled() {
        return this.loggingEnabled;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final CrashReportSettings getCrashReport() {
        return this.crashReport;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final ViewabilitySettings getViewability() {
        return this.viewability;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final LoadOptimizationSettings getIsAdDownloadOptEnabled() {
        return this.isAdDownloadOptEnabled;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final ReportIncentivizedSettings getIsReportIncentivizedEnabled() {
        return this.isReportIncentivizedEnabled;
    }

    public final ConfigPayload copy(Endpoints endpoints, List<Placement> placements, ConfigSettings config, GDPRSettings gdpr, LoggingSettings loggingEnabled, CrashReportSettings crashReport, ViewabilitySettings viewability, LoadOptimizationSettings isAdDownloadOptEnabled, ReportIncentivizedSettings isReportIncentivizedEnabled, Boolean disableAdId, String configExtension, Template template, LogMetricsSettings logMetricsSettings, Session session, CleverCache cleverCache) {
        return new ConfigPayload(endpoints, placements, config, gdpr, loggingEnabled, crashReport, viewability, isAdDownloadOptEnabled, isReportIncentivizedEnabled, disableAdId, configExtension, template, logMetricsSettings, session, cleverCache);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfigPayload)) {
            return false;
        }
        ConfigPayload configPayload = (ConfigPayload) other;
        return Intrinsics.areEqual(this.endpoints, configPayload.endpoints) && Intrinsics.areEqual(this.placements, configPayload.placements) && Intrinsics.areEqual(this.config, configPayload.config) && Intrinsics.areEqual(this.gdpr, configPayload.gdpr) && Intrinsics.areEqual(this.loggingEnabled, configPayload.loggingEnabled) && Intrinsics.areEqual(this.crashReport, configPayload.crashReport) && Intrinsics.areEqual(this.viewability, configPayload.viewability) && Intrinsics.areEqual(this.isAdDownloadOptEnabled, configPayload.isAdDownloadOptEnabled) && Intrinsics.areEqual(this.isReportIncentivizedEnabled, configPayload.isReportIncentivizedEnabled) && Intrinsics.areEqual(this.disableAdId, configPayload.disableAdId) && Intrinsics.areEqual(this.configExtension, configPayload.configExtension) && Intrinsics.areEqual(this.template, configPayload.template) && Intrinsics.areEqual(this.logMetricsSettings, configPayload.logMetricsSettings) && Intrinsics.areEqual(this.session, configPayload.session) && Intrinsics.areEqual(this.cleverCache, configPayload.cleverCache);
    }

    public final CleverCache getCleverCache() {
        return this.cleverCache;
    }

    public final ConfigSettings getConfig() {
        return this.config;
    }

    public final String getConfigExtension() {
        return this.configExtension;
    }

    public final CrashReportSettings getCrashReport() {
        return this.crashReport;
    }

    public final Boolean getDisableAdId() {
        return this.disableAdId;
    }

    public final Endpoints getEndpoints() {
        return this.endpoints;
    }

    public final GDPRSettings getGdpr() {
        return this.gdpr;
    }

    public final LogMetricsSettings getLogMetricsSettings() {
        return this.logMetricsSettings;
    }

    public final LoggingSettings getLoggingEnabled() {
        return this.loggingEnabled;
    }

    public final List<Placement> getPlacements() {
        return this.placements;
    }

    public final Session getSession() {
        return this.session;
    }

    public final Template getTemplate() {
        return this.template;
    }

    public final ViewabilitySettings getViewability() {
        return this.viewability;
    }

    public int hashCode() {
        Endpoints endpoints = this.endpoints;
        int iHashCode = (endpoints == null ? 0 : endpoints.hashCode()) * 31;
        List<Placement> list = this.placements;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        ConfigSettings configSettings = this.config;
        int iHashCode3 = (iHashCode2 + (configSettings == null ? 0 : configSettings.hashCode())) * 31;
        GDPRSettings gDPRSettings = this.gdpr;
        int iHashCode4 = (iHashCode3 + (gDPRSettings == null ? 0 : gDPRSettings.hashCode())) * 31;
        LoggingSettings loggingSettings = this.loggingEnabled;
        int iHashCode5 = (iHashCode4 + (loggingSettings == null ? 0 : loggingSettings.hashCode())) * 31;
        CrashReportSettings crashReportSettings = this.crashReport;
        int iHashCode6 = (iHashCode5 + (crashReportSettings == null ? 0 : crashReportSettings.hashCode())) * 31;
        ViewabilitySettings viewabilitySettings = this.viewability;
        int iHashCode7 = (iHashCode6 + (viewabilitySettings == null ? 0 : viewabilitySettings.hashCode())) * 31;
        LoadOptimizationSettings loadOptimizationSettings = this.isAdDownloadOptEnabled;
        int iHashCode8 = (iHashCode7 + (loadOptimizationSettings == null ? 0 : loadOptimizationSettings.hashCode())) * 31;
        ReportIncentivizedSettings reportIncentivizedSettings = this.isReportIncentivizedEnabled;
        int iHashCode9 = (iHashCode8 + (reportIncentivizedSettings == null ? 0 : reportIncentivizedSettings.hashCode())) * 31;
        Boolean bool = this.disableAdId;
        int iHashCode10 = (iHashCode9 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.configExtension;
        int iHashCode11 = (iHashCode10 + (str == null ? 0 : str.hashCode())) * 31;
        Template template = this.template;
        int iHashCode12 = (iHashCode11 + (template == null ? 0 : template.hashCode())) * 31;
        LogMetricsSettings logMetricsSettings = this.logMetricsSettings;
        int iHashCode13 = (iHashCode12 + (logMetricsSettings == null ? 0 : logMetricsSettings.hashCode())) * 31;
        Session session = this.session;
        int iHashCode14 = (iHashCode13 + (session == null ? 0 : session.hashCode())) * 31;
        CleverCache cleverCache = this.cleverCache;
        return iHashCode14 + (cleverCache != null ? cleverCache.hashCode() : 0);
    }

    public final LoadOptimizationSettings isAdDownloadOptEnabled() {
        return this.isAdDownloadOptEnabled;
    }

    public final ReportIncentivizedSettings isReportIncentivizedEnabled() {
        return this.isReportIncentivizedEnabled;
    }

    public String toString() {
        return "ConfigPayload(endpoints=" + this.endpoints + ", placements=" + this.placements + ", config=" + this.config + ", gdpr=" + this.gdpr + ", loggingEnabled=" + this.loggingEnabled + ", crashReport=" + this.crashReport + ", viewability=" + this.viewability + ", isAdDownloadOptEnabled=" + this.isAdDownloadOptEnabled + ", isReportIncentivizedEnabled=" + this.isReportIncentivizedEnabled + ", disableAdId=" + this.disableAdId + ", configExtension=" + this.configExtension + ", template=" + this.template + ", logMetricsSettings=" + this.logMetricsSettings + ", session=" + this.session + ", cleverCache=" + this.cleverCache + ')';
    }
}
