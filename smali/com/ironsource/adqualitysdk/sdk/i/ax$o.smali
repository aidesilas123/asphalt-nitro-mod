###### Class com.ironsource.adqualitysdk.sdk.i.ax.o (com.ironsource.adqualitysdk.sdk.i.ax$o)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$o;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﻐ(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/Runnable;

.field private synthetic e:Landroid/content/Context;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/ax;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/lang/Runnable;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$o;->f:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$o;->d:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$o;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$o$a;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax$o$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$o;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$o;->f:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$o;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->O(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;)V

    return-void
.end method
