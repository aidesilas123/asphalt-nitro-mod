###### Class gateway.v1.UniversalRequestKt (gateway.v1.s0)
.class public final Lgateway/v1/s0;
.super Ljava/lang/Object;
.source "UniversalRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/s0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u000f\u0010\u0011B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\nJ*\u0010\u000b\u001a\u00020\u000c2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u000e\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "Lgateway/v1/UniversalRequestKt;",
        "",
        "()V",
        "payload",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
        "block",
        "Lkotlin/Function1;",
        "Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "-initializepayload",
        "sharedData",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;",
        "Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;",
        "-initializesharedData",
        "Dsl",
        "PayloadKt",
        "SharedDataKt",
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
.field public static final a:Lgateway/v1/s0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lgateway/v1/s0;

    invoke-direct {v0}, Lgateway/v1/s0;-><init>()V

    sput-object v0, Lgateway/v1/s0;->a:Lgateway/v1/s0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gateway.v1.UniversalRequestKt.a (gateway.v1.s0$a)
.class public final Lgateway/v1/s0$a;
.super Ljava/lang/Object;
.source "UniversalRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/s0$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "Lgateway/v1/UniversalRequestKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;)V",
        "value",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
        "payload",
        "getPayload",
        "()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
        "setPayload",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;",
        "sharedData",
        "getSharedData",
        "()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;",
        "setSharedData",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V",
        "_build",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
        "clearPayload",
        "",
        "clearSharedData",
        "hasPayload",
        "",
        "hasSharedData",
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
.field public static final a:Lgateway/v1/s0$a$a;


# instance fields
.field private final b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/s0$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/s0$a$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/s0$a;->a:Lgateway/v1/s0$a$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/s0$a;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/s0$a;-><init>(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 3

    iget-object v0, p0, Lgateway/v1/s0$a;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object v0
.end method

.method public final b(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/s0$a;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;->b(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;

    return-void
.end method

.method public final c(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/s0$a;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;->d(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;

    return-void
.end method

###### Class gateway.v1.UniversalRequestKt.a.C0469a (gateway.v1.s0$a$a)
.class public final Lgateway/v1/s0$a$a;
.super Ljava/lang/Object;
.source "UniversalRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/s0$a;
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
        "Lgateway/v1/UniversalRequestKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lgateway/v1/UniversalRequestKt$Dsl;",
        "builder",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;",
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

    invoke-direct {p0}, Lgateway/v1/s0$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;)Lgateway/v1/s0$a;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgateway/v1/s0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgateway/v1/s0$a;-><init>(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
