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

###### Class com.unity3d.scar.adapter.common.l.e.a (com.unity3d.scar.adapter.common.l.e$a)
.class synthetic Lcom/unity3d/scar/adapter/common/l/e$a;
.super Ljava/lang/Object;
.source "SignalsCollectorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/common/l/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->values()[Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/unity3d/scar/adapter/common/l/e$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->c:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/unity3d/scar/adapter/common/l/e$a;->a:[I

    sget-object v1, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->a:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/unity3d/scar/adapter/common/l/e$a;->a:[I

    sget-object v1, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->b:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class com.unity3d.scar.adapter.common.l.e.b (com.unity3d.scar.adapter.common.l.e$b)
.class Lcom/unity3d/scar/adapter/common/l/e$b;
.super Ljava/lang/Object;
.source "SignalsCollectorBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/common/l/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/unity3d/scar/adapter/common/l/b;

.field private b:Lcom/unity3d/scar/adapter/common/l/f;

.field final synthetic c:Lcom/unity3d/scar/adapter/common/l/e;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/l/e;Lcom/unity3d/scar/adapter/common/l/b;Lcom/unity3d/scar/adapter/common/l/f;)V
    .registers 4

    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->c:Lcom/unity3d/scar/adapter/common/l/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->a:Lcom/unity3d/scar/adapter/common/l/b;

    iput-object p3, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->b:Lcom/unity3d/scar/adapter/common/l/f;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->b:Lcom/unity3d/scar/adapter/common/l/f;

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/l/f;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1b

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->a:Lcom/unity3d/scar/adapter/common/l/b;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/scar/adapter/common/l/b;->onSignalsCollected(Ljava/lang/String;)V

    goto :goto_36

    :cond_1b
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->b:Lcom/unity3d/scar/adapter/common/l/f;

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/l/f;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->a:Lcom/unity3d/scar/adapter/common/l/b;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/unity3d/scar/adapter/common/l/b;->onSignalsCollected(Ljava/lang/String;)V

    goto :goto_36

    :cond_2b
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->a:Lcom/unity3d/scar/adapter/common/l/b;

    iget-object v1, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->b:Lcom/unity3d/scar/adapter/common/l/f;

    invoke-virtual {v1}, Lcom/unity3d/scar/adapter/common/l/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/scar/adapter/common/l/b;->onSignalsCollectionFailed(Ljava/lang/String;)V

    :goto_36
    return-void
.end method
