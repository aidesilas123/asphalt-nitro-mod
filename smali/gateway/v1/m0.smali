###### Class gateway.v1.m0 (gateway.v1.m0)
.class public final Lgateway/v1/m0;
.super Ljava/lang/Object;
.source "SessionCountersKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/m0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0010H\u0001J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lgateway/v1/SessionCountersKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/SessionCountersOuterClass$SessionCounters$Builder;",
        "(Lgateway/v1/SessionCountersOuterClass$SessionCounters$Builder;)V",
        "value",
        "",
        "loadRequests",
        "getLoadRequests",
        "()I",
        "setLoadRequests",
        "(I)V",
        "loadRequestsAdm",
        "getLoadRequestsAdm",
        "setLoadRequestsAdm",
        "_build",
        "Lgateway/v1/SessionCountersOuterClass$SessionCounters;",
        "clearLoadRequests",
        "",
        "clearLoadRequestsAdm",
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
.field public static final a:Lgateway/v1/m0$a;


# instance fields
.field private final b:Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/m0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/m0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/m0;->a:Lgateway/v1/m0$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/m0;->b:Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/m0;-><init>(Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/SessionCountersOuterClass$SessionCounters;
    .registers 3

    iget-object v0, p0, Lgateway/v1/m0;->b:Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/SessionCountersOuterClass$SessionCounters;

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lgateway/v1/m0;->b:Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;

    invoke-virtual {v0}, Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;->b()I

    move-result v0

    return v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lgateway/v1/m0;->b:Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;

    invoke-virtual {v0}, Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;->d()I

    move-result v0

    return v0
.end method

.method public final d(I)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/m0;->b:Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;

    invoke-virtual {v0, p1}, Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;->e(I)Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;

    return-void
.end method

.method public final e(I)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/m0;->b:Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;

    invoke-virtual {v0, p1}, Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;->f(I)Lgateway/v1/SessionCountersOuterClass$SessionCounters$a;

    return-void
.end method
