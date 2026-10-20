###### Class com.ironsource.adqualitysdk.sdk.i.ax.e.b (com.ironsource.adqualitysdk.sdk.i.ax$e$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$e$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ax$e;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$e;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax$e;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax$e;

    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->e:Landroid/content/Context;

    iget-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->h:Ljava/util/List;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->i:Ljava/lang/Runnable;

    invoke-static {v1, v2, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->Q(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
