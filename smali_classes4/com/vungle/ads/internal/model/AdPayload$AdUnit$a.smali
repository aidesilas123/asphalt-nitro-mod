###### Class com.vungle.ads.internal.model.AdPayload.AdUnit.a (com.vungle.ads.internal.model.AdPayload$AdUnit$a)
.class public final Lcom/vungle/ads/internal/model/AdPayload$AdUnit$a;
.super Ljava/lang/Object;
.source "AdPayload.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/AdPayload$AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vungle/ads/internal/model/AdPayload$AdUnit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/vungle/ads/internal/model/AdPayload.AdUnit.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vungle/ads/internal/model/AdPayload$AdUnit;",
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
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$AdUnit$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload$AdUnit$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/AdPayload$AdUnit$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/AdPayload$AdUnit$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$AdUnit$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.AdPayload.AdUnit"

    const/16 v3, 0x1a

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "id"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "adType"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "adSource"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "campaign"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "expiry"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "app_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "callToActionUrl"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "deeplinkUrl"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "click_coordinates_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "tpat"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "templateURL"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "templateId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "template_type"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "templateSettings"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "bid_token"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "ad_market_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "info"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "sleep"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "viewability"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "adExt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "notification"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "load_ad"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "timestamp"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "showCloseIncentivized"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "showClose"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->j(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/AdPayload$AdUnit$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x1a

    new-array v0, v0, [Lkotlinx/serialization/c;

    sget-object v1, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    sget-object v2, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v0, v4

    sget-object v3, Lkotlinx/serialization/internal/f;->a:Lkotlinx/serialization/internal/f;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v0, v4

    sget-object v3, Lcom/vungle/ads/internal/model/AdPayload$c;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$c;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v0, v4

    sget-object v3, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$a;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0x10

    aput-object v3, v0, v4

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0x11

    aput-object v3, v0, v4

    sget-object v3, Lcom/vungle/ads/internal/model/AdPayload$Viewability$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$Viewability$a;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0x12

    aput-object v3, v0, v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0x13

    aput-object v3, v0, v4

    new-instance v3, Lkotlinx/serialization/internal/c;

    invoke-direct {v3, v1}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v3

    const/16 v4, 0x14

    aput-object v3, v0, v4

    new-instance v3, Lkotlinx/serialization/internal/c;

    invoke-direct {v3, v1}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v0, v3

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v3, 0x16

    aput-object v1, v0, v3

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v3, 0x17

    aput-object v1, v0, v3

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v3, 0x18

    aput-object v1, v0, v3

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/c;)Lkotlinx/serialization/c;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/AdPayload$AdUnit;
    .registers 84

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/AdPayload$AdUnit$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->p()Z

    move-result v2

    const/16 v13, 0x9

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_fd

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-interface {v0, v1, v8, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v1, v9, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v1, v7, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v1, v4, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v11, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    invoke-interface {v0, v1, v5, v11, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v3, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v15, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v0, v1, v14, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    sget-object v12, Lkotlinx/serialization/internal/f;->a:Lkotlinx/serialization/internal/f;

    invoke-interface {v0, v1, v6, v12, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v12, Lcom/vungle/ads/internal/model/AdPayload$c;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$c;

    invoke-interface {v0, v1, v13, v12, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/16 v13, 0xa

    invoke-interface {v0, v1, v13, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v25, v3

    const/16 v3, 0xb

    invoke-interface {v0, v1, v3, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    const/16 v3, 0xc

    invoke-interface {v0, v1, v3, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    sget-object v3, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$a;

    move-object/from16 v26, v4

    const/16 v4, 0xd

    invoke-interface {v0, v1, v4, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xe

    invoke-interface {v0, v1, v4, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v21, v3

    const/16 v3, 0xf

    invoke-interface {v0, v1, v3, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    const/16 v3, 0x10

    invoke-interface {v0, v1, v3, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    const/16 v3, 0x11

    invoke-interface {v0, v1, v3, v11, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    sget-object v3, Lcom/vungle/ads/internal/model/AdPayload$Viewability$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$Viewability$a;

    move-object/from16 v22, v4

    const/16 v4, 0x12

    invoke-interface {v0, v1, v4, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x13

    invoke-interface {v0, v1, v4, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v3

    new-instance v3, Lkotlinx/serialization/internal/c;

    invoke-direct {v3, v2}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    move-object/from16 v17, v4

    const/16 v4, 0x14

    invoke-interface {v0, v1, v4, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x15

    move-object/from16 p1, v3

    new-instance v3, Lkotlinx/serialization/internal/c;

    invoke-direct {v3, v2}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    invoke-interface {v0, v1, v4, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x16

    invoke-interface {v0, v1, v3, v11, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x17

    invoke-interface {v0, v1, v4, v11, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-interface {v0, v1, v2, v11, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v28, v2

    const/16 v2, 0x19

    invoke-interface {v0, v1, v2, v11, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const v10, 0x3ffffff

    move-object/from16 v29, v5

    move-object/from16 v33, v6

    move-object/from16 v35, v13

    move-object/from16 v32, v14

    move-object/from16 v31, v15

    move-object/from16 v6, v22

    move-object/from16 v52, v28

    const v54, 0x3ffffff

    move-object/from16 v5, p1

    move-object v13, v2

    move-object v15, v3

    move-object v14, v4

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v2, v27

    goto/16 :goto_4e4

    :cond_fd
    move-object v2, v10

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v36, v15

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v45, v44

    move-object/from16 v46, v45

    move-object/from16 v47, v46

    move-object/from16 v48, v47

    const/4 v10, 0x0

    const/16 v49, 0x1

    :goto_127
    if-eqz v49, :cond_4a3

    move-object/from16 v50, v2

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v2

    packed-switch v2, :pswitch_data_55a

    new-instance v0, Lkotlinx/serialization/k;

    invoke-direct {v0, v2}, Lkotlinx/serialization/k;-><init>(I)V

    throw v0

    :pswitch_138
    const/16 v2, 0x19

    move-object/from16 v51, v11

    sget-object v11, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    invoke-interface {v0, v1, v2, v11, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/high16 v2, 0x2000000

    goto :goto_16b

    :pswitch_145
    move-object/from16 v51, v11

    const/16 v2, 0x18

    sget-object v11, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    invoke-interface {v0, v1, v2, v11, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/high16 v2, 0x1000000

    goto :goto_16b

    :pswitch_152
    move-object/from16 v51, v11

    const/16 v2, 0x17

    sget-object v11, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    invoke-interface {v0, v1, v2, v11, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const/high16 v2, 0x800000

    goto :goto_16b

    :pswitch_15f
    move-object/from16 v51, v11

    const/16 v2, 0x16

    sget-object v11, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    invoke-interface {v0, v1, v2, v11, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/high16 v2, 0x400000

    :goto_16b
    or-int/2addr v10, v2

    move-object/from16 v2, v50

    move-object/from16 v11, v51

    goto :goto_127

    :pswitch_171
    move-object/from16 v51, v11

    const/16 v2, 0x15

    new-instance v11, Lkotlinx/serialization/internal/c;

    move-object/from16 v52, v6

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-direct {v11, v6}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    invoke-interface {v0, v1, v2, v11, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/high16 v2, 0x200000

    goto/16 :goto_1f9

    :pswitch_186
    move-object/from16 v52, v6

    move-object/from16 v51, v11

    new-instance v2, Lkotlinx/serialization/internal/c;

    sget-object v6, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    invoke-direct {v2, v6}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/c;)V

    const/16 v6, 0x14

    invoke-interface {v0, v1, v6, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/high16 v2, 0x100000

    or-int/2addr v10, v2

    goto/16 :goto_215

    :pswitch_19c
    move-object/from16 v52, v6

    move-object/from16 v51, v11

    const/16 v6, 0x14

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/16 v11, 0x13

    invoke-interface {v0, v1, v11, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/high16 v2, 0x80000

    goto :goto_1f9

    :pswitch_1ad
    move-object/from16 v52, v6

    move-object/from16 v51, v11

    const/16 v6, 0x14

    const/16 v11, 0x13

    sget-object v2, Lcom/vungle/ads/internal/model/AdPayload$Viewability$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$Viewability$a;

    const/16 v6, 0x12

    invoke-interface {v0, v1, v6, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/high16 v2, 0x40000

    goto :goto_1f9

    :pswitch_1c0
    move-object/from16 v52, v6

    move-object/from16 v51, v11

    const/16 v6, 0x12

    const/16 v11, 0x13

    sget-object v2, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    const/16 v6, 0x11

    invoke-interface {v0, v1, v6, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/high16 v2, 0x20000

    goto :goto_1f9

    :pswitch_1d3
    move-object/from16 v52, v6

    move-object/from16 v51, v11

    const/16 v6, 0x11

    const/16 v11, 0x13

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/16 v6, 0x10

    invoke-interface {v0, v1, v6, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/high16 v2, 0x10000

    goto :goto_1f9

    :pswitch_1e6
    move-object/from16 v52, v6

    move-object/from16 v51, v11

    const/16 v6, 0x10

    const/16 v11, 0x13

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    const/16 v6, 0xf

    invoke-interface {v0, v1, v6, v2, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const v2, 0x8000

    :goto_1f9
    or-int/2addr v10, v2

    move-object/from16 v2, v50

    move-object/from16 v11, v51

    goto/16 :goto_49f

    :pswitch_200
    move-object/from16 v52, v6

    move-object/from16 v51, v11

    const/16 v6, 0xf

    const/16 v11, 0x13

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v6, v51

    const/16 v11, 0xe

    invoke-interface {v0, v1, v11, v2, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit16 v10, v10, 0x4000

    move-object v11, v2

    :goto_215
    move-object/from16 v2, v50

    goto/16 :goto_49f

    :pswitch_219
    move-object/from16 v52, v6

    move-object v6, v11

    const/16 v11, 0xe

    sget-object v2, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings$a;

    move-object/from16 v22, v3

    move-object/from16 v11, v50

    const/16 v3, 0xd

    invoke-interface {v0, v1, v3, v2, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit16 v10, v10, 0x2000

    move-object v11, v6

    move-object/from16 v3, v22

    goto/16 :goto_49f

    :pswitch_231
    move-object/from16 v22, v3

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v11, v50

    const/16 v3, 0xd

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v23, v4

    move-object/from16 v3, v48

    const/16 v4, 0xc

    invoke-interface {v0, v1, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    or-int/lit16 v10, v10, 0x1000

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    goto/16 :goto_49e

    :pswitch_24f
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v3, v48

    move-object/from16 v11, v50

    const/16 v4, 0xc

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v24, v3

    move-object/from16 v4, v47

    const/16 v3, 0xb

    invoke-interface {v0, v1, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    or-int/lit16 v10, v10, 0x800

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v48, v24

    goto/16 :goto_49e

    :pswitch_273
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v4, v47

    move-object/from16 v24, v48

    move-object/from16 v11, v50

    const/16 v3, 0xb

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v25, v4

    move-object/from16 v3, v46

    const/16 v4, 0xa

    invoke-interface {v0, v1, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    or-int/lit16 v10, v10, 0x400

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v47, v25

    goto/16 :goto_49e

    :pswitch_299
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v3, v46

    move-object/from16 v25, v47

    move-object/from16 v24, v48

    move-object/from16 v11, v50

    const/16 v4, 0xa

    sget-object v2, Lcom/vungle/ads/internal/model/AdPayload$c;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$c;

    move-object/from16 v35, v3

    move-object/from16 v4, v45

    const/16 v3, 0x9

    invoke-interface {v0, v1, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    or-int/lit16 v10, v10, 0x200

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v46, v35

    goto/16 :goto_49e

    :pswitch_2c1
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v4, v45

    move-object/from16 v35, v46

    move-object/from16 v25, v47

    move-object/from16 v24, v48

    move-object/from16 v11, v50

    const/16 v3, 0x9

    sget-object v2, Lkotlinx/serialization/internal/f;->a:Lkotlinx/serialization/internal/f;

    move-object/from16 v34, v4

    move-object/from16 v3, v44

    const/16 v4, 0x8

    invoke-interface {v0, v1, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    or-int/lit16 v10, v10, 0x100

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v45, v34

    goto/16 :goto_49e

    :pswitch_2eb
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v3, v44

    move-object/from16 v34, v45

    move-object/from16 v35, v46

    move-object/from16 v25, v47

    move-object/from16 v24, v48

    move-object/from16 v11, v50

    const/16 v4, 0x8

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v33, v3

    move-object/from16 v4, v43

    const/4 v3, 0x7

    invoke-interface {v0, v1, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    or-int/lit16 v10, v10, 0x80

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v44, v33

    goto/16 :goto_49e

    :pswitch_316
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v4, v43

    move-object/from16 v33, v44

    move-object/from16 v34, v45

    move-object/from16 v35, v46

    move-object/from16 v25, v47

    move-object/from16 v24, v48

    move-object/from16 v11, v50

    const/4 v3, 0x7

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v32, v4

    move-object/from16 v3, v42

    const/4 v4, 0x6

    invoke-interface {v0, v1, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    or-int/lit8 v10, v10, 0x40

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v43, v32

    goto/16 :goto_49e

    :pswitch_342
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v3, v42

    move-object/from16 v32, v43

    move-object/from16 v33, v44

    move-object/from16 v34, v45

    move-object/from16 v35, v46

    move-object/from16 v25, v47

    move-object/from16 v24, v48

    move-object/from16 v11, v50

    const/4 v4, 0x6

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v31, v3

    move-object/from16 v4, v41

    const/4 v3, 0x5

    invoke-interface {v0, v1, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    or-int/lit8 v10, v10, 0x20

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v42, v31

    goto/16 :goto_49e

    :pswitch_370
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v4, v41

    move-object/from16 v31, v42

    move-object/from16 v32, v43

    move-object/from16 v33, v44

    move-object/from16 v34, v45

    move-object/from16 v35, v46

    move-object/from16 v25, v47

    move-object/from16 v24, v48

    move-object/from16 v11, v50

    const/4 v3, 0x5

    sget-object v2, Lkotlinx/serialization/internal/i0;->a:Lkotlinx/serialization/internal/i0;

    move-object/from16 v30, v4

    move-object/from16 v3, v40

    const/4 v4, 0x4

    invoke-interface {v0, v1, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    or-int/lit8 v10, v10, 0x10

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v41, v30

    goto/16 :goto_49e

    :pswitch_3a0
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v3, v40

    move-object/from16 v30, v41

    move-object/from16 v31, v42

    move-object/from16 v32, v43

    move-object/from16 v33, v44

    move-object/from16 v34, v45

    move-object/from16 v35, v46

    move-object/from16 v25, v47

    move-object/from16 v24, v48

    move-object/from16 v11, v50

    const/4 v4, 0x4

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v29, v3

    move-object/from16 v4, v39

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    or-int/lit8 v10, v10, 0x8

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v40, v29

    goto/16 :goto_49e

    :pswitch_3d2
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v4, v39

    move-object/from16 v29, v40

    move-object/from16 v30, v41

    move-object/from16 v31, v42

    move-object/from16 v32, v43

    move-object/from16 v33, v44

    move-object/from16 v34, v45

    move-object/from16 v35, v46

    move-object/from16 v25, v47

    move-object/from16 v24, v48

    move-object/from16 v11, v50

    const/4 v3, 0x3

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v28, v4

    move-object/from16 v3, v38

    const/4 v4, 0x2

    invoke-interface {v0, v1, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    or-int/lit8 v10, v10, 0x4

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v39, v28

    goto/16 :goto_49e

    :pswitch_406
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v3, v38

    move-object/from16 v28, v39

    move-object/from16 v29, v40

    move-object/from16 v30, v41

    move-object/from16 v31, v42

    move-object/from16 v32, v43

    move-object/from16 v33, v44

    move-object/from16 v34, v45

    move-object/from16 v35, v46

    move-object/from16 v25, v47

    move-object/from16 v24, v48

    move-object/from16 v11, v50

    const/4 v4, 0x2

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v27, v3

    move-object/from16 v4, v37

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    or-int/lit8 v10, v10, 0x2

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v38, v27

    goto/16 :goto_49e

    :pswitch_43c
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v4, v37

    move-object/from16 v27, v38

    move-object/from16 v28, v39

    move-object/from16 v29, v40

    move-object/from16 v30, v41

    move-object/from16 v31, v42

    move-object/from16 v32, v43

    move-object/from16 v33, v44

    move-object/from16 v34, v45

    move-object/from16 v35, v46

    move-object/from16 v25, v47

    move-object/from16 v24, v48

    move-object/from16 v11, v50

    const/4 v3, 0x1

    sget-object v2, Lkotlinx/serialization/internal/j1;->a:Lkotlinx/serialization/internal/j1;

    move-object/from16 v26, v4

    move-object/from16 v3, v36

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    or-int/lit8 v10, v10, 0x1

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v37, v26

    goto :goto_49e

    :pswitch_473
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v3, v36

    move-object/from16 v26, v37

    move-object/from16 v27, v38

    move-object/from16 v28, v39

    move-object/from16 v29, v40

    move-object/from16 v30, v41

    move-object/from16 v31, v42

    move-object/from16 v32, v43

    move-object/from16 v33, v44

    move-object/from16 v34, v45

    move-object/from16 v35, v46

    move-object/from16 v25, v47

    move-object/from16 v24, v48

    move-object/from16 v11, v50

    const/4 v4, 0x0

    move-object v2, v11

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    const/16 v49, 0x0

    :goto_49e
    move-object v11, v6

    :goto_49f
    move-object/from16 v6, v52

    goto/16 :goto_127

    :cond_4a3
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v52, v6

    move-object v6, v11

    move-object/from16 v3, v36

    move-object/from16 v26, v37

    move-object/from16 v27, v38

    move-object/from16 v28, v39

    move-object/from16 v29, v40

    move-object/from16 v30, v41

    move-object/from16 v31, v42

    move-object/from16 v32, v43

    move-object/from16 v33, v44

    move-object/from16 v34, v45

    move-object/from16 v35, v46

    move-object/from16 v25, v47

    move-object/from16 v24, v48

    move-object v11, v2

    move-object/from16 v16, v7

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move/from16 v54, v10

    move-object/from16 v21, v11

    move-object/from16 v20, v12

    move-object/from16 v2, v22

    move-object/from16 v17, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v9, v26

    move-object/from16 v7, v27

    move-object/from16 v4, v28

    move-object/from16 v12, v34

    move-object v8, v3

    move-object/from16 v3, v30

    :goto_4e4
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload$AdUnit;

    move-object/from16 v53, v0

    move-object/from16 v55, v8

    check-cast v55, Ljava/lang/String;

    move-object/from16 v56, v9

    check-cast v56, Ljava/lang/String;

    move-object/from16 v57, v7

    check-cast v57, Ljava/lang/String;

    move-object/from16 v58, v4

    check-cast v58, Ljava/lang/String;

    move-object/from16 v59, v29

    check-cast v59, Ljava/lang/Integer;

    move-object/from16 v60, v3

    check-cast v60, Ljava/lang/String;

    move-object/from16 v61, v31

    check-cast v61, Ljava/lang/String;

    move-object/from16 v62, v32

    check-cast v62, Ljava/lang/String;

    move-object/from16 v63, v33

    check-cast v63, Ljava/lang/Boolean;

    move-object/from16 v64, v12

    check-cast v64, Ljava/util/Map;

    move-object/from16 v65, v35

    check-cast v65, Ljava/lang/String;

    move-object/from16 v66, v24

    check-cast v66, Ljava/lang/String;

    move-object/from16 v67, v23

    check-cast v67, Ljava/lang/String;

    move-object/from16 v68, v21

    check-cast v68, Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;

    move-object/from16 v69, v6

    check-cast v69, Ljava/lang/String;

    move-object/from16 v70, v20

    check-cast v70, Ljava/lang/String;

    move-object/from16 v71, v19

    check-cast v71, Ljava/lang/String;

    move-object/from16 v72, v18

    check-cast v72, Ljava/lang/Integer;

    move-object/from16 v73, v16

    check-cast v73, Lcom/vungle/ads/internal/model/AdPayload$Viewability;

    move-object/from16 v74, v17

    check-cast v74, Ljava/lang/String;

    move-object/from16 v75, v5

    check-cast v75, Ljava/util/List;

    move-object/from16 v76, v2

    check-cast v76, Ljava/util/List;

    move-object/from16 v77, v15

    check-cast v77, Ljava/lang/Integer;

    move-object/from16 v78, v14

    check-cast v78, Ljava/lang/Integer;

    move-object/from16 v79, v52

    check-cast v79, Ljava/lang/Integer;

    move-object/from16 v80, v13

    check-cast v80, Ljava/lang/Integer;

    const/16 v81, 0x0

    invoke-direct/range {v53 .. v81}, Lcom/vungle/ads/internal/model/AdPayload$AdUnit;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$TemplateSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$Viewability;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/serialization/internal/e1;)V

    return-object v0

    nop

    :pswitch_data_55a
    .packed-switch -0x1
        :pswitch_473
        :pswitch_43c
        :pswitch_406
        :pswitch_3d2
        :pswitch_3a0
        :pswitch_370
        :pswitch_342
        :pswitch_316
        :pswitch_2eb
        :pswitch_2c1
        :pswitch_299
        :pswitch_273
        :pswitch_24f
        :pswitch_231
        :pswitch_219
        :pswitch_200
        :pswitch_1e6
        :pswitch_1d3
        :pswitch_1c0
        :pswitch_1ad
        :pswitch_19c
        :pswitch_186
        :pswitch_171
        :pswitch_15f
        :pswitch_152
        :pswitch_145
        :pswitch_138
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/AdPayload$AdUnit$a;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/vungle/ads/internal/model/AdPayload$AdUnit;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/model/AdPayload$AdUnit$a;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/AdPayload$AdUnit;)V
    .registers 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/AdPayload$AdUnit$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/AdPayload$AdUnit;->write$Self(Lcom/vungle/ads/internal/model/AdPayload$AdUnit;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/vungle/ads/internal/model/AdPayload$AdUnit;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/AdPayload$AdUnit$a;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/vungle/ads/internal/model/AdPayload$AdUnit;)V

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
