###### Class com.ironsource.adqualitysdk.sdk.i.ax.o.a (com.ironsource.adqualitysdk.sdk.i.ax$o$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$o$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax$o;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ax$o;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$o;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$o$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax$o;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$o$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ax$o;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$o;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
