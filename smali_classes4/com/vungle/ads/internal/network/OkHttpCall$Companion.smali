###### Class com.vungle.ads.internal.network.OkHttpCall.Companion (com.vungle.ads.internal.network.OkHttpCall$Companion)
.class public final Lcom/vungle/ads/internal/network/OkHttpCall$Companion;
.super Ljava/lang/Object;
.source "OkHttpCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vungle/ads/internal/network/OkHttpCall$Companion;",
        "",
        "()V",
        "throwIfFatal",
        "",
        "t",
        "",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
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

    invoke-direct {p0}, Lcom/vungle/ads/internal/network/OkHttpCall$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$throwIfFatal(Lcom/vungle/ads/internal/network/OkHttpCall$Companion;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/network/OkHttpCall$Companion;->throwIfFatal(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final throwIfFatal(Ljava/lang/Throwable;)V
    .registers 3

    instance-of v0, p1, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/lang/LinkageError;

    if-nez v0, :cond_d

    return-void

    :cond_d
    throw p1

    :cond_e
    throw p1

    :cond_f
    throw p1
.end method
