###### Class gateway.v1.i0 (gateway.v1.i0)
.class public final Lgateway/v1/i0;
.super Ljava/lang/Object;
.source "PrivacyUpdateResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/i0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lgateway/v1/PrivacyUpdateResponseKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;",
        "(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;)V",
        "value",
        "Lcom/google/protobuf/ByteString;",
        "content",
        "getContent",
        "()Lcom/google/protobuf/ByteString;",
        "setContent",
        "(Lcom/google/protobuf/ByteString;)V",
        "",
        "version",
        "getVersion",
        "()I",
        "setVersion",
        "(I)V",
        "_build",
        "Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;",
        "clearContent",
        "",
        "clearVersion",
        "Companion",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lgateway/v1/i0$a;


# instance fields
.field private final b:Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/i0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/i0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/i0;->a:Lgateway/v1/i0$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/i0;->b:Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/i0;-><init>(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;
    .registers 3

    iget-object v0, p0, Lgateway/v1/i0;->b:Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    return-object v0
.end method

###### Class gateway.v1.i0.a (gateway.v1.i0$a)
.class public final Lgateway/v1/i0$a;
.super Ljava/lang/Object;
.source "PrivacyUpdateResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "Lgateway/v1/PrivacyUpdateResponseKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lgateway/v1/PrivacyUpdateResponseKt$Dsl;",
        "builder",
        "Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/i0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$a;)Lgateway/v1/i0;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgateway/v1/i0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgateway/v1/i0;-><init>(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$a;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
