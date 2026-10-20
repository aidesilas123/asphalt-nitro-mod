###### Class com.ironsource.mediationsdk.y.a (com.ironsource.mediationsdk.y$a)
.class Lcom/ironsource/mediationsdk/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/y;->A(Ljava/util/List;Lcom/ironsource/p7;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

.field final synthetic b:Lcom/ironsource/p7;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/ironsource/mediationsdk/y;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/y;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/p7;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/ironsource/mediationsdk/y$a;->e:Lcom/ironsource/mediationsdk/y;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/y$a;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/y$a;->b:Lcom/ironsource/p7;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/y$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/mediationsdk/y$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/y$a;->e:Lcom/ironsource/mediationsdk/y;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/y$a;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/y$a;->b:Lcom/ironsource/p7;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/y$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/y$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/y;->u(Lcom/ironsource/mediationsdk/y;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/p7;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
