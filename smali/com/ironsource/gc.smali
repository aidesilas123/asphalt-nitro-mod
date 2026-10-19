###### Class com.json.gc (com.ironsource.gc)
.class public final Lcom/ironsource/gc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J(\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\tH\u0002J\u0006\u0010\u000c\u001a\u00020\u0002J\u0006\u0010\u000b\u001a\u00020\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/ironsource/gc;",
        "",
        "",
        "b",
        "c",
        "",
        "callbackName",
        "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
        "adUnit",
        "",
        "args",
        "a",
        "d",
        "Lcom/ironsource/cc;",
        "Lcom/ironsource/cc;",
        "mJavaScriptEvaluator",
        "javaScriptEvaluator",
        "<init>",
        "(Lcom/ironsource/cc;)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/cc;


# direct methods
.method public constructor <init>(Lcom/ironsource/cc;)V
    .registers 3

    const-string v0, "javaScriptEvaluator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/gc;->a:Lcom/ironsource/cc;

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/gc;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/gc;->b(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/List;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/gc;->a:Lcom/ironsource/cc;

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/cc;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/List;)V

    return-void
.end method

.method private final c()V
    .registers 3

    sget-object v0, Lcom/ironsource/fc;->a:Lcom/ironsource/fc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/fc;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/fc;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/fc;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;)V

    return-void
.end method

.method private final e()V
    .registers 2

    sget-object v0, Lcom/ironsource/fc;->a:Lcom/ironsource/fc;

    invoke-virtual {v0}, Lcom/ironsource/fc;->i()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/gc;->c()V

    invoke-direct {p0}, Lcom/ironsource/gc;->e()V

    return-void
.end method

.method public final d()V
    .registers 3

    sget-object v0, Lcom/ironsource/fc;->a:Lcom/ironsource/fc;

    new-instance v1, Lcom/ironsource/gc$a;

    invoke-direct {v1, p0}, Lcom/ironsource/gc$a;-><init>(Lcom/ironsource/gc;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/fc;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V

    new-instance v1, Lcom/ironsource/gc$b;

    invoke-direct {v1, p0}, Lcom/ironsource/gc$b;-><init>(Lcom/ironsource/gc;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/fc;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;)V

    new-instance v1, Lcom/ironsource/gc$c;

    invoke-direct {v1, p0}, Lcom/ironsource/gc$c;-><init>(Lcom/ironsource/gc;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/fc;->a(Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;)V

    return-void
.end method
