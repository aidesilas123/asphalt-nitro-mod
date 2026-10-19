###### Class gateway.v1.k0 (gateway.v1.k0)
.class public final Lgateway/v1/k0;
.super Ljava/lang/Object;
.source "RequestRetryPolicyKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/k0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010!\u001a\u00020\"H\u0001J\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020$J\u0006\u0010&\u001a\u00020$J\u0006\u0010\'\u001a\u00020$J\u0006\u0010(\u001a\u00020$J\u0006\u0010)\u001a\u00020$R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000bR$\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u000f\"\u0004\u0008\u0017\u0010\u0011R$\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\t\"\u0004\u0008\u001a\u0010\u000bR$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006+"
    }
    d2 = {
        "Lgateway/v1/RequestRetryPolicyKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;",
        "(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;)V",
        "value",
        "",
        "maxDuration",
        "getMaxDuration",
        "()I",
        "setMaxDuration",
        "(I)V",
        "",
        "retryJitterPct",
        "getRetryJitterPct",
        "()F",
        "setRetryJitterPct",
        "(F)V",
        "retryMaxInterval",
        "getRetryMaxInterval",
        "setRetryMaxInterval",
        "retryScalingFactor",
        "getRetryScalingFactor",
        "setRetryScalingFactor",
        "retryWaitBase",
        "getRetryWaitBase",
        "setRetryWaitBase",
        "",
        "shouldStoreLocally",
        "getShouldStoreLocally",
        "()Z",
        "setShouldStoreLocally",
        "(Z)V",
        "_build",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;",
        "clearMaxDuration",
        "",
        "clearRetryJitterPct",
        "clearRetryMaxInterval",
        "clearRetryScalingFactor",
        "clearRetryWaitBase",
        "clearShouldStoreLocally",
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
.field public static final a:Lgateway/v1/k0$a;


# instance fields
.field private final b:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/k0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/k0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/k0;->a:Lgateway/v1/k0$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/k0;->b:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/k0;-><init>(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 3

    iget-object v0, p0, Lgateway/v1/k0;->b:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object v0
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/k0;->b:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;->b(I)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    return-void
.end method

.method public final c(F)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/k0;->b:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;->d(F)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    return-void
.end method

.method public final d(I)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/k0;->b:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;->e(I)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    return-void
.end method

.method public final e(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/k0;->b:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;->f(Z)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    return-void
.end method

###### Class gateway.v1.k0.a (gateway.v1.k0$a)
.class public final Lgateway/v1/k0$a;
.super Ljava/lang/Object;
.source "RequestRetryPolicyKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/k0;
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
        "Lgateway/v1/RequestRetryPolicyKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lgateway/v1/RequestRetryPolicyKt$Dsl;",
        "builder",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;",
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

    invoke-direct {p0}, Lgateway/v1/k0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;)Lgateway/v1/k0;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgateway/v1/k0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgateway/v1/k0;-><init>(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
