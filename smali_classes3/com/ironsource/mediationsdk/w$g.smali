###### Class com.ironsource.mediationsdk.w.g (com.ironsource.mediationsdk.w$g)
.class Lcom/ironsource/mediationsdk/w$g;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/w;->n0()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/w;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/w;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w$g;->a:Lcom/ironsource/mediationsdk/w;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$g;->a:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/w;->T(Lcom/ironsource/mediationsdk/w;)V

    return-void
.end method
