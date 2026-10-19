###### Class com.ironsource.q1.b (com.ironsource.q1$b)
.class Lcom/ironsource/q1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/q1;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

.field final synthetic b:Lcom/ironsource/q1;


# direct methods
.method constructor <init>(Lcom/ironsource/q1;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/q1$b;->b:Lcom/ironsource/q1;

    iput-object p2, p0, Lcom/ironsource/q1$b;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/q1$b;->b:Lcom/ironsource/q1;

    iget-object v1, p0, Lcom/ironsource/q1$b;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-static {v0, v1}, Lcom/ironsource/q1;->y(Lcom/ironsource/q1;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    return-void
.end method
