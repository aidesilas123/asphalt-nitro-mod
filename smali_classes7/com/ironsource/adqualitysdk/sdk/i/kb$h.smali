###### Class com.ironsource.adqualitysdk.sdk.i.kb.h (com.ironsource.adqualitysdk.sdk.i.kb$h)
.class final Lcom/ironsource/adqualitysdk/sdk/i/kb$h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/kb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->a:Z

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->b:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;-><init>()V

    return-void
.end method

.method private d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->a:Z

    return v0
.end method


# virtual methods
.method final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->a:Z

    return-void
.end method

.method final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->b:Z

    return v0
.end method

.method final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->b:Z

    return-void
.end method

.method final e()Z
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->d()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/kb$h;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method
