###### Class com.json.d0 (com.ironsource.d0)
.class public final Lcom/ironsource/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/d0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/ironsource/d0;",
        "",
        "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
        "adUnit",
        "Lcom/ironsource/v4$a;",
        "a",
        "<init>",
        "()V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/d0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ironsource/d0;

    invoke-direct {v0}, Lcom/ironsource/d0;-><init>()V

    sput-object v0, Lcom/ironsource/d0;->a:Lcom/ironsource/d0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lcom/ironsource/v4$a;
    .registers 2

    const-string v0, "adUnit"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/d0$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_28

    const/4 v0, 0x4

    if-eq p0, v0, :cond_25

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1f

    sget-object p0, Lcom/ironsource/v4$a;->e:Lcom/ironsource/v4$a;

    goto :goto_30

    :cond_1f
    new-instance p0, Lkotlin/k;

    invoke-direct {p0}, Lkotlin/k;-><init>()V

    throw p0

    :cond_25
    sget-object p0, Lcom/ironsource/v4$a;->c:Lcom/ironsource/v4$a;

    goto :goto_30

    :cond_28
    sget-object p0, Lcom/ironsource/v4$a;->d:Lcom/ironsource/v4$a;

    goto :goto_30

    :cond_2b
    sget-object p0, Lcom/ironsource/v4$a;->b:Lcom/ironsource/v4$a;

    goto :goto_30

    :cond_2e
    sget-object p0, Lcom/ironsource/v4$a;->a:Lcom/ironsource/v4$a;

    :goto_30
    return-object p0
.end method
