###### Class gateway.v1.w (gateway.v1.w)
.class public final Lgateway/v1/w;
.super Ljava/lang/Object;
.source "GetTokenEventRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/w$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0010H\u0001J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lgateway/v1/GetTokenEventRequestKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;",
        "(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;)V",
        "value",
        "Lcom/google/protobuf/ByteString;",
        "interstitial",
        "getInterstitial",
        "()Lcom/google/protobuf/ByteString;",
        "setInterstitial",
        "(Lcom/google/protobuf/ByteString;)V",
        "rewarded",
        "getRewarded",
        "setRewarded",
        "_build",
        "Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;",
        "clearInterstitial",
        "",
        "clearRewarded",
        "hasInterstitial",
        "",
        "hasRewarded",
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
.field public static final a:Lgateway/v1/w$a;


# instance fields
.field private final b:Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/w$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/w;->a:Lgateway/v1/w$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/w;->b:Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/w;-><init>(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;
    .registers 3

    iget-object v0, p0, Lgateway/v1/w;->b:Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    return-object v0
.end method

###### Class gateway.v1.w.a (gateway.v1.w$a)
.class public final Lgateway/v1/w$a;
.super Ljava/lang/Object;
.source "GetTokenEventRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/w;
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
        "Lgateway/v1/GetTokenEventRequestKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lgateway/v1/GetTokenEventRequestKt$Dsl;",
        "builder",
        "Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;",
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

    invoke-direct {p0}, Lgateway/v1/w$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;)Lgateway/v1/w;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgateway/v1/w;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgateway/v1/w;-><init>(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
