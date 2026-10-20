###### Class com.vungle.ads.internal.model.ConfigPayload.a (com.vungle.ads.internal.model.ConfigPayload$a)
.class public final Lcom/vungle/ads/internal/model/ConfigPayload$a;
.super Ljava/lang/Object;
.source "ConfigPayload.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/ConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vungle/ads/internal/model/ConfigPayload;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/vungle/ads/internal/model/ConfigPayload.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vungle/ads/internal/model/ConfigPayload;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/ConfigPayload$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/ConfigPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.ConfigPayload"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "endpoints"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "placements"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "config"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "gdpr"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "logging"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "crash_report"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "viewability"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "ad_load_optimization"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "ri"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "disable_ad_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "config_extension"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "template"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "log_metrics"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "session"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "reuse_assets"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [Lkotlinx/serialization/c;

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/c;

    sget-object v2, Lcom/vungle/ads/internal/model/Placement$a;->INSTANCE:Lcom/vungle/ads/internal/model/Placement$a;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/f;->a:Lkotlinx/serialization/internal/f;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$Template$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$Template$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$Session$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$Session$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/model/CleverCache$a;->INSTANCE:Lcom/vungle/ads/internal/model/CleverCache$a;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/ConfigPayload;
    .registers 39

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/ConfigPayload$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->p()Z

    move-result v2

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x3

    const/16 v13, 0x8

    const/4 v14, 0x4

    const/4 v15, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_9c

    sget-object v2, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints$a;

    invoke-interface {v0, v1, v3, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lkotlinx/serialization/internal/c;

    sget-object v6, Lcom/vungle/ads/internal/model/Placement$a;->INSTANCE:Lcom/vungle/ads/internal/model/Placement$a;

    invoke-direct {v3, v6}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    invoke-interface {v0, v1, v4, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings$a;

    invoke-interface {v0, v1, v15, v4, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings$a;

    invoke-interface {v0, v1, v12, v6, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v12, Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings$a;

    invoke-interface {v0, v1, v14, v12, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v14, Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings$a;

    invoke-interface {v0, v1, v11, v14, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v14, Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings$a;

    invoke-interface {v0, v1, v10, v14, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v14, Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings$a;

    invoke-interface {v0, v1, v9, v14, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v14, Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings$a;

    invoke-interface {v0, v1, v13, v14, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lkotlinx/serialization/internal/f;->a:Lkotlinx/serialization/internal/f;

    invoke-interface {v0, v1, v8, v14, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v14, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-interface {v0, v1, v7, v14, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v14, Lcom/vungle/ads/internal/model/ConfigPayload$Template$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$Template$a;

    const/16 v15, 0xb

    invoke-interface {v0, v1, v15, v14, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings$a;

    move-object/from16 v18, v2

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v15, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v15, Lcom/vungle/ads/internal/model/ConfigPayload$Session$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$Session$a;

    move-object/from16 v17, v2

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, v15, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v15, Lcom/vungle/ads/internal/model/CleverCache$a;->INSTANCE:Lcom/vungle/ads/internal/model/CleverCache$a;

    move-object/from16 v16, v3

    const/16 v3, 0xe

    invoke-interface {v0, v1, v3, v15, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x7fff

    move-object v5, v4

    const/16 v19, 0x7fff

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto/16 :goto_243

    :cond_9c
    const/4 v2, 0x0

    move-object v2, v5

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v29, v15

    move-object/from16 v30, v29

    const/4 v5, 0x0

    const/16 v32, 0x1

    :goto_b1
    if-eqz v32, :cond_223

    move-object/from16 v33, v6

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v6

    packed-switch v6, :pswitch_data_28c

    new-instance v0, Lkotlinx/serialization/k;

    invoke-direct {v0, v6}, Lkotlinx/serialization/k;-><init>(I)V

    throw v0

    :pswitch_c2
    sget-object v6, Lcom/vungle/ads/internal/model/CleverCache$a;->INSTANCE:Lcom/vungle/ads/internal/model/CleverCache$a;

    move-object/from16 v34, v2

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v6, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    or-int/lit16 v5, v5, 0x4000

    goto/16 :goto_1cc

    :pswitch_d0
    move-object/from16 v34, v2

    const/16 v2, 0xe

    sget-object v6, Lcom/vungle/ads/internal/model/ConfigPayload$Session$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$Session$a;

    move-object/from16 v16, v3

    move-object/from16 v2, v30

    const/16 v3, 0xd

    invoke-interface {v0, v1, v3, v6, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    or-int/lit16 v5, v5, 0x2000

    goto/16 :goto_1ca

    :pswitch_e4
    move-object/from16 v34, v2

    move-object/from16 v16, v3

    move-object/from16 v2, v30

    const/16 v3, 0xd

    sget-object v6, Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings$a;

    move-object/from16 v17, v2

    move-object/from16 v3, v29

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v6, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    or-int/lit16 v5, v5, 0x1000

    move-object/from16 v3, v16

    move-object/from16 v30, v17

    goto/16 :goto_1cc

    :pswitch_100
    move-object/from16 v34, v2

    move-object/from16 v16, v3

    move-object/from16 v3, v29

    move-object/from16 v17, v30

    const/16 v2, 0xc

    sget-object v6, Lcom/vungle/ads/internal/model/ConfigPayload$Template$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$Template$a;

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v6, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    or-int/lit16 v5, v5, 0x800

    goto/16 :goto_1ca

    :pswitch_116
    move-object/from16 v34, v2

    move-object/from16 v16, v3

    move-object/from16 v3, v29

    move-object/from16 v17, v30

    const/16 v2, 0xb

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v6, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    or-int/lit16 v5, v5, 0x400

    goto/16 :goto_1ca

    :pswitch_12c
    move-object/from16 v34, v2

    move-object/from16 v16, v3

    move-object/from16 v3, v29

    move-object/from16 v17, v30

    const/16 v2, 0xa

    sget-object v6, Lkotlinx/serialization/internal/f;->a:Lkotlinx/serialization/internal/f;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v6, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit16 v5, v5, 0x200

    goto/16 :goto_1ca

    :pswitch_142
    move-object/from16 v34, v2

    move-object/from16 v16, v3

    move-object/from16 v3, v29

    move-object/from16 v17, v30

    const/16 v2, 0x9

    sget-object v6, Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings$a;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v6, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    or-int/lit16 v5, v5, 0x100

    goto/16 :goto_1ca

    :pswitch_158
    move-object/from16 v34, v2

    move-object/from16 v16, v3

    move-object/from16 v3, v29

    move-object/from16 v17, v30

    const/16 v2, 0x8

    sget-object v6, Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings$a;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v6, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/lit16 v5, v5, 0x80

    goto :goto_1ca

    :pswitch_16c
    move-object/from16 v34, v2

    move-object/from16 v16, v3

    move-object/from16 v3, v29

    move-object/from16 v17, v30

    const/4 v2, 0x7

    sget-object v6, Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings$a;

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2, v6, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit8 v5, v5, 0x40

    goto :goto_1ca

    :pswitch_17f
    move-object/from16 v34, v2

    move-object/from16 v16, v3

    move-object/from16 v3, v29

    move-object/from16 v17, v30

    const/4 v2, 0x6

    sget-object v6, Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings$a;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, v6, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit8 v5, v5, 0x20

    goto :goto_1ca

    :pswitch_192
    move-object/from16 v34, v2

    move-object/from16 v16, v3

    move-object/from16 v3, v29

    move-object/from16 v17, v30

    const/4 v2, 0x5

    sget-object v6, Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings$a;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v6, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit8 v5, v5, 0x10

    goto :goto_1ca

    :pswitch_1a5
    move-object/from16 v34, v2

    move-object/from16 v16, v3

    move-object/from16 v3, v29

    move-object/from16 v17, v30

    const/4 v2, 0x4

    sget-object v6, Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings$a;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v6, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    or-int/lit8 v5, v5, 0x8

    goto :goto_1ca

    :pswitch_1b8
    move-object/from16 v34, v2

    move-object/from16 v16, v3

    move-object/from16 v3, v29

    move-object/from16 v17, v30

    const/4 v2, 0x3

    sget-object v6, Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings$a;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v6, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    or-int/lit8 v5, v5, 0x4

    :goto_1ca
    move-object/from16 v3, v16

    :goto_1cc
    move-object/from16 v6, v33

    move-object/from16 v2, v34

    goto/16 :goto_b1

    :pswitch_1d2
    move-object/from16 v34, v2

    move-object/from16 v16, v3

    move-object/from16 v3, v29

    move-object/from16 v17, v30

    const/4 v2, 0x2

    new-instance v6, Lkotlinx/serialization/internal/c;

    sget-object v2, Lcom/vungle/ads/internal/model/Placement$a;->INSTANCE:Lcom/vungle/ads/internal/model/Placement$a;

    invoke-direct {v6, v2}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    move-object/from16 v19, v3

    move-object/from16 v2, v34

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v6, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v5, v5, 0x2

    move-object/from16 v3, v16

    move-object/from16 v29, v19

    move-object/from16 v6, v33

    goto/16 :goto_b1

    :pswitch_1f5
    move-object/from16 v16, v3

    move-object/from16 v19, v29

    move-object/from16 v17, v30

    const/4 v3, 0x1

    sget-object v6, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints$a;

    move-object/from16 v3, v33

    move-object/from16 v33, v2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v6, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, v33

    goto/16 :goto_b1

    :pswitch_20f
    move-object/from16 v16, v3

    move-object/from16 v19, v29

    move-object/from16 v17, v30

    move-object/from16 v3, v33

    move-object/from16 v33, v2

    const/4 v2, 0x0

    move-object v6, v3

    move-object/from16 v3, v16

    move-object/from16 v2, v33

    const/16 v32, 0x0

    goto/16 :goto_b1

    :cond_223
    move-object/from16 v33, v2

    move-object/from16 v16, v3

    move-object v3, v6

    move-object/from16 v19, v29

    move-object/from16 v17, v30

    move-object v2, v3

    move-object v6, v15

    move-object/from16 v3, v17

    move-object/from16 v17, v19

    move/from16 v19, v5

    move-object v5, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v33

    move-object/from16 v36, v14

    move-object v14, v7

    move-object v7, v8

    move-object v8, v13

    move-object v13, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v36

    :goto_243
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lcom/vungle/ads/internal/model/ConfigPayload;

    move-object/from16 v18, v0

    move-object/from16 v20, v2

    check-cast v20, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    move-object/from16 v21, v16

    check-cast v21, Ljava/util/List;

    move-object/from16 v22, v5

    check-cast v22, Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings;

    move-object/from16 v23, v6

    check-cast v23, Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;

    move-object/from16 v24, v12

    check-cast v24, Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings;

    move-object/from16 v25, v11

    check-cast v25, Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings;

    move-object/from16 v26, v10

    check-cast v26, Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings;

    move-object/from16 v27, v9

    check-cast v27, Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings;

    move-object/from16 v28, v13

    check-cast v28, Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings;

    move-object/from16 v29, v8

    check-cast v29, Ljava/lang/Boolean;

    move-object/from16 v30, v7

    check-cast v30, Ljava/lang/String;

    move-object/from16 v31, v14

    check-cast v31, Lcom/vungle/ads/internal/model/ConfigPayload$Template;

    move-object/from16 v32, v17

    check-cast v32, Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;

    move-object/from16 v33, v3

    check-cast v33, Lcom/vungle/ads/internal/model/ConfigPayload$Session;

    move-object/from16 v34, v4

    check-cast v34, Lcom/vungle/ads/internal/model/CleverCache;

    const/16 v35, 0x0

    invoke-direct/range {v18 .. v35}, Lcom/vungle/ads/internal/model/ConfigPayload;-><init>(ILcom/vungle/ads/internal/model/ConfigPayload$Endpoints;Ljava/util/List;Lcom/vungle/ads/internal/model/ConfigPayload$ConfigSettings;Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;Lcom/vungle/ads/internal/model/ConfigPayload$LoggingSettings;Lcom/vungle/ads/internal/model/ConfigPayload$CrashReportSettings;Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings;Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings;Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings;Ljava/lang/Boolean;Ljava/lang/String;Lcom/vungle/ads/internal/model/ConfigPayload$Template;Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;Lcom/vungle/ads/internal/model/ConfigPayload$Session;Lcom/vungle/ads/internal/model/CleverCache;Lkotlinx/serialization/internal/e1;)V

    return-object v0

    :pswitch_data_28c
    .packed-switch -0x1
        :pswitch_20f
        :pswitch_1f5
        :pswitch_1d2
        :pswitch_1b8
        :pswitch_1a5
        :pswitch_192
        :pswitch_17f
        :pswitch_16c
        :pswitch_158
        :pswitch_142
        :pswitch_12c
        :pswitch_116
        :pswitch_100
        :pswitch_e4
        :pswitch_d0
        :pswitch_c2
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/ConfigPayload$a;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/ConfigPayload;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/model/ConfigPayload$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/ConfigPayload;)V
    .registers 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/ConfigPayload$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->write$Self(Lcom/vungle/ads/internal/model/ConfigPayload;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/vungle/ads/internal/model/ConfigPayload;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/ConfigPayload$a;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/ConfigPayload;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/c;

    move-result-object v0

    return-object v0
.end method
