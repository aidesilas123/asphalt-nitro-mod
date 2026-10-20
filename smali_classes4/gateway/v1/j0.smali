###### Class gateway.v1.j0 (gateway.v1.j0)
.class public final Lgateway/v1/j0;
.super Ljava/lang/Object;
.source "RequestPolicyKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/j0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "Lgateway/v1/RequestPolicyKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;",
        "(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;)V",
        "value",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;",
        "retryPolicy",
        "getRetryPolicy",
        "()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;",
        "setRetryPolicy",
        "(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;",
        "timeoutPolicy",
        "getTimeoutPolicy",
        "()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;",
        "setTimeoutPolicy",
        "(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V",
        "_build",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;",
        "clearRetryPolicy",
        "",
        "clearTimeoutPolicy",
        "hasRetryPolicy",
        "",
        "hasTimeoutPolicy",
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
.field public static final a:Lgateway/v1/j0$a;


# instance fields
.field private final b:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/j0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/j0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/j0;->a:Lgateway/v1/j0$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/j0;->b:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/j0;-><init>(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 3

    iget-object v0, p0, Lgateway/v1/j0;->b:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object v0
.end method

.method public final b(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/j0;->b:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;->b(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    return-void
.end method

.method public final c(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/j0;->b:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;->d(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    return-void
.end method
