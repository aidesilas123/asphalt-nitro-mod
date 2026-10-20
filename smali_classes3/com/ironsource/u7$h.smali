###### Class com.ironsource.u7.h (com.ironsource.u7$h)
.class Lcom/ironsource/u7$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/u7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/da;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/ironsource/da;

.field final synthetic e:Lcom/ironsource/u7;


# direct methods
.method constructor <init>(Lcom/ironsource/u7;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/da;)V
    .registers 6

    iput-object p1, p0, Lcom/ironsource/u7$h;->e:Lcom/ironsource/u7;

    iput-object p2, p0, Lcom/ironsource/u7$h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/u7$h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/u7$h;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/ironsource/u7$h;->d:Lcom/ironsource/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/u7$h;->e:Lcom/ironsource/u7;

    invoke-static {v0}, Lcom/ironsource/u7;->b(Lcom/ironsource/u7;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/u7$h;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/u7$h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/u7$h;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/ironsource/u7$h;->d:Lcom/ironsource/da;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/da;)V

    return-void
.end method
