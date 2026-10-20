###### Class com.unity3d.scar.adapter.common.l.e (com.unity3d.scar.adapter.common.l.e)
.class public abstract Lcom/unity3d/scar/adapter/common/l/e;
.super Ljava/lang/Object;
.source "SignalsCollectorBase.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/l/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/scar/adapter/common/l/e$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ZLcom/unity3d/scar/adapter/common/l/b;)V
    .registers 7

    new-instance v0, Lcom/unity3d/scar/adapter/common/a;

    invoke-direct {v0}, Lcom/unity3d/scar/adapter/common/a;-><init>()V

    new-instance v1, Lcom/unity3d/scar/adapter/common/l/f;

    invoke-direct {v1}, Lcom/unity3d/scar/adapter/common/l/f;-><init>()V

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/a;->a()V

    sget-object v2, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->a:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    invoke-interface {p0, p1, v2, v0, v1}, Lcom/unity3d/scar/adapter/common/l/c;->c(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lcom/unity3d/scar/adapter/common/l/f;)V

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/a;->a()V

    sget-object v2, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->b:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    invoke-interface {p0, p1, v2, v0, v1}, Lcom/unity3d/scar/adapter/common/l/c;->c(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lcom/unity3d/scar/adapter/common/l/f;)V

    if-eqz p2, :cond_24

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/a;->a()V

    sget-object p2, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->c:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/unity3d/scar/adapter/common/l/c;->c(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lcom/unity3d/scar/adapter/common/l/f;)V

    :cond_24
    new-instance p1, Lcom/unity3d/scar/adapter/common/l/e$b;

    invoke-direct {p1, p0, p3, v1}, Lcom/unity3d/scar/adapter/common/l/e$b;-><init>(Lcom/unity3d/scar/adapter/common/l/e;Lcom/unity3d/scar/adapter/common/l/b;Lcom/unity3d/scar/adapter/common/l/f;)V

    invoke-virtual {v0, p1}, Lcom/unity3d/scar/adapter/common/a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/l/b;)V
    .registers 13

    new-instance v6, Lcom/unity3d/scar/adapter/common/a;

    invoke-direct {v6}, Lcom/unity3d/scar/adapter/common/a;-><init>()V

    new-instance v7, Lcom/unity3d/scar/adapter/common/l/f;

    invoke-direct {v7}, Lcom/unity3d/scar/adapter/common/l/f;-><init>()V

    invoke-virtual {v6}, Lcom/unity3d/scar/adapter/common/a;->a()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    move-object v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/unity3d/scar/adapter/common/l/c;->d(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lcom/unity3d/scar/adapter/common/l/f;)V

    new-instance p1, Lcom/unity3d/scar/adapter/common/l/e$b;

    invoke-direct {p1, p0, p4, v7}, Lcom/unity3d/scar/adapter/common/l/e$b;-><init>(Lcom/unity3d/scar/adapter/common/l/e;Lcom/unity3d/scar/adapter/common/l/b;Lcom/unity3d/scar/adapter/common/l/f;)V

    invoke-virtual {v6, p1}, Lcom/unity3d/scar/adapter/common/a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/unity3d/scar/adapter/common/l/e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_14

    const-string p1, ""

    return-object p1

    :cond_14
    const-string p1, "gmaScarBiddingRewardedSignal"

    return-object p1

    :cond_17
    const-string p1, "gmaScarBiddingInterstitialSignal"

    return-object p1

    :cond_1a
    const-string p1, "gmaScarBiddingBannerSignal"

    return-object p1
.end method

.method public f(Ljava/lang/String;Lcom/unity3d/scar/adapter/common/a;Lcom/unity3d/scar/adapter/common/l/f;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Operation Not supported: %s."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/unity3d/scar/adapter/common/l/f;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/unity3d/scar/adapter/common/a;->b()V

    return-void
.end method
